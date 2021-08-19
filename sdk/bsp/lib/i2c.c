#include <stdint.h>

#include "../include/i2c.h"


void i2c0_set_clk(uint16_t clk_div)
{
    I2C0_REG(I2C_CTRL_REG_OFFSET) &= ~(I2C_CTRL_CLK_DIV_MASK << I2C_CTRL_CLK_DIV_OFFSET);
    I2C0_REG(I2C_CTRL_REG_OFFSET) |= clk_div << I2C_CTRL_CLK_DIV_OFFSET;
}

void i2c0_set_mode(i2c_mode_e mode)
{
    if (mode == I2C_MODE_MASTER)
        I2C0_REG(I2C_CTRL_REG_OFFSET) &= ~(1 << I2C_CTRL_MODE_BIT);
    else
        I2C0_REG(I2C_CTRL_REG_OFFSET) |= 1 << I2C_CTRL_MODE_BIT;
}

void i2c0_master_set_write(uint8_t yes)
{
    if (yes)
        I2C0_REG(I2C_CTRL_REG_OFFSET) &= ~(1 << I2C_CTRL_WRITE_BIT);
    else
        I2C0_REG(I2C_CTRL_REG_OFFSET) |= 1 << I2C_CTRL_WRITE_BIT;
}

void i2c0_set_interrupt_enable(uint8_t en)
{
    if (en)
        I2C0_REG(I2C_CTRL_REG_OFFSET) |= 1 << I2C_CTRL_INT_EN_BIT;
    else
        I2C0_REG(I2C_CTRL_REG_OFFSET) &= ~(1 << I2C_CTRL_INT_EN_BIT);
}

void i2c0_clear_irq_pending()
{
    I2C0_REG(I2C_CTRL_REG_OFFSET) |= 1 << I2C_CTRL_INT_PENDING_BIT;
}

uint8_t i2c0_get_irq_pending()
{
    if (I2C0_REG(I2C_CTRL_REG_OFFSET) & (1 << I2C_CTRL_INT_PENDING_BIT))
        return 1;
    else
        return 0;
}

void i2c0_master_set_info(uint8_t addr, uint8_t reg, uint8_t data)
{
    I2C0_REG(I2C_MASTER_DATA_REG_OFFSET) = (addr << I2C_MASTER_DATA_ADDRESS_OFFSET) |
                                                    (reg << I2C_MASTER_DATA_REGREG_OFFSET) |
                                                    (data << I2C_MASTER_DATA_DATA_OFFSET);
}

uint8_t i2c0_master_get_data()
{
    uint8_t data;

    data = (I2C0_REG(I2C_MASTER_DATA_REG_OFFSET) >> I2C_MASTER_DATA_DATA_OFFSET) & I2C_MASTER_DATA_DATA_MASK;

    return data;
}

void i2c0_start()
{
    I2C0_REG(I2C_CTRL_REG_OFFSET) |= 1 << I2C_CTRL_START_BIT;
}

void i2c0_stop()
{
    I2C0_REG(I2C_CTRL_REG_OFFSET) &= ~(1 << I2C_CTRL_START_BIT);
}
