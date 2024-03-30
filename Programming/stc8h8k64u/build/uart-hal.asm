;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module uart_hal
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fifoBytesFree
	.globl _fifoRead
	.globl _fifoWrite
	.globl _fifoClear
	.globl _startTimer
	.globl _S1SM0_FE
	.globl _T1IE
	.globl _T0IE
	.globl _T1RUN
	.globl _T0RUN
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _EA
	.globl _INT1IE
	.globl _INT0IE
	.globl _INT1TR
	.globl _INT0TR
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _USBADR
	.globl _USBCON
	.globl _USBDAT
	.globl _USBCLK
	.globl _S4BUF
	.globl _S4CON
	.globl _S3BUF
	.globl _S3CON
	.globl _S2BUF
	.globl _S2CON
	.globl _S1BUF
	.globl _S1CON
	.globl _SADEN
	.globl _SADDR
	.globl _AUXINTIF
	.globl _T3
	.globl _T3L
	.globl _T3H
	.globl _T4
	.globl _T4L
	.globl _T4H
	.globl _T4T3M
	.globl _WDT_CONTR
	.globl _AUXR
	.globl _T2
	.globl _T2H
	.globl _T2L
	.globl _T1
	.globl _T1H
	.globl _T1L
	.globl _T0
	.globl _T0H
	.globl _T0L
	.globl _TMOD
	.globl _TCON
	.globl _IRTRIM
	.globl _LIRTRIM
	.globl _IRCBAND
	.globl _SPDAT
	.globl _SPCTL
	.globl _SPSTAT
	.globl _WKTC
	.globl _WKTCH
	.globl _WKTCL
	.globl _BUS_SPEED
	.globl _P_SW2
	.globl _P_SW1
	.globl _RSTCFG
	.globl _PCON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _SP
	.globl _IP3H
	.globl _IP3L
	.globl _IP2H
	.globl _IP2L
	.globl _IE2
	.globl _IP1H
	.globl _IP1L
	.globl _IE1
	.globl _INT_CLKO
	.globl _IAP_TPS
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDR
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _P5M0
	.globl _P5M1
	.globl _P5
	.globl _P3M0
	.globl _P3M1
	.globl _P3
	.globl _P2M0
	.globl _P2M1
	.globl _P2
	.globl _P1M0
	.globl _P1M1
	.globl _P1
	.globl _TA
	.globl _DPH1
	.globl _DPL1
	.globl _DPS
	.globl _DP
	.globl _DPH
	.globl _DPL
	.globl _CMPCR2
	.globl _CMPCR1
	.globl _DMA_ADC_AMT
	.globl _ADCCFG
	.globl _ADC_RES
	.globl _ADC_RESL
	.globl _ADC_RESH
	.globl _ADC_CONTR
	.globl _uartSendBlock_PARM_4
	.globl _uartSendBlock_PARM_3
	.globl _uartSendBlock_PARM_2
	.globl _uartGetBlock_PARM_4
	.globl _uartGetBlock_PARM_3
	.globl _uartGetBlock_PARM_2
	.globl _uartInitialise_PARM_5
	.globl _uartInitialise_PARM_4
	.globl _uartInitialise_PARM_3
	.globl _uartInitialise_PARM_2
	.globl _uartTransmitBufferHasBytesFree_PARM_2
	.globl _DMA_UR4R_TXAL
	.globl _DMA_UR4R_TXAH
	.globl _DMA_UR4R_DONE
	.globl _DMA_UR4R_AMT
	.globl _DMA_UR4R_STA
	.globl _DMA_UR4R_CR
	.globl _DMA_UR4R_CFG
	.globl _DMA_UR4T_TXAL
	.globl _DMA_UR4T_TXAH
	.globl _DMA_UR4T_DONE
	.globl _DMA_UR4T_AMT
	.globl _DMA_UR4T_STA
	.globl _DMA_UR4T_CR
	.globl _DMA_UR4T_CFG
	.globl _DMA_UR3R_TXAL
	.globl _DMA_UR3R_TXAH
	.globl _DMA_UR3R_DONE
	.globl _DMA_UR3R_AMT
	.globl _DMA_UR3R_STA
	.globl _DMA_UR3R_CR
	.globl _DMA_UR3R_CFG
	.globl _DMA_UR3T_TXAL
	.globl _DMA_UR3T_TXAH
	.globl _DMA_UR3T_DONE
	.globl _DMA_UR3T_AMT
	.globl _DMA_UR3T_STA
	.globl _DMA_UR3T_CR
	.globl _DMA_UR3T_CFG
	.globl _DMA_UR2R_TXAL
	.globl _DMA_UR2R_TXAH
	.globl _DMA_UR2R_DONE
	.globl _DMA_UR2R_AMT
	.globl _DMA_UR2R_STA
	.globl _DMA_UR2R_CR
	.globl _DMA_UR2R_CFG
	.globl _DMA_UR2T_TXAL
	.globl _DMA_UR2T_TXAH
	.globl _DMA_UR2T_DONE
	.globl _DMA_UR2T_AMT
	.globl _DMA_UR2T_STA
	.globl _DMA_UR2T_CR
	.globl _DMA_UR2T_CFG
	.globl _DMA_UR1R_TXAL
	.globl _DMA_UR1R_TXAH
	.globl _DMA_UR1R_DONE
	.globl _DMA_UR1R_AMT
	.globl _DMA_UR1R_STA
	.globl _DMA_UR1R_CR
	.globl _DMA_UR1R_CFG
	.globl _DMA_UR1T_TXAL
	.globl _DMA_UR1T_TXAH
	.globl _DMA_UR1T_DONE
	.globl _DMA_URTX_AMT
	.globl _DMA_UR1T_STA
	.globl _DMA_UR1T_CR
	.globl _DMA_UR1T_CFG
	.globl _TM4PS
	.globl _TM3PS
	.globl _TM2PS
	.globl _IRC48MCR
	.globl _IRCDB
	.globl _MCLKOCR
	.globl _CKSEL
	.globl _IRC32KCR
	.globl _XOSCCR
	.globl _HIRCCR
	.globl _CLKDIV
	.globl _DMA_SPI_CFG2
	.globl _DMA_SPI_RXAL
	.globl _DMA_SPI_RXAH
	.globl _DMA_SPI_TXAL
	.globl _DMA_SPI_TXAH
	.globl _DMA_SPI_DONE
	.globl _DMA_SPI_AMT
	.globl _DMA_SPI_STA
	.globl _DMA_SPI_CR
	.globl _DMA_SPI_CFG
	.globl _SSEC
	.globl _SEC
	.globl _MIN
	.globl _HOUR
	.globl _DAY
	.globl _MONTH
	.globl _YEAR
	.globl _INISSEC
	.globl _INISEC
	.globl _INIMIN
	.globl _INIHOUR
	.globl _INIDAY
	.globl _INIMONTH
	.globl _INIYEAR
	.globl _ALASSEC
	.globl _ALASEC
	.globl _ALAMIN
	.globl _ALAHOUR
	.globl _RTCIF
	.globl _RTCIEN
	.globl _RTCCFG
	.globl _RTCCR
	.globl _PWMB_OISR
	.globl _PWMB_DTR
	.globl _PWMB_BKR
	.globl _PWMB_CCR4L
	.globl _PWMB_CCR4H
	.globl _PWMB_CCR3L
	.globl _PWMB_CCR3H
	.globl _PWMB_CCR2L
	.globl _PWMB_CCR2H
	.globl _PWMB_CCR1L
	.globl _PWMB_CCR1H
	.globl _PWMB_RCR
	.globl _PWMB_ARRL
	.globl _PWMB_ARRH
	.globl _PWMB_PSCRL
	.globl _PWMB_PSCRH
	.globl _PWMB_CNTRL
	.globl _PWMB_CNTRH
	.globl _PWMB_CCER2
	.globl _PWMB_CCER1
	.globl _PWMB_CCMR4
	.globl _PWMB_CCMR3
	.globl _PWMB_CCMR2
	.globl _PWMB_CCMR1
	.globl _PWMB_EGR
	.globl _PWMB_SR2
	.globl _PWMB_SR1
	.globl _PWMB_IER
	.globl _PWMB_ETR
	.globl _PWMB_SMCR
	.globl _PWMB_CR2
	.globl _PWMB_CR1
	.globl _PWMA_OISR
	.globl _PWMA_DTR
	.globl _PWMA_BKR
	.globl _PWMA_CCR4L
	.globl _PWMA_CCR4H
	.globl _PWMA_CCR3L
	.globl _PWMA_CCR3H
	.globl _PWMA_CCR2L
	.globl _PWMA_CCR2H
	.globl _PWMA_CCR1L
	.globl _PWMA_CCR1H
	.globl _PWMA_RCR
	.globl _PWMA_ARRL
	.globl _PWMA_ARRH
	.globl _PWMA_PSCRL
	.globl _PWMA_PSCRH
	.globl _PWMA_CNTRL
	.globl _PWMA_CNTRH
	.globl _PWMA_CCER2
	.globl _PWMA_CCER1
	.globl _PWMA_CCMR4
	.globl _PWMA_CCMR3
	.globl _PWMA_CCMR2
	.globl _PWMA_CCMR1
	.globl _PWMA_EGR
	.globl _PWMA_SR2
	.globl _PWMA_SR1
	.globl _PWMA_IER
	.globl _PWMA_ETR
	.globl _PWMA_SMCR
	.globl _PWMA_CR2
	.globl _PWMA_CR1
	.globl _PWMB_IOAUX
	.globl _PWMB_PS
	.globl _PWMB_ENO
	.globl _PWMB_ETRPS
	.globl _PWMA_IOAUX
	.globl _PWMA_PS
	.globl _PWMA_ENO
	.globl _PWMA_ETRPS
	.globl _RSTFLAG
	.globl _SPFUNC
	.globl _OPCON
	.globl _ARCON
	.globl _MD4
	.globl _MD5
	.globl _MD0
	.globl _MD1
	.globl _MD2
	.globl _MD3
	.globl _DMA_LCM_RXAL
	.globl _DMA_LCM_RXAH
	.globl _DMA_LCM_TXAL
	.globl _DMA_LCM_TXAH
	.globl _DMA_LCM_DONE
	.globl _DMA_LCM_AMT
	.globl _DMA_LCM_STA
	.globl _DMA_LCM_CR
	.globl _DMA_LCM_CFG
	.globl _LCMIDDAT
	.globl _LCMIDDATH
	.globl _LCMIDDATL
	.globl _LCMSTA
	.globl _LCMCR
	.globl _LCMCFG2
	.globl _LCMCFG
	.globl _I2CMSAUX
	.globl _I2CRXD
	.globl _I2CTXD
	.globl _I2CSLADR
	.globl _I2CSLST
	.globl _I2CSLCR
	.globl _I2CMSST
	.globl _I2CMSCR
	.globl _I2CCFG
	.globl _PINIPH
	.globl _PINIPL
	.globl _P5IE
	.globl _P5DR
	.globl _P5SR
	.globl _P5NCS
	.globl _P5PU
	.globl _P5WKUE
	.globl _P5IM1
	.globl _P5IM0
	.globl _P5INTF
	.globl _P5INTE
	.globl _P3IE
	.globl _P3DR
	.globl _P3SR
	.globl _P3NCS
	.globl _P3PU
	.globl _P3WKUE
	.globl _P3IM1
	.globl _P3IM0
	.globl _P3INTF
	.globl _P3INTE
	.globl _P2IE
	.globl _P2DR
	.globl _P2SR
	.globl _P2NCS
	.globl _P2PU
	.globl _P2WKUE
	.globl _P2IM1
	.globl _P2IM0
	.globl _P2INTF
	.globl _P2INTE
	.globl _P1IE
	.globl _P1DR
	.globl _P1SR
	.globl _P1NCS
	.globl _P1PU
	.globl _P1WKUE
	.globl _P1IM1
	.globl _P1IM0
	.globl _P1INTF
	.globl _P1INTE
	.globl _DMA_M2M_RXAL
	.globl _DMA_M2M_RXAH
	.globl _DMA_M2M_TXAL
	.globl _DMA_M2M_TXAH
	.globl _DMA_M2M_DONE
	.globl _DMA_M2M_AMT
	.globl _DMA_M2M_STA
	.globl _DMA_M2M_CR
	.globl _DMA_M2M_CFG
	.globl _CMPEXCFG
	.globl _DMA_ADC_CHSW1
	.globl _DMA_ADC_CHSW0
	.globl _DMA_ADC_CFG2
	.globl _DMA_ADC_RXAL
	.globl _DMA_ADC_RXAH
	.globl _DMA_ADC_STA
	.globl _DMA_ADC_CR
	.globl _DMA_ADC_CFG
	.globl _ADCEXCFG
	.globl _ADCTIM
	.globl _UART1_transmitBuffer
	.globl _UART1_receiveBuffer
	.globl _uartIsTransmissionComplete
	.globl _uartTransmitBufferHasBytesFree
	.globl _uartReceiveBufferBytes
	.globl _uartFlushReceiveBuffer
	.globl _uartInitialise
	.globl _uart1_isr
	.globl _uartGetBlock
	.globl _uartSendBlock
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ADC_CONTR	=	0x00bc
_ADC_RESH	=	0x00bd
_ADC_RESL	=	0x00be
_ADC_RES	=	0xbdbe
_ADCCFG	=	0x00de
_DMA_ADC_AMT	=	0x00fa
_CMPCR1	=	0x00e6
_CMPCR2	=	0x00e7
_DPL	=	0x0082
_DPH	=	0x0083
_DP	=	0x8382
_DPS	=	0x00e3
_DPL1	=	0x00e4
_DPH1	=	0x00e5
_TA	=	0x00ae
_P1	=	0x0090
_P1M1	=	0x0091
_P1M0	=	0x0092
_P2	=	0x00a0
_P2M1	=	0x0095
_P2M0	=	0x0096
_P3	=	0x00b0
_P3M1	=	0x00b1
_P3M0	=	0x00b2
_P5	=	0x00c8
_P5M1	=	0x00c9
_P5M0	=	0x00ca
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_ADDR	=	0xc3c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_IAP_TPS	=	0x00f5
_INT_CLKO	=	0x008f
_IE1	=	0x00a8
_IP1L	=	0x00b8
_IP1H	=	0x00b7
_IE2	=	0x00af
_IP2L	=	0x00b5
_IP2H	=	0x00b6
_IP3L	=	0x00df
_IP3H	=	0x00ee
_SP	=	0x0081
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_PCON	=	0x0087
_RSTCFG	=	0x00ff
_P_SW1	=	0x00a2
_P_SW2	=	0x00ba
_BUS_SPEED	=	0x00a1
_WKTCL	=	0x00aa
_WKTCH	=	0x00ab
_WKTC	=	0xabaa
_SPSTAT	=	0x00cd
_SPCTL	=	0x00ce
_SPDAT	=	0x00cf
_IRCBAND	=	0x009d
_LIRTRIM	=	0x009e
_IRTRIM	=	0x009f
_TCON	=	0x0088
_TMOD	=	0x0089
_T0L	=	0x008a
_T0H	=	0x008c
_T0	=	0x8c8a
_T1L	=	0x008b
_T1H	=	0x008d
_T1	=	0x8d8b
_T2L	=	0x00d7
_T2H	=	0x00d6
_T2	=	0xd6d7
_AUXR	=	0x008e
_WDT_CONTR	=	0x00c1
_T4T3M	=	0x00d1
_T4H	=	0x00d2
_T4L	=	0x00d3
_T4	=	0xd2d3
_T3H	=	0x00d4
_T3L	=	0x00d5
_T3	=	0xd4d5
_AUXINTIF	=	0x00ef
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_S1CON	=	0x0098
_S1BUF	=	0x0099
_S2CON	=	0x009a
_S2BUF	=	0x009b
_S3CON	=	0x00ac
_S3BUF	=	0x00ad
_S4CON	=	0x0084
_S4BUF	=	0x0085
_USBCLK	=	0x00dc
_USBDAT	=	0x00ec
_USBCON	=	0x00f4
_USBADR	=	0x00fc
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_P5_0	=	0x00c8
_P5_1	=	0x00c9
_P5_2	=	0x00ca
_P5_3	=	0x00cb
_P5_4	=	0x00cc
_P5_5	=	0x00cd
_INT0TR	=	0x0088
_INT1TR	=	0x008a
_INT0IE	=	0x00a8
_INT1IE	=	0x00aa
_EA	=	0x00af
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_T0RUN	=	0x008c
_T1RUN	=	0x008e
_T0IE	=	0x00a9
_T1IE	=	0x00ab
_S1SM0_FE	=	0x009f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_uartGetBlock_sloc0_1_0:
	.ds 1
_uartGetBlock_sloc1_1_0:
	.ds 3
_uartSendBlock_sloc0_1_0:
	.ds 1
_uartSendBlock_sloc1_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_UART1_receiveBufferData:
	.ds 16
_UART1_receiveBuffer::
	.ds 8
_UART1_transmitBufferData:
	.ds 16
_UART1_transmitBuffer::
	.ds 8
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_ADCTIM	=	0xfea8
_ADCEXCFG	=	0xfead
_DMA_ADC_CFG	=	0xfa10
_DMA_ADC_CR	=	0xfa11
_DMA_ADC_STA	=	0xfa12
_DMA_ADC_RXAH	=	0xfa17
_DMA_ADC_RXAL	=	0xfa18
_DMA_ADC_CFG2	=	0xfa19
_DMA_ADC_CHSW0	=	0xfa1a
_DMA_ADC_CHSW1	=	0xfa1b
_CMPEXCFG	=	0xfeae
_DMA_M2M_CFG	=	0xfa00
_DMA_M2M_CR	=	0xfa01
_DMA_M2M_STA	=	0xfa02
_DMA_M2M_AMT	=	0xfa03
_DMA_M2M_DONE	=	0xfa04
_DMA_M2M_TXAH	=	0xfa05
_DMA_M2M_TXAL	=	0xfa06
_DMA_M2M_RXAH	=	0xfa07
_DMA_M2M_RXAL	=	0xfa08
_P1INTE	=	0xfd01
_P1INTF	=	0xfd11
_P1IM0	=	0xfd21
_P1IM1	=	0xfd31
_P1WKUE	=	0xfd41
_P1PU	=	0xfe11
_P1NCS	=	0xfe19
_P1SR	=	0xfe21
_P1DR	=	0xfe29
_P1IE	=	0xfe31
_P2INTE	=	0xfd02
_P2INTF	=	0xfd12
_P2IM0	=	0xfd22
_P2IM1	=	0xfd32
_P2WKUE	=	0xfd42
_P2PU	=	0xfe12
_P2NCS	=	0xfe1a
_P2SR	=	0xfe22
_P2DR	=	0xfe2a
_P2IE	=	0xfe32
_P3INTE	=	0xfd03
_P3INTF	=	0xfd13
_P3IM0	=	0xfd23
_P3IM1	=	0xfd33
_P3WKUE	=	0xfd43
_P3PU	=	0xfe13
_P3NCS	=	0xfe1b
_P3SR	=	0xfe23
_P3DR	=	0xfe2b
_P3IE	=	0xfe33
_P5INTE	=	0xfd05
_P5INTF	=	0xfd15
_P5IM0	=	0xfd25
_P5IM1	=	0xfd35
_P5WKUE	=	0xfd45
_P5PU	=	0xfe15
_P5NCS	=	0xfe1d
_P5SR	=	0xfe25
_P5DR	=	0xfe2d
_P5IE	=	0xfe35
_PINIPL	=	0xfd60
_PINIPH	=	0xfd61
_I2CCFG	=	0xfe80
_I2CMSCR	=	0xfe81
_I2CMSST	=	0xfe82
_I2CSLCR	=	0xfe83
_I2CSLST	=	0xfe84
_I2CSLADR	=	0xfe85
_I2CTXD	=	0xfe86
_I2CRXD	=	0xfe87
_I2CMSAUX	=	0xfe88
_LCMCFG	=	0xfe50
_LCMCFG2	=	0xfe51
_LCMCR	=	0xfe52
_LCMSTA	=	0xfe53
_LCMIDDATL	=	0xfe54
_LCMIDDATH	=	0xfe55
_LCMIDDAT	=	0xfe54
_DMA_LCM_CFG	=	0xfa70
_DMA_LCM_CR	=	0xfa71
_DMA_LCM_STA	=	0xfa72
_DMA_LCM_AMT	=	0xfa73
_DMA_LCM_DONE	=	0xfa74
_DMA_LCM_TXAH	=	0xfa75
_DMA_LCM_TXAL	=	0xfa76
_DMA_LCM_RXAH	=	0xfa77
_DMA_LCM_RXAL	=	0xfa78
_MD3	=	0xfcf0
_MD2	=	0xfcf1
_MD1	=	0xfcf2
_MD0	=	0xfcf3
_MD5	=	0xfcf4
_MD4	=	0xfcf5
_ARCON	=	0xfcf6
_OPCON	=	0xfcf7
_SPFUNC	=	0xfe08
_RSTFLAG	=	0xfe09
_PWMA_ETRPS	=	0xfeb0
_PWMA_ENO	=	0xfeb1
_PWMA_PS	=	0xfeb2
_PWMA_IOAUX	=	0xfeb3
_PWMB_ETRPS	=	0xfeb4
_PWMB_ENO	=	0xfeb5
_PWMB_PS	=	0xfeb6
_PWMB_IOAUX	=	0xfeb7
_PWMA_CR1	=	0xfec0
_PWMA_CR2	=	0xfec1
_PWMA_SMCR	=	0xfec2
_PWMA_ETR	=	0xfec3
_PWMA_IER	=	0xfec4
_PWMA_SR1	=	0xfec5
_PWMA_SR2	=	0xfec6
_PWMA_EGR	=	0xfec7
_PWMA_CCMR1	=	0xfec8
_PWMA_CCMR2	=	0xfec9
_PWMA_CCMR3	=	0xfeca
_PWMA_CCMR4	=	0xfecb
_PWMA_CCER1	=	0xfecc
_PWMA_CCER2	=	0xfecd
_PWMA_CNTRH	=	0xfece
_PWMA_CNTRL	=	0xfecf
_PWMA_PSCRH	=	0xfed0
_PWMA_PSCRL	=	0xfed1
_PWMA_ARRH	=	0xfed2
_PWMA_ARRL	=	0xfed3
_PWMA_RCR	=	0xfed4
_PWMA_CCR1H	=	0xfed5
_PWMA_CCR1L	=	0xfed6
_PWMA_CCR2H	=	0xfed7
_PWMA_CCR2L	=	0xfed8
_PWMA_CCR3H	=	0xfed9
_PWMA_CCR3L	=	0xfeda
_PWMA_CCR4H	=	0xfedb
_PWMA_CCR4L	=	0xfedc
_PWMA_BKR	=	0xfedd
_PWMA_DTR	=	0xfede
_PWMA_OISR	=	0xfedf
_PWMB_CR1	=	0xfee0
_PWMB_CR2	=	0xfee1
_PWMB_SMCR	=	0xfee2
_PWMB_ETR	=	0xfee3
_PWMB_IER	=	0xfee4
_PWMB_SR1	=	0xfee5
_PWMB_SR2	=	0xfee6
_PWMB_EGR	=	0xfee7
_PWMB_CCMR1	=	0xfee8
_PWMB_CCMR2	=	0xfee9
_PWMB_CCMR3	=	0xfeea
_PWMB_CCMR4	=	0xfeeb
_PWMB_CCER1	=	0xfeec
_PWMB_CCER2	=	0xfeed
_PWMB_CNTRH	=	0xfeee
_PWMB_CNTRL	=	0xfeef
_PWMB_PSCRH	=	0xfef0
_PWMB_PSCRL	=	0xfef1
_PWMB_ARRH	=	0xfef2
_PWMB_ARRL	=	0xfef3
_PWMB_RCR	=	0xfef4
_PWMB_CCR1H	=	0xfef5
_PWMB_CCR1L	=	0xfef6
_PWMB_CCR2H	=	0xfef7
_PWMB_CCR2L	=	0xfef8
_PWMB_CCR3H	=	0xfef9
_PWMB_CCR3L	=	0xfefa
_PWMB_CCR4H	=	0xfefb
_PWMB_CCR4L	=	0xfefc
_PWMB_BKR	=	0xfefd
_PWMB_DTR	=	0xfefe
_PWMB_OISR	=	0xfeff
_RTCCR	=	0xfe60
_RTCCFG	=	0xfe61
_RTCIEN	=	0xfe62
_RTCIF	=	0xfe63
_ALAHOUR	=	0xfe64
_ALAMIN	=	0xfe65
_ALASEC	=	0xfe66
_ALASSEC	=	0xfe67
_INIYEAR	=	0xfe68
_INIMONTH	=	0xfe69
_INIDAY	=	0xfe6a
_INIHOUR	=	0xfe6b
_INIMIN	=	0xfe6c
_INISEC	=	0xfe6d
_INISSEC	=	0xfe6e
_YEAR	=	0xfe70
_MONTH	=	0xfe71
_DAY	=	0xfe72
_HOUR	=	0xfe73
_MIN	=	0xfe74
_SEC	=	0xfe75
_SSEC	=	0xfe76
_DMA_SPI_CFG	=	0xfa20
_DMA_SPI_CR	=	0xfa21
_DMA_SPI_STA	=	0xfa22
_DMA_SPI_AMT	=	0xfa23
_DMA_SPI_DONE	=	0xfa24
_DMA_SPI_TXAH	=	0xfa25
_DMA_SPI_TXAL	=	0xfa26
_DMA_SPI_RXAH	=	0xfa27
_DMA_SPI_RXAL	=	0xfa28
_DMA_SPI_CFG2	=	0xfa29
_CLKDIV	=	0xfe01
_HIRCCR	=	0xfe02
_XOSCCR	=	0xfe03
_IRC32KCR	=	0xfe04
_CKSEL	=	0xfe00
_MCLKOCR	=	0xfe05
_IRCDB	=	0xfe06
_IRC48MCR	=	0xfe07
_TM2PS	=	0xfea2
_TM3PS	=	0xfea3
_TM4PS	=	0xfea4
_DMA_UR1T_CFG	=	0xfa30
_DMA_UR1T_CR	=	0xfa31
_DMA_UR1T_STA	=	0xfa32
_DMA_URTX_AMT	=	0xfa33
_DMA_UR1T_DONE	=	0xfa34
_DMA_UR1T_TXAH	=	0xfa35
_DMA_UR1T_TXAL	=	0xfa36
_DMA_UR1R_CFG	=	0xfa38
_DMA_UR1R_CR	=	0xfa39
_DMA_UR1R_STA	=	0xfa3a
_DMA_UR1R_AMT	=	0xfa3b
_DMA_UR1R_DONE	=	0xfa3c
_DMA_UR1R_TXAH	=	0xfa3d
_DMA_UR1R_TXAL	=	0xfa3e
_DMA_UR2T_CFG	=	0xfa30
_DMA_UR2T_CR	=	0xfa31
_DMA_UR2T_STA	=	0xfa32
_DMA_UR2T_AMT	=	0xfa33
_DMA_UR2T_DONE	=	0xfa34
_DMA_UR2T_TXAH	=	0xfa35
_DMA_UR2T_TXAL	=	0xfa36
_DMA_UR2R_CFG	=	0xfa38
_DMA_UR2R_CR	=	0xfa39
_DMA_UR2R_STA	=	0xfa3a
_DMA_UR2R_AMT	=	0xfa3b
_DMA_UR2R_DONE	=	0xfa3c
_DMA_UR2R_TXAH	=	0xfa3d
_DMA_UR2R_TXAL	=	0xfa3e
_DMA_UR3T_CFG	=	0xfa30
_DMA_UR3T_CR	=	0xfa31
_DMA_UR3T_STA	=	0xfa32
_DMA_UR3T_AMT	=	0xfa33
_DMA_UR3T_DONE	=	0xfa34
_DMA_UR3T_TXAH	=	0xfa35
_DMA_UR3T_TXAL	=	0xfa36
_DMA_UR3R_CFG	=	0xfa38
_DMA_UR3R_CR	=	0xfa39
_DMA_UR3R_STA	=	0xfa3a
_DMA_UR3R_AMT	=	0xfa3b
_DMA_UR3R_DONE	=	0xfa3c
_DMA_UR3R_TXAH	=	0xfa3d
_DMA_UR3R_TXAL	=	0xfa3e
_DMA_UR4T_CFG	=	0xfa30
_DMA_UR4T_CR	=	0xfa31
_DMA_UR4T_STA	=	0xfa32
_DMA_UR4T_AMT	=	0xfa33
_DMA_UR4T_DONE	=	0xfa34
_DMA_UR4T_TXAH	=	0xfa35
_DMA_UR4T_TXAL	=	0xfa36
_DMA_UR4R_CFG	=	0xfa38
_DMA_UR4R_CR	=	0xfa39
_DMA_UR4R_STA	=	0xfa3a
_DMA_UR4R_AMT	=	0xfa3b
_DMA_UR4R_DONE	=	0xfa3c
_DMA_UR4R_TXAH	=	0xfa3d
_DMA_UR4R_TXAL	=	0xfa3e
_uartGetCharacter_result_65536_32:
	.ds 1
_uartReceiveBuffer_uart_65536_51:
	.ds 1
_uartReceiveBuffer_result_65536_52:
	.ds 3
_uartTransmitBuffer_uart_65536_54:
	.ds 1
_uartTransmitBuffer_result_65536_55:
	.ds 3
_uartIsTransmissionComplete_uart_65536_57:
	.ds 1
_uartTransmitBufferHasBytesFree_PARM_2:
	.ds 1
_uartTransmitBufferHasBytesFree_uart_65536_59:
	.ds 1
_uartTransmitBufferHasBytesFree_rc_65537_61:
	.ds 1
_uartReceiveBufferBytes_uart_65536_62:
	.ds 1
_uartFlushReceiveBuffer_uart_65536_68:
	.ds 1
_uartInitialise_PARM_2:
	.ds 4
_uartInitialise_PARM_3:
	.ds 1
_uartInitialise_PARM_4:
	.ds 1
_uartInitialise_PARM_5:
	.ds 1
_uartInitialise_uart_65536_70:
	.ds 1
_uartInitialise_rc_65536_71:
	.ds 1
_uartInitialise_timer_65536_71:
	.ds 1
_uartInitialise_operationMode_131072_74:
	.ds 1
_uart1_isr_c_65536_89:
	.ds 1
_uartGetBlock_PARM_2:
	.ds 3
_uartGetBlock_PARM_3:
	.ds 1
_uartGetBlock_PARM_4:
	.ds 1
_uartGetBlock_uart_65536_94:
	.ds 1
_uartSendBlock_PARM_2:
	.ds 3
_uartSendBlock_PARM_3:
	.ds 1
_uartSendBlock_PARM_4:
	.ds 1
_uartSendBlock_uart_65536_97:
	.ds 1
_uartSendBlock_data_131073_101:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:75: FIFO_BUFFER(UART1_receiveBuffer, UART1_RX_BUFFER_SIZE, UART1_SEGMENT)
	mov	r0,#_UART1_receiveBuffer
	mov	@r0,#0x10
	mov	r0,#(_UART1_receiveBuffer + 0x0001)
	mov	@r0,#0x00
	mov	r0,#(_UART1_receiveBuffer + 0x0002)
	mov	@r0,#0x00
	mov	r0,#(_UART1_receiveBuffer + 0x0003)
	mov	@r0,#0x00
	mov	r0,#(_UART1_receiveBuffer + 0x0004)
	mov	@r0,#0x00
	mov	r0,#(_UART1_receiveBuffer + 0x0005)
	mov	@r0,#_UART1_receiveBufferData
	inc	r0
	mov	@r0,#(_UART1_receiveBufferData >> 8)
	inc	r0
	mov	@r0,#0x40
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:76: FIFO_BUFFER(UART1_transmitBuffer, UART1_TX_BUFFER_SIZE, UART1_SEGMENT)
	mov	r0,#_UART1_transmitBuffer
	mov	@r0,#0x10
	mov	r0,#(_UART1_transmitBuffer + 0x0001)
	mov	@r0,#0x00
	mov	r0,#(_UART1_transmitBuffer + 0x0002)
	mov	@r0,#0x00
	mov	r0,#(_UART1_transmitBuffer + 0x0003)
	mov	@r0,#0x00
	mov	r0,#(_UART1_transmitBuffer + 0x0004)
	mov	@r0,#0x00
	mov	r0,#(_UART1_transmitBuffer + 0x0005)
	mov	@r0,#_UART1_transmitBufferData
	inc	r0
	mov	@r0,#(_UART1_transmitBufferData >> 8)
	inc	r0
	mov	@r0,#0x40
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'uartReceiveBuffer'
;------------------------------------------------------------
;uart                      Allocated with name '_uartReceiveBuffer_uart_65536_51'
;result                    Allocated with name '_uartReceiveBuffer_result_65536_52'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:127: static FifoState *uartReceiveBuffer(Uart uart) {
;	-----------------------------------------
;	 function uartReceiveBuffer
;	-----------------------------------------
_uartReceiveBuffer:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_uartReceiveBuffer_uart_65536_51
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:128: FifoState *result = NULL;
	mov	dptr,#_uartReceiveBuffer_result_65536_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:130: switch (uart) {
	mov	dptr,#_uartReceiveBuffer_uart_65536_51
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:132: result = &UART1_receiveBuffer;
	mov	dptr,#_uartReceiveBuffer_result_65536_52
	mov	a,#_UART1_receiveBuffer
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:150: }
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:152: return result;
	mov	dptr,#_uartReceiveBuffer_result_65536_52
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTransmitBuffer'
;------------------------------------------------------------
;uart                      Allocated with name '_uartTransmitBuffer_uart_65536_54'
;result                    Allocated with name '_uartTransmitBuffer_result_65536_55'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:155: static FifoState *uartTransmitBuffer(Uart uart) {
;	-----------------------------------------
;	 function uartTransmitBuffer
;	-----------------------------------------
_uartTransmitBuffer:
	mov	a,dpl
	mov	dptr,#_uartTransmitBuffer_uart_65536_54
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:156: FifoState *result = NULL;
	mov	dptr,#_uartTransmitBuffer_result_65536_55
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:158: switch (uart) {
	mov	dptr,#_uartTransmitBuffer_uart_65536_54
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:160: result = &UART1_transmitBuffer;
	mov	dptr,#_uartTransmitBuffer_result_65536_55
	mov	a,#_UART1_transmitBuffer
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:178: }
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:180: return result;
	mov	dptr,#_uartTransmitBuffer_result_65536_55
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:181: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartIsTransmissionComplete'
;------------------------------------------------------------
;uart                      Allocated with name '_uartIsTransmissionComplete_uart_65536_57'
;buffer                    Allocated with name '_uartIsTransmissionComplete_buffer_65536_58'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:183: bool uartIsTransmissionComplete(Uart uart) {
;	-----------------------------------------
;	 function uartIsTransmissionComplete
;	-----------------------------------------
_uartIsTransmissionComplete:
	mov	a,dpl
	mov	dptr,#_uartIsTransmissionComplete_uart_65536_57
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:184: FifoState *buffer = uartTransmitBuffer(uart);
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartTransmitBuffer
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:186: return buffer->status == STATUS_CLEAR;
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	cjne	a,#0x01,00103$
00103$:
	clr	a
	rlc	a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:187: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTransmitBufferHasBytesFree'
;------------------------------------------------------------
;bytes                     Allocated with name '_uartTransmitBufferHasBytesFree_PARM_2'
;uart                      Allocated with name '_uartTransmitBufferHasBytesFree_uart_65536_59'
;rc                        Allocated with name '_uartTransmitBufferHasBytesFree_rc_65537_61'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:189: bool uartTransmitBufferHasBytesFree(Uart uart, uint8_t bytes) {
;	-----------------------------------------
;	 function uartTransmitBufferHasBytesFree
;	-----------------------------------------
_uartTransmitBufferHasBytesFree:
	mov	a,dpl
	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_59
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:190: EA = 0;
;	assignBit
	clr	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:191: bool rc = fifoBytesFree(uartTransmitBuffer(uart)) >= bytes;
	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_59
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartTransmitBuffer
	lcall	_fifoBytesFree
	mov	r7,dpl
	mov	dptr,#_uartTransmitBufferHasBytesFree_PARM_2
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	clr	a
	rlc	a
	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_61
	cjne	a,#0x01,00103$
00103$:
	clr	a
	rlc	a
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:192: EA = 1;
;	assignBit
	setb	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:194: return rc;
	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_61
	movx	a,@dptr
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:195: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartReceiveBufferBytes'
;------------------------------------------------------------
;uart                      Allocated with name '_uartReceiveBufferBytes_uart_65536_62'
;__1310720007              Allocated with name '_uartReceiveBufferBytes___1310720007_131072_64'
;rc                        Allocated with name '_uartReceiveBufferBytes_rc_65537_64'
;__1310730008              Allocated with name '_uartReceiveBufferBytes___1310730008_131073_65'
;buffer                    Allocated with name '_uartReceiveBufferBytes_buffer_196609_66'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:197: uint8_t uartReceiveBufferBytes(Uart uart) {
;	-----------------------------------------
;	 function uartReceiveBufferBytes
;	-----------------------------------------
_uartReceiveBufferBytes:
	mov	a,dpl
	mov	dptr,#_uartReceiveBufferBytes_uart_65536_62
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:198: EA = 0;
;	assignBit
	clr	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:199: uint8_t rc = fifoBytesUsed(uartReceiveBuffer(uart));
	mov	dptr,#_uartReceiveBufferBytes_uart_65536_62
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartReceiveBuffer
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:200: EA = 1;
;	assignBit
	setb	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:202: return rc;
	mov	dpl,r5
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:203: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartFlushReceiveBuffer'
;------------------------------------------------------------
;uart                      Allocated with name '_uartFlushReceiveBuffer_uart_65536_68'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:205: void uartFlushReceiveBuffer(Uart uart) {
;	-----------------------------------------
;	 function uartFlushReceiveBuffer
;	-----------------------------------------
_uartFlushReceiveBuffer:
	mov	a,dpl
	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_68
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:206: EA = 0;
;	assignBit
	clr	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:207: fifoClear(uartReceiveBuffer(uart));
	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_68
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartReceiveBuffer
	lcall	_fifoClear
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:208: EA = 1;
;	assignBit
	setb	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartInitialise'
;------------------------------------------------------------
;baudRate                  Allocated with name '_uartInitialise_PARM_2'
;baudRateTimer             Allocated with name '_uartInitialise_PARM_3'
;mode                      Allocated with name '_uartInitialise_PARM_4'
;pinSwitch                 Allocated with name '_uartInitialise_PARM_5'
;uart                      Allocated with name '_uartInitialise_uart_65536_70'
;rc                        Allocated with name '_uartInitialise_rc_65536_71'
;timer                     Allocated with name '_uartInitialise_timer_65536_71'
;operationMode             Allocated with name '_uartInitialise_operationMode_131072_74'
;scon                      Allocated with name '_uartInitialise_scon_131073_79'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:224: TimerStatus uartInitialise(Uart uart, uint32_t baudRate, UartBaudRateTimer baudRateTimer, UartMode mode, uint8_t pinSwitch) {
;	-----------------------------------------
;	 function uartInitialise
;	-----------------------------------------
_uartInitialise:
	mov	a,dpl
	mov	dptr,#_uartInitialise_uart_65536_70
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:225: TimerStatus rc = TIMER_FREQUENCY_OK;
	mov	dptr,#_uartInitialise_rc_65536_71
	clr	a
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:227: Timer timer = TIMER2;
	mov	dptr,#_uartInitialise_timer_65536_71
	mov	a,#0x02
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:236: if (uart != UART1 || mode == UART_8N1) {
	mov	dptr,#_uartInitialise_uart_65536_70
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
	mov	dptr,#_uartInitialise_PARM_4
	movx	a,@dptr
	jz	00207$
	ljmp	00104$
00207$:
00103$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:242: if (baudRateTimer == UART_USE_OWN_TIMER) {
	mov	dptr,#_uartInitialise_PARM_3
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00102$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:245: timer =  (Timer) uart;
	mov	dptr,#_uartInitialise_timer_65536_71
	mov	a,r7
	movx	@dptr,a
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:257: timer, 
	mov	dptr,#_uartInitialise_timer_65536_71
	movx	a,@dptr
	mov	r7,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:258: baudRateToSysclkDivisor(baudRate), 
	mov	dptr,#_uartInitialise_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0ec0
	mov	b,#0x16
	mov	a,#0x02
	push	ar7
	lcall	__divulong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:261: FREE_RUNNING
	mov	dptr,#_startTimer_PARM_2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_startTimer_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_startTimer_PARM_4
	movx	@dptr,a
	mov	dptr,#_startTimer_PARM_5
	movx	@dptr,a
	mov	dpl,r7
	lcall	_startTimer
	mov	a,dpl
	mov	dptr,#_uartInitialise_rc_65536_71
	movx	@dptr,a
00104$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:265: if (rc == TIMER_FREQUENCY_OK) {
	mov	dptr,#_uartInitialise_rc_65536_71
	movx	a,@dptr
	jz	00210$
	ljmp	00132$
00210$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:266: uint8_t operationMode = 0;
	mov	dptr,#_uartInitialise_operationMode_131072_74
	clr	a
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:268: switch (mode) {
	mov	dptr,#_uartInitialise_PARM_4
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jc	00115$
	mov	a,r7
	add	a,r7
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:269: case UART_8N1:
	mov	dptr,#00212$
	jmp	@a+dptr
00212$:
	sjmp	00106$
	sjmp	00111$
	sjmp	00111$
	sjmp	00111$
00106$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:270: if (uart == UART1) {
	mov	dptr,#_uartInitialise_uart_65536_70
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00115$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:271: operationMode = 1;
	mov	dptr,#_uartInitialise_operationMode_131072_74
	mov	a,#0x01
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:273: break;
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:277: case UART_MULTI_MACHINE:
	sjmp	00115$
00111$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:278: if (uart == UART1) {
	mov	dptr,#_uartInitialise_uart_65536_70
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00113$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:279: operationMode = 2 | ((baudRate & 2) >> 1);
	mov	dptr,#_uartInitialise_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	anl	ar3,#0x02
	clr	a
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	dptr,#_uartInitialise_operationMode_131072_74
	mov	a,#0x02
	orl	a,r3
	movx	@dptr,a
	sjmp	00115$
00113$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:281: operationMode = 1;
	mov	dptr,#_uartInitialise_operationMode_131072_74
	mov	a,#0x01
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:284: }
00115$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:286: uint8_t scon = ((mode == UART_MULTI_MACHINE) ? M_SM2 : 0)
	cjne	r7,#0x03,00135$
	mov	r6,#0x20
	mov	r7,#0x00
	sjmp	00136$
00135$:
	mov	r6,#0x00
	mov	r7,#0x00
00136$:
	mov	dptr,#_uartInitialise_operationMode_131072_74
	movx	a,@dptr
	jnb	acc.1,00137$
	mov	r4,#0x80
	mov	r5,#0x00
	sjmp	00138$
00137$:
	mov	r4,#0x00
	mov	r5,#0x00
00138$:
	mov	a,r4
	orl	a,r6
	orl	a,#0x10
	mov	r7,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:289: switch (uart) {
	mov	dptr,#_uartInitialise_uart_65536_70
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00220$
	sjmp	00221$
00220$:
	ljmp	00130$
00221$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:292: switch (operationMode) {
	mov	dptr,#_uartInitialise_operationMode_131072_74
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00222$
	sjmp	00117$
00222$:
	cjne	r6,#0x02,00223$
	sjmp	00121$
00223$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:293: case 1:
	cjne	r6,#0x03,00129$
	sjmp	00125$
00117$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:295: if (timer == TIMER2) {
	mov	dptr,#_uartInitialise_timer_65536_71
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00119$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:296: AUXR |= M_S1ST2;
	orl	_AUXR,#0x01
	sjmp	00129$
00119$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:298: AUXR &= ~M_S1ST2;
	anl	_AUXR,#0xfe
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:301: break;
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:303: case 2:
	sjmp	00129$
00121$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:305: if (baudRate & 1) {
	mov	dptr,#_uartInitialise_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	jnb	acc.0,00123$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:306: PCON |= M_SMOD;
	orl	_PCON,#0x80
	sjmp	00129$
00123$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:308: PCON &= ~M_SMOD;
	anl	_PCON,#0x7f
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:310: break;
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:313: case 3:
	sjmp	00129$
00125$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:315: if (baudRate & 1) {
	mov	dptr,#_uartInitialise_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	jnb	acc.0,00127$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:316: AUXR |= M_UART_M0x6;
	orl	_AUXR,#0x20
	sjmp	00129$
00127$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:318: AUXR &= ~M_UART_M0x6;
	anl	_AUXR,#0xdf
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:322: }
00129$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:326: P_SW1 = (P_SW1 & ~M_S1_S) | ((pinSwitch << P_S1_S) & M_S1_S);
	mov	a,#0x3f
	anl	a,_P_SW1
	mov	r6,a
	mov	dptr,#_uartInitialise_PARM_5
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r5,a
	mov	a,#0xc0
	anl	a,r5
	orl	a,r6
	mov	_P_SW1,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:330: S1CON = scon | ((operationMode & 1) ? M_SM1 : 0);
	mov	dptr,#_uartInitialise_operationMode_131072_74
	movx	a,@dptr
	jnb	acc.0,00139$
	mov	r5,#0x40
	mov	r6,#0x00
	sjmp	00140$
00139$:
	mov	r5,#0x00
	mov	r6,#0x00
00140$:
	mov	a,r5
	orl	a,r7
	mov	_S1CON,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:333: IE1 |= M_S1IE;
	orl	_IE1,#0x10
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:398: }
00130$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:400: uartTransmitBuffer(uart)->status = STATUS_CLEAR;
	mov	dptr,#_uartInitialise_uart_65536_70
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartTransmitBuffer
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
00132$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:403: return rc;
	mov	dptr,#_uartInitialise_rc_65536_71
	movx	a,@dptr
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:404: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart1_isr'
;------------------------------------------------------------
;c                         Allocated with name '_uart1_isr_c_65536_89'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:411: INTERRUPT(uart1_isr, UART1_INTERRUPT) {
;	-----------------------------------------
;	 function uart1_isr
;	-----------------------------------------
_uart1_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:414: EA = 0;
;	assignBit
	clr	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:416: if (S1CON & M_UART_TXIF) {
	mov	a,_S1CON
	jnb	acc.1,00105$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:417: S1CON &= ~M_UART_TXIF;
	anl	_S1CON,#0xfd
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:419: if (fifoRead(&UART1_transmitBuffer, &c, 1)) {
	mov	a,#0x01
	push	acc
	mov	a,#_uart1_isr_c_65536_89
	push	acc
	mov	a,#(_uart1_isr_c_65536_89 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_UART1_transmitBuffer
	mov	b,#0x40
	lcall	_fifoRead
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:420: S1BUF = c;
	mov	dptr,#_uart1_isr_c_65536_89
	movx	a,@dptr
	mov	_S1BUF,a
	sjmp	00105$
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:422: UART1_transmitBuffer.status = STATUS_CLEAR;
	mov	r0,#(_UART1_transmitBuffer + 0x0004)
	mov	@r0,#0x00
00105$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:426: if (S1CON & M_UART_RXIF) {
	mov	a,_S1CON
	jnb	acc.0,00107$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:427: S1CON &= ~M_UART_RXIF;
	anl	_S1CON,#0xfe
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:428: c = S1BUF;
	mov	dptr,#_uart1_isr_c_65536_89
	mov	a,_S1BUF
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:429: fifoWrite(&UART1_receiveBuffer, &c, 1);
	mov	a,#0x01
	push	acc
	mov	a,#_uart1_isr_c_65536_89
	push	acc
	mov	a,#(_uart1_isr_c_65536_89 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_UART1_receiveBuffer
	mov	b,#0x40
	lcall	_fifoWrite
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00107$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:432: EA = 1;
;	assignBit
	setb	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:433: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'uartGetBlock'
;------------------------------------------------------------
;sloc0                     Allocated with name '_uartGetBlock_sloc0_1_0'
;sloc1                     Allocated with name '_uartGetBlock_sloc1_1_0'
;data                      Allocated with name '_uartGetBlock_PARM_2'
;size                      Allocated with name '_uartGetBlock_PARM_3'
;blocking                  Allocated with name '_uartGetBlock_PARM_4'
;uart                      Allocated with name '_uartGetBlock_uart_65536_94'
;rc                        Allocated with name '_uartGetBlock_rc_65536_95'
;buffer                    Allocated with name '_uartGetBlock_buffer_65536_95'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:511: bool uartGetBlock(Uart uart, uint8_t *data, uint8_t size, BlockingOperation blocking) {
;	-----------------------------------------
;	 function uartGetBlock
;	-----------------------------------------
_uartGetBlock:
	mov	a,dpl
	mov	dptr,#_uartGetBlock_uart_65536_94
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:513: FifoState *buffer = uartReceiveBuffer(uart);
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartReceiveBuffer
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:515: do {
	mov	dptr,#_uartGetBlock_PARM_2
	movx	a,@dptr
	mov	_uartGetBlock_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_uartGetBlock_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_uartGetBlock_sloc1_1_0 + 2),a
	mov	dptr,#_uartGetBlock_PARM_4
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x01,00115$
	mov	a,r1
	sjmp	00116$
00115$:
	clr	a
00116$:
	mov	_uartGetBlock_sloc0_1_0,a
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:516: EA = 0;
;	assignBit
	clr	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:517: rc = fifoRead(buffer, data, size);
	mov	r0,_uartGetBlock_sloc1_1_0
	mov	r1,(_uartGetBlock_sloc1_1_0 + 1)
	mov	r4,(_uartGetBlock_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#_uartGetBlock_PARM_3
	movx	a,@dptr
	push	acc
	push	ar0
	push	ar1
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_fifoRead
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:518: EA = 1;
;	assignBit
	setb	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:519: } while (blocking == BLOCKING && !rc);
	mov	a,_uartGetBlock_sloc0_1_0
	jz	00104$
	mov	a,r4
	jz	00102$
00104$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:521: return rc;
	mov	dpl,r4
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:522: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartSendBlock'
;------------------------------------------------------------
;sloc0                     Allocated with name '_uartSendBlock_sloc0_1_0'
;sloc1                     Allocated with name '_uartSendBlock_sloc1_1_0'
;data                      Allocated with name '_uartSendBlock_PARM_2'
;size                      Allocated with name '_uartSendBlock_PARM_3'
;blocking                  Allocated with name '_uartSendBlock_PARM_4'
;uart                      Allocated with name '_uartSendBlock_uart_65536_97'
;buffer                    Allocated with name '_uartSendBlock_buffer_65536_98'
;rc                        Allocated with name '_uartSendBlock_rc_65536_98'
;data                      Allocated with name '_uartSendBlock_data_131073_101'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:524: bool uartSendBlock(Uart uart, const uint8_t *data, uint8_t size, BlockingOperation blocking) {
;	-----------------------------------------
;	 function uartSendBlock
;	-----------------------------------------
_uartSendBlock:
	mov	a,dpl
	mov	dptr,#_uartSendBlock_uart_65536_97
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:525: FifoState *buffer = uartTransmitBuffer(uart);
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartTransmitBuffer
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:528: do {
	mov	dptr,#_uartSendBlock_PARM_2
	movx	a,@dptr
	mov	_uartSendBlock_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_uartSendBlock_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_uartSendBlock_sloc1_1_0 + 2),a
	mov	dptr,#_uartSendBlock_PARM_4
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x01,00132$
	mov	a,r1
	sjmp	00133$
00132$:
	clr	a
00133$:
	mov	_uartSendBlock_sloc0_1_0,a
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:529: EA = 0;
;	assignBit
	clr	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:530: rc = fifoWrite(buffer, data, size);
	mov	r0,_uartSendBlock_sloc1_1_0
	mov	r1,(_uartSendBlock_sloc1_1_0 + 1)
	mov	r4,(_uartSendBlock_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#_uartSendBlock_PARM_3
	movx	a,@dptr
	push	acc
	push	ar0
	push	ar1
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_fifoWrite
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:531: EA = 1;
;	assignBit
	setb	_EA
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:532: } while (blocking == BLOCKING && !rc);
	mov	a,_uartSendBlock_sloc0_1_0
	jz	00104$
	mov	a,r4
	jz	00102$
00104$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:534: if (rc && buffer->status == STATUS_CLEAR) {
	mov	a,r4
	jz	00108$
	mov	a,#0x04
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00108$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:535: buffer->status = STATUS_SENDING;
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x01
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:537: fifoRead(buffer, &data, 1);
	push	ar4
	push	acc
	mov	a,#_uartSendBlock_data_131073_101
	push	acc
	mov	a,#(_uartSendBlock_data_131073_101 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_fifoRead
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:539: switch (uart) {
	mov	dptr,#_uartSendBlock_uart_65536_97
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00108$
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:541: S1BUF = data;
	mov	dptr,#_uartSendBlock_data_131073_101
	movx	a,@dptr
	mov	_S1BUF,a
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:559: }
00108$:
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:562: return rc;
	mov	dpl,r4
;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:563: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
