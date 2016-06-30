#include "my_includes.h"
#include "packet.h"
#include "JtagUart.h"


#ifdef DEBUG_APP
    #define APP_DEBUG(x)    DEBUG(x)  
#else
    #define APP_DEBUG(x)
#endif

void dump_message(char *pMessage);

// use check sum in this implement
alt_u8 CalCRC(alt_u8 *Packet, PKLEN_TYPE len){
    int i;
    register alt_u8 crc = 0;
    for(i=0;i<len;i++)
        crc += *(Packet+i);
    return crc;
}

bool ValidPacket(alt_u8 szPacket[], PKLEN_TYPE pk_len){
    bool bValid = FALSE;

    if ((szPacket[PKT_HEADER_INDEX] == PKT_HEADER_TAG) && (szPacket[PKT_TAIL_INDEX(pk_len)] == PKT_TAIL_TAG)){
        unsigned char crc;
        crc =  CalCRC(&szPacket[PKT_OP_INDEX],PKT_CRC_LEN(pk_len));
        if (crc == szPacket[PKT_CRC_INDEX(pk_len)])
            bValid = TRUE;
        else            
        APP_DEBUG(("invalid crc, in:%02X expected:%02X\r\n", szPacket[PKT_CRC_INDEX(pk_len)], crc));
    }else{
        APP_DEBUG(("invalid header or tail\r\n"));
        APP_DEBUG(("   pk_len=%d\r\n", pk_len));
        APP_DEBUG(("   header tag=%02Xh\r\n", szPacket[PKT_HEADER_INDEX]));
        APP_DEBUG(("   tail tag=%02Xh\r\n", szPacket[PKT_TAIL_INDEX(pk_len)]));
    }    
    
    return bValid;
}

//void dump_message(char *pMessage);

bool SendPacket(OP_TYPE OP, unsigned char *pPayload, PKLEN_TYPE pl_len){
    alt_u8 szPacket[PKT_NIOS2PC_MAX_LEN];
    // build packet
    PKLEN_TYPE nPacketSize = pl_len + PKT_NONEPL_SIZE;
   // assert(nPayloadLen < 256);
    szPacket[PKT_HEADER_INDEX] = PKT_HEADER_TAG;
    szPacket[PKT_OP_INDEX] = OP;
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    //szPacket[PKT_LEN_INDEX] = nPayloadLen;
    if (pl_len > 0)
        memcpy(&szPacket[PKT_DATA_INDEX], pPayload, pl_len);
    szPacket[PKT_CRC_INDEX(nPacketSize)] = CalCRC(&szPacket[PKT_OP_INDEX], PKT_CRC_LEN(nPacketSize));
    szPacket[PKT_TAIL_INDEX(nPacketSize)] = PKT_TAIL_TAG;

    // send packet
    bool bSuccess;
    
    bSuccess = JTAGUART_Write(szPacket, nPacketSize);


    return bSuccess;
}

void packet_add_tail(alt_u8 szPacket[], PKLEN_TYPE pl_len){
    PKLEN_TYPE pk_len;
    pk_len = pl_len + PKT_NONEPL_SIZE;
    szPacket[PKT_CRC_INDEX(pk_len)] = CalCRC(&szPacket[PKT_OP_INDEX], PKT_CRC_LEN(pk_len));
    szPacket[PKT_TAIL_INDEX(pk_len)] = PKT_TAIL_TAG;
} 

void led_indicate(alt_u32 mask){
    IOWR(PIO_LED_BASE, 0, mask);  
}

bool read_packet(alt_u8 szPacket[]){
    static alt_u32 i=0;
    PKLEN_TYPE pl_len, pk_len; 
    alt_u32 time_start, time_elapsed, timeout;
    int rx_len;
    static alt_u32 led_toggle_time = 0;
    static bool bLedOn = TRUE;
    
    if (!JTAGUART_NoneBlockingRead(&szPacket[PKT_HEADER_INDEX], 1, &rx_len)){
    //if (!JTAGUART_Read(&szPacket[PKT_HEADER_INDEX], 1, &rx_len)){
        //APP_DEBUG(("."));
        time_start = alt_nticks();
        if (time_start > led_toggle_time){
            led_toggle_time = time_start + alt_ticks_per_second()/2;
            IOWR(PIO_LED_BASE, 0, bLedOn?0x01:0x00);
            bLedOn = bLedOn?FALSE:TRUE;
        }
        return FALSE;
    }    
    led_indicate(0x01);    
        
    time_start = alt_nticks();
    if (szPacket[PKT_HEADER_INDEX] != PKT_HEADER_TAG){
        led_indicate(0x00100);
        JTAGUART_ClearInput();
       // APP_DEBUG(("[PK] invalid header tag, %02Xh\r\n", 1+sizeof(PKLEN_TYPE), szPacket[PKT_HEADER_INDEX]));    
        return FALSE;
    }     
    led_indicate(0x03);
        
                
    if (!JTAGUART_NoneBlockingRead(&szPacket[PKT_OP_INDEX], 1 + sizeof(PKLEN_TYPE), &rx_len)){
//    if (!JTAGUART_Read(&szPacket[PKT_OP_INDEX], 1 + sizeof(PKLEN_TYPE), &rx_len)){  // read op & payload len
        led_indicate(0x00300);
        JTAGUART_ClearInput();
        if (rx_len)
            APP_DEBUG(("[PK] ???[0], wish_len = %d, rx_len = %d\r\n", 1+sizeof(PKLEN_TYPE), rx_len));    
        return FALSE;
    }       
    led_indicate(0x07);
       
                
    memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));
    timeout = alt_ticks_per_second()*2; // 2 second                   
    //if (!JTAGUART_Read(&szPacket[PKT_DATA_INDEX], pl_len+2, &rx_len)){  // read payload+crc+tail-tag
    if (!JTAGUART_ReadWithTimeout(&szPacket[PKT_DATA_INDEX], pl_len+2, &rx_len, timeout)){  // read payload+crc+tail-tag
        //if (rx_len)
        led_indicate(0x00700);
        JTAGUART_ClearInput();
        APP_DEBUG(("[PK] ???[1], wish_len = %d, rx_len = %d\r\n", pl_len+2, rx_len));
        return FALSE;
    }       
    led_indicate(0x0F);
      
    pk_len = pl_len + PKT_NONEPL_SIZE;  // package len            
    if (!ValidPacket(szPacket, pk_len)){
        led_indicate(0x00F00);
        JTAGUART_ClearInput();
        APP_DEBUG(("[PK] Invalid Packet, len=%d\r\n", pl_len));
       // DEBUG_HEX_PRINTF(szPacket, pk_len);
        return FALSE;
    }
    led_indicate(0x1F);
    
    //DEBUG_HEX_PRINTF(szPacket, pk_len);
    time_elapsed = alt_nticks() - time_start;
    APP_DEBUG(("[PK] rx pkt[%d] %d byte with %.1f sec \r\n", i++, pk_len, (float)((float)time_elapsed/(float)alt_ticks_per_second()))); 
    return TRUE;                    
}


bool build_packet_pl1(alt_u8 szPacket[], alt_u8 OP, bool bResponeSuccess){
    bool bSuccess = TRUE;
    PKLEN_TYPE pl_len;
    pl_len = 1;
    szPacket[PKT_HEADER_INDEX] = PKT_HEADER_TAG; 
    szPacket[PKT_OP_INDEX] = OP; 
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    szPacket[PKT_DATA_INDEX] = bResponeSuccess?ERR_OK:ERR_NG;
    packet_add_tail(szPacket, pl_len);     
    return bSuccess;
}


typedef struct{
    alt_u8 op;
    char name[32];
}OP_NAME_LIST;

OP_NAME_LIST op_name_list[] = {
    {OP_POLLING, "OP_POLLING"},
    {OP_CAMERA_CONFIG, "OP_CAMERA_CONFIG"},
    {OP_CAMERA_CAPTURE, "OP_CAMERA_CAPTURE"},
    {OP_CAMERA_PORT_READ, "OP_CAMERA_PORT_READ"},
    {OP_MEMORY_WRITE, "OP_MEMORY_WRITE"},
    {OP_MEMORY_READ, "OP_MEMORY_READ"}
};



void dump_op_name(alt_u8 OP){
    bool bFind = FALSE;
    int i;
    char name[32] = "Unknown OP";
    for(i=0;!bFind && i<sizeof(op_name_list)/sizeof(op_name_list[0]);i++){
        if (OP == op_name_list[i].op){
            bFind = TRUE;
            strcpy(name, op_name_list[i].name);
        }
    }
    APP_DEBUG(("***** %s *****\r\n", name)); 
    
}

