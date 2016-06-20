#include "system.h"
#include "FSM.h"


int main() {
	FSM* fsm= new FSM();
	while (1) {
		fsm->action();
		fsm->transition();
	}
	return 0;
}
