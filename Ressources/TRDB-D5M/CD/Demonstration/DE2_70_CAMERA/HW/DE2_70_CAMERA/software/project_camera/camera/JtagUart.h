#ifndef JTAGUART_H_
#define JTAGUART_H_



bool JTAGUART_Open(void);
void JTAGUART_Close(void);
void JTAGUART_ClearInput(void);
bool JTAGUART_Write(alt_u8 *pData, alt_u32 nDataSize);
bool JTAGUART_Read(alt_u8 *pBuffer, alt_u32 nBufferSize, int *prx_len);
bool JTAGUART_ReadWithTimeout(alt_u8 *pBuffer, alt_u32 nBufferSize, int *prx_len, alt_u32 timeout);
bool JTAGUART_NoneBlockingRead(alt_u8 *pBuffer, alt_u32 nBufferSize, int *prx_len);
bool JTAGUART_WriteString(alt_u8 *pString);

#endif /*JTAGUART_H_*/

