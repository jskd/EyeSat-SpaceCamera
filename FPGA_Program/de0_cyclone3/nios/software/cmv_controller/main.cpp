#include "system.h"
#include "FSM.h"
#include "stdio.h"

int main() {
	FSM* fsm = new FSM();
	while (1) {
		try {
			fsm->action();
			fsm->transition();
		} catch (const char* msg) {
			printf("%s\r\n", msg);
		}
	}
	return 0;
}
