#include "mbed.h"
#include "rtos.h"

Serial pc(USBTX, USBRX);
DigitalOut led1(PA_5);
//DigitalOut led1(PB_13);


int main() {
  pc.printf("Echoes back to the screen anything you type\n");
	while (true) {
		led1 = !led1;
		wait_ms(200);
    //pc.putc(pc.getc());
  }
}
