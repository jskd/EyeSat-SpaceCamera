//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	112;
parameter	H_SYNC_BACK	=	248;
parameter	H_SYNC_ACT	=	1280;	
parameter	H_SYNC_FRONT=	48;
parameter	H_SYNC_TOTAL=	1688;
//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	3;
parameter	V_SYNC_BACK	=	38;
parameter	V_SYNC_ACT	=	1024;	
parameter	V_SYNC_FRONT=	1;
parameter	V_SYNC_TOTAL=	1066;
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;
