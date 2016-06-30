#ifndef FUNCTION_H_
#define FUNCTION_H_

bool op_polling(alt_u8 *szPacket);
bool op_camera_config(alt_u8 *szPacket);
bool op_camera_capture(alt_u8 *szPacket);
bool op_camera_port_read(alt_u8 *szPacket);
bool op_memory_read(alt_u8 *szPacket);
bool op_memory_write(alt_u8 *szPacket);



#endif /*FUNCTION_H_*/
