#ifndef __SOC_AM752_H_
#define __SOC_AM752_H_

#include <stdint.h>

//Basic data types definitions
typedef long unsigned int   uint32_t;
typedef unsigned char       uint8_t;
typedef short unsigned int  uin16_t;
typedef volatile uint32_t   _mem_uint32_t;

//Base register definitions
#define GPIO3_BASE                  (0x48057000UL)
#define CM_L4PER_CLKSTCTRL_BASE     (0x4A009700UL)
#define CTRL_MODULE_CORE_BASE       (0x4A002000UL)

typedef struct
{
  _mem_uint32_t GPIO_REVISION;              //Offset 0x00
  uint32_t      RESERVED0[3];               //Offset 0x04-0x0c (not used)
  _mem_uint32_t GPIO_SYSCONFIG;             //Offset 0x10
  uint32_t      RESERVED1[40];              //Offset 0x14-0x110 (not used)
  _mem_uint32_t GPIO_SYSTATUS;              //Offset 0x114   
  uint32_t      RESERVED2[7];               //Offset 0x118 to 0x130   
  _mem_uint32_t GPIO_OE;                    //Offset 0x134   
  uint32_t      RESERVED3;                  //Offset 0x138   
  _mem_uint32_t GPIO_DATAOUT;               //Offset 0x13c   
}GPIO_3_5_TypeDef;

typedef struct 
{
  _mem_uint32_t CM_L4PER_CLKSTCTRL;         //Offset 0x00
  uint32_t      RESERVED0[25];              //Offset 0x04-0x64
  _mem_uint32_t CM_L4PER_GPIO3_CLKCTRL;     //Offset 0x68
}CM_L4PER_CLKSTCTRL_Typedef;

typedef struct
{
  uint32_t      RESERVED0[1343];            //Offset 0x00-0x14FC
  _mem_uint32_t CTRL_CORE_PAD_VIN1A_D3;     //Offset 0x1500
  uint32_t      RESERVED1[6];               //Offset 0x1504-0x1508
  _mem_uint32_t CTRL_CORE_PAD_VIN1A_D10;    //Offset 0x151C
  _mem_uint32_t CTRL_CORE_PAD_VIN1A_D11;    //Offset 0x1520
  uint32_t      RESERVED2;                  //Offset 0x1524
  _mem_uint32_t CTRL_CORE_PAD_VIN1A_D13;     //Offset 0x1528
}CTRL_MODULE_CORE_Typedef;

//Main user structure register handlers
#define GPIO3                 ((GPIO_3_5_TypeDef *) GPIO3_BASE)
#define CM_L4PER_CLKSTCTRL    ((CM_L4PER_CLKSTCTRL_Typedef *) CM_L4PER_CLKSTCTRL_BASE)
#define CTRL_MODULE_CORE      ((CTRL_MODULE_CORE_Typedef *) CTRL_MODULE_CORE_BASE)

#endif