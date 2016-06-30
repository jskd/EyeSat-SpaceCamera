#include "my_includes.h"
#include "JtagUart.h"


#ifdef DEBUG_JTAG
    #define JTAG_DEBUG(x)    DEBUG(x)  
#else
    #define JTAG_DEBUG(x)
#endif



static int pJtagUart=0;


bool JTAGUART_Open(void){
    bool bSuccess = FALSE;
    JTAGUART_Close();
    
    pJtagUart = open(JTAG_UART_NAME, O_ACCMODE); // open file for reading and writing
    if (pJtagUart){
        bSuccess = TRUE;
    }        
    return bSuccess;
}


void JTAGUART_Close(void){
    if (pJtagUart){
        close(pJtagUart);
        pJtagUart = 0;
    }
}

void JTAGUART_ClearInput(void){
    alt_u8 szBuffer[16];
    alt_u32 timeout = alt_ticks_per_second()/10, start_time;
    int rx_len;
    bool bDone = FALSE;
    start_time = alt_nticks();
    while(!bDone){
        JTAGUART_NoneBlockingRead(szBuffer, sizeof(szBuffer), &rx_len);
        if (rx_len <= 0 || ((alt_nticks() - start_time) > timeout))
            bDone = TRUE;
    }        
}


// multiple write
bool JTAGUART_Write(alt_u8 *pData, alt_u32 nDataSize){
    bool bSuccess = FALSE;
    if (pJtagUart){
        int nXferId = 0;
        const int nMaxWriteSize = 2048; // max 2 k
        int nTotalWrittenSize = 0, nThisWriteSize, nWrittenSize;
        const alt_u32 timeout = alt_ticks_per_second()*2; // 2 second
        alt_u32 start_time;
        bool bTimeout = FALSE;
        bSuccess = TRUE;
        start_time = alt_nticks();
        while ((nTotalWrittenSize < nDataSize) && bSuccess && !bTimeout){
            nThisWriteSize = nDataSize - nTotalWrittenSize;
            if (nThisWriteSize > nMaxWriteSize)
                nThisWriteSize = nMaxWriteSize;
            nWrittenSize = write(pJtagUart, pData+nTotalWrittenSize, nThisWriteSize);
            if (nWrittenSize < 0){
                //bSuccess = FALSE;
                JTAG_DEBUG(("[JTAG][%d] write fail nWrittenSize=%d\r\n", nXferId, nWrittenSize));
                nWrittenSize = 0;
            }else{
                nTotalWrittenSize += nWrittenSize;
            }    
            
            // check tieout
            if (((nTotalWrittenSize < nDataSize) && (alt_nticks() - start_time) > timeout)){
                JTAG_DEBUG(("[JTAG]timeout\r\n"));
                 bTimeout = TRUE;  
            }                               
            nXferId ++;
        } // end of while
        if (bTimeout)
            bSuccess = FALSE;
        
    }            
    return bSuccess;        
        
}




bool JTAGUART_Read(alt_u8 *pBuffer, alt_u32 nBufferSize, int *prx_len){
    bool bSuccess = FALSE;
    if (pJtagUart){
        *prx_len = read(pJtagUart, pBuffer, nBufferSize);
        if (*prx_len == nBufferSize)
            bSuccess = TRUE;
    }            
    return bSuccess;      
}



bool JTAGUART_ReadWithTimeout(alt_u8 *pBuffer, alt_u32 nBufferSize, int *prx_len, alt_u32 timeout){
    bool bSuccess = FALSE;
    if (pJtagUart){
        alt_u32 rx_total_cnt = 0;
        int rx_cnt;
        alt_u32 time_start;
        bool bTimeout = FALSE;
        time_start = alt_nticks();
        const int nMaxReadSize = 2*1024;//2*1024; // max 2 k
        int nThisReadSize;
        while(!bSuccess && !bTimeout){
            nThisReadSize = nBufferSize-rx_total_cnt;
            if (nThisReadSize > nMaxReadSize)
                nThisReadSize = nMaxReadSize;
#if 1            
            rx_cnt = read(pJtagUart, pBuffer+rx_total_cnt, nThisReadSize);
#else            
            JTAGUART_NoneBlockingRead(pBuffer+rx_total_cnt, nThisReadSize, &rx_cnt);
#endif            
            if (rx_cnt < 0){
                //IOWR(PIO_LED_BASE, 0, 0x0F00);
               // JTAG_DEBUG(("[JTAG] nThisReadSize=%d, rx_cnt=%d, time-elapsed:%d ticks, timeout=%d\r\n", nThisReadSize, rx_cnt, (alt_nticks() - time_start), timeout));
                rx_cnt = 0;
            }else if (rx_cnt > nThisReadSize){
                //IOWR(PIO_LED_BASE, 0, 0xF000);
                rx_cnt = 0;
            }
            rx_total_cnt += rx_cnt;
            if (rx_total_cnt >= nBufferSize)
                bSuccess = TRUE;
            else if ((alt_nticks() - time_start) > timeout)
                bTimeout = TRUE;    
        }
        *prx_len = rx_total_cnt;                
    }            
    return bSuccess;      
}



bool JTAGUART_NoneBlockingRead(alt_u8 *pBuffer, alt_u32 nBufferSize, int *prx_len){
    bool bSuccess;
    fcntl(pJtagUart, F_SETFL, O_ACCMODE | O_NONBLOCK);
    bSuccess = JTAGUART_Read(pBuffer, nBufferSize, prx_len);
    fcntl(pJtagUart, F_SETFL, O_ACCMODE);
   
    return bSuccess;
}


bool JTAGUART_WriteString(alt_u8 *pString){
    return JTAGUART_Write(pString, strlen(pString));
}
