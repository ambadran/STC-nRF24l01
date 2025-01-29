;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module nrf24l01
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bitReverseTable256
	.globl _spiSend
	.globl _spiConfigure
	.globl _spiSelectSpeed
	.globl _gpioWrite
	.globl _gpioConfigure
	.globl _delay1ms
	.globl _printf
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
	.globl _datapipe_address
	.globl _CE_pin
	.globl _CSN_pin
	.globl _dataReady
	.globl _nrf24_write_PARM_4
	.globl _nrf24_write_PARM_3
	.globl _nrf24_write_PARM_2
	.globl _nrf24_read_PARM_4
	.globl _nrf24_read_PARM_3
	.globl _nrf24_read_PARM_2
	.globl _nrf24_crc_configuration_PARM_2
	.globl _nrf24_interrupt_mask_PARM_3
	.globl _nrf24_interrupt_mask_PARM_2
	.globl _nrf24_prx_static_payload_width_PARM_2
	.globl _nrf24_dynamic_payload_PARM_2
	.globl _nrf24_automatic_retransmit_setup_PARM_2
	.globl _nrf24_device_PARM_2
	.globl _nrf24_receive_PARM_2
	.globl _nrf24_send_payload_PARM_2
	.globl _nrf24_transmit_PARM_3
	.globl _nrf24_transmit_PARM_2
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
	.globl _delay_function
	.globl _SPI_Initializer
	.globl _pinout_Initializer
	.globl _nrf24_SPI
	.globl _SPI_send_command
	.globl _nrf24_CE
	.globl _nrf24_dynamic_ack
	.globl _nrf24_transmit
	.globl _nrf24_send_payload
	.globl _nrf24_transmit_status
	.globl _nrf24_receive
	.globl _nrf24_flush
	.globl _nrf24_reset
	.globl _nrf24_device
	.globl _nrf24_automatic_retransmit_setup
	.globl _nrf24_auto_acknowledgment_setup
	.globl _nrf24_dynamic_payload
	.globl _nrf24_datapipe_ptx
	.globl _nrf24_datapipe_address_configuration
	.globl _nrf24_prx_static_payload_width
	.globl _nrf24_datapipe_enable
	.globl _nrf24_address_width
	.globl _nrf24_rf_datarate
	.globl _nrf24_rf_power
	.globl _nrf24_rf_channel
	.globl _nrf24_interrupt_mask
	.globl _nrf24_crc_configuration
	.globl _nrf24_mode
	.globl _nrf24_read
	.globl _nrf24_write
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
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
_uartGetCharacter_result_65536_74:
	.ds 1
_SPI_command:
	.ds 1
_register_current_value:
	.ds 1
_register_new_value:
	.ds 1
_write_pointer:
	.ds 1
_current_address_width:
	.ds 1
_current_payload_width:
	.ds 1
_delay_function_duration_ms_65536_113:
	.ds 4
_nrf24_SPI_input_65536_119:
	.ds 1
_SPI_send_command_command_65536_121:
	.ds 1
_SPI_send_command_spi_byte_65536_122:
	.ds 1
_nrf24_CE_input_65536_123:
	.ds 1
_nrf24_dynamic_ack_state_65536_125:
	.ds 1
_nrf24_transmit_PARM_2:
	.ds 1
_nrf24_transmit_PARM_3:
	.ds 1
_nrf24_transmit_payload_65536_129:
	.ds 3
_nrf24_send_payload_PARM_2:
	.ds 1
_nrf24_send_payload_payload_65536_133:
	.ds 3
_nrf24_receive_PARM_2:
	.ds 1
_nrf24_receive_payload_65536_141:
	.ds 3
_nrf24_flush_fifo_select_65536_149:
	.ds 1
_nrf24_device_PARM_2:
	.ds 1
_nrf24_device_device_mode_65536_156:
	.ds 1
_nrf24_device_hardwareCheckPassed_65537_158:
	.ds 1
_nrf24_device_new_value_65537_158:
	.ds 1
_nrf24_automatic_retransmit_setup_PARM_2:
	.ds 1
_nrf24_automatic_retransmit_setup_delay_time_65536_166:
	.ds 2
_nrf24_auto_acknowledgment_setup_datapipe_65536_169:
	.ds 1
_nrf24_dynamic_payload_PARM_2:
	.ds 1
_nrf24_dynamic_payload_state_65536_171:
	.ds 1
_nrf24_datapipe_ptx_datapipe_number_65536_175:
	.ds 1
_nrf24_prx_static_payload_width_PARM_2:
	.ds 1
_nrf24_prx_static_payload_width_static_payload_width_65536_181:
	.ds 1
_nrf24_datapipe_enable_number_of_datapipes_65536_185:
	.ds 1
_nrf24_address_width_address_width_65536_187:
	.ds 1
_nrf24_rf_datarate_rf_datarate_65536_191:
	.ds 2
_nrf24_rf_power_rf_power_65536_194:
	.ds 1
_nrf24_rf_channel_rf_channel_65536_197:
	.ds 1
_nrf24_rf_channel_write_pointer_131072_199:
	.ds 1
_nrf24_rf_channel_write_pointer_131072_200:
	.ds 1
_nrf24_interrupt_mask_PARM_2:
	.ds 1
_nrf24_interrupt_mask_PARM_3:
	.ds 1
_nrf24_interrupt_mask_rx_mask_65536_201:
	.ds 1
_nrf24_crc_configuration_PARM_2:
	.ds 1
_nrf24_crc_configuration_crc_enable_65536_203:
	.ds 1
_nrf24_mode_mode_65536_205:
	.ds 1
_nrf24_read_PARM_2:
	.ds 3
_nrf24_read_PARM_3:
	.ds 1
_nrf24_read_PARM_4:
	.ds 1
_nrf24_read_address_65536_208:
	.ds 1
_nrf24_write_PARM_2:
	.ds 3
_nrf24_write_PARM_3:
	.ds 1
_nrf24_write_PARM_4:
	.ds 1
_nrf24_write_address_65536_212:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_dataReady::
	.ds 1
_CSN_pin::
	.ds 13
_CE_pin::
	.ds 13
_reset_flag:
	.ds 1
_current_mode:
	.ds 1
_current_acknowledgement_state:
	.ds 1
_dynamic_payload:
	.ds 1
_datapipe_address::
	.ds 30
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
;Allocation info for local variables in function 'delay_function'
;------------------------------------------------------------
;duration_ms               Allocated with name '_delay_function_duration_ms_65536_113'
;------------------------------------------------------------
;	nrf24l01.c:66: void delay_function(uint32_t duration_ms)
;	-----------------------------------------
;	 function delay_function
;	-----------------------------------------
_delay_function:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_delay_function_duration_ms_65536_113
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:68: delay1ms(duration_ms);
	mov	dptr,#_delay_function_duration_ms_65536_113
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
;	nrf24l01.c:69: }
	ljmp	_delay1ms
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Initializer'
;------------------------------------------------------------
;	nrf24l01.c:73: void SPI_Initializer(void)
;	-----------------------------------------
;	 function SPI_Initializer
;	-----------------------------------------
_SPI_Initializer:
;	nrf24l01.c:79: spiSelectSpeed(SPI_SPEED), 
	mov	dptr,#0x0900
	mov	b,#0x3d
	clr	a
	lcall	_spiSelectSpeed
	mov	r7,dpl
;	nrf24l01.c:81: GPIO_BIDIRECTIONAL_MODE
	mov	dptr,#_spiConfigure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spiConfigure_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_spiConfigure_PARM_4
	clr	a
	movx	@dptr,a
	mov	dptr,#_spiConfigure_PARM_5
	movx	@dptr,a
	mov	dpl,#0x20
;	nrf24l01.c:84: }
	ljmp	_spiConfigure
;------------------------------------------------------------
;Allocation info for local variables in function 'pinout_Initializer'
;------------------------------------------------------------
;	nrf24l01.c:87: void pinout_Initializer(void)
;	-----------------------------------------
;	 function pinout_Initializer
;	-----------------------------------------
_pinout_Initializer:
;	nrf24l01.c:90: gpioConfigure(&CSN_pin);
	mov	dptr,#_CSN_pin
	mov	b,#0x00
	lcall	_gpioConfigure
;	nrf24l01.c:91: gpioConfigure(&CE_pin);
	mov	dptr,#_CE_pin
	mov	b,#0x00
	lcall	_gpioConfigure
;	nrf24l01.c:93: gpioWrite(&CSN_pin, 0);
	mov	dptr,#_gpioWrite_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_CSN_pin
	mov	b,#0x00
	lcall	_gpioWrite
;	nrf24l01.c:94: gpioWrite(&CE_pin, 1);
	mov	dptr,#_gpioWrite_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_CE_pin
	mov	b,#0x00
;	nrf24l01.c:96: }
	ljmp	_gpioWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_SPI'
;------------------------------------------------------------
;input                     Allocated with name '_nrf24_SPI_input_65536_119'
;------------------------------------------------------------
;	nrf24l01.c:99: void nrf24_SPI(uint8_t input)
;	-----------------------------------------
;	 function nrf24_SPI
;	-----------------------------------------
_nrf24_SPI:
	mov	a,dpl
	mov	dptr,#_nrf24_SPI_input_65536_119
	movx	@dptr,a
;	nrf24l01.c:101: gpioWrite(&CSN_pin, input);
	movx	a,@dptr
	mov	dptr,#_gpioWrite_PARM_2
	movx	@dptr,a
	mov	dptr,#_CSN_pin
	mov	b,#0x00
;	nrf24l01.c:102: }
	ljmp	_gpioWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_send_command'
;------------------------------------------------------------
;command                   Allocated with name '_SPI_send_command_command_65536_121'
;spi_byte                  Allocated with name '_SPI_send_command_spi_byte_65536_122'
;------------------------------------------------------------
;	nrf24l01.c:105: uint8_t SPI_send_command(uint8_t command)
;	-----------------------------------------
;	 function SPI_send_command
;	-----------------------------------------
_SPI_send_command:
	mov	a,dpl
	mov	dptr,#_SPI_send_command_command_65536_121
	movx	@dptr,a
;	nrf24l01.c:107: uint8_t spi_byte = bitReverseTable256[command];
	movx	a,@dptr
	mov	dptr,#_bitReverseTable256
	movc	a,@a+dptr
	mov	dptr,#_SPI_send_command_spi_byte_65536_122
	movx	@dptr,a
;	nrf24l01.c:109: spiSend(&spi_byte, 1, &dataReady);
	mov	dptr,#_spiSend_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spiSend_PARM_3
	mov	a,#_dataReady
	movx	@dptr,a
	mov	a,#(_dataReady >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_SPI_send_command_spi_byte_65536_122
	mov	b,#0x00
	lcall	_spiSend
;	nrf24l01.c:112: while(!dataReady);
00101$:
	mov	dptr,#_dataReady
	movx	a,@dptr
	jz	00101$
;	nrf24l01.c:114: return bitReverseTable256[spi_byte];
	mov	dptr,#_SPI_send_command_spi_byte_65536_122
	movx	a,@dptr
	mov	dptr,#_bitReverseTable256
	movc	a,@a+dptr
;	nrf24l01.c:116: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_CE'
;------------------------------------------------------------
;input                     Allocated with name '_nrf24_CE_input_65536_123'
;------------------------------------------------------------
;	nrf24l01.c:119: void nrf24_CE(uint8_t input)
;	-----------------------------------------
;	 function nrf24_CE
;	-----------------------------------------
_nrf24_CE:
	mov	a,dpl
	mov	dptr,#_nrf24_CE_input_65536_123
	movx	@dptr,a
;	nrf24l01.c:121: gpioWrite(&CE_pin, input);
	movx	a,@dptr
	mov	dptr,#_gpioWrite_PARM_2
	movx	@dptr,a
	mov	dptr,#_CE_pin
	mov	b,#0x00
;	nrf24l01.c:122: }
	ljmp	_gpioWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_dynamic_ack'
;------------------------------------------------------------
;state                     Allocated with name '_nrf24_dynamic_ack_state_65536_125'
;------------------------------------------------------------
;	nrf24l01.c:128: void nrf24_dynamic_ack(uint8_t state)
;	-----------------------------------------
;	 function nrf24_dynamic_ack
;	-----------------------------------------
_nrf24_dynamic_ack:
	mov	a,dpl
	mov	dptr,#_nrf24_dynamic_ack_state_65536_125
	movx	@dptr,a
;	nrf24l01.c:130: if (state == ENABLE)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	nrf24l01.c:132: nrf24_read(FEATURE_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1d
	lcall	_nrf24_read
;	nrf24l01.c:133: register_new_value = register_current_value | (1 << EN_DYN_ACK);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x01
	movx	@dptr,a
;	nrf24l01.c:134: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1d
	ljmp	_nrf24_write
00102$:
;	nrf24l01.c:138: nrf24_read(FEATURE_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1d
	lcall	_nrf24_read
;	nrf24l01.c:139: register_new_value = register_current_value & (~(1 << EN_DYN_ACK));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfe
	movx	@dptr,a
;	nrf24l01.c:140: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1d
;	nrf24l01.c:142: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_transmit'
;------------------------------------------------------------
;payload_width             Allocated with name '_nrf24_transmit_PARM_2'
;acknowledgement_state     Allocated with name '_nrf24_transmit_PARM_3'
;payload                   Allocated with name '_nrf24_transmit_payload_65536_129'
;------------------------------------------------------------
;	nrf24l01.c:146: uint8_t nrf24_transmit(uint8_t *payload, uint8_t payload_width, uint8_t acknowledgement_state)
;	-----------------------------------------
;	 function nrf24_transmit
;	-----------------------------------------
_nrf24_transmit:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_nrf24_transmit_payload_65536_129
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:148: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);         /*in order to check TX_FIFO status*/
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_read
;	nrf24l01.c:149: if ((!(register_current_value & (1 << TX_FULL))) && (current_mode == PTX))
	mov	dptr,#_register_current_value
	movx	a,@dptr
	jb	acc.5,00104$
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00104$
;	nrf24l01.c:151: current_acknowledgement_state = acknowledgement_state;      /*setting the acknowledgement state to either NO_ACK or ACK, based on input*/
	mov	dptr,#_nrf24_transmit_PARM_3
	movx	a,@dptr
	mov	dptr,#_current_acknowledgement_state
	movx	@dptr,a
;	nrf24l01.c:152: if (dynamic_payload == ENABLE)
	mov	dptr,#_dynamic_payload
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	nrf24l01.c:153: payload_width = current_payload_width;
	mov	dptr,#_current_payload_width
	movx	a,@dptr
	mov	dptr,#_nrf24_transmit_PARM_2
	movx	@dptr,a
00102$:
;	nrf24l01.c:154: nrf24_send_payload(payload, payload_width);                 /*the actual function to send data*/
	mov	dptr,#_nrf24_transmit_payload_65536_129
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nrf24_transmit_PARM_2
	movx	a,@dptr
	mov	dptr,#_nrf24_send_payload_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_nrf24_send_payload
;	nrf24l01.c:155: return (TRANSMIT_BEGIN);                                     /*TX FIFO is not full and nrf24l01+ mode is standby ii or ptx*/
	mov	dpl,#0x01
	ret
00104$:
;	nrf24l01.c:159: return (TRANSMIT_FAIL);            /*TX FIFO full or wrong mode*/
	mov	dpl,#0x00
;	nrf24l01.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_send_payload'
;------------------------------------------------------------
;payload_width             Allocated with name '_nrf24_send_payload_PARM_2'
;payload                   Allocated with name '_nrf24_send_payload_payload_65536_133'
;------------------------------------------------------------
;	nrf24l01.c:164: void nrf24_send_payload(uint8_t *payload, uint8_t payload_width)
;	-----------------------------------------
;	 function nrf24_send_payload
;	-----------------------------------------
_nrf24_send_payload:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_nrf24_send_payload_payload_65536_133
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:166: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:167: if (current_acknowledgement_state == NO_ACK_MODE)
	mov	dptr,#_current_acknowledgement_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	nrf24l01.c:168: SPI_command = W_TX_PAYLOAD_NOACK;
	mov	dptr,#_SPI_command
	mov	a,#0xb0
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:170: SPI_command = W_TX_PAYLOAD;
	mov	dptr,#_SPI_command
	mov	a,#0xa0
	movx	@dptr,a
00103$:
;	nrf24l01.c:171: SPI_send_command(SPI_command);
	mov	dptr,#_SPI_command
	movx	a,@dptr
	mov	dpl,a
	lcall	_SPI_send_command
	mov	dptr,#_nrf24_send_payload_payload_65536_133
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nrf24_send_payload_PARM_2
	movx	a,@dptr
	mov	r4,a
00106$:
;	nrf24l01.c:172: for (; payload_width; payload_width--)
	mov	a,r4
	jz	00113$
;	nrf24l01.c:174: SPI_command = *payload;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_SPI_command
	mov	a,r3
	movx	@dptr,a
;	nrf24l01.c:175: SPI_send_command(SPI_command);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_send_command
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	nrf24l01.c:176: payload++;
	mov	dptr,#_nrf24_send_payload_payload_65536_133
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:172: for (; payload_width; payload_width--)
	dec	r4
	sjmp	00106$
00113$:
	mov	dptr,#_nrf24_send_payload_payload_65536_133
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:178: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
;	nrf24l01.c:179: }
	ljmp	_nrf24_SPI
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_transmit_status'
;------------------------------------------------------------
;	nrf24l01.c:183: uint8_t nrf24_transmit_status(void)
;	-----------------------------------------
;	 function nrf24_transmit_status
;	-----------------------------------------
_nrf24_transmit_status:
;	nrf24l01.c:185: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);      /*status register is read to check TX_DS flag*/
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_read
;	nrf24l01.c:186: if (register_current_value & (1 << TX_DS))                          /*if the TX_DS == 1, */
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	jnb	acc.5,00105$
;	nrf24l01.c:188: nrf24_write(STATUS_ADDRESS, &register_current_value, 1, CLOSE);   /*reseting the TX_DS flag. as mentioned by datasheet, writing '1' to a flag resets that flag*/
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_write
;	nrf24l01.c:189: return TRANSMIT_DONE;
	mov	dpl,#0x01
	ret
00105$:
;	nrf24l01.c:191: else if (register_current_value & (1 << MAX_RT))
	mov	a,r7
	jnb	acc.4,00102$
;	nrf24l01.c:193: nrf24_write(STATUS_ADDRESS, &register_current_value, 1, CLOSE);   /*reseting the MAX_RT flag. as mentioned by datasheet, writing '1' to a flag resets that flag*/
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_write
;	nrf24l01.c:194: return TRANSMIT_FAILED;
	mov	dpl,#0xff
	ret
00102$:
;	nrf24l01.c:197: return TRANSMIT_IN_PROGRESS;
	mov	dpl,#0x00
;	nrf24l01.c:198: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_receive'
;------------------------------------------------------------
;payload_width             Allocated with name '_nrf24_receive_PARM_2'
;payload                   Allocated with name '_nrf24_receive_payload_65536_141'
;------------------------------------------------------------
;	nrf24l01.c:202: uint8_t nrf24_receive(uint8_t *payload, uint8_t payload_width)
;	-----------------------------------------
;	 function nrf24_receive
;	-----------------------------------------
_nrf24_receive:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_nrf24_receive_payload_65536_141
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:204: if (current_mode == PRX)
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00142$
	sjmp	00143$
00142$:
	ljmp	00110$
00143$:
;	nrf24l01.c:206: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_read
;	nrf24l01.c:207: if (register_current_value & (1 << RX_DR))                         /*if received data is ready inside RX FIFO*/
	mov	dptr,#_register_current_value
	movx	a,@dptr
	jb	acc.6,00144$
	ljmp	00107$
00144$:
;	nrf24l01.c:209: if(dynamic_payload == DISABLE)                                    /*if dynamic payload width is disabled, use the static payload width and ignore the input*/
	mov	dptr,#_dynamic_payload
	movx	a,@dptr
	jnz	00102$
;	nrf24l01.c:210: payload_width = current_payload_width;
	mov	dptr,#_current_payload_width
	movx	a,@dptr
	mov	dptr,#_nrf24_receive_PARM_2
	movx	@dptr,a
00102$:
;	nrf24l01.c:212: nrf24_SPI(SPI_ON);                                                /*sending the read payload command to nrf24l01+*/                          
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:213: SPI_command = R_RX_PAYLOAD;
	mov	dptr,#_SPI_command
	mov	a,#0x61
	movx	@dptr,a
;	nrf24l01.c:214: SPI_send_command(SPI_command);
	mov	dpl,#0x61
	lcall	_SPI_send_command
	mov	dptr,#_nrf24_receive_payload_65536_141
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nrf24_receive_PARM_2
	movx	a,@dptr
	mov	r4,a
00113$:
;	nrf24l01.c:216: for (; payload_width; payload_width--)
	mov	a,r4
	jz	00123$
;	nrf24l01.c:218: SPI_command = NOP_CMD;
	mov	dptr,#_SPI_command
	mov	a,#0xff
	movx	@dptr,a
;	nrf24l01.c:219: *payload = SPI_send_command(SPI_command); // newly added
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_send_command
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	nrf24l01.c:220: payload++;
	mov	dptr,#_nrf24_receive_payload_65536_141
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:216: for (; payload_width; payload_width--)
	dec	r4
	sjmp	00113$
00123$:
	mov	dptr,#_nrf24_receive_payload_65536_141
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:222: nrf24_SPI(SPI_OFF); 
	mov	dpl,#0x01
	lcall	_nrf24_SPI
;	nrf24l01.c:223: nrf24_read(FIFO_STATUS_ADDRESS, &register_current_value, 1, CLOSE);   /*in order to check the RX_EMPTY flag*/
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x17
	lcall	_nrf24_read
;	nrf24l01.c:224: if(register_current_value & (1 << RX_EMPTY))                        /*if the RX FIFO is empty, reset the RX_DR flag inside STATUS register*/
	mov	dptr,#_register_current_value
	movx	a,@dptr
	jnb	acc.0,00105$
;	nrf24l01.c:226: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_read
;	nrf24l01.c:227: register_new_value = register_current_value | (1 << RX_DR);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x40
	movx	@dptr,a
;	nrf24l01.c:228: nrf24_write(STATUS_ADDRESS, &register_new_value, 1, CLOSE); 
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_write
00105$:
;	nrf24l01.c:230: return OPERATION_DONE;
	mov	dpl,#0x01
	ret
00107$:
;	nrf24l01.c:234: return RECEIVE_FIFO_EMPTY;
	mov	dpl,#0x02
	ret
00110$:
;	nrf24l01.c:238: return OPERATION_ERROR;
	mov	dpl,#0x00
;	nrf24l01.c:239: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_flush'
;------------------------------------------------------------
;fifo_select               Allocated with name '_nrf24_flush_fifo_select_65536_149'
;------------------------------------------------------------
;	nrf24l01.c:243: uint8_t nrf24_flush(uint8_t fifo_select)
;	-----------------------------------------
;	 function nrf24_flush
;	-----------------------------------------
_nrf24_flush:
	mov	a,dpl
	mov	dptr,#_nrf24_flush_fifo_select_65536_149
	movx	@dptr,a
;	nrf24l01.c:245: switch (fifo_select)
	movx	a,@dptr
	mov	r7,a
	jz	00105$
	cjne	r7,#0x01,00109$
;	nrf24l01.c:248: if (current_mode == PTX)
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00103$
;	nrf24l01.c:250: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:251: SPI_command = FLUSH_TX;
	mov	dptr,#_SPI_command
	mov	a,#0xe1
	movx	@dptr,a
;	nrf24l01.c:252: SPI_send_command(SPI_command);
	mov	dpl,#0xe1
	lcall	_SPI_send_command
;	nrf24l01.c:253: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
	lcall	_nrf24_SPI
;	nrf24l01.c:254: return OPERATION_DONE;
	mov	dpl,#0x01
	ret
00103$:
;	nrf24l01.c:257: return OPERATION_ERROR;
	mov	dpl,#0x00
;	nrf24l01.c:258: case RX_BUFFER:
	ret
00105$:
;	nrf24l01.c:259: if (current_mode == PRX)
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00107$
;	nrf24l01.c:261: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:262: SPI_command = FLUSH_RX;
	mov	dptr,#_SPI_command
	mov	a,#0xe2
	movx	@dptr,a
;	nrf24l01.c:263: SPI_send_command(SPI_command);
	mov	dpl,#0xe2
	lcall	_SPI_send_command
;	nrf24l01.c:264: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
	lcall	_nrf24_SPI
;	nrf24l01.c:265: return OPERATION_DONE;
	mov	dpl,#0x01
	ret
00107$:
;	nrf24l01.c:268: return OPERATION_ERROR;
	mov	dpl,#0x00
;	nrf24l01.c:269: default:
	ret
00109$:
;	nrf24l01.c:270: return OPERATION_ERROR;
	mov	dpl,#0x00
;	nrf24l01.c:271: }
;	nrf24l01.c:272: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_reset'
;------------------------------------------------------------
;	nrf24l01.c:275: void nrf24_reset(void)
;	-----------------------------------------
;	 function nrf24_reset
;	-----------------------------------------
_nrf24_reset:
;	nrf24l01.c:277: reset_flag = 1;
	mov	dptr,#_reset_flag
	mov	a,#0x01
	movx	@dptr,a
;	nrf24l01.c:278: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	lcall	_nrf24_CE
;	nrf24l01.c:279: register_new_value = CONFIG_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x08
	movx	@dptr,a
;	nrf24l01.c:280: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_write
;	nrf24l01.c:281: register_new_value = EN_AA_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x3f
	movx	@dptr,a
;	nrf24l01.c:282: nrf24_write(EN_AA_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_write
;	nrf24l01.c:283: register_new_value = EN_RXADDR_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	clr	a
	movx	@dptr,a
;	nrf24l01.c:284: nrf24_write(EN_RXADDR_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_nrf24_write
;	nrf24l01.c:285: register_new_value = SETUP_AW_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x03
	movx	@dptr,a
;	nrf24l01.c:286: nrf24_write(SETUP_AW_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_nrf24_write
;	nrf24l01.c:287: register_new_value = RF_CH_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x02
	movx	@dptr,a
;	nrf24l01.c:288: nrf24_write(RF_CH_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_nrf24_write
;	nrf24l01.c:289: register_new_value = RF_SETUP_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x27
	movx	@dptr,a
;	nrf24l01.c:290: nrf24_write(RF_SETUP_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_nrf24_write
;	nrf24l01.c:291: register_new_value = STATUS_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x0e
	movx	@dptr,a
;	nrf24l01.c:292: nrf24_write(STATUS_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_write
;	nrf24l01.c:299: nrf24_mode(PTX);
	mov	dpl,#0x03
	lcall	_nrf24_mode
;	nrf24l01.c:300: nrf24_flush(TX_BUFFER);
	mov	dpl,#0x01
	lcall	_nrf24_flush
;	nrf24l01.c:301: nrf24_mode(PRX);
	mov	dpl,#0x04
	lcall	_nrf24_mode
;	nrf24l01.c:302: nrf24_flush(RX_BUFFER);
	mov	dpl,#0x00
	lcall	_nrf24_flush
;	nrf24l01.c:304: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_read
;	nrf24l01.c:305: register_new_value = register_current_value | (1 << RX_DR) | (1 << TX_DS) | (1 << MAX_RT);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x70
	movx	@dptr,a
;	nrf24l01.c:306: nrf24_write(STATUS_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_nrf24_write
;	nrf24l01.c:308: nrf24_interrupt_mask(ENABLE, ENABLE, ENABLE);
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_interrupt_mask
;	nrf24l01.c:309: nrf24_crc_configuration(ENABLE, 2);
	mov	dptr,#_nrf24_crc_configuration_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_crc_configuration
;	nrf24l01.c:310: nrf24_address_width(ADDRESS_WIDTH_DEFAULT);
	mov	dpl,#0x05
	lcall	_nrf24_address_width
;	nrf24l01.c:313: nrf24_rf_channel(RF_CHANNEL_DEFAULT);
	mov	dpl,#0x2e
	lcall	_nrf24_rf_channel
;	nrf24l01.c:314: nrf24_datapipe_enable(NUMBER_OF_DP_DEFAULT);
	mov	dpl,#0x02
	lcall	_nrf24_datapipe_enable
;	nrf24l01.c:315: nrf24_datapipe_address_configuration();  // I uncommented it
	lcall	_nrf24_datapipe_address_configuration
;	nrf24l01.c:316: nrf24_datapipe_ptx(1);  // I uncommented it
	mov	dpl,#0x01
	lcall	_nrf24_datapipe_ptx
;	nrf24l01.c:317: nrf24_prx_static_payload_width(STATIC_PAYLOAD_WIDTH_DEFAULT, NUMBER_OF_DP_DEFAULT);
	mov	dptr,#_nrf24_prx_static_payload_width_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_nrf24_prx_static_payload_width
;	nrf24l01.c:318: nrf24_automatic_retransmit_setup(RETRANSMIT_DELAY_DEFAULT, RETRANSMIT_COUNT_DEFAULT);
	mov	dptr,#_nrf24_automatic_retransmit_setup_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#0x06d6
	lcall	_nrf24_automatic_retransmit_setup
;	nrf24l01.c:319: nrf24_auto_acknowledgment_setup(NUMBER_OF_DP_DEFAULT);
	mov	dpl,#0x02
	lcall	_nrf24_auto_acknowledgment_setup
;	nrf24l01.c:320: nrf24_dynamic_payload(DISABLE, NUMBER_OF_DP_DEFAULT);
	mov	dptr,#_nrf24_dynamic_payload_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_dynamic_payload
;	nrf24l01.c:321: nrf24_dynamic_ack(ENABLE);
	mov	dpl,#0x01
;	nrf24l01.c:323: }
	ljmp	_nrf24_dynamic_ack
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_device'
;------------------------------------------------------------
;reset_state               Allocated with name '_nrf24_device_PARM_2'
;device_mode               Allocated with name '_nrf24_device_device_mode_65536_156'
;register_to_write_to      Allocated with name '_nrf24_device_register_to_write_to_65537_158'
;hardwareCheckPassed       Allocated with name '_nrf24_device_hardwareCheckPassed_65537_158'
;new_value                 Allocated with name '_nrf24_device_new_value_65537_158'
;i                         Allocated with name '_nrf24_device_i_131073_164'
;------------------------------------------------------------
;	nrf24l01.c:328: void nrf24_device(uint8_t device_mode, uint8_t reset_state)
;	-----------------------------------------
;	 function nrf24_device
;	-----------------------------------------
_nrf24_device:
	mov	a,dpl
	mov	dptr,#_nrf24_device_device_mode_65536_156
	movx	@dptr,a
;	nrf24l01.c:330: SPI_Initializer();
	lcall	_SPI_Initializer
;	nrf24l01.c:331: pinout_Initializer();
	lcall	_pinout_Initializer
;	nrf24l01.c:332: delay_function(STARTUP_DELAY);
	mov	dptr,#(0x96&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
;	nrf24l01.c:333: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	lcall	_nrf24_CE
;	nrf24l01.c:337: nrf24_read(0x00, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_read
;	nrf24l01.c:341: bool hardwareCheckPassed = false;
	mov	dptr,#_nrf24_device_hardwareCheckPassed_65537_158
	clr	a
	movx	@dptr,a
;	nrf24l01.c:343: while (!hardwareCheckPassed) {
00104$:
	mov	dptr,#_nrf24_device_hardwareCheckPassed_65537_158
	movx	a,@dptr
	jz	00151$
	ljmp	00106$
00151$:
;	nrf24l01.c:345: nrf24_read(register_to_write_to, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_read
;	nrf24l01.c:346: printf("\rRead from %d: %d\n", register_to_write_to, register_current_value);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	nrf24l01.c:349: new_value = register_current_value + 3;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#_nrf24_device_new_value_65537_158
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:350: register_new_value = new_value;
	mov	dptr,#_register_new_value
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:351: nrf24_write(register_to_write_to, &register_new_value, 1, CLOSE); // restarts the nrf?!?!? where is requires two read calls to return 8 again
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_write
;	nrf24l01.c:352: printf("Sending to %d: %d\n", register_to_write_to, register_new_value);
	mov	dptr,#_register_new_value
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	nrf24l01.c:355: nrf24_read(register_to_write_to, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_read
;	nrf24l01.c:356: printf("\rRead from %d: %d\n", register_to_write_to, register_current_value);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	nrf24l01.c:358: if (register_current_value == new_value) {
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nrf24_device_new_value_65537_158
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
;	nrf24l01.c:359: printf("\rRead value matches the newly written value :D\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	nrf24l01.c:360: hardwareCheckPassed = true;
	mov	dptr,#_nrf24_device_hardwareCheckPassed_65537_158
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00104$
00102$:
;	nrf24l01.c:362: printf("\rRead value doesn't match the newly written value ;(\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	nrf24l01.c:363: printf("\rRead: %d\n", register_current_value);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ljmp	00104$
00106$:
;	nrf24l01.c:367: printf("\rHardware Detected!\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	nrf24l01.c:369: if ((reset_state == RESET) || (reset_flag == 0))
	mov	dptr,#_nrf24_device_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00154$
	sjmp	00107$
00154$:
	mov	dptr,#_reset_flag
	movx	a,@dptr
	jnz	00108$
00107$:
;	nrf24l01.c:371: nrf24_reset();
	lcall	_nrf24_reset
00108$:
;	nrf24l01.c:374: switch (device_mode)
	mov	dptr,#_nrf24_device_device_mode_65536_156
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jnc	00156$
	ljmp	00114$
00156$:
	mov	a,r7
	add	a,r7
;	nrf24l01.c:376: case TRANSMITTER:
	mov	dptr,#00157$
	jmp	@a+dptr
00157$:
	sjmp	00110$
	sjmp	00111$
	sjmp	00112$
	sjmp	00113$
00110$:
;	nrf24l01.c:377: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:378: nrf24_interrupt_mask(ENABLE, DISABLE, DISABLE);                /*disabling tx interrupt mask*/
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_interrupt_mask
;	nrf24l01.c:379: nrf24_mode(PTX);
	mov	dpl,#0x03
	lcall	_nrf24_mode
;	nrf24l01.c:380: break;
;	nrf24l01.c:381: case RECEIVER:
	sjmp	00128$
00111$:
;	nrf24l01.c:382: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:383: nrf24_interrupt_mask(DISABLE, ENABLE, ENABLE);                /*disabling rx interrupt mask*/
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_interrupt_mask
;	nrf24l01.c:384: nrf24_mode(PRX);
	mov	dpl,#0x04
	lcall	_nrf24_mode
;	nrf24l01.c:385: delay_function(PRX_MODE_DELAY);                              /*100ms for PRX mode*/
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
;	nrf24l01.c:386: break;
;	nrf24l01.c:387: case POWER_SAVING:
	sjmp	00128$
00112$:
;	nrf24l01.c:388: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:389: nrf24_interrupt_mask(ENABLE, ENABLE, ENABLE);
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_interrupt_mask
;	nrf24l01.c:390: nrf24_mode(STANDBYI);
	mov	dpl,#0x01
	lcall	_nrf24_mode
;	nrf24l01.c:391: break;
;	nrf24l01.c:392: case TURN_OFF:
	sjmp	00128$
00113$:
;	nrf24l01.c:393: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:394: nrf24_interrupt_mask(ENABLE, ENABLE, ENABLE);
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_interrupt_mask
;	nrf24l01.c:395: break;
;	nrf24l01.c:396: default:
	sjmp	00128$
00114$:
;	nrf24l01.c:397: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:398: nrf24_interrupt_mask(ENABLE, ENABLE, ENABLE);
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_interrupt_mask
;	nrf24l01.c:403: for (int i=0; i<24; i++) {
00128$:
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
	clr	c
	mov	a,r6
	subb	a,#0x18
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00116$
;	nrf24l01.c:404: nrf24_read(i, &register_current_value, 1, CLOSE);
	mov	ar5,r6
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_nrf24_read
	pop	ar6
	pop	ar7
;	nrf24l01.c:405: printf("\rRegister %d: %d\n", i, register_current_value);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	nrf24l01.c:406: delay1ms(20);
	mov	dptr,#0x0014
	lcall	_delay1ms
	pop	ar6
	pop	ar7
;	nrf24l01.c:403: for (int i=0; i<24; i++) {
	inc	r6
	cjne	r6,#0x00,00118$
	inc	r7
	sjmp	00118$
00116$:
;	nrf24l01.c:408: printf("\n\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	nrf24l01.c:411: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_automatic_retransmit_setup'
;------------------------------------------------------------
;retransmit_count          Allocated with name '_nrf24_automatic_retransmit_setup_PARM_2'
;delay_time                Allocated with name '_nrf24_automatic_retransmit_setup_delay_time_65536_166'
;------------------------------------------------------------
;	nrf24l01.c:414: void nrf24_automatic_retransmit_setup(uint16_t delay_time, uint8_t retransmit_count)
;	-----------------------------------------
;	 function nrf24_automatic_retransmit_setup
;	-----------------------------------------
_nrf24_automatic_retransmit_setup:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_nrf24_automatic_retransmit_setup_delay_time_65536_166
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:416: register_new_value = 0x00;
	mov	dptr,#_register_new_value
	clr	a
	movx	@dptr,a
00108$:
;	nrf24l01.c:417: for (; (delay_time > 250) && (register_new_value < 0X0F); delay_time -= 250)
	mov	dptr,#_nrf24_automatic_retransmit_setup_delay_time_65536_166
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xfa
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00101$
	mov	dptr,#_register_new_value
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0f,00133$
00133$:
	jnc	00101$
;	nrf24l01.c:418: register_new_value++;
	mov	dptr,#_register_new_value
	mov	a,r5
	inc	a
	movx	@dptr,a
;	nrf24l01.c:417: for (; (delay_time > 250) && (register_new_value < 0X0F); delay_time -= 250)
	mov	a,r6
	add	a,#0x06
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_nrf24_automatic_retransmit_setup_delay_time_65536_166
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00108$
00101$:
;	nrf24l01.c:419: register_new_value <<= ARD_0;
	mov	dptr,#_register_new_value
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	movx	@dptr,a
;	nrf24l01.c:420: if ((retransmit_count > 0) && (retransmit_count < 16))
	mov	dptr,#_nrf24_automatic_retransmit_setup_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00103$
	cjne	r7,#0x10,00136$
00136$:
	jnc	00103$
;	nrf24l01.c:421: register_new_value |= retransmit_count;
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	nrf24l01.c:423: register_new_value |= 0;
00103$:
;	nrf24l01.c:424: nrf24_write(SETUP_RETR_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x04
;	nrf24l01.c:425: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_auto_acknowledgment_setup'
;------------------------------------------------------------
;datapipe                  Allocated with name '_nrf24_auto_acknowledgment_setup_datapipe_65536_169'
;------------------------------------------------------------
;	nrf24l01.c:428: void nrf24_auto_acknowledgment_setup(uint8_t datapipe)
;	-----------------------------------------
;	 function nrf24_auto_acknowledgment_setup
;	-----------------------------------------
_nrf24_auto_acknowledgment_setup:
	mov	a,dpl
	mov	dptr,#_nrf24_auto_acknowledgment_setup_datapipe_65536_169
	movx	@dptr,a
;	nrf24l01.c:430: if (datapipe < 7)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00109$
00109$:
	jnc	00102$
;	nrf24l01.c:431: register_new_value = (1 << datapipe) - 1;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00113$
00111$:
	add	a,acc
00113$:
	djnz	b,00111$
	dec	a
	mov	dptr,#_register_new_value
	movx	@dptr,a
00102$:
;	nrf24l01.c:432: nrf24_write(EN_AA_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
;	nrf24l01.c:433: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_dynamic_payload'
;------------------------------------------------------------
;datapipe                  Allocated with name '_nrf24_dynamic_payload_PARM_2'
;state                     Allocated with name '_nrf24_dynamic_payload_state_65536_171'
;------------------------------------------------------------
;	nrf24l01.c:436: void nrf24_dynamic_payload(uint8_t state, uint8_t datapipe)
;	-----------------------------------------
;	 function nrf24_dynamic_payload
;	-----------------------------------------
_nrf24_dynamic_payload:
	mov	a,dpl
	mov	dptr,#_nrf24_dynamic_payload_state_65536_171
	movx	@dptr,a
;	nrf24l01.c:438: nrf24_auto_acknowledgment_setup(datapipe);                        /*setting auto acknowledgment before setting dynamic payload*/
	mov	dptr,#_nrf24_dynamic_payload_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_nrf24_auto_acknowledgment_setup
;	nrf24l01.c:439: nrf24_read(FEATURE_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1d
	lcall	_nrf24_read
	pop	ar7
;	nrf24l01.c:440: if (state == ENABLE)
	mov	dptr,#_nrf24_dynamic_payload_state_65536_171
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00104$
;	nrf24l01.c:442: register_new_value = register_current_value | (1 << EN_DPL);    /*EN_DPL bit turns dynamic payload width on or off on all datapipes*/
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x04
	movx	@dptr,a
;	nrf24l01.c:443: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1d
	push	ar7
	lcall	_nrf24_write
	pop	ar7
;	nrf24l01.c:444: if (datapipe < 7)
	cjne	r7,#0x07,00118$
00118$:
	jnc	00102$
;	nrf24l01.c:445: register_new_value = (1 << datapipe) - 1;                       /*turning on dynamic payload width on chosen datapipes, using DYNPD register*/
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00122$
00120$:
	add	a,acc
00122$:
	djnz	b,00120$
	dec	a
	mov	dptr,#_register_new_value
	movx	@dptr,a
00102$:
;	nrf24l01.c:446: nrf24_write(DYNPD_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1c
	lcall	_nrf24_write
;	nrf24l01.c:447: dynamic_payload = ENABLE;
	mov	dptr,#_dynamic_payload
	mov	a,#0x01
	movx	@dptr,a
	ret
00104$:
;	nrf24l01.c:451: register_new_value = register_current_value & (~(1 << EN_DPL));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfb
	movx	@dptr,a
;	nrf24l01.c:452: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x1d
	lcall	_nrf24_write
;	nrf24l01.c:453: dynamic_payload = DISABLE;
	mov	dptr,#_dynamic_payload
	clr	a
	movx	@dptr,a
;	nrf24l01.c:455: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_datapipe_ptx'
;------------------------------------------------------------
;datapipe_number           Allocated with name '_nrf24_datapipe_ptx_datapipe_number_65536_175'
;------------------------------------------------------------
;	nrf24l01.c:458: void nrf24_datapipe_ptx(uint8_t datapipe_number)
;	-----------------------------------------
;	 function nrf24_datapipe_ptx
;	-----------------------------------------
_nrf24_datapipe_ptx:
	mov	a,dpl
	mov	dptr,#_nrf24_datapipe_ptx_datapipe_number_65536_175
	movx	@dptr,a
;	nrf24l01.c:460: nrf24_write(TX_ADDR_ADDRESS, &datapipe_address[datapipe_number - 1][0], current_address_width, CLOSE);
	movx	a,@dptr
	mov	r7,a
	dec	r7
	clr	F0
	mov	b,#0x05
	mov	a,r7
	jnb	acc.7,00103$
	cpl	F0
	cpl	a
	inc	a
00103$:
	mul	ab
	jnb	F0,00104$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00104$:
	add	a,#_datapipe_address
	mov	r6,a
	mov	a,#(_datapipe_address >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_current_address_width
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x10
;	nrf24l01.c:461: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_datapipe_address_configuration'
;------------------------------------------------------------
;address                   Allocated with name '_nrf24_datapipe_address_configuration_address_65536_178'
;counter                   Allocated with name '_nrf24_datapipe_address_configuration_counter_131072_179'
;------------------------------------------------------------
;	nrf24l01.c:464: void nrf24_datapipe_address_configuration(void)
;	-----------------------------------------
;	 function nrf24_datapipe_address_configuration
;	-----------------------------------------
_nrf24_datapipe_address_configuration:
;	nrf24l01.c:468: for (uint8_t counter = 0; counter < 2; counter++) // only write the first two
	mov	r7,#0x0a
	mov	r6,#0x00
00103$:
	cjne	r6,#0x02,00116$
00116$:
	jnc	00105$
;	nrf24l01.c:470: nrf24_write(address, &datapipe_address[counter][0], current_address_width, CLOSE);
	mov	a,r6
	mov	b,#0x05
	mul	ab
	add	a,#_datapipe_address
	mov	r4,a
	mov	a,#(_datapipe_address >> 8)
	addc	a,b
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#_current_address_width
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_nrf24_write
	pop	ar6
	pop	ar7
;	nrf24l01.c:471: address++;
	inc	r7
;	nrf24l01.c:468: for (uint8_t counter = 0; counter < 2; counter++) // only write the first two
	inc	r6
	sjmp	00103$
00105$:
;	nrf24l01.c:473: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_prx_static_payload_width'
;------------------------------------------------------------
;number_of_datapipes       Allocated with name '_nrf24_prx_static_payload_width_PARM_2'
;static_payload_width      Allocated with name '_nrf24_prx_static_payload_width_static_payload_width_65536_181'
;address                   Allocated with name '_nrf24_prx_static_payload_width_address_131072_183'
;------------------------------------------------------------
;	nrf24l01.c:476: void nrf24_prx_static_payload_width(uint8_t static_payload_width, uint8_t number_of_datapipes)
;	-----------------------------------------
;	 function nrf24_prx_static_payload_width
;	-----------------------------------------
_nrf24_prx_static_payload_width:
	mov	a,dpl
	mov	dptr,#_nrf24_prx_static_payload_width_static_payload_width_65536_181
	movx	@dptr,a
;	nrf24l01.c:478: for (uint8_t address = RX_PW_P0_ADDRESS; number_of_datapipes; number_of_datapipes--)
	mov	r7,#0x11
	mov	dptr,#_nrf24_prx_static_payload_width_PARM_2
	movx	a,@dptr
	mov	r6,a
00103$:
	mov	a,r6
	jz	00101$
;	nrf24l01.c:480: nrf24_write(address, &static_payload_width, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_nrf24_prx_static_payload_width_static_payload_width_65536_181
	movx	@dptr,a
	mov	a,#(_nrf24_prx_static_payload_width_static_payload_width_65536_181 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_nrf24_write
	pop	ar6
	pop	ar7
;	nrf24l01.c:481: address++;
	inc	r7
;	nrf24l01.c:478: for (uint8_t address = RX_PW_P0_ADDRESS; number_of_datapipes; number_of_datapipes--)
	dec	r6
	sjmp	00103$
00101$:
;	nrf24l01.c:483: current_payload_width = static_payload_width;
	mov	dptr,#_nrf24_prx_static_payload_width_static_payload_width_65536_181
	movx	a,@dptr
	mov	dptr,#_current_payload_width
	movx	@dptr,a
;	nrf24l01.c:484: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_datapipe_enable'
;------------------------------------------------------------
;number_of_datapipes       Allocated with name '_nrf24_datapipe_enable_number_of_datapipes_65536_185'
;------------------------------------------------------------
;	nrf24l01.c:487: void nrf24_datapipe_enable(uint8_t number_of_datapipes)
;	-----------------------------------------
;	 function nrf24_datapipe_enable
;	-----------------------------------------
_nrf24_datapipe_enable:
	mov	a,dpl
	mov	dptr,#_nrf24_datapipe_enable_number_of_datapipes_65536_185
	movx	@dptr,a
;	nrf24l01.c:489: register_new_value = (1 << number_of_datapipes) - 1;
	movx	a,@dptr
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	dec	a
	mov	dptr,#_register_new_value
	movx	@dptr,a
;	nrf24l01.c:490: nrf24_write(EN_RXADDR_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x02
;	nrf24l01.c:491: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_address_width'
;------------------------------------------------------------
;address_width             Allocated with name '_nrf24_address_width_address_width_65536_187'
;------------------------------------------------------------
;	nrf24l01.c:494: void nrf24_address_width(uint8_t address_width)
;	-----------------------------------------
;	 function nrf24_address_width
;	-----------------------------------------
_nrf24_address_width:
	mov	a,dpl
	mov	dptr,#_nrf24_address_width_address_width_65536_187
	movx	@dptr,a
;	nrf24l01.c:496: if ((address_width <= 5) && (address_width >= 3))
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jc	00102$
	cjne	r7,#0x03,00116$
00116$:
	jc	00102$
;	nrf24l01.c:498: write_pointer = address_width - 2;
	mov	a,r7
	add	a,#0xfe
	mov	dptr,#_write_pointer
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:502: write_pointer = 3;
	mov	dptr,#_write_pointer
	mov	a,#0x03
	movx	@dptr,a
00103$:
;	nrf24l01.c:504: nrf24_write(SETUP_AW_ADDRESS, &write_pointer, 1, CLOSE);                    /*5 bytes is the maximum address width available*/
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_write_pointer
	movx	@dptr,a
	mov	a,#(_write_pointer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_nrf24_write
;	nrf24l01.c:505: current_address_width = address_width;
	mov	dptr,#_nrf24_address_width_address_width_65536_187
	movx	a,@dptr
	mov	dptr,#_current_address_width
	movx	@dptr,a
;	nrf24l01.c:506: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_rf_datarate'
;------------------------------------------------------------
;rf_datarate               Allocated with name '_nrf24_rf_datarate_rf_datarate_65536_191'
;------------------------------------------------------------
;	nrf24l01.c:509: void nrf24_rf_datarate(uint16_t rf_datarate)
;	-----------------------------------------
;	 function nrf24_rf_datarate
;	-----------------------------------------
_nrf24_rf_datarate:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_nrf24_rf_datarate_rf_datarate_65536_191
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:511: nrf24_read(RF_SETUP_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_nrf24_read
;	nrf24l01.c:512: register_current_value &= ~((1 << RF_DR_LOW) | (1 << RF_DR_HIGH));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	anl	acc,#0xd7
	movx	@dptr,a
;	nrf24l01.c:513: switch (rf_datarate)
	mov	dptr,#_nrf24_rf_datarate_rf_datarate_65536_191
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0xfa,00120$
	cjne	r7,#0x00,00120$
	sjmp	00103$
00120$:
	cjne	r6,#0xe8,00121$
	cjne	r7,#0x03,00121$
	sjmp	00102$
00121$:
	cjne	r6,#0xd0,00104$
	cjne	r7,#0x07,00104$
;	nrf24l01.c:516: register_new_value = register_current_value | (1 << RF_DR_HIGH);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x08
	movx	@dptr,a
;	nrf24l01.c:517: break;
;	nrf24l01.c:518: case 1000:
	sjmp	00105$
00102$:
;	nrf24l01.c:519: register_new_value = register_current_value;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	movx	@dptr,a
;	nrf24l01.c:520: break;
;	nrf24l01.c:521: case 250:
	sjmp	00105$
00103$:
;	nrf24l01.c:522: register_new_value = register_current_value | (1 << RF_DR_LOW);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x20
	movx	@dptr,a
;	nrf24l01.c:523: break;
;	nrf24l01.c:524: default:
	sjmp	00105$
00104$:
;	nrf24l01.c:525: register_new_value = register_current_value;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	movx	@dptr,a
;	nrf24l01.c:527: }
00105$:
;	nrf24l01.c:528: nrf24_write(RF_SETUP_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
;	nrf24l01.c:529: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_rf_power'
;------------------------------------------------------------
;rf_power                  Allocated with name '_nrf24_rf_power_rf_power_65536_194'
;------------------------------------------------------------
;	nrf24l01.c:532: void nrf24_rf_power(uint8_t rf_power)
;	-----------------------------------------
;	 function nrf24_rf_power
;	-----------------------------------------
_nrf24_rf_power:
	mov	a,dpl
	mov	dptr,#_nrf24_rf_power_rf_power_65536_194
	movx	@dptr,a
;	nrf24l01.c:534: nrf24_read(RF_SETUP_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_nrf24_read
;	nrf24l01.c:535: register_current_value &= ~((1 << RF_PWR_1) | (1 << RF_PWR_0));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	anl	acc,#0xf9
	movx	@dptr,a
;	nrf24l01.c:536: switch (rf_power)
	mov	dptr,#_nrf24_rf_power_rf_power_65536_194
	movx	a,@dptr
	mov	r7,a
	jz	00101$
	cjne	r7,#0x06,00126$
	sjmp	00102$
00126$:
	cjne	r7,#0x0c,00127$
	sjmp	00103$
00127$:
;	nrf24l01.c:538: case 0:
	cjne	r7,#0x12,00105$
	sjmp	00104$
00101$:
;	nrf24l01.c:539: register_new_value = register_current_value | ((1 << RF_PWR_1) | (1 << RF_PWR_0));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x06
	movx	@dptr,a
;	nrf24l01.c:540: break;
;	nrf24l01.c:541: case 6:
	sjmp	00106$
00102$:
;	nrf24l01.c:542: register_new_value = register_current_value | (1 << RF_PWR_1);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x04
	movx	@dptr,a
;	nrf24l01.c:543: break;
;	nrf24l01.c:544: case 12:
	sjmp	00106$
00103$:
;	nrf24l01.c:545: register_new_value = register_current_value | (1 << RF_PWR_0);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x02
	movx	@dptr,a
;	nrf24l01.c:546: break;
;	nrf24l01.c:547: case 18:
	sjmp	00106$
00104$:
;	nrf24l01.c:548: register_new_value = register_current_value;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	movx	@dptr,a
;	nrf24l01.c:549: break;
;	nrf24l01.c:550: default:
	sjmp	00106$
00105$:
;	nrf24l01.c:551: register_new_value = register_current_value | (1 << RF_PWR_1);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x04
	movx	@dptr,a
;	nrf24l01.c:553: }
00106$:
;	nrf24l01.c:554: nrf24_write(RF_SETUP_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
;	nrf24l01.c:555: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_rf_channel'
;------------------------------------------------------------
;rf_channel                Allocated with name '_nrf24_rf_channel_rf_channel_65536_197'
;write_pointer             Allocated with name '_nrf24_rf_channel_write_pointer_131072_199'
;write_pointer             Allocated with name '_nrf24_rf_channel_write_pointer_131072_200'
;------------------------------------------------------------
;	nrf24l01.c:558: void nrf24_rf_channel(uint8_t rf_channel)
;	-----------------------------------------
;	 function nrf24_rf_channel
;	-----------------------------------------
_nrf24_rf_channel:
	mov	a,dpl
	mov	dptr,#_nrf24_rf_channel_rf_channel_65536_197
	movx	@dptr,a
;	nrf24l01.c:560: if ((rf_channel <= 125) && (rf_channel >= 1))
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x7d
	jc	00102$
	cjne	r7,#0x01,00116$
00116$:
	jc	00102$
;	nrf24l01.c:562: uint8_t write_pointer = rf_channel;
	mov	dptr,#_nrf24_rf_channel_write_pointer_131072_199
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:563: nrf24_write(RF_CH_ADDRESS, &write_pointer, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_nrf24_rf_channel_write_pointer_131072_199
	movx	@dptr,a
	mov	a,#(_nrf24_rf_channel_write_pointer_131072_199 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x05
	ljmp	_nrf24_write
00102$:
;	nrf24l01.c:567: uint8_t write_pointer = 1;
	mov	dptr,#_nrf24_rf_channel_write_pointer_131072_200
	mov	a,#0x01
	movx	@dptr,a
;	nrf24l01.c:568: nrf24_write(RF_CH_ADDRESS, &write_pointer, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_nrf24_rf_channel_write_pointer_131072_200
	movx	@dptr,a
	mov	a,#(_nrf24_rf_channel_write_pointer_131072_200 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x05
;	nrf24l01.c:570: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_interrupt_mask'
;------------------------------------------------------------
;tx_mask                   Allocated with name '_nrf24_interrupt_mask_PARM_2'
;max_rt_mask               Allocated with name '_nrf24_interrupt_mask_PARM_3'
;rx_mask                   Allocated with name '_nrf24_interrupt_mask_rx_mask_65536_201'
;------------------------------------------------------------
;	nrf24l01.c:573: void nrf24_interrupt_mask(uint8_t rx_mask, uint8_t tx_mask, uint8_t max_rt_mask)
;	-----------------------------------------
;	 function nrf24_interrupt_mask
;	-----------------------------------------
_nrf24_interrupt_mask:
	mov	a,dpl
	mov	dptr,#_nrf24_interrupt_mask_rx_mask_65536_201
	movx	@dptr,a
;	nrf24l01.c:575: nrf24_read(CONFIG_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_read
;	nrf24l01.c:576: if (rx_mask)
	mov	dptr,#_nrf24_interrupt_mask_rx_mask_65536_201
	movx	a,@dptr
	jz	00102$
;	nrf24l01.c:577: register_new_value = (register_current_value) | (1 << MASK_RX_DR);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x40
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:579: register_new_value &= (~(1 << MASK_RX_DR));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xbf
	movx	@dptr,a
00103$:
;	nrf24l01.c:580: if (tx_mask)
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	movx	a,@dptr
	jz	00105$
;	nrf24l01.c:581: register_new_value |= (1 << MASK_TX_DS);
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	acc,#0x20
	movx	@dptr,a
	sjmp	00106$
00105$:
;	nrf24l01.c:583: register_new_value &= (~(1 << MASK_TX_DS));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xdf
	movx	@dptr,a
00106$:
;	nrf24l01.c:584: if (max_rt_mask)
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	a,@dptr
	jz	00108$
;	nrf24l01.c:585: register_new_value |= (1 << MASK_MAX_RT);
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	acc,#0x10
	movx	@dptr,a
	sjmp	00109$
00108$:
;	nrf24l01.c:587: register_new_value &= (~(1 << MASK_MAX_RT));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xef
	movx	@dptr,a
00109$:
;	nrf24l01.c:589: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
;	nrf24l01.c:590: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_crc_configuration'
;------------------------------------------------------------
;crc_encoding_scheme       Allocated with name '_nrf24_crc_configuration_PARM_2'
;crc_enable                Allocated with name '_nrf24_crc_configuration_crc_enable_65536_203'
;------------------------------------------------------------
;	nrf24l01.c:593: void nrf24_crc_configuration(uint8_t crc_enable, uint8_t crc_encoding_scheme)
;	-----------------------------------------
;	 function nrf24_crc_configuration
;	-----------------------------------------
_nrf24_crc_configuration:
	mov	a,dpl
	mov	dptr,#_nrf24_crc_configuration_crc_enable_65536_203
	movx	@dptr,a
;	nrf24l01.c:595: nrf24_read(CONFIG_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_read
;	nrf24l01.c:596: if (crc_enable)
	mov	dptr,#_nrf24_crc_configuration_crc_enable_65536_203
	movx	a,@dptr
	jz	00102$
;	nrf24l01.c:597: register_new_value = (register_current_value) | (1 << EN_CRC);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x08
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:599: register_new_value &= (~(1 << EN_CRC));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xf7
	movx	@dptr,a
00103$:
;	nrf24l01.c:600: if (crc_encoding_scheme == 2)
	mov	dptr,#_nrf24_crc_configuration_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00105$
;	nrf24l01.c:601: register_new_value |= (1 << CRCO);
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
	sjmp	00106$
00105$:
;	nrf24l01.c:603: register_new_value &= (~(1 << CRCO));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
00106$:
;	nrf24l01.c:605: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
;	nrf24l01.c:606: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_mode'
;------------------------------------------------------------
;mode                      Allocated with name '_nrf24_mode_mode_65536_205'
;------------------------------------------------------------
;	nrf24l01.c:609: void nrf24_mode(uint8_t mode)
;	-----------------------------------------
;	 function nrf24_mode
;	-----------------------------------------
_nrf24_mode:
	mov	a,dpl
	mov	dptr,#_nrf24_mode_mode_65536_205
	movx	@dptr,a
;	nrf24l01.c:611: nrf24_read(CONFIG_ADDRESS, &register_current_value, 1, CLOSE);
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_register_current_value
	movx	@dptr,a
	mov	a,#(_register_current_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_read
;	nrf24l01.c:612: switch (mode)
	mov	dptr,#_nrf24_mode_mode_65536_205
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jnc	00114$
	ljmp	00106$
00114$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
;	nrf24l01.c:614: case POWER_DOWN:
00101$:
;	nrf24l01.c:615: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:616: register_new_value = (register_current_value) & (~(1 << PWR_UP));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfd
	movx	@dptr,a
;	nrf24l01.c:617: delay_function(POWER_DOWN_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:618: break;
	ljmp	00107$
;	nrf24l01.c:619: case STANDBYI:                                 /*standby I is defined by 'PWR_UP = 1' and 'CE pin LOW'*/
00102$:
;	nrf24l01.c:620: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:621: register_new_value = (register_current_value) | (1 << PWR_UP);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x02
	movx	@dptr,a
;	nrf24l01.c:622: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:623: break;
	ljmp	00107$
;	nrf24l01.c:624: case STANDBYII:                                 /*standby ii is related to a ptx device*/
00103$:
;	nrf24l01.c:625: nrf24_CE(CE_ON);
	mov	dpl,#0x01
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:626: register_new_value = ((register_current_value) | (1 << PWR_UP)) & (~(1 << PRIM_RX));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	orl	a,#0x02
	mov	dptr,#_register_new_value
	anl	a,#0xfe
	movx	@dptr,a
;	nrf24l01.c:627: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:628: break;
;	nrf24l01.c:629: case PTX:
	sjmp	00107$
00104$:
;	nrf24l01.c:630: nrf24_CE(CE_ON);
	mov	dpl,#0x01
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:631: register_new_value = ((register_current_value) | (1 << PWR_UP)) & (~(1 << PRIM_RX));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	orl	a,#0x02
	mov	dptr,#_register_new_value
	anl	a,#0xfe
	movx	@dptr,a
;	nrf24l01.c:632: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:633: break;
;	nrf24l01.c:634: case PRX:
	sjmp	00107$
00105$:
;	nrf24l01.c:635: nrf24_CE(CE_ON);
	mov	dpl,#0x01
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:636: register_new_value = (register_current_value) | (1 << PWR_UP) | (1 << PRIM_RX);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x03
	movx	@dptr,a
;	nrf24l01.c:637: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:638: break;
;	nrf24l01.c:639: default:
	sjmp	00107$
00106$:
;	nrf24l01.c:640: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:641: register_new_value = (register_current_value) & (~(1 << PWR_UP));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfd
	movx	@dptr,a
;	nrf24l01.c:642: delay_function(POWER_DOWN_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:644: }
00107$:
;	nrf24l01.c:645: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_register_new_value
	movx	@dptr,a
	mov	a,#(_register_new_value >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_nrf24_write_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	lcall	_nrf24_write
	pop	ar7
;	nrf24l01.c:646: current_mode = mode;
	mov	dptr,#_current_mode
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:647: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_read'
;------------------------------------------------------------
;value                     Allocated with name '_nrf24_read_PARM_2'
;data_length               Allocated with name '_nrf24_read_PARM_3'
;spi_state                 Allocated with name '_nrf24_read_PARM_4'
;address                   Allocated with name '_nrf24_read_address_65536_208'
;------------------------------------------------------------
;	nrf24l01.c:651: void nrf24_read(uint8_t address, uint8_t *value, uint8_t data_length, uint8_t spi_state)
;	-----------------------------------------
;	 function nrf24_read
;	-----------------------------------------
_nrf24_read:
	mov	a,dpl
	mov	dptr,#_nrf24_read_address_65536_208
	movx	@dptr,a
;	nrf24l01.c:653: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:656: SPI_command = R_REGISTER | address;    /*in order to read CONFIG, then change one bit*/
	mov	dptr,#_nrf24_read_address_65536_208
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SPI_command
	movx	@dptr,a
;	nrf24l01.c:657: SPI_send_command(SPI_command);
	mov	dpl,r7
	lcall	_SPI_send_command
;	nrf24l01.c:659: SPI_command = 0;
	mov	dptr,#_SPI_command
	clr	a
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nrf24_read_PARM_3
	movx	a,@dptr
	mov	r4,a
00105$:
;	nrf24l01.c:660: for (; data_length ; data_length--)
	mov	a,r4
	jz	00101$
;	nrf24l01.c:662: *value = SPI_send_command(SPI_command);
	mov	dptr,#_SPI_command
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_send_command
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	nrf24l01.c:663: value++;
;	nrf24l01.c:660: for (; data_length ; data_length--)
	dec	r4
	sjmp	00105$
00101$:
;	nrf24l01.c:665: if (spi_state == CLOSE)
	mov	dptr,#_nrf24_read_PARM_4
	movx	a,@dptr
	jnz	00107$
;	nrf24l01.c:666: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
;	nrf24l01.c:667: }
	ljmp	_nrf24_SPI
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_write'
;------------------------------------------------------------
;value                     Allocated with name '_nrf24_write_PARM_2'
;data_length               Allocated with name '_nrf24_write_PARM_3'
;spi_state                 Allocated with name '_nrf24_write_PARM_4'
;address                   Allocated with name '_nrf24_write_address_65536_212'
;------------------------------------------------------------
;	nrf24l01.c:671: void nrf24_write(uint8_t address, uint8_t *value, uint8_t data_length, uint8_t spi_state)
;	-----------------------------------------
;	 function nrf24_write
;	-----------------------------------------
_nrf24_write:
	mov	a,dpl
	mov	dptr,#_nrf24_write_address_65536_212
	movx	@dptr,a
;	nrf24l01.c:673: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:674: SPI_command = W_REGISTER | address;    /*in order to read CONFIG, then change one bit*/
	mov	dptr,#_nrf24_write_address_65536_212
	movx	a,@dptr
	orl	a,#0x20
	mov	r7,a
	mov	dptr,#_SPI_command
	movx	@dptr,a
;	nrf24l01.c:675: SPI_send_command(SPI_command);
	mov	dpl,r7
	lcall	_SPI_send_command
	mov	dptr,#_nrf24_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nrf24_write_PARM_3
	movx	a,@dptr
	mov	r4,a
00105$:
;	nrf24l01.c:676: for (; data_length ; data_length--)
	mov	a,r4
	jz	00101$
;	nrf24l01.c:678: SPI_command = *value;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_SPI_command
	mov	a,r3
	movx	@dptr,a
;	nrf24l01.c:679: value++;
;	nrf24l01.c:680: SPI_send_command(SPI_command);
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_send_command
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	nrf24l01.c:676: for (; data_length ; data_length--)
	dec	r4
	sjmp	00105$
00101$:
;	nrf24l01.c:682: if (spi_state == CLOSE)
	mov	dptr,#_nrf24_write_PARM_4
	movx	a,@dptr
	jnz	00107$
;	nrf24l01.c:683: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
;	nrf24l01.c:684: }
	ljmp	_nrf24_SPI
00107$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_bitReverseTable256:
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x90	; 144
	.db #0x50	; 80	'P'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xb0	; 176
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0x48	; 72	'H'
	.db #0xc8	; 200
	.db #0x28	; 40
	.db #0xa8	; 168
	.db #0x68	; 104	'h'
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x98	; 152
	.db #0x58	; 88	'X'
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0xb8	; 184
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0x84	; 132
	.db #0x44	; 68	'D'
	.db #0xc4	; 196
	.db #0x24	; 36
	.db #0xa4	; 164
	.db #0x64	; 100	'd'
	.db #0xe4	; 228
	.db #0x14	; 20
	.db #0x94	; 148
	.db #0x54	; 84	'T'
	.db #0xd4	; 212
	.db #0x34	; 52	'4'
	.db #0xb4	; 180
	.db #0x74	; 116	't'
	.db #0xf4	; 244
	.db #0x0c	; 12
	.db #0x8c	; 140
	.db #0x4c	; 76	'L'
	.db #0xcc	; 204
	.db #0x2c	; 44
	.db #0xac	; 172
	.db #0x6c	; 108	'l'
	.db #0xec	; 236
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x5c	; 92
	.db #0xdc	; 220
	.db #0x3c	; 60
	.db #0xbc	; 188
	.db #0x7c	; 124
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x42	; 66	'B'
	.db #0xc2	; 194
	.db #0x22	; 34
	.db #0xa2	; 162
	.db #0x62	; 98	'b'
	.db #0xe2	; 226
	.db #0x12	; 18
	.db #0x92	; 146
	.db #0x52	; 82	'R'
	.db #0xd2	; 210
	.db #0x32	; 50	'2'
	.db #0xb2	; 178
	.db #0x72	; 114	'r'
	.db #0xf2	; 242
	.db #0x0a	; 10
	.db #0x8a	; 138
	.db #0x4a	; 74	'J'
	.db #0xca	; 202
	.db #0x2a	; 42
	.db #0xaa	; 170
	.db #0x6a	; 106	'j'
	.db #0xea	; 234
	.db #0x1a	; 26
	.db #0x9a	; 154
	.db #0x5a	; 90	'Z'
	.db #0xda	; 218
	.db #0x3a	; 58
	.db #0xba	; 186
	.db #0x7a	; 122	'z'
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0x86	; 134
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x26	; 38
	.db #0xa6	; 166
	.db #0x66	; 102	'f'
	.db #0xe6	; 230
	.db #0x16	; 22
	.db #0x96	; 150
	.db #0x56	; 86	'V'
	.db #0xd6	; 214
	.db #0x36	; 54	'6'
	.db #0xb6	; 182
	.db #0x76	; 118	'v'
	.db #0xf6	; 246
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x4e	; 78	'N'
	.db #0xce	; 206
	.db #0x2e	; 46
	.db #0xae	; 174
	.db #0x6e	; 110	'n'
	.db #0xee	; 238
	.db #0x1e	; 30
	.db #0x9e	; 158
	.db #0x5e	; 94
	.db #0xde	; 222
	.db #0x3e	; 62
	.db #0xbe	; 190
	.db #0x7e	; 126
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x21	; 33
	.db #0xa1	; 161
	.db #0x61	; 97	'a'
	.db #0xe1	; 225
	.db #0x11	; 17
	.db #0x91	; 145
	.db #0x51	; 81	'Q'
	.db #0xd1	; 209
	.db #0x31	; 49	'1'
	.db #0xb1	; 177
	.db #0x71	; 113	'q'
	.db #0xf1	; 241
	.db #0x09	; 9
	.db #0x89	; 137
	.db #0x49	; 73	'I'
	.db #0xc9	; 201
	.db #0x29	; 41
	.db #0xa9	; 169
	.db #0x69	; 105	'i'
	.db #0xe9	; 233
	.db #0x19	; 25
	.db #0x99	; 153
	.db #0x59	; 89	'Y'
	.db #0xd9	; 217
	.db #0x39	; 57	'9'
	.db #0xb9	; 185
	.db #0x79	; 121	'y'
	.db #0xf9	; 249
	.db #0x05	; 5
	.db #0x85	; 133
	.db #0x45	; 69	'E'
	.db #0xc5	; 197
	.db #0x25	; 37
	.db #0xa5	; 165
	.db #0x65	; 101	'e'
	.db #0xe5	; 229
	.db #0x15	; 21
	.db #0x95	; 149
	.db #0x55	; 85	'U'
	.db #0xd5	; 213
	.db #0x35	; 53	'5'
	.db #0xb5	; 181
	.db #0x75	; 117	'u'
	.db #0xf5	; 245
	.db #0x0d	; 13
	.db #0x8d	; 141
	.db #0x4d	; 77	'M'
	.db #0xcd	; 205
	.db #0x2d	; 45
	.db #0xad	; 173
	.db #0x6d	; 109	'm'
	.db #0xed	; 237
	.db #0x1d	; 29
	.db #0x9d	; 157
	.db #0x5d	; 93
	.db #0xdd	; 221
	.db #0x3d	; 61
	.db #0xbd	; 189
	.db #0x7d	; 125
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x43	; 67	'C'
	.db #0xc3	; 195
	.db #0x23	; 35
	.db #0xa3	; 163
	.db #0x63	; 99	'c'
	.db #0xe3	; 227
	.db #0x13	; 19
	.db #0x93	; 147
	.db #0x53	; 83	'S'
	.db #0xd3	; 211
	.db #0x33	; 51	'3'
	.db #0xb3	; 179
	.db #0x73	; 115	's'
	.db #0xf3	; 243
	.db #0x0b	; 11
	.db #0x8b	; 139
	.db #0x4b	; 75	'K'
	.db #0xcb	; 203
	.db #0x2b	; 43
	.db #0xab	; 171
	.db #0x6b	; 107	'k'
	.db #0xeb	; 235
	.db #0x1b	; 27
	.db #0x9b	; 155
	.db #0x5b	; 91
	.db #0xdb	; 219
	.db #0x3b	; 59
	.db #0xbb	; 187
	.db #0x7b	; 123
	.db #0xfb	; 251
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x27	; 39
	.db #0xa7	; 167
	.db #0x67	; 103	'g'
	.db #0xe7	; 231
	.db #0x17	; 23
	.db #0x97	; 151
	.db #0x57	; 87	'W'
	.db #0xd7	; 215
	.db #0x37	; 55	'7'
	.db #0xb7	; 183
	.db #0x77	; 119	'w'
	.db #0xf7	; 247
	.db #0x0f	; 15
	.db #0x8f	; 143
	.db #0x4f	; 79	'O'
	.db #0xcf	; 207
	.db #0x2f	; 47
	.db #0xaf	; 175
	.db #0x6f	; 111	'o'
	.db #0xef	; 239
	.db #0x1f	; 31
	.db #0x9f	; 159
	.db #0x5f	; 95
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0xff	; 255
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.ascii "Read from %d: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Sending to %d: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.ascii "Read value matches the newly written value :D"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.ascii "Read value doesn't match the newly written value ;("
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.ascii "Read: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.ascii "Hardware Detected!"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.ascii "Register %d: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__dataReady:
	.db #0x00	;  0
__xinit__CSN_pin:
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__CE_pin:
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__reset_flag:
	.db #0x00	; 0
__xinit__current_mode:
	.db #0x05	; 5
__xinit__current_acknowledgement_state:
	.db #0x01	; 1
__xinit__dynamic_payload:
	.db #0x00	; 0
__xinit__datapipe_address:
	.db #0xd2	; 210
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.area CABS    (ABS,CODE)
