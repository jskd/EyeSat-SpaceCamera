#include "my_includes.h"
#include "CAMERA_NIOS2_COMMAND.H"
#include "function.h"
#include "packet.h"
#include "CAMERA_HAL.h"


#ifdef DEBUG_APP
    #define APP_DEBUG(x)    DEBUG(x)  
#else
    #define APP_DEBUG(x)
#endif

//  internal function prototype
void report_result(char *pTitle, bool bSuccess, alt_u32 start_time);
bool video_config(void);
bool memory_read(alt_u8 mem_type, alt_u32 offset, PKLEN_TYPE read_len, alt_u8 szBuf[]);
bool memory_write(alt_u8 mem_type, alt_u32 offset, PKLEN_TYPE write_len, alt_u8 szData[]);
//

////////////////////////////////////////////////////////////////////////
///////////////////// POLLING  /////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
bool op_polling(alt_u8 *szPacket){
    bool bSuccess = FALSE;
    PKLEN_TYPE pl_len;
    memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));  // payload len 
    if (pl_len == 0){
        APP_DEBUG(("[POLLING]\r\n"));   
        bSuccess = TRUE;
    }else{        
        APP_DEBUG(("[POLLING]invalid op_tv_capture param len\r\n"));   
    }
    pl_len = 1;
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    szPacket[PKT_DATA_INDEX] = bSuccess?ERR_OK:ERR_NG;
    packet_add_tail(szPacket, pl_len); 
    
    return bSuccess;     
}

////////////////////////////////////////////////////////////////////////
///////////////////// CAMERA CONFIG /////////////////////////////////////
////////////////////////////////////////////////////////////////////////
bool op_camera_config(alt_u8 *szPacket){
    bool bSuccess = FALSE;
    PKLEN_TYPE pl_len;
    memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));  // payload len 
    if (pl_len == 0){
        APP_DEBUG(("[CAMERA] config\r\n"));   
        bSuccess = TRUE; //???camera_capture();
    }else{        
        APP_DEBUG(("[CAMERA]invalid camera-config param len\r\n"));   
    }
    pl_len = 1;
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    szPacket[PKT_DATA_INDEX] = bSuccess?ERR_OK:ERR_NG;
    packet_add_tail(szPacket, pl_len); 
    
    return bSuccess;     
}

////////////////////////////////////////////////////////////////////////
///////////////////// CAMERA CAPTURE ///////////////////////////////////
////////////////////////////////////////////////////////////////////////
bool camera_capture(void){
    bool bSuccess = TRUE;
    CAMERA_CAPTURE_START();
    usleep(500*1000);
    CAMERA_CAPTURE_STOP();
    
    return bSuccess;    
}


bool op_camera_capture(alt_u8 *szPacket){
    bool bSuccess = FALSE;
    PKLEN_TYPE pl_len;
    memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));  // payload len 
    if (pl_len == 0){
        APP_DEBUG(("[CAMERA] capture\r\n"));   
        bSuccess = camera_capture();
    }else{        
        APP_DEBUG(("[CAMERA]invalid camera-capture param len\r\n"));   
    }
    pl_len = 1;
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    szPacket[PKT_DATA_INDEX] = bSuccess?ERR_OK:ERR_NG;
    packet_add_tail(szPacket, pl_len); 
    
    return bSuccess;     
}

////////////////////////////////////////////////////////////////////////
///////////////////// PORT READ ////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
void camera_port_read(alt_u8 *pBuf, alt_u32 num){
    int i;
    alt_u32 data;
    for(i=0;i<num;i++){
        data = CAMERA_READ();
        memcpy(pBuf, &data, sizeof(data));
        pBuf += 4;
    }
}

bool op_camera_port_read(alt_u8 *szPacket){
    bool bSuccess = FALSE;
    PKLEN_TYPE pl_len, read_len;
    
    
    memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));  // payload len 
    if (pl_len == 4){
        //int i;
        memcpy(&read_len, &szPacket[PKT_DATA_INDEX],sizeof(read_len));
        if (read_len%4 == 0){
            camera_port_read(&szPacket[PKT_DATA_INDEX+1], read_len/4);
            /*
            volatile alt_u32 data;
            alt_u32 *pDes = (alt_u32 *)&(szPacket[PKT_DATA_INDEX+1]);  cast has problem in NIOS2 IDE ?????
            for(i=0;i<read_len/4;i++){
                data = CAMERA_READ();  // 32-bit per read
                *pDes++ = data;
                if (i == 0)
                    APP_DEBUG(("len=%d, data=%08Xh\r\n", read_len, data));   
            }*/
            bSuccess = TRUE; //memory_read(mem_type, offset, read_len, &szPacket[PKT_DATA_INDEX+1]);
        }else{
            APP_DEBUG(("invalid op_port_read param len (should be x4)\r\n"));   
        }            
    }else{        
        APP_DEBUG(("[CAMERA]invalid op_port_read param len\r\n"));   
    }
    pl_len = 1 + read_len;
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    szPacket[PKT_DATA_INDEX] = bSuccess?ERR_OK:ERR_NG;
    packet_add_tail(szPacket, pl_len); 
    return bSuccess;
} 


////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

bool op_memory_read(alt_u8 *szPacket){
    bool bSuccess = FALSE;
    PKLEN_TYPE pl_len, read_len;
    alt_u8 mem_type;
    alt_u32 offset;
    
    
    memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));  // payload len 
    if (pl_len == 9){
        mem_type = szPacket[PKT_DATA_INDEX];
        memcpy(&offset, &szPacket[PKT_DATA_INDEX+1],sizeof(offset));
        memcpy(&read_len, &szPacket[PKT_DATA_INDEX+1+4],sizeof(read_len));
        bSuccess = memory_read(mem_type, offset, read_len, &szPacket[PKT_DATA_INDEX+1]);
    }else{        
        APP_DEBUG(("invalid led param len\r\n"));   
    }
    pl_len = 1 + read_len;
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    szPacket[PKT_DATA_INDEX] = bSuccess?ERR_OK:ERR_NG;
    packet_add_tail(szPacket, pl_len); 
    return bSuccess;
}   

bool op_memory_write(alt_u8 *szPacket){
    bool bSuccess = FALSE;
    PKLEN_TYPE pl_len, write_len;
    alt_u8 mem_type;
    alt_u32 offset;    
    
    memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));  // payload len 
    if (pl_len > 5){
        mem_type = szPacket[PKT_DATA_INDEX];
        memcpy(&offset, &szPacket[PKT_DATA_INDEX+1],sizeof(offset));
        write_len = pl_len - 5;
        bSuccess = memory_write(mem_type, offset, write_len, &szPacket[PKT_DATA_INDEX+5]);
    }else{        
        APP_DEBUG(("invalid led param len\r\n"));   
    }
    pl_len = 1;
    memcpy(&szPacket[PKT_LEN_INDEX], &pl_len, sizeof(pl_len));
    szPacket[PKT_DATA_INDEX] = bSuccess?ERR_OK:ERR_NG;
    packet_add_tail(szPacket, pl_len); 
    return bSuccess;
}       




bool memory_read(alt_u8 mem_type, alt_u32 offset, PKLEN_TYPE read_len, alt_u8 szBuf[]){
    bool bSuccess = FALSE;

    //APP_DEBUG(("memory_read, type:%d,offset:%X, size:%Xh\r\n", mem_type, offset, read_len));
//    }else if (mem_type == MM_SSRAM || mem_type == MM_SDRAM || mem_type == MM_SDRAM_2 ){
    if (mem_type == MM_SSRAM){
        alt_u8 *pmem;
        int i;
        volatile alt_u8 data;
        //if (mem_type == MM_SSRAM)
            pmem = (alt_u8 *)SSRAM_BASE;
        //else 
        //if (mem_type == MM_SDRAM)
        //    pmem = (alt_u8 *)SDRAM_U1_BASE;
        //else if (mem_type == MM_SDRAM_2)
        //    pmem = (alt_u8 *)SDRAM_U2_BASE;
#if 1            
        for(i=0;i<read_len;i++){
            data = *(pmem + offset + i);
            szBuf[i] = data;
           // APP_DEBUG(("[%d]=%02Xh\r\n", i, data));
        }
#else        
        memcpy(szBuf, (void *)(pmem+offset), read_len);
#endif        
        bSuccess = TRUE;
    }
    return bSuccess;
}

bool memory_write(alt_u8 mem_type, alt_u32 offset, PKLEN_TYPE write_len, alt_u8 szData[]){
    bool bSuccess = FALSE;
    //APP_DEBUG(("memory_write, type:%d,offset:%X, size:%Xh\r\n", mem_type, offset, write_len));
//    if (mem_type == MM_SSRAM || mem_type == MM_SDRAM || mem_type == MM_SDRAM_2 ){
    if (mem_type == MM_SSRAM){
        //volatile alt_u8 *psram = (alt_u8 *)SRAM_BASE;
        //memcpy((void *)(psram+offset), szData, write_len);
        volatile alt_u8 *pmem;
        //register volatile alt_u8 data;
        //if (mem_type == MM_SSRAM)
            pmem = (volatile alt_u8 *)SSRAM_BASE;
        //else 
        //if (mem_type == MM_SDRAM)
        //    pmem = (volatile alt_u8 *)SDRAM_U1_BASE;
        //else if (mem_type == MM_SDRAM_2)
        //    pmem = (volatile alt_u8 *)SDRAM_U2_BASE;
        //else    
        //    APP_DEBUG(("memory_write, unsupported memory type\r\n"));
#if 1            
        int i;
        for(i=0;i<write_len;i++){
            *(pmem + offset + i) = szData[i];
            //APP_DEBUG(("[%d]=%02Xh\r\n", i, szData[i]));
        }
#else              
        memcpy((void *)(pmem+offset), szData, write_len);
#endif        
        bSuccess = TRUE;
        
        
    }
    return bSuccess;
}


