typedef long unsigned int uint32_t;

#define CM_L4PER_CLKSTCTRL                  (uint32_t)(0x4A009700)
#define CTRL_MODULE_CORE                    (uint32_t)(0x4A002000)

#define GPIO3                               (uint32_t)(0x48057000)
#define GPIO3_SYS_STATUS                    (uint32_t)(0x00000010)
#define GPIO3_SYS_CONFIG                    (uint32_t)(0x00000114)
#define GPIO3_OE                            (uint32_t)(0x00000134)
#define GPIO3_DATAOUT                       (uint32_t)(0x0000013c)
#define CM_L4PER_CLKSTCTRL_GPIO3_CLKCTRL    (uint32_t)(0x00000068)
#define CM_CORE_PAD_VIN1A_D3                (uint32_t)(0x00001500)
#define CM_CORE_PAD_VIN1A_D10               (uint32_t)(0x0000151C)
#define CM_CORE_PAD_VIN1A_D11               (uint32_t)(0x00001520)
#define CM_CORE_PAD_VIN1A_D13               (uint32_t)(0x00001528)

// Register address
#define UART_SYSC                           (uint32_t) (0x00000054)
#define UART_SYSS                           (uint32_t) (0x00000058)
#define UART_LCR                            (uint32_t) (0x0000000C)
#define UART_MDR1                           (uint32_t) (0x00000020)
#define UART_DLL                            (uint32_t) (0x00000000) 
#define UART_DLH                            (uint32_t) (0x00000004) 
#define UART_IER                            (uint32_t) (0x00000004)
#define UART_EFR                            (uint32_t) (0x00000008)
#define UART_FCR                            (uint32_t) (0x00000008)
#define UART_THR                            (uint32_t) (0x00000000)
#define UART_SSR                            (uint32_t) (0x00000044)  
#define UART_MCR                            (uint32_t) (0x00000010)
#define UART_TCR                            (uint32_t) (0x00000018)
#define UART_TLR                            (uint32_t) (0x0000001c)
#define UART_LSR                            (uint32_t) (0x00000014)
#define UART1_BASE_ADDRESS                  (uint32_t) (0x4806A000)
#define CM_L4PER_UART1_CLKCTRL              (uint32_t) (0x00000140) 
#define CTRL_CORE_PAD_UART1_RXD             (uint32_t) (0x000017E0)
#define CTRL_CORE_PAD_UART1_TXD             (uint32_t) (0x000017E4)

//Leds definitions
#define LD8_GPIO3_7             (1<<7)
#define LD5_GPIO3_14            (1<<14)
#define LD4_GPIO3_15            (1<<15)
#define LD2_GPIO3_17            (1<<17)

volatile uint32_t *ptrGPIO3;
volatile uint32_t *ptrUart;
volatile uint32_t *ptrUart_SYSC;
volatile uint32_t *ptrUart_SYSS;
volatile uint32_t *ptrUart_LCR;
volatile uint32_t *ptrUart_MDR1;
volatile uint32_t *ptrUart_DLL;
volatile uint32_t *ptrUart_DLH;
volatile uint32_t *ptrUart_IER;
volatile uint32_t *ptrUart_EFR;
volatile uint32_t *ptrUart_FCR;
volatile uint32_t *ptrUart_THR;
volatile uint32_t *ptrUart_SSR;
volatile uint32_t *ptrUart_MCR;
volatile uint32_t *ptrUart_TLR;
volatile uint32_t *ptrUart_TCR;
volatile uint32_t *ptrUart_THR;
volatile uint32_t *ptrUart_LSR;

char msg[]    = "hello world!!!\r\n";
char msgCount = 0;

int main(void)
{

/*
  LED configuration settings for debuging purposes
*/  
   ptrGPIO3    = (uint32_t*)(CM_L4PER_CLKSTCTRL + CM_L4PER_CLKSTCTRL_GPIO3_CLKCTRL);
  *ptrGPIO3   = 257;

  ptrGPIO3    = (uint32_t*)(GPIO3 + GPIO3_SYS_CONFIG);
  *ptrGPIO3   = 2;

  ptrGPIO3    = (uint32_t*)(GPIO3 +GPIO3_SYS_STATUS);
  while(*ptrGPIO3);

  ptrGPIO3    = (uint32_t*)(GPIO3 +GPIO3_SYS_CONFIG);
  *ptrGPIO3   = 8;

  ptrGPIO3    = (uint32_t*)(GPIO3 +GPIO3_OE);
  *ptrGPIO3   = 0;

  ptrGPIO3   = (uint32_t*)(CTRL_MODULE_CORE + CM_CORE_PAD_VIN1A_D3);
  *ptrGPIO3  = 14;

  ptrGPIO3   = (uint32_t*)(CTRL_MODULE_CORE + CM_CORE_PAD_VIN1A_D10);
  *ptrGPIO3  = 14;

  ptrGPIO3   = (uint32_t*)(CTRL_MODULE_CORE + CM_CORE_PAD_VIN1A_D11);
  *ptrGPIO3  = 14;

  ptrGPIO3   = (uint32_t*)(CTRL_MODULE_CORE + CM_CORE_PAD_VIN1A_D13);
  *ptrGPIO3  = 14;

  ptrGPIO3    = (uint32_t*)(GPIO3 +GPIO3_DATAOUT);
  *ptrGPIO3   = 0x0;     //Shutdown all LEDs

  //LED INIT SEQUENCE
  *ptrGPIO3    = LD8_GPIO3_7;
  for(int i=0; i<0x7ffff;i++);
  *ptrGPIO3    |= LD5_GPIO3_14;
  for(int i=0; i<0x7ffff;i++);
  *ptrGPIO3    |= LD4_GPIO3_15;
  for(int i=0; i<0x7ffff;i++);
  *ptrGPIO3    |= LD2_GPIO3_17;
  for(int i=0; i<0x7ffff;i++);
  *ptrGPIO3     = 0x00;

/*
  USART1 configuration settings
*/
  //Init uart pointers
  ptrUart_SYSC    = (uint32_t*)(UART1_BASE_ADDRESS+UART_SYSC);
  ptrUart_SYSS    = (uint32_t*)(UART1_BASE_ADDRESS+UART_SYSS);
  ptrUart_LCR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_LCR);
  ptrUart_MDR1    = (uint32_t*)(UART1_BASE_ADDRESS+UART_MDR1);
  ptrUart_DLL     = (uint32_t*)(UART1_BASE_ADDRESS+UART_DLL);
  ptrUart_DLH     = (uint32_t*)(UART1_BASE_ADDRESS+UART_DLH);
  ptrUart_IER     = (uint32_t*)(UART1_BASE_ADDRESS+UART_IER);
  ptrUart_EFR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_EFR);
  ptrUart_FCR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_FCR);
  ptrUart_THR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_THR);
  ptrUart_SSR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_SSR);
  ptrUart_MCR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_MCR);
  ptrUart_TLR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_TLR);
  ptrUart_TCR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_TCR);
  ptrUart_THR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_THR);
  ptrUart_LSR     = (uint32_t*)(UART1_BASE_ADDRESS+UART_LSR);

/*
  1. Global Initialization of Surrounding Modules for UART/IrDA/CIR
*/
  //1.1 UART functional and interface clocks must be enabled
  ptrUart = (uint32_t*) (CM_L4PER_CLKSTCTRL+CM_L4PER_UART1_CLKCTRL);
  *ptrUart  &= ~(1<<24);          //Select the Selects FUNC_48M_FCLK
  *ptrUart  |= (0x02 << 0);       //Module is explicitly enabled

  //1.2 Module-specific pad muxing must be set in the control module. 
  ptrUart = (uint32_t*)(CTRL_MODULE_CORE+CTRL_CORE_PAD_UART1_TXD);
  *ptrUart = 0;    //Select the mux mode 0  (uart1_txd)
  ptrUart = (uint32_t*)(CTRL_MODULE_CORE+CTRL_CORE_PAD_UART1_RXD);
  *ptrUart = 0;    //Select the mux mode 0  (uart1_rxd)
  
/*
  2. UART/IrDA/CIR Module Global Initialization
    Notes:
      The MDR1 to his default value (0x7)
      The Hardware control is disabled UART_EFR[7], UART_EFR[6] = 0
      XON_EN is disabled (software control capabilitie)
      SPEC_CHAR is disabled (software control capabilitie)
      the software control mode is UART_EFR[3:0] = 0b0001 (Receiver compares XON2, XOFF2)
*/
  //2.1 Perform a software reset
  *ptrUart_SYSC |= (1<<1);              //Software reset 
  while( (*ptrUart_SYSS & 0x1) == 0);   //2.2 Wait until reset is finished.
  

/*
  3. Disable software control receiver ***
*/
  //3.1 Set the register access submode TCR_TLR 
  *ptrUart_LCR = 0xBF;                //3.1.1 Configure mode B   
  *ptrUart_EFR |= (1<<4);             //3.1.2 Enable writing to register bits UART_MCR[6:5]   UART_EFR[4] ENHANCED_EN 1
  *ptrUart_LCR &= ~(0b1111111 << 0);  //3.1.3 Configure mode A
  *ptrUart_MCR |= (1<<6);             //3.1.4 Set the submode TCR_TLR   UART_MCR[6] TCR_TLR 1
  //3.2 disable XON any function
  *ptrUart_MCR &= ~(1<<5);
  //3.3 disable special character function 
  *ptrUart_EFR &= ~(1<<5);
  //3.4 Disable software control
  *ptrUart_EFR &= ~(0b1111 << 0);

/*
  4. BaudRate settings (115200 baud)
    Note: The 5.1 to 5.4 are already done in the step 4
*/
  //4.1 Switch to register configuration mode B  
  *ptrUart_LCR = 0xBF;
  //4.2 Enable access to UART_IER[7:4]      UART_EFR[4] ENHANCED_EN     1
  *ptrUart_EFR |= (1<<4);
  //4.3 Switch register operational mode
  *ptrUart_LCR &= ~(1<<7);
  //4.4 Disable sleep mode
  *ptrUart_LCR &= ~(1<<4);
  //4.5 Switch to register configuration mode A or B
  *ptrUart_LCR = 0xBF;      //Set the mode B
  //4.6 Set the appropriate divisor value 
  *ptrUart_DLL = 0x1A;  
  *ptrUart_DLH = 0x00;  

/*
  5. Set FIFOs in polling mode (Disable FIFOs)
*/
  *ptrUart_FCR &= ~(1<<0);  //Clear the FIFO_EN bit

/*
  6. Protocol settings
*/
  //6.1 Load desired protocol formatting
  *ptrUart_LCR &= ~(0x3f);  //Clear the bits[0:6] and keep the [7] high
  *ptrUart_LCR |= (0x3<<0); //Set 8 bits length
  //6.2 Switch to register operational mode
  *ptrUart_LCR &= ~(1<<7);      //Set operational mode
  *ptrUart_LCR &= ~(1<<6);      //Normal operating condition

/*
  8. Enable UART
*/
  *ptrUart_MDR1 &= ~(0x7<<0); //Set UART 16x mode   

/*
  Debug lines
*/  
  // //Check TX_FIFO_E
  // if( (*ptrUart_LSR & (1<<5)) != 0)
  // {
  //   *ptrGPIO3 |= LD8_GPIO3_7;   //Transmit hold register (TX FIFO) is empty
  // }
  
  // //Check TX_SR_E
  // if( (*ptrUart_LSR & (1<<6)) != 0)
  // {
  //   *ptrGPIO3 |= LD5_GPIO3_14;   //Transmitter hold (TX FIFO) and shift registers are empty
  // }
  // while(1);

  msgCount = 0;
  while(1)
  {
      //Check if the TX FIFO is full.
      if( (*ptrUart_LSR & (1<<5)) != 0)
      {
        //Transmit hold register (TX FIFO) is empty
        *ptrUart_THR  = (uint32_t) msg[msgCount];   //Transmitt data  
        *ptrGPIO3 |= LD8_GPIO3_7;                   //Turn on LED8
        msgCount++;
      }
      else
      {
        *ptrGPIO3 &= ~LD8_GPIO3_7;         //Turn off LED8
      }

      //Message character count reset condition

      if(msgCount == sizeof(msg))
        msgCount = 0;
  }

	return 0;
}