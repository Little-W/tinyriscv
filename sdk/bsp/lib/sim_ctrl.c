#include <stdint.h>

#include "../include/xprintf.h"
#include "../include/sim_ctrl.h"


static void myputchar(unsigned char c) {
    *(volatile int *)SIM_STDOUT_REG = c;
}

void sim_ctrl_init()
{
    xdev_out(myputchar);
}

void sim_end()
{
    *(volatile int *)SIM_END_REG = 1;
}
