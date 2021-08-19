// Generated register defines for i2c

// Copyright information found in source file:
// Copyright lowRISC contributors.

// Licensing information found in source file:
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#ifndef _I2C_REG_DEFS_
#define _I2C_REG_DEFS_

#ifdef __cplusplus
extern "C" {
#endif
// Register width
#define I2C_PARAM_REG_WIDTH 32

#define I2C0_BASE_ADDR      (0x60000000)
#define I2C0_REG(offset)    (*((volatile uint32_t *)(I2C0_BASE_ADDR + offset)))

typedef enum {
    I2C_MODE_MASTER = 0,
    I2C_MODE_SLAVE
} i2c_mode_e;

void i2c0_set_clk(uint16_t clk_div);
void i2c0_set_mode(i2c_mode_e mode);
void i2c0_master_set_write(uint8_t yes);
void i2c0_set_interrupt_enable(uint8_t en);
void i2c0_clear_irq_pending();
uint8_t i2c0_get_irq_pending();
void i2c0_master_set_info(uint8_t addr, uint8_t reg, uint8_t data);
uint8_t i2c0_master_get_data();
void i2c0_start();
void i2c0_stop();

// I2C control register
#define I2C_CTRL_REG_OFFSET 0x0
#define I2C_CTRL_REG_RESVAL 0x0
#define I2C_CTRL_START_BIT 0
#define I2C_CTRL_INT_EN_BIT 1
#define I2C_CTRL_INT_PENDING_BIT 2
#define I2C_CTRL_MODE_BIT 3
#define I2C_CTRL_WRITE_BIT 4
#define I2C_CTRL_ACK_BIT 5
#define I2C_CTRL_ERROR_BIT 6
#define I2C_CTRL_CLK_DIV_MASK 0xffff
#define I2C_CTRL_CLK_DIV_OFFSET 16
#define I2C_CTRL_CLK_DIV_FIELD \
  ((bitfield_field32_t) { .mask = I2C_CTRL_CLK_DIV_MASK, .index = I2C_CTRL_CLK_DIV_OFFSET })

// I2C master transfer data register
#define I2C_MASTER_DATA_REG_OFFSET 0x4
#define I2C_MASTER_DATA_REG_RESVAL 0x0
#define I2C_MASTER_DATA_ADDRESS_MASK 0xff
#define I2C_MASTER_DATA_ADDRESS_OFFSET 0
#define I2C_MASTER_DATA_ADDRESS_FIELD \
  ((bitfield_field32_t) { .mask = I2C_MASTER_DATA_ADDRESS_MASK, .index = I2C_MASTER_DATA_ADDRESS_OFFSET })
#define I2C_MASTER_DATA_REGREG_MASK 0xff
#define I2C_MASTER_DATA_REGREG_OFFSET 8
#define I2C_MASTER_DATA_REGREG_FIELD \
  ((bitfield_field32_t) { .mask = I2C_MASTER_DATA_REGREG_MASK, .index = I2C_MASTER_DATA_REGREG_OFFSET })
#define I2C_MASTER_DATA_DATA_MASK 0xff
#define I2C_MASTER_DATA_DATA_OFFSET 16
#define I2C_MASTER_DATA_DATA_FIELD \
  ((bitfield_field32_t) { .mask = I2C_MASTER_DATA_DATA_MASK, .index = I2C_MASTER_DATA_DATA_OFFSET })

// I2C slave received data register
#define I2C_SLAVE_DATA_REG_OFFSET 0x8
#define I2C_SLAVE_DATA_REG_RESVAL 0x0
#define I2C_SLAVE_DATA_SLAVE_DATA_MASK 0xff
#define I2C_SLAVE_DATA_SLAVE_DATA_OFFSET 0
#define I2C_SLAVE_DATA_SLAVE_DATA_FIELD \
  ((bitfield_field32_t) { .mask = I2C_SLAVE_DATA_SLAVE_DATA_MASK, .index = I2C_SLAVE_DATA_SLAVE_DATA_OFFSET })

#ifdef __cplusplus
}  // extern "C"
#endif
#endif  // _I2C_REG_DEFS_
// End generated register defines for i2c