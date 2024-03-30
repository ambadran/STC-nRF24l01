#ifndef NRF24l01_H
#define NRF24l01_H


// nRF24L01+ registers
#define CONFIG 0x00
#define EN_RXADDR 0x02
#define SETUP_AW 0x03
#define SETUP_RETR 0x04
#define RF_CH 0x05
#define RF_SETUP 0x06
#define STATUS 0x07
#define RX_ADDR_P0 0x0A
#define TX_ADDR 0x10
#define RX_PW_P0 0x11
#define FIFO_STATUS 0x17
#define DYNPD 0x1C

// CONFIG register
#define EN_CRC 0x08  // enable CRC
#define CRCO 0x04  // CRC encoding scheme; 0=1 byte, 1=2 bytes
#define PWR_UP 0x02  // 1=power up, 0=power down
#define PRIM_RX 0x01  // RX/TX control; 0=PTX, 1=PRX

// RF_SETUP register
#define POWER_0 0x00  // -18 dBm
#define POWER_1 0x02  // -12 dBm
#define POWER_2 0x04  // -6 dBm
#define POWER_3 0x06  // 0 dBm
#define SPEED_1M 0x00
#define SPEED_2M 0x08
#define SPEED_250K 0x20

// STATUS register
#define RX_DR 0x40  // RX data ready; write 1 to clear
#define TX_DS 0x20  // TX data sent; write 1 to clear
#define MAX_RT 0x10  // max retransmits reached; write 1 to clear

// FIFO_STATUS register
#define RX_EMPTY 0x01  // 1 if RX FIFO is empty

// constants for instructions
#define R_RX_PL_WID 0x60  // read RX payload width
#define R_RX_PAYLOAD 0x61  // read RX payload
#define W_TX_PAYLOAD 0xA0  // write TX payload
#define FLUSH_TX 0xE1  // flush TX FIFO
#define FLUSH_RX 0xE2  // flush RX FIFO
#define NOP 0xFF  // use to read STATUS register


#define PDLIB_NRF24_SUCCESS				0
#define PDLIB_NRF24_ERROR				-1
#define PDLIB_NRF24_TX_FIFO_FULL		-2
#define PDLIB_NRF24_TX_ARC_REACHED		-3
#define PDLIB_NRF24_INVALID_ARGUMENT	-4
#define PDLIB_NRF24_BUFFER_TOO_SMALL	-5

#define PDLIB_NRF24_PIPE0	0
#define PDLIB_NRF24_PIPE1	1
#define PDLIB_NRF24_PIPE2	2
#define PDLIB_NRF24_PIPE3	3
#define PDLIB_NRF24_PIPE4	4
#define PDLIB_NRF24_PIPE5	5

#define PDLIB_INTERRUPT_MAX_RT		1 << 0
#define PDLIB_INTERRUPT_DATA_SENT	1 << 1
#define PDLIB_INTERRUPT_DATA_READY	1 << 2

/* PS: Function prototypes */

/* PS: Basic APIs */
void NRF24L01_Init(void);
int NRF24L01_SendData(char *pcData, unsigned int uiLength);
int NRF24L01_SendDataTo(unsigned char *address, char *pcData, unsigned int uiLength);
int NRF24L01_WaitForDataRx(char *pcPipeNo);
char NRF24L01_GetRxDataAmount(unsigned char ucDataPipe);
int NRF24L01_GetData(char pipe, char* pcData, char *length);

/* Intermediate APIs */
/* PS: Configuration APIs */

void NRF24L01_RegisterInit();

/* #ifdef NRF24L01_CONF_INTERRUPT_PIN */
/* void NRF24L01_InterruptInit(unsigned long ulIRQBase, unsigned long ulIRQPin, unsigned long ulIRQPeriph, unsigned long ulInterrupt); */
/* #endif */

void NRF24L01_PowerDown();
void NRF24L01_PowerUp();
void NRF24L01_SetAirDataRate(unsigned char ucDataRate);
void NRF24L01_SetLNAGain(unsigned char ucLNAGain);
void NRF24L01_SetPAGain(int iPAGain);
void NRF24L01_SetRFChannel(unsigned char ucRFChannel);
void NRF24L01_SetARC(unsigned char ucVal);
void NRF24L01_SetARD(unsigned short ucVal);
void NRF24L01_SetAddressWidth(unsigned char ucVal);
unsigned char NRF24L01_GetStatus();

void NRF24L01_EnableFeatureDynPL(unsigned char pipe);
void NRF24L01_EnableFeatureAckPL();
void NRF24L01_EnableFeatureNoAckTx();
char NRF24L01_GetInterruptState();
void NRF24L01_ClearInterruptFlag(char interrupt_bm);

/* TX mode related */
void NRF24L01_FlushTX();
void NRF24L01_SetTXAddress(unsigned char* address);
int NRF24L01_SetTxPayload(char* pcData, unsigned int uiLength);
int NRF24L01_SubmitData(char *pcData, unsigned int uiLength);
void NRF24L01_EnableTxMode();
void NRF24L01_DisableTxMode();
int NRF24L01_IsTxFifoFull();
int NRF24L01_IsTxFifoEmpty();
int NRF24L01_AttemptTx();
int NRF24L01_WaitForTxComplete(char busy_wait);
char NRF24L01_GetAckDataAmount();

/* RX mode related */
void NRF24L01_FlushRX();
void NRF24L01_SetRxAddress(unsigned char ucDataPipe, unsigned char *pucAddress);
void NRF24L01_SetRXPacketSize(unsigned char ucDataPipe, unsigned char ucPacketSize);
void NRF24L01_EnableRxMode();
void NRF24L01_DisableRxMode();
int NRF24L01_IsDataReadyRx(char *pcPipeNo);
void NRF24L01_ReadRxPayload(char* pcData, char cLength);
int NRF24L01_SetAckPayload(char* pcData, char pipe, unsigned int uiLength);
unsigned char NRF24L01_CarrierDetect();

/* PS: Advanced APIs, Register level access */
/* unsigned char NRF24L01_RegisterRead_8(unsigned char ucRegister); */
/* unsigned char NRF24L01_RegisterRead_Multi(unsigned char ucRegister, unsigned char *pucBuffer, unsigned int uiLength); */
/* void NRF24L01_RegisterWrite_8(unsigned char ucRegister, unsigned char ucValue); */
/* void NRF24L01_RegisterWrite_Multi(unsigned char ucRegister, unsigned char *pucData, unsigned int uiLength); */
/* void NRF24L01_SendCommand(unsigned char ucCommand, char *pcData, unsigned int uiLength); */
/* void NRF24L01_SendRcvCommand(unsigned char ucCommand, char *pcData, unsigned int uiLength); */

#endif



#endif
