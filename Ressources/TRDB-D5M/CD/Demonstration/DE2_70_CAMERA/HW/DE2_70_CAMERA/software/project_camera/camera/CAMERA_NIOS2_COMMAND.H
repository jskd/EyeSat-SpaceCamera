
#ifndef NIOS2_COMMAND_H
#define NIOS2_COMMAND_H

#ifdef __cplusplus
extern "C" {
#endif

//#pragma pack(push)     /* structure alignment: 1 byte */
//#pragma pack(1)

#if 0
// Packet definition
typedef unsigned short PKLEN_TYPE;
#define PKT_HEADER_TAG      0xAA
#define PKT_TAIL_TAG        0x55
#define PKT_HEADER_INDEX    0
#define PKT_OP_INDEX        1
#define PKT_LEN_INDEX       2      // payload lenght
#define PKT_DATA_INDEX      4      // playload start index
#define PKT_CRC_INDEX(pk_len)   (pk_len-2)
#define PKT_TAIL_INDEX(pk_len)  (pk_len-1)
#define PKT_CRC_LEN(pk_len)     (pk_len-3)
#define PKT_NONEPL_SIZE     6     // none payload size in a pakcet
#define PKT_PC2NIOS_MAX_LEN (64*1024)
#define PKT_NIOS2PC_MAX_LEN (64*1024)   // max for 16-bit len
#define PKT_PC2NIOS_MAX_PL_LEN (PKT_PC2NIOS_MAX_LEN - 10)
#define PKT_NIOS2PC_MAX_PL_LEN (PKT_NIOS2PC_MAX_LEN - 10)
#define PKT_PC2NIOS_MAX_MEM_LEN (PKT_PC2NIOS_MAX_PL_LEN - 10)
#define PKT_NIOS2PC_MAX_MEM_LEN (PKT_NIOS2PC_MAX_PL_LEN - 10)

#else

typedef unsigned int PKLEN_TYPE;
#define PKT_HEADER_TAG      0xAA
#define PKT_TAIL_TAG        0x55
#define PKT_HEADER_INDEX    0
#define PKT_OP_INDEX        1
#define PKT_LEN_INDEX       2      // payload lenght
#define PKT_DATA_INDEX      6      // playload start index
#define PKT_CRC_INDEX(pk_len)   (pk_len-2)
#define PKT_TAIL_INDEX(pk_len)  (pk_len-1)
#define PKT_CRC_LEN(pk_len)     (pk_len-3)
#define PKT_NONEPL_SIZE     8     // none payload size in a pakcet
#define PKT_PC2NIOS_MAX_LEN (512*1024)
#define PKT_NIOS2PC_MAX_LEN (512*1024)   // max for 32-bit len
#define PKT_PC2NIOS_MAX_PL_LEN (PKT_PC2NIOS_MAX_LEN - 10)
#define PKT_NIOS2PC_MAX_PL_LEN (PKT_NIOS2PC_MAX_LEN - 10)
#define PKT_PC2NIOS_MAX_MEM_LEN (PKT_PC2NIOS_MAX_PL_LEN - 10)
#define PKT_NIOS2PC_MAX_MEM_LEN (PKT_NIOS2PC_MAX_PL_LEN - 10)

#endif

typedef enum{
    ERR_OK = 0,
    ERR_NG,
    ERR_PARAM_LEN
}ERROR_TYPE;

/* ===== Memory Type Definition =====*/
typedef enum{
        MM_LOCAL = 0,
        MM_FLASH,
        MM_SSRAM,
        MM_DDR_SDRAM,
        MM_EEPROM,
        MM_DRAM,
        MM_SRAM,
        MM_SDRAM,
        MM_SDRAM_2,
}MEMORY_TYPE;


/* ===== OP Definition ===== */
typedef enum{
        OP_POLLING = 0,
        OP_CAMERA_CONFIG,
        OP_CAMERA_CAPTURE,
        OP_CAMERA_PORT_READ,
        OP_MEMORY_WRITE,
        OP_MEMORY_READ
}OP_TYPE;

//#pragma pack(pop)

#ifdef __cplusplus
        }
#endif


#endif /* JTAG_TEST_COMMAND_H */

