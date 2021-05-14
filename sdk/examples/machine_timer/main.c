#include <stdint.h>

#include "../../bsp/include/machine_timer.h"
#include "../../bsp/include/utils.h"
#include "../../bsp/include/gpio.h"

static volatile uint32_t count;

int main()
{
    count = 0;

#ifdef SIMULATION
    machine_timer_set_cmp_val(5000);    // 100us period
    machine_timer_clear_irq_pending();
    global_irq_enable();
    machine_timer_irq_enable(1);
    machine_timer_enable(1);

    while (1) {
        if (count == 3) {
            machine_timer_enable(0);
            // TODO: do something
            set_test_pass();
            break;
        }
    }

    return 0;
#else
    machine_timer_set_cmp_val(500000);  // 10ms period
    machine_timer_clear_irq_pending();
    global_irq_enable();
    machine_timer_irq_enable(1);
    machine_timer_enable(1);

    GPIO_REG(GPIO_CTRL) |= 0x1;  // set gpio0 output mode

    while (1) {
        // 500ms
        if (count == 50) {
            count = 0;
            GPIO_REG(GPIO_DATA) ^= 0x1; // toggle led
        }
    }
#endif
}

void timer_irq_handler() __attribute__((interrupt));
void timer_irq_handler()
{
    count++;

    machine_timer_clear_irq_pending();
}
