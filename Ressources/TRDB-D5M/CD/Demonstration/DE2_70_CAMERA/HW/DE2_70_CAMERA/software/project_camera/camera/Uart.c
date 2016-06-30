#include "my_includes.h"
#include "Uart.h"
#include "sys/alt_dev.h"
#include "altera_avalon_uart.h"


#ifdef SUPPORT_NON_BLOCKING_UART

static int pUart=0;


bool UART_Open(void){
    bool bSuccess = FALSE;
   // bool bNoneBlocking = FALSE;
    UART_Close();
    
    pUart = open(UART_NAME, O_ACCMODE); // open file for reading and writing
//    pUart = open(UART_NAME, O_ACCMODE | ((bNoneBlocking)?O_NONBLOCK:0)); // open file for reading and writing
    if (pUart){
//        int i = fcntl(pJtagUart, F_SETFL, O_NONBLOCK);
//        printf("fcntl = %d\r\n", i);
        bSuccess = TRUE;
    }        
    return bSuccess;
}


void UART_Close(void){
    if (pUart){
        close(pUart);
        pUart = 0;
    }
}


bool UART_Write(char *pData, int nDataSize){
    bool bSuccess = FALSE;
    if (pUart){
        if (write(pUart, pData, nDataSize) == nDataSize)
            bSuccess = TRUE;
    }            
    return bSuccess;        
        
}

bool UART_Read(char *pBuffer, int nBufferSize, int *prx_len){
    bool bSuccess = FALSE;
    if (pUart){
        *prx_len = read(pUart, pBuffer, nBufferSize); 
        if (*prx_len == nBufferSize)
            bSuccess = TRUE;
    }            
    return bSuccess;      
}

bool UART_NoneBlockingRead(char *pBuffer, int nBufferSize, int *prx_len){
    bool bSuccess;
    fcntl(pUart, F_SETFL, O_ACCMODE | O_NONBLOCK);
    bSuccess = UART_Read(pBuffer, nBufferSize, prx_len);
    fcntl(pUart, F_SETFL, O_ACCMODE);
    return bSuccess;
}




#else  //SUPPORT_NON_BLOCKING_UART


static FILE *pUart=0;


bool UART_Open(void){
    bool bSuccess = FALSE;
    UART_Close();
    pUart = fopen(UART_NAME, "r+"); // open file for reading and writing
    if (pUart){
        bSuccess = TRUE;
    }        
    return bSuccess;
}

void UART_Close(void){
    if (pUart){
        fclose(pUart);
        pUart = NULL;
    }
}


bool UART_Write(char *pData, int nDataSize){
    bool bSuccess = FALSE;
    if (pUart){
        if (fwrite(pData, 1, nDataSize, pUart) == nDataSize)
            bSuccess = TRUE;
    }            
    return bSuccess;        
        
}

bool UART_Read(char *pBuffer, int nBufferSize, int *prx_len){
    bool bSuccess = FALSE;
    int nReadSize = 0;
    if (pUart){
        *prx_len = fread(pBuffer, 1, nBufferSize, pUart);
        if (*prx_len == nBufferSize)
            bSuccess = TRUE;
    }            
    return nReadSize;      
}

alt_u8 UART_ReceivedDataSize(void){
    alt_u16 size = 0;
    alt_u16 status;
    status = IORD(UART_BASE, 4);
    if ((status & 0x80) == 0x80){
        size = IORD(UART_BASE, 0);
        size &= 0x7F;
    }        
    return size;
}

#endif //#ifdef SUPPORT_NON_BLOCKING_UART

bool UART_WriteString(char *pString){
    return UART_Write(pString, strlen(pString));
}

bool UART_IsOpened(void){
    if (pUart)
        return TRUE;
    return FALSE;        
}
