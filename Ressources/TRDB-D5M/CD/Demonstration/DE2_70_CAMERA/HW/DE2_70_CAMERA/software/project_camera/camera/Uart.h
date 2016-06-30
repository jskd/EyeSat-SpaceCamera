#ifndef UART_H_
#define UART_H_

#define SUPPORT_NON_BLOCKING_UART

bool UART_Open(void);
void UART_Close(void);
bool UART_IsOpened(void);
bool UART_Write(char *pData, int nDataSize);
bool UART_WriteString(char *pString);
bool UART_Read(char *pBuffer, int nBufferSize, int *prx_len);
bool UART_NoneBlockingRead(char *pBuffer, int nBufferSize, int *prx_len);
alt_u8 UART_ReceivedDataSize(void);

#endif /*UART_H_*/
