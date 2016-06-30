// --------------------------------------------------------------------
// Copyright (c) 2005 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use this code for all Terasic Development Boards 
//   and Altera Development Kits made by Terasic.  
//   Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
//---------------------------------------------------------------------------

#include "my_includes.h"
#include "camera_hal.h"
#include "packet.h"
#include "function.h"
#include "jtaguart.h"
#include "uart.h"
#include "LCD.h"


#ifdef DEBUG_APP
    #define APP_DEBUG(x)    DEBUG(x)  
#else
    #define APP_DEBUG(x)
#endif


void init(void){
    
    UART_Open();
    
    APP_DEBUG(("\r\n===== DE2-70 Camera Utility [10/26/2007] =====\r\n"));
    APP_DEBUG(("sizeof(PKLEN_TYPE)=%d\r\n", sizeof(PKLEN_TYPE)));
    
    if (!JTAGUART_Open()){
        APP_DEBUG(("JTAG open fail\r\n"));
    }else{  
        APP_DEBUG(("JTAG open success and clear input buffer\r\n"));
        JTAGUART_ClearInput();
    }     
    
    if (LCD_Open()){
        LCD_TextOut("Welcome DE2-70\nCamera Demo\n");
    }else{
        APP_DEBUG(("[LCD] open fail\r\n"));
    }   
    
}   

int main()
{
    alt_u32 time_start, ticks_per_sec;
    alt_u8 *szPacket; 
    
    init();
 
    szPacket = malloc(PKT_NIOS2PC_MAX_LEN);
    if (!szPacket){
        APP_DEBUG(("malloc fail, program is terminated!\r\n"));
        return 0;
    }else{
        APP_DEBUG(("malloc %d byte success\r\n",PKT_NIOS2PC_MAX_LEN));
    }    
    
   
   // Flash_InfoDump();
   
    ticks_per_sec = alt_ticks_per_second();
    while(1){
            if (!read_packet(szPacket))
                continue;
              
            bool bResponse = TRUE, bSuccess = FALSE;
            time_start = alt_nticks();
            alt_u8 OP = szPacket[PKT_OP_INDEX];
            dump_op_name(OP);
            switch(OP){
                case OP_POLLING:
                    bSuccess = op_polling(szPacket); // ack
                    break;
                case OP_CAMERA_CONFIG:
                    bSuccess = op_camera_config(szPacket);
                    break;                    
                case OP_CAMERA_CAPTURE:
                    bSuccess = op_camera_capture(szPacket);
                    break;                    
                case OP_CAMERA_PORT_READ:
                    bSuccess = op_camera_port_read(szPacket);
                    break;                                                                                                                                                                                                     
                case OP_MEMORY_READ:
                    bSuccess = op_memory_read(szPacket);
                    break;    
                case OP_MEMORY_WRITE:
                    bSuccess = op_memory_write(szPacket);
                    break;   
                default:    
                    bResponse = FALSE;
                    break; 
            }  // end of switch
            if (bResponse){  // report result to PC
                alt_u32 time_elapsed;
                PKLEN_TYPE pl_len;
                alt_u32 pk_len;
                memcpy(&pl_len, &szPacket[PKT_LEN_INDEX], sizeof(pl_len));  // payload len
                pk_len = pl_len + PKT_NONEPL_SIZE;
                if (pk_len > PKT_NIOS2PC_MAX_LEN){ 
                    APP_DEBUG(("response packet len too long\r\n"));
                }else{
                    //DEBUG_PRINTF("pk_len=%d", pk_len);
                    //DEBUG_HEX_PRINTF(szPacket, pk_len);
                    APP_DEBUG(("JTAGUART_Write (len=%d)...\r\n", pk_len));    
                    if (!JTAGUART_Write(szPacket, pk_len)){
                        APP_DEBUG(("send packet fail, len=%d\r\n", pk_len));
                    }    
                        
                }                    
                time_elapsed = alt_nticks() - time_start;
                APP_DEBUG(("\r\n%s(OP=%d, %d ms)\r\n", bSuccess?"ok":"ng", OP,  (int)(1000*time_elapsed/ticks_per_sec)));    
                //JTAGUART_ClearInput();            
             }  // if response
                        
        
    }  // while(1)

    return 0;
  
}


