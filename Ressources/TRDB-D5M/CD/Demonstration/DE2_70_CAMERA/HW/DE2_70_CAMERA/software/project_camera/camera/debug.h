#ifndef DEBUG_H_
#define DEBUG_H_


//============== debug config ===================
#define ENABLE_DEBUG    // control all of debug message
#define ENABLE_UART_DEBUG



#define DEBUG_APP
#define DEBUG_ENET          
#define DEBUG_I2C
#define xDEBUG_AUDIO
#define DEBUG_FLASH
#define xDEBUG_SDCARD
#define xDEBUG_FAT           
#define DEBUG_USB_ISR
#define xDEBUG_USB_PORT
#define xDEBUG_USB_PTD
#define xDEBUG_USB_HAL4D13
#define xDEBUG_USB_REG
#define xDEBUG_USB_LB     // USB LOOPBACK TEST
#define xDEBUG_USB_MOUSE
#define xDEBUG_PS2
#define DEBUG_JTAG

//================================================

int myprintf(char *format, ...);
int myprintf_hexarray(unsigned char *pHex, int len);
int myprintf_dwordarray(unsigned int *pArray, int nElementCount);

#ifdef ENABLE_DEBUG
    #define DEBUG(x)               {myprintf x;}  // standard in/out, specifed in project (it could be uart, jtag, or lcd)
    #define DEBUG_HEX_ARRAY(x)     {myprintf_hexarray x;}
    #define DEBUG_DWORD_ARRAY(x)   {myprintf_dwordarray x;}
#else    
    #define DEBUG(x)              
    #define DEBUG_HEX_ARRAY(x)    
    #define DEBUG_DWORD_ARRAY(x)  
#endif 

#endif /*DEBUG_H_*/
