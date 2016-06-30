#ifndef PACKET_H_
#define PACKET_H_

#include "CAMERA_NIOS2_COMMAND.h"

alt_u8 CalCRC(alt_u8 *Packet, PKLEN_TYPE len);
bool ValidPacket(alt_u8 szPacket[], PKLEN_TYPE pk_len);
bool SendPacket(OP_TYPE OP, unsigned char *pPayload, PKLEN_TYPE pl_len);
void packet_add_tail(alt_u8 szPacket[], PKLEN_TYPE pl_len);
bool read_packet(alt_u8 szPacket[]);
bool build_packet_pl1(alt_u8 szPacket[], alt_u8 OP, bool bResponeSuccess);
void dump_op_name(alt_u8 OP);

#endif /*PACKET_H_*/
