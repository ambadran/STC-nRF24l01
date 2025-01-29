;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module nrf24l01
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _X32KCR
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
	.globl _CHIP_PACKAGE_TYPE
	.globl _CHIP_TEST_DAY_BCD
	.globl _CHIP_TEST_MONTH_BCD
	.globl _CHIP_TEST_YEAR_BCD
	.globl _PROGRAM_AREA_SIZE
	.globl _VRTRIM_44MHz
	.globl _VRTRIM_27MHz
	.globl _VRTRIM_10MHz
	.globl _VRTRIM_6MHz
	.globl _IRTRIM_48MHz
	.globl _IRTRIM_44_2368MHz
	.globl _IRTRIM_40MHz
	.globl _IRTRIM_36_864MHz
	.globl _IRTRIM_35MHz
	.globl _IRTRIM_33_1776MHz
	.globl _IRTRIM_30MHz
	.globl _IRTRIM_27MHz
	.globl _IRTRIM_24MHz
	.globl _IRTRIM_22_1184MHz
	.globl ___OTHER_INFO
	.globl _CHIP_GUID
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
	.globl _nrf24_print_internal_register_values
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
_nrf24_print_internal_register_values_sloc0_1_0:
	.ds 2
_nrf24_print_internal_register_values_sloc1_1_0:
	.ds 2
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
_CHIP_GUID	=	0xfde0
___OTHER_INFO	=	0xfde7
_IRTRIM_22_1184MHz	=	0xfdeb
_IRTRIM_24MHz	=	0xfdec
_IRTRIM_27MHz	=	0xfded
_IRTRIM_30MHz	=	0xfdee
_IRTRIM_33_1776MHz	=	0xfdef
_IRTRIM_35MHz	=	0xfdf0
_IRTRIM_36_864MHz	=	0xfdf1
_IRTRIM_40MHz	=	0xfdf2
_IRTRIM_44_2368MHz	=	0xfdf3
_IRTRIM_48MHz	=	0xfdf4
_VRTRIM_6MHz	=	0xfdf5
_VRTRIM_10MHz	=	0xfdf6
_VRTRIM_27MHz	=	0xfdf7
_VRTRIM_44MHz	=	0xfdf8
_PROGRAM_AREA_SIZE	=	0xfdf9
_CHIP_TEST_YEAR_BCD	=	0xfdfb
_CHIP_TEST_MONTH_BCD	=	0xfdfc
_CHIP_TEST_DAY_BCD	=	0xfdfd
_CHIP_PACKAGE_TYPE	=	0xfdfe
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
_X32KCR	=	0xfe08
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
_uartGetCharacter_result_65536_69:
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
_delay_function_duration_ms_65536_131:
	.ds 4
_nrf24_SPI_input_65536_137:
	.ds 1
_SPI_send_command_command_65536_139:
	.ds 1
_nrf24_CE_input_65536_141:
	.ds 1
_nrf24_dynamic_ack_state_65536_143:
	.ds 1
_nrf24_transmit_PARM_2:
	.ds 1
_nrf24_transmit_PARM_3:
	.ds 1
_nrf24_transmit_payload_65536_147:
	.ds 3
_nrf24_send_payload_PARM_2:
	.ds 1
_nrf24_send_payload_payload_65536_151:
	.ds 3
_nrf24_flush_fifo_select_65536_172:
	.ds 1
_nrf24_device_PARM_2:
	.ds 1
_nrf24_device_device_mode_65536_181:
	.ds 1
_nrf24_device_new_value_65537_184:
	.ds 1
_nrf24_print_internal_register_values_pipe_address_65536_191:
	.ds 5
_nrf24_automatic_retransmit_setup_PARM_2:
	.ds 1
_nrf24_automatic_retransmit_setup_delay_time_65536_196:
	.ds 2
_nrf24_auto_acknowledgment_setup_datapipe_65536_199:
	.ds 1
_nrf24_dynamic_payload_PARM_2:
	.ds 1
_nrf24_dynamic_payload_state_65536_201:
	.ds 1
_nrf24_datapipe_ptx_datapipe_number_65536_205:
	.ds 1
_nrf24_prx_static_payload_width_PARM_2:
	.ds 1
_nrf24_prx_static_payload_width_static_payload_width_65536_211:
	.ds 1
_nrf24_datapipe_enable_number_of_datapipes_65536_215:
	.ds 1
_nrf24_address_width_address_width_65536_217:
	.ds 1
_nrf24_rf_datarate_rf_datarate_65536_221:
	.ds 2
_nrf24_rf_power_rf_power_65536_224:
	.ds 1
_nrf24_rf_channel_rf_channel_65536_227:
	.ds 1
_nrf24_rf_channel_write_pointer_131072_229:
	.ds 1
_nrf24_rf_channel_write_pointer_131072_230:
	.ds 1
_nrf24_interrupt_mask_PARM_2:
	.ds 1
_nrf24_interrupt_mask_PARM_3:
	.ds 1
_nrf24_interrupt_mask_rx_mask_65536_231:
	.ds 1
_nrf24_crc_configuration_PARM_2:
	.ds 1
_nrf24_crc_configuration_crc_enable_65536_233:
	.ds 1
_nrf24_mode_mode_65536_235:
	.ds 1
_nrf24_read_PARM_2:
	.ds 3
_nrf24_read_PARM_3:
	.ds 1
_nrf24_read_PARM_4:
	.ds 1
_nrf24_read_address_65536_238:
	.ds 1
_nrf24_write_PARM_2:
	.ds 3
_nrf24_write_PARM_3:
	.ds 1
_nrf24_write_PARM_4:
	.ds 1
_nrf24_write_address_65536_243:
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
_CSN_pin:
	.ds 13
_CE_pin:
	.ds 13
_reset_flag:
	.ds 1
_current_mode:
	.ds 1
_current_acknowledgement_state:
	.ds 1
_dynamic_payload:
	.ds 1
_hardwareCheckPassed:
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
;duration_ms               Allocated with name '_delay_function_duration_ms_65536_131'
;------------------------------------------------------------
;	nrf24l01.c:48: void delay_function(uint32_t duration_ms)
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
	mov	dptr,#_delay_function_duration_ms_65536_131
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
;	nrf24l01.c:50: delay1ms(duration_ms);
	mov	dptr,#_delay_function_duration_ms_65536_131
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
;	nrf24l01.c:51: }
	ljmp	_delay1ms
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Initializer'
;------------------------------------------------------------
;	nrf24l01.c:55: void SPI_Initializer(void) {
;	-----------------------------------------
;	 function SPI_Initializer
;	-----------------------------------------
_SPI_Initializer:
;	nrf24l01.c:59: spiSelectSpeed(SPI_SPEED), 
	mov	dptr,#0x0900
	mov	b,#0x3d
	clr	a
	lcall	_spiSelectSpeed
	mov	r7,dpl
;	nrf24l01.c:61: GPIO_BIDIRECTIONAL_MODE
	mov	dptr,#_spiConfigure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spiConfigure_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_spiConfigure_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_spiConfigure_PARM_5
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
;	nrf24l01.c:63: }
	ljmp	_spiConfigure
;------------------------------------------------------------
;Allocation info for local variables in function 'pinout_Initializer'
;------------------------------------------------------------
;	nrf24l01.c:66: void pinout_Initializer(void)
;	-----------------------------------------
;	 function pinout_Initializer
;	-----------------------------------------
_pinout_Initializer:
;	nrf24l01.c:69: gpioConfigure(&CSN_pin);
	mov	dptr,#_CSN_pin
	mov	b,#0x00
	lcall	_gpioConfigure
;	nrf24l01.c:70: gpioConfigure(&CE_pin);
	mov	dptr,#_CE_pin
	mov	b,#0x00
	lcall	_gpioConfigure
;	nrf24l01.c:72: gpioWrite(&CSN_pin, SPI_OFF);
	mov	dptr,#_gpioWrite_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_CSN_pin
	mov	b,#0x00
	lcall	_gpioWrite
;	nrf24l01.c:73: gpioWrite(&CE_pin, CE_OFF);
	mov	dptr,#_gpioWrite_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_CE_pin
	mov	b,#0x00
;	nrf24l01.c:75: }
	ljmp	_gpioWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_SPI'
;------------------------------------------------------------
;input                     Allocated with name '_nrf24_SPI_input_65536_137'
;------------------------------------------------------------
;	nrf24l01.c:78: void nrf24_SPI(uint8_t input)
;	-----------------------------------------
;	 function nrf24_SPI
;	-----------------------------------------
_nrf24_SPI:
	mov	a,dpl
	mov	dptr,#_nrf24_SPI_input_65536_137
	movx	@dptr,a
;	nrf24l01.c:80: gpioWrite(&CSN_pin, input);
	movx	a,@dptr
	mov	dptr,#_gpioWrite_PARM_2
	movx	@dptr,a
	mov	dptr,#_CSN_pin
	mov	b,#0x00
;	nrf24l01.c:81: }
	ljmp	_gpioWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_send_command'
;------------------------------------------------------------
;command                   Allocated with name '_SPI_send_command_command_65536_139'
;------------------------------------------------------------
;	nrf24l01.c:84: uint8_t SPI_send_command(uint8_t command) {
;	-----------------------------------------
;	 function SPI_send_command
;	-----------------------------------------
_SPI_send_command:
	mov	a,dpl
	mov	dptr,#_SPI_send_command_command_65536_139
	movx	@dptr,a
;	nrf24l01.c:85: spiSend(&command, 1, &dataReady);
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
	mov	dptr,#_SPI_send_command_command_65536_139
	mov	b,#0x00
	lcall	_spiSend
;	nrf24l01.c:88: while(!dataReady);
00101$:
	mov	dptr,#_dataReady
	movx	a,@dptr
	jz	00101$
;	nrf24l01.c:90: return command;
	mov	dptr,#_SPI_send_command_command_65536_139
	movx	a,@dptr
;	nrf24l01.c:91: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_CE'
;------------------------------------------------------------
;input                     Allocated with name '_nrf24_CE_input_65536_141'
;------------------------------------------------------------
;	nrf24l01.c:94: void nrf24_CE(uint8_t input)
;	-----------------------------------------
;	 function nrf24_CE
;	-----------------------------------------
_nrf24_CE:
	mov	a,dpl
	mov	dptr,#_nrf24_CE_input_65536_141
	movx	@dptr,a
;	nrf24l01.c:96: gpioWrite(&CE_pin, input);
	movx	a,@dptr
	mov	dptr,#_gpioWrite_PARM_2
	movx	@dptr,a
	mov	dptr,#_CE_pin
	mov	b,#0x00
;	nrf24l01.c:97: }
	ljmp	_gpioWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_dynamic_ack'
;------------------------------------------------------------
;state                     Allocated with name '_nrf24_dynamic_ack_state_65536_143'
;------------------------------------------------------------
;	nrf24l01.c:103: void nrf24_dynamic_ack(uint8_t state) {
;	-----------------------------------------
;	 function nrf24_dynamic_ack
;	-----------------------------------------
_nrf24_dynamic_ack:
	mov	a,dpl
	mov	dptr,#_nrf24_dynamic_ack_state_65536_143
	movx	@dptr,a
;	nrf24l01.c:104: if (state == ENABLE) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	nrf24l01.c:105: nrf24_read(FEATURE_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:106: register_new_value = register_current_value | (1 << EN_DYN_ACK);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x01
	movx	@dptr,a
;	nrf24l01.c:107: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:109: nrf24_read(FEATURE_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:110: register_new_value = register_current_value & (~(1 << EN_DYN_ACK));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfe
	movx	@dptr,a
;	nrf24l01.c:111: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:113: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_transmit'
;------------------------------------------------------------
;payload_width             Allocated with name '_nrf24_transmit_PARM_2'
;acknowledgement_state     Allocated with name '_nrf24_transmit_PARM_3'
;payload                   Allocated with name '_nrf24_transmit_payload_65536_147'
;------------------------------------------------------------
;	nrf24l01.c:116: uint8_t nrf24_transmit(uint8_t *payload, uint8_t payload_width, uint8_t acknowledgement_state) {
;	-----------------------------------------
;	 function nrf24_transmit
;	-----------------------------------------
_nrf24_transmit:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_nrf24_transmit_payload_65536_147
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:117: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);         /*in order to check TX_FIFO status*/
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
;	nrf24l01.c:118: if ((!(register_current_value & (1 << TX_FULL))) && (current_mode == PTX)) {
	mov	dptr,#_register_current_value
	movx	a,@dptr
	jb	acc.5,00102$
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00102$
;	nrf24l01.c:119: current_acknowledgement_state = acknowledgement_state;      /*setting the acknowledgement state to either NO_ACK or ACK, based on input*/
	mov	dptr,#_nrf24_transmit_PARM_3
	movx	a,@dptr
	mov	dptr,#_current_acknowledgement_state
	movx	@dptr,a
;	nrf24l01.c:123: nrf24_send_payload(payload, payload_width);                 /*the actual function to send data*/
	mov	dptr,#_nrf24_transmit_payload_65536_147
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
;	nrf24l01.c:124: return (TRANSMIT_BEGIN);                                     /*TX FIFO is not full and nrf24l01+ mode is standby ii or ptx*/
	mov	dpl,#0x01
	ret
00102$:
;	nrf24l01.c:127: return (TRANSMIT_FAIL);            /*TX FIFO full or wrong mode*/
	mov	dpl,#0x00
;	nrf24l01.c:130: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_send_payload'
;------------------------------------------------------------
;payload_width             Allocated with name '_nrf24_send_payload_PARM_2'
;payload                   Allocated with name '_nrf24_send_payload_payload_65536_151'
;------------------------------------------------------------
;	nrf24l01.c:133: void nrf24_send_payload(uint8_t *payload, uint8_t payload_width) {
;	-----------------------------------------
;	 function nrf24_send_payload
;	-----------------------------------------
_nrf24_send_payload:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_nrf24_send_payload_payload_65536_151
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:135: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:137: if (current_acknowledgement_state == NO_ACK_MODE) {SPI_command = W_TX_PAYLOAD_NOACK;}
	mov	dptr,#_current_acknowledgement_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
	mov	dptr,#_SPI_command
	mov	a,#0xb0
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:138: else { SPI_command = W_TX_PAYLOAD; }
	mov	dptr,#_SPI_command
	mov	a,#0xa0
	movx	@dptr,a
00103$:
;	nrf24l01.c:141: SPI_send_command(W_TX_PAYLOAD);
	mov	dpl,#0xa0
	lcall	_SPI_send_command
	mov	dptr,#_nrf24_send_payload_payload_65536_151
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
;	nrf24l01.c:142: for (; payload_width; payload_width--) {
	mov	a,r4
	jz	00104$
;	nrf24l01.c:145: SPI_command = payload[payload_width-1];
	mov	ar2,r4
	mov	r3,#0x00
	dec	r2
	cjne	r2,#0xff,00126$
	dec	r3
00126$:
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_SPI_command
	movx	@dptr,a
;	nrf24l01.c:146: SPI_send_command(SPI_command);
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SPI_send_command
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	nrf24l01.c:142: for (; payload_width; payload_width--) {
	dec	r4
	sjmp	00106$
00104$:
;	nrf24l01.c:148: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
;	nrf24l01.c:149: }
	ljmp	_nrf24_SPI
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_transmit_status'
;------------------------------------------------------------
;	nrf24l01.c:153: uint8_t nrf24_transmit_status(void)
;	-----------------------------------------
;	 function nrf24_transmit_status
;	-----------------------------------------
_nrf24_transmit_status:
;	nrf24l01.c:155: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);      /*status register is read to check TX_DS flag*/
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
;	nrf24l01.c:156: if (register_current_value & (1 << TX_DS))                          /*if the TX_DS == 1, */
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	jnb	acc.5,00105$
;	nrf24l01.c:158: nrf24_write(STATUS_ADDRESS, &register_current_value, 1, CLOSE);   /*reseting the TX_DS flag. as mentioned by datasheet, writing '1' to a flag resets that flag*/
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
;	nrf24l01.c:159: return TRANSMIT_DONE;
	mov	dpl,#0x01
	ret
00105$:
;	nrf24l01.c:161: } else if (register_current_value & (1 << MAX_RT)) {
	mov	a,r7
	jnb	acc.4,00102$
;	nrf24l01.c:162: nrf24_write(STATUS_ADDRESS, &register_current_value, 1, CLOSE);   /*reseting the MAX_RT flag. as mentioned by datasheet, writing '1' to a flag resets that flag*/
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
;	nrf24l01.c:163: return TRANSMIT_FAILED;
	mov	dpl,#0xff
	ret
00102$:
;	nrf24l01.c:166: return TRANSMIT_IN_PROGRESS;
	mov	dpl,#0x00
;	nrf24l01.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_receive'
;------------------------------------------------------------
;payload_width             Allocated to stack - _bp -3
;payload                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	nrf24l01.c:172: uint8_t nrf24_receive(uint8_t *payload, uint8_t payload_width) __reentrant {
;	-----------------------------------------
;	 function nrf24_receive
;	-----------------------------------------
_nrf24_receive:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	nrf24l01.c:174: if (current_mode == PRX) {
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00142$
	sjmp	00143$
00142$:
	ljmp	00110$
00143$:
;	nrf24l01.c:175: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_nrf24_read
	pop	ar5
	pop	ar6
	pop	ar7
;	nrf24l01.c:178: if (register_current_value & (1 << RX_DR)) {
	mov	dptr,#_register_current_value
	movx	a,@dptr
	jb	acc.6,00144$
	ljmp	00107$
00144$:
;	nrf24l01.c:181: if(dynamic_payload == DISABLE) { payload_width = current_payload_width; }
	mov	dptr,#_dynamic_payload
	movx	a,@dptr
	jnz	00102$
	mov	dptr,#_current_payload_width
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar4
00102$:
;	nrf24l01.c:183: nrf24_SPI(SPI_ON);                                                /*sending the read payload command to nrf24l01+*/                          
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_nrf24_SPI
;	nrf24l01.c:184: SPI_command = R_RX_PAYLOAD;
	mov	dptr,#_SPI_command
	mov	a,#0x61
	movx	@dptr,a
;	nrf24l01.c:185: SPI_send_command(SPI_command);
	mov	dpl,#0x61
	lcall	_SPI_send_command
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
00113$:
;	nrf24l01.c:187: for (; payload_width; payload_width--) {
	mov	a,r4
	jz	00103$
;	nrf24l01.c:188: SPI_command = NOP_CMD;
	mov	dptr,#_SPI_command
	mov	a,#0xff
	movx	@dptr,a
;	nrf24l01.c:189: *payload = SPI_send_command(SPI_command); // newly added
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
;	nrf24l01.c:190: payload++;
;	nrf24l01.c:187: for (; payload_width; payload_width--) {
	dec	r4
	sjmp	00113$
00103$:
;	nrf24l01.c:192: nrf24_SPI(SPI_OFF); 
	mov	dpl,#0x01
	lcall	_nrf24_SPI
;	nrf24l01.c:193: nrf24_read(FIFO_STATUS_ADDRESS, &register_current_value, 1, CLOSE);   /*in order to check the RX_EMPTY flag*/
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
;	nrf24l01.c:194: if(register_current_value & (1 << RX_EMPTY))                        /*if the RX FIFO is empty, reset the RX_DR flag inside STATUS register*/
	mov	dptr,#_register_current_value
	movx	a,@dptr
	jnb	acc.0,00105$
;	nrf24l01.c:196: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:197: register_new_value = register_current_value | (1 << RX_DR);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x40
	movx	@dptr,a
;	nrf24l01.c:198: nrf24_write(STATUS_ADDRESS, &register_new_value, 1, CLOSE); 
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
;	nrf24l01.c:200: return OPERATION_DONE;
	mov	dpl,#0x01
	sjmp	00115$
00107$:
;	nrf24l01.c:202: } else { return RECEIVE_FIFO_EMPTY; }
	mov	dpl,#0x02
	sjmp	00115$
00110$:
;	nrf24l01.c:204: } else { return OPERATION_ERROR; }
	mov	dpl,#0x00
00115$:
;	nrf24l01.c:206: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_flush'
;------------------------------------------------------------
;fifo_select               Allocated with name '_nrf24_flush_fifo_select_65536_172'
;------------------------------------------------------------
;	nrf24l01.c:210: uint8_t nrf24_flush(uint8_t fifo_select)
;	-----------------------------------------
;	 function nrf24_flush
;	-----------------------------------------
_nrf24_flush:
	mov	a,dpl
	mov	dptr,#_nrf24_flush_fifo_select_65536_172
	movx	@dptr,a
;	nrf24l01.c:212: switch (fifo_select) {
	movx	a,@dptr
	mov	r7,a
	jz	00105$
	cjne	r7,#0x01,00109$
;	nrf24l01.c:214: if (current_mode == PTX) {
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00103$
;	nrf24l01.c:215: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:216: SPI_command = FLUSH_TX;
	mov	dptr,#_SPI_command
	mov	a,#0xe1
	movx	@dptr,a
;	nrf24l01.c:217: SPI_send_command(SPI_command);
	mov	dpl,#0xe1
	lcall	_SPI_send_command
;	nrf24l01.c:218: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
	lcall	_nrf24_SPI
;	nrf24l01.c:219: return OPERATION_DONE;
	mov	dpl,#0x01
	ret
00103$:
;	nrf24l01.c:222: return OPERATION_ERROR;
	mov	dpl,#0x00
;	nrf24l01.c:224: case RX_BUFFER:
	ret
00105$:
;	nrf24l01.c:225: if (current_mode == PRX) {
	mov	dptr,#_current_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00107$
;	nrf24l01.c:226: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:227: SPI_command = FLUSH_RX;
	mov	dptr,#_SPI_command
	mov	a,#0xe2
	movx	@dptr,a
;	nrf24l01.c:228: SPI_send_command(SPI_command);
	mov	dpl,#0xe2
	lcall	_SPI_send_command
;	nrf24l01.c:229: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
	lcall	_nrf24_SPI
;	nrf24l01.c:230: return OPERATION_DONE;
	mov	dpl,#0x01
	ret
00107$:
;	nrf24l01.c:233: return OPERATION_ERROR;
	mov	dpl,#0x00
;	nrf24l01.c:236: default:
	ret
00109$:
;	nrf24l01.c:237: return OPERATION_ERROR;
	mov	dpl,#0x00
;	nrf24l01.c:238: }
;	nrf24l01.c:239: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_reset'
;------------------------------------------------------------
;	nrf24l01.c:242: void nrf24_reset(void) {
;	-----------------------------------------
;	 function nrf24_reset
;	-----------------------------------------
_nrf24_reset:
;	nrf24l01.c:243: reset_flag = 1;
	mov	dptr,#_reset_flag
	mov	a,#0x01
	movx	@dptr,a
;	nrf24l01.c:244: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	lcall	_nrf24_CE
;	nrf24l01.c:245: register_new_value = CONFIG_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x08
	movx	@dptr,a
;	nrf24l01.c:246: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:247: register_new_value = EN_AA_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x3f
	movx	@dptr,a
;	nrf24l01.c:248: nrf24_write(EN_AA_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:249: register_new_value = EN_RXADDR_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	clr	a
	movx	@dptr,a
;	nrf24l01.c:250: nrf24_write(EN_RXADDR_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:251: register_new_value = SETUP_AW_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x03
	movx	@dptr,a
;	nrf24l01.c:252: nrf24_write(SETUP_AW_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:253: register_new_value = RF_CH_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x02
	movx	@dptr,a
;	nrf24l01.c:254: nrf24_write(RF_CH_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:255: register_new_value = RF_SETUP_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x27
	movx	@dptr,a
;	nrf24l01.c:256: nrf24_write(RF_SETUP_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:257: register_new_value = STATUS_REGISTER_DEFAULT;
	mov	dptr,#_register_new_value
	mov	a,#0x0e
	movx	@dptr,a
;	nrf24l01.c:258: nrf24_write(STATUS_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:265: nrf24_mode(PTX);
	mov	dpl,#0x03
	lcall	_nrf24_mode
;	nrf24l01.c:266: nrf24_flush(TX_BUFFER);
	mov	dpl,#0x01
	lcall	_nrf24_flush
;	nrf24l01.c:267: nrf24_mode(PRX);
	mov	dpl,#0x04
	lcall	_nrf24_mode
;	nrf24l01.c:268: nrf24_flush(RX_BUFFER);
	mov	dpl,#0x00
	lcall	_nrf24_flush
;	nrf24l01.c:270: nrf24_read(STATUS_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:271: register_new_value = register_current_value | (1 << RX_DR) | (1 << TX_DS) | (1 << MAX_RT);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x70
	movx	@dptr,a
;	nrf24l01.c:272: nrf24_write(STATUS_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:275: nrf24_crc_configuration(ENABLE, 2);
	mov	dptr,#_nrf24_crc_configuration_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_nrf24_crc_configuration
;	nrf24l01.c:276: nrf24_address_width(ADDRESS_WIDTH_DEFAULT);
	mov	dpl,#0x05
	lcall	_nrf24_address_width
;	nrf24l01.c:279: nrf24_rf_channel(RF_CHANNEL_DEFAULT);
	mov	dpl,#0x2e
	lcall	_nrf24_rf_channel
;	nrf24l01.c:280: nrf24_datapipe_enable(NUMBER_OF_DP_DEFAULT);
	mov	dpl,#0x02
	lcall	_nrf24_datapipe_enable
;	nrf24l01.c:281: nrf24_datapipe_address_configuration();  // I uncommented it
	lcall	_nrf24_datapipe_address_configuration
;	nrf24l01.c:282: nrf24_datapipe_ptx(1);  // I uncommented it
	mov	dpl,#0x01
	lcall	_nrf24_datapipe_ptx
;	nrf24l01.c:283: nrf24_prx_static_payload_width(STATIC_PAYLOAD_WIDTH_DEFAULT, NUMBER_OF_DP_DEFAULT);
	mov	dptr,#_nrf24_prx_static_payload_width_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_nrf24_prx_static_payload_width
;	nrf24l01.c:284: nrf24_automatic_retransmit_setup(RETRANSMIT_DELAY_DEFAULT, RETRANSMIT_COUNT_DEFAULT);
	mov	dptr,#_nrf24_automatic_retransmit_setup_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#0x06d6
	lcall	_nrf24_automatic_retransmit_setup
;	nrf24l01.c:285: nrf24_auto_acknowledgment_setup(NUMBER_OF_DP_DEFAULT);
	mov	dpl,#0x02
	lcall	_nrf24_auto_acknowledgment_setup
;	nrf24l01.c:286: nrf24_dynamic_payload(DISABLE, NUMBER_OF_DP_DEFAULT);
	mov	dptr,#_nrf24_dynamic_payload_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_nrf24_dynamic_payload
;	nrf24l01.c:287: nrf24_dynamic_ack(DISABLE);
	mov	dpl,#0x00
;	nrf24l01.c:289: }
	ljmp	_nrf24_dynamic_ack
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_device'
;------------------------------------------------------------
;reset_state               Allocated with name '_nrf24_device_PARM_2'
;device_mode               Allocated with name '_nrf24_device_device_mode_65536_181'
;new_value                 Allocated with name '_nrf24_device_new_value_65537_184'
;------------------------------------------------------------
;	nrf24l01.c:294: void nrf24_device(uint8_t device_mode, uint8_t reset_state)
;	-----------------------------------------
;	 function nrf24_device
;	-----------------------------------------
_nrf24_device:
	mov	a,dpl
	mov	dptr,#_nrf24_device_device_mode_65536_181
	movx	@dptr,a
;	nrf24l01.c:296: if(!hardwareCheckPassed) {
	mov	dptr,#_hardwareCheckPassed
	movx	a,@dptr
	jnz	00102$
;	nrf24l01.c:297: SPI_Initializer();
	lcall	_SPI_Initializer
;	nrf24l01.c:298: pinout_Initializer();
	lcall	_pinout_Initializer
;	nrf24l01.c:299: delay_function(STARTUP_DELAY);
	mov	dptr,#(0x96&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
00102$:
;	nrf24l01.c:301: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	lcall	_nrf24_CE
;	nrf24l01.c:305: while (!hardwareCheckPassed) {
00106$:
	mov	dptr,#_hardwareCheckPassed
	movx	a,@dptr
	jz	00145$
	ljmp	00108$
00145$:
;	nrf24l01.c:307: nrf24_read(HARDWARE_TEST_REGISTER, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:313: new_value = register_current_value+3;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#_nrf24_device_new_value_65537_184
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:314: register_new_value = new_value;
	mov	dptr,#_register_new_value
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:315: nrf24_write(HARDWARE_TEST_REGISTER, &register_new_value, 1, CLOSE); // restarts the nrf?!?!? where is requires two read calls to return 8 again
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
;	nrf24l01.c:321: nrf24_read(HARDWARE_TEST_REGISTER, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:326: if (register_current_value == new_value) {
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nrf24_device_new_value_65537_184
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00104$
;	nrf24l01.c:330: hardwareCheckPassed = true;
	mov	dptr,#_hardwareCheckPassed
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00106$
00104$:
;	nrf24l01.c:332: printf("\rnrf24l01 Failed to Initialize:\nRead value doesn't match the newly written value ;(\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00106$
00108$:
;	nrf24l01.c:338: if ((reset_state == RESET) || (reset_flag == 0)) {
	mov	dptr,#_nrf24_device_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00148$
	sjmp	00109$
00148$:
	mov	dptr,#_reset_flag
	movx	a,@dptr
	jnz	00110$
00109$:
;	nrf24l01.c:339: nrf24_reset();
	lcall	_nrf24_reset
00110$:
;	nrf24l01.c:342: switch (device_mode) {
	mov	dptr,#_nrf24_device_device_mode_65536_181
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jc	00116$
	mov	a,r7
	add	a,r7
;	nrf24l01.c:343: case TRANSMITTER:
	mov	dptr,#00151$
	jmp	@a+dptr
00151$:
	sjmp	00112$
	sjmp	00113$
	sjmp	00114$
	sjmp	00115$
00112$:
;	nrf24l01.c:344: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:346: nrf24_mode(PTX);
	mov	dpl,#0x03
;	nrf24l01.c:347: break;
;	nrf24l01.c:349: case RECEIVER:
	ljmp	_nrf24_mode
00113$:
;	nrf24l01.c:350: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:352: nrf24_mode(PRX);
	mov	dpl,#0x04
;	nrf24l01.c:353: break;
;	nrf24l01.c:355: case POWER_SAVING:
	ljmp	_nrf24_mode
00114$:
;	nrf24l01.c:356: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
	lcall	_nrf24_mode
;	nrf24l01.c:358: nrf24_mode(STANDBYI);
	mov	dpl,#0x01
;	nrf24l01.c:359: break;
;	nrf24l01.c:361: case TURN_OFF:
	ljmp	_nrf24_mode
00115$:
;	nrf24l01.c:362: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
;	nrf24l01.c:364: break;
;	nrf24l01.c:366: default:
	ljmp	_nrf24_mode
00116$:
;	nrf24l01.c:367: nrf24_mode(POWER_DOWN);
	mov	dpl,#0x00
;	nrf24l01.c:370: }
;	nrf24l01.c:376: }
	ljmp	_nrf24_mode
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_print_internal_register_values'
;------------------------------------------------------------
;sloc0                     Allocated with name '_nrf24_print_internal_register_values_sloc0_1_0'
;sloc1                     Allocated with name '_nrf24_print_internal_register_values_sloc1_1_0'
;pipe_address              Allocated with name '_nrf24_print_internal_register_values_pipe_address_65536_191'
;i                         Allocated with name '_nrf24_print_internal_register_values_i_131072_192'
;------------------------------------------------------------
;	nrf24l01.c:378: void nrf24_print_internal_register_values(void) {
;	-----------------------------------------
;	 function nrf24_print_internal_register_values
;	-----------------------------------------
_nrf24_print_internal_register_values:
;	nrf24l01.c:381: for (int i=0; i<24; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	clr	c
	mov	a,r6
	subb	a,#0x18
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00129$
	ljmp	00106$
00129$:
;	nrf24l01.c:382: if (i == 0x0a || i == 0x0b || i == 0x10) {
	cjne	r6,#0x0a,00130$
	cjne	r7,#0x00,00130$
	sjmp	00101$
00130$:
	cjne	r6,#0x0b,00131$
	cjne	r7,#0x00,00131$
	sjmp	00101$
00131$:
	cjne	r6,#0x10,00132$
	cjne	r7,#0x00,00132$
	sjmp	00133$
00132$:
	ljmp	00102$
00133$:
00101$:
;	nrf24l01.c:383: nrf24_read(i, pipe_address, current_address_width, CLOSE);
	mov	ar5,r6
	mov	dptr,#_current_address_width
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_nrf24_read_PARM_2
	mov	a,#_nrf24_print_internal_register_values_pipe_address_65536_191
	movx	@dptr,a
	mov	a,#(_nrf24_print_internal_register_values_pipe_address_65536_191 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_nrf24_read_PARM_3
	mov	a,r4
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
;	nrf24l01.c:384: printf("\rRegister 0x%02x: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n",   i, \
	mov	dptr,#(_nrf24_print_internal_register_values_pipe_address_65536_191 + 0x0004)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#(_nrf24_print_internal_register_values_pipe_address_65536_191 + 0x0003)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#(_nrf24_print_internal_register_values_pipe_address_65536_191 + 0x0002)
	movx	a,@dptr
	mov	r1,a
	mov	_nrf24_print_internal_register_values_sloc0_1_0,r1
;	1-genFromRTrack replaced	mov	(_nrf24_print_internal_register_values_sloc0_1_0 + 1),#0x00
	mov	(_nrf24_print_internal_register_values_sloc0_1_0 + 1),r4
	mov	dptr,#(_nrf24_print_internal_register_values_pipe_address_65536_191 + 0x0001)
	movx	a,@dptr
	mov	r1,a
	mov	_nrf24_print_internal_register_values_sloc1_1_0,r1
;	1-genFromRTrack replaced	mov	(_nrf24_print_internal_register_values_sloc1_1_0 + 1),#0x00
	mov	(_nrf24_print_internal_register_values_sloc1_1_0 + 1),r4
	mov	dptr,#_nrf24_print_internal_register_values_pipe_address_65536_191
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	_nrf24_print_internal_register_values_sloc0_1_0
	push	(_nrf24_print_internal_register_values_sloc0_1_0 + 1)
	push	_nrf24_print_internal_register_values_sloc1_1_0
	push	(_nrf24_print_internal_register_values_sloc1_1_0 + 1)
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	nrf24l01.c:393: nrf24_read(i, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:394: printf("\rRegister 0x%02x: %d\n", i, register_current_value);
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
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
	pop	ar7
00103$:
;	nrf24l01.c:397: delay1ms(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar6
	lcall	_delay1ms
	pop	ar6
	pop	ar7
;	nrf24l01.c:381: for (int i=0; i<24; i++) {
	inc	r6
	cjne	r6,#0x00,00134$
	inc	r7
00134$:
	ljmp	00108$
00106$:
;	nrf24l01.c:400: nrf24_read(0X1C, &register_current_value, 1, CLOSE);
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
	mov	dpl,#0x1c
	lcall	_nrf24_read
;	nrf24l01.c:401: printf("\rRegister 0x1C: %d\n", register_current_value);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	nrf24l01.c:402: delay1ms(20);
	mov	dptr,#0x0014
	lcall	_delay1ms
;	nrf24l01.c:404: nrf24_read(0X1D, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:405: printf("\rRegister 0x1D: %d\n", register_current_value);
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
;	nrf24l01.c:406: delay1ms(20);
	mov	dptr,#0x0014
	lcall	_delay1ms
;	nrf24l01.c:408: printf("\n\n");
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
;	nrf24l01.c:409: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_automatic_retransmit_setup'
;------------------------------------------------------------
;retransmit_count          Allocated with name '_nrf24_automatic_retransmit_setup_PARM_2'
;delay_time                Allocated with name '_nrf24_automatic_retransmit_setup_delay_time_65536_196'
;------------------------------------------------------------
;	nrf24l01.c:412: void nrf24_automatic_retransmit_setup(uint16_t delay_time, uint8_t retransmit_count) {
;	-----------------------------------------
;	 function nrf24_automatic_retransmit_setup
;	-----------------------------------------
_nrf24_automatic_retransmit_setup:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_nrf24_automatic_retransmit_setup_delay_time_65536_196
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:413: register_new_value = 0x00;
	mov	dptr,#_register_new_value
	clr	a
	movx	@dptr,a
00108$:
;	nrf24l01.c:414: for (; (delay_time > 250) && (register_new_value < 0X0F); delay_time -= 250)
	mov	dptr,#_nrf24_automatic_retransmit_setup_delay_time_65536_196
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
;	nrf24l01.c:415: register_new_value++;
	mov	dptr,#_register_new_value
	mov	a,r5
	inc	a
	movx	@dptr,a
;	nrf24l01.c:414: for (; (delay_time > 250) && (register_new_value < 0X0F); delay_time -= 250)
	mov	a,r6
	add	a,#0x06
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_nrf24_automatic_retransmit_setup_delay_time_65536_196
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00108$
00101$:
;	nrf24l01.c:416: register_new_value <<= ARD_0;
	mov	dptr,#_register_new_value
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	movx	@dptr,a
;	nrf24l01.c:417: if ((retransmit_count > 0) && (retransmit_count < 16))
	mov	dptr,#_nrf24_automatic_retransmit_setup_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00103$
	cjne	r7,#0x10,00136$
00136$:
	jnc	00103$
;	nrf24l01.c:418: register_new_value |= retransmit_count;
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	nrf24l01.c:420: register_new_value |= 0;
00103$:
;	nrf24l01.c:421: nrf24_write(SETUP_RETR_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:422: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_auto_acknowledgment_setup'
;------------------------------------------------------------
;datapipe                  Allocated with name '_nrf24_auto_acknowledgment_setup_datapipe_65536_199'
;------------------------------------------------------------
;	nrf24l01.c:425: void nrf24_auto_acknowledgment_setup(uint8_t datapipe) {
;	-----------------------------------------
;	 function nrf24_auto_acknowledgment_setup
;	-----------------------------------------
_nrf24_auto_acknowledgment_setup:
	mov	a,dpl
	mov	dptr,#_nrf24_auto_acknowledgment_setup_datapipe_65536_199
	movx	@dptr,a
;	nrf24l01.c:426: if (datapipe < 7)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x07,00109$
00109$:
	jnc	00102$
;	nrf24l01.c:427: register_new_value = (1 << datapipe) - 1;
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
;	nrf24l01.c:428: nrf24_write(EN_AA_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:429: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_dynamic_payload'
;------------------------------------------------------------
;datapipe                  Allocated with name '_nrf24_dynamic_payload_PARM_2'
;state                     Allocated with name '_nrf24_dynamic_payload_state_65536_201'
;------------------------------------------------------------
;	nrf24l01.c:432: void nrf24_dynamic_payload(uint8_t state, uint8_t datapipe) {
;	-----------------------------------------
;	 function nrf24_dynamic_payload
;	-----------------------------------------
_nrf24_dynamic_payload:
	mov	a,dpl
	mov	dptr,#_nrf24_dynamic_payload_state_65536_201
	movx	@dptr,a
;	nrf24l01.c:433: nrf24_auto_acknowledgment_setup(datapipe);                        /*setting auto acknowledgment before setting dynamic payload*/
	mov	dptr,#_nrf24_dynamic_payload_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_nrf24_auto_acknowledgment_setup
;	nrf24l01.c:434: nrf24_read(FEATURE_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:435: if (state == ENABLE) {
	mov	dptr,#_nrf24_dynamic_payload_state_65536_201
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00104$
;	nrf24l01.c:436: register_new_value = register_current_value | (1 << EN_DPL);    /*EN_DPL bit turns dynamic payload width on or off on all datapipes*/
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x04
	movx	@dptr,a
;	nrf24l01.c:437: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:438: if (datapipe < 7)
	cjne	r7,#0x07,00118$
00118$:
	jnc	00102$
;	nrf24l01.c:440: register_new_value = (1 << datapipe) - 1;
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
;	nrf24l01.c:441: nrf24_write(DYNPD_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:442: dynamic_payload = ENABLE;
	mov	dptr,#_dynamic_payload
	mov	a,#0x01
	movx	@dptr,a
	ret
00104$:
;	nrf24l01.c:444: register_new_value = register_current_value & (~(1 << EN_DPL));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfb
	movx	@dptr,a
;	nrf24l01.c:445: nrf24_write(FEATURE_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:446: dynamic_payload = DISABLE;
	mov	dptr,#_dynamic_payload
	clr	a
	movx	@dptr,a
;	nrf24l01.c:448: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_datapipe_ptx'
;------------------------------------------------------------
;datapipe_number           Allocated with name '_nrf24_datapipe_ptx_datapipe_number_65536_205'
;------------------------------------------------------------
;	nrf24l01.c:451: void nrf24_datapipe_ptx(uint8_t datapipe_number) {
;	-----------------------------------------
;	 function nrf24_datapipe_ptx
;	-----------------------------------------
_nrf24_datapipe_ptx:
	mov	a,dpl
	mov	dptr,#_nrf24_datapipe_ptx_datapipe_number_65536_205
	movx	@dptr,a
;	nrf24l01.c:452: nrf24_write(TX_ADDR_ADDRESS, &datapipe_address[datapipe_number - 1][0], current_address_width, CLOSE);
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
;	nrf24l01.c:453: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_datapipe_address_configuration'
;------------------------------------------------------------
;address                   Allocated with name '_nrf24_datapipe_address_configuration_address_65536_208'
;counter                   Allocated with name '_nrf24_datapipe_address_configuration_counter_131072_209'
;------------------------------------------------------------
;	nrf24l01.c:456: void nrf24_datapipe_address_configuration(void) {
;	-----------------------------------------
;	 function nrf24_datapipe_address_configuration
;	-----------------------------------------
_nrf24_datapipe_address_configuration:
;	nrf24l01.c:459: for (uint8_t counter = 0; counter < 2; counter++) // only write the first two
	mov	r7,#0x0a
	mov	r6,#0x00
00103$:
	cjne	r6,#0x02,00116$
00116$:
	jnc	00105$
;	nrf24l01.c:461: nrf24_write(address, &datapipe_address[counter][0], current_address_width, CLOSE);
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
;	nrf24l01.c:462: address++;
	inc	r7
;	nrf24l01.c:459: for (uint8_t counter = 0; counter < 2; counter++) // only write the first two
	inc	r6
	sjmp	00103$
00105$:
;	nrf24l01.c:464: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_prx_static_payload_width'
;------------------------------------------------------------
;number_of_datapipes       Allocated with name '_nrf24_prx_static_payload_width_PARM_2'
;static_payload_width      Allocated with name '_nrf24_prx_static_payload_width_static_payload_width_65536_211'
;address                   Allocated with name '_nrf24_prx_static_payload_width_address_131072_213'
;------------------------------------------------------------
;	nrf24l01.c:467: void nrf24_prx_static_payload_width(uint8_t static_payload_width, uint8_t number_of_datapipes)
;	-----------------------------------------
;	 function nrf24_prx_static_payload_width
;	-----------------------------------------
_nrf24_prx_static_payload_width:
	mov	a,dpl
	mov	dptr,#_nrf24_prx_static_payload_width_static_payload_width_65536_211
	movx	@dptr,a
;	nrf24l01.c:469: for (uint8_t address = RX_PW_P0_ADDRESS; number_of_datapipes; number_of_datapipes--)
	mov	r7,#0x11
	mov	dptr,#_nrf24_prx_static_payload_width_PARM_2
	movx	a,@dptr
	mov	r6,a
00103$:
	mov	a,r6
	jz	00101$
;	nrf24l01.c:471: nrf24_write(address, &static_payload_width, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_nrf24_prx_static_payload_width_static_payload_width_65536_211
	movx	@dptr,a
	mov	a,#(_nrf24_prx_static_payload_width_static_payload_width_65536_211 >> 8)
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
;	nrf24l01.c:472: address++;
	inc	r7
;	nrf24l01.c:469: for (uint8_t address = RX_PW_P0_ADDRESS; number_of_datapipes; number_of_datapipes--)
	dec	r6
	sjmp	00103$
00101$:
;	nrf24l01.c:474: current_payload_width = static_payload_width;
	mov	dptr,#_nrf24_prx_static_payload_width_static_payload_width_65536_211
	movx	a,@dptr
	mov	dptr,#_current_payload_width
	movx	@dptr,a
;	nrf24l01.c:475: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_datapipe_enable'
;------------------------------------------------------------
;number_of_datapipes       Allocated with name '_nrf24_datapipe_enable_number_of_datapipes_65536_215'
;------------------------------------------------------------
;	nrf24l01.c:478: void nrf24_datapipe_enable(uint8_t number_of_datapipes)
;	-----------------------------------------
;	 function nrf24_datapipe_enable
;	-----------------------------------------
_nrf24_datapipe_enable:
	mov	a,dpl
	mov	dptr,#_nrf24_datapipe_enable_number_of_datapipes_65536_215
	movx	@dptr,a
;	nrf24l01.c:480: register_new_value = (1 << number_of_datapipes) - 1;
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
;	nrf24l01.c:481: nrf24_write(EN_RXADDR_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:482: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_address_width'
;------------------------------------------------------------
;address_width             Allocated with name '_nrf24_address_width_address_width_65536_217'
;------------------------------------------------------------
;	nrf24l01.c:485: void nrf24_address_width(uint8_t address_width) {
;	-----------------------------------------
;	 function nrf24_address_width
;	-----------------------------------------
_nrf24_address_width:
	mov	a,dpl
	mov	dptr,#_nrf24_address_width_address_width_65536_217
	movx	@dptr,a
;	nrf24l01.c:486: if ((address_width <= 5) && (address_width >= 3)) {
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jc	00102$
	cjne	r7,#0x03,00116$
00116$:
	jc	00102$
;	nrf24l01.c:487: write_pointer = address_width - 2;
	mov	a,r7
	add	a,#0xfe
	mov	dptr,#_write_pointer
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:490: write_pointer = 3;
	mov	dptr,#_write_pointer
	mov	a,#0x03
	movx	@dptr,a
00103$:
;	nrf24l01.c:493: nrf24_write(SETUP_AW_ADDRESS, &write_pointer, 1, CLOSE);                    /*5 bytes is the maximum address width available*/
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
;	nrf24l01.c:494: current_address_width = address_width;
	mov	dptr,#_nrf24_address_width_address_width_65536_217
	movx	a,@dptr
	mov	dptr,#_current_address_width
	movx	@dptr,a
;	nrf24l01.c:495: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_rf_datarate'
;------------------------------------------------------------
;rf_datarate               Allocated with name '_nrf24_rf_datarate_rf_datarate_65536_221'
;------------------------------------------------------------
;	nrf24l01.c:498: void nrf24_rf_datarate(uint16_t rf_datarate)
;	-----------------------------------------
;	 function nrf24_rf_datarate
;	-----------------------------------------
_nrf24_rf_datarate:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_nrf24_rf_datarate_rf_datarate_65536_221
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	nrf24l01.c:500: nrf24_read(RF_SETUP_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:501: register_current_value &= ~((1 << RF_DR_LOW) | (1 << RF_DR_HIGH));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	anl	acc,#0xd7
	movx	@dptr,a
;	nrf24l01.c:502: switch (rf_datarate)
	mov	dptr,#_nrf24_rf_datarate_rf_datarate_65536_221
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
;	nrf24l01.c:505: register_new_value = register_current_value | (1 << RF_DR_HIGH);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x08
	movx	@dptr,a
;	nrf24l01.c:506: break;
;	nrf24l01.c:507: case 1000:
	sjmp	00105$
00102$:
;	nrf24l01.c:508: register_new_value = register_current_value;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	movx	@dptr,a
;	nrf24l01.c:509: break;
;	nrf24l01.c:510: case 250:
	sjmp	00105$
00103$:
;	nrf24l01.c:511: register_new_value = register_current_value | (1 << RF_DR_LOW);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x20
	movx	@dptr,a
;	nrf24l01.c:512: break;
;	nrf24l01.c:513: default:
	sjmp	00105$
00104$:
;	nrf24l01.c:514: register_new_value = register_current_value;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	movx	@dptr,a
;	nrf24l01.c:516: }
00105$:
;	nrf24l01.c:517: nrf24_write(RF_SETUP_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:518: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_rf_power'
;------------------------------------------------------------
;rf_power                  Allocated with name '_nrf24_rf_power_rf_power_65536_224'
;------------------------------------------------------------
;	nrf24l01.c:521: void nrf24_rf_power(uint8_t rf_power)
;	-----------------------------------------
;	 function nrf24_rf_power
;	-----------------------------------------
_nrf24_rf_power:
	mov	a,dpl
	mov	dptr,#_nrf24_rf_power_rf_power_65536_224
	movx	@dptr,a
;	nrf24l01.c:523: nrf24_read(RF_SETUP_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:524: register_current_value &= ~((1 << RF_PWR_1) | (1 << RF_PWR_0));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	anl	acc,#0xf9
	movx	@dptr,a
;	nrf24l01.c:525: switch (rf_power)
	mov	dptr,#_nrf24_rf_power_rf_power_65536_224
	movx	a,@dptr
	mov	r7,a
	jz	00101$
	cjne	r7,#0x06,00126$
	sjmp	00102$
00126$:
	cjne	r7,#0x0c,00127$
	sjmp	00103$
00127$:
;	nrf24l01.c:527: case 0:
	cjne	r7,#0x12,00105$
	sjmp	00104$
00101$:
;	nrf24l01.c:528: register_new_value = register_current_value | ((1 << RF_PWR_1) | (1 << RF_PWR_0));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x06
	movx	@dptr,a
;	nrf24l01.c:529: break;
;	nrf24l01.c:530: case 6:
	sjmp	00106$
00102$:
;	nrf24l01.c:531: register_new_value = register_current_value | (1 << RF_PWR_1);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x04
	movx	@dptr,a
;	nrf24l01.c:532: break;
;	nrf24l01.c:533: case 12:
	sjmp	00106$
00103$:
;	nrf24l01.c:534: register_new_value = register_current_value | (1 << RF_PWR_0);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x02
	movx	@dptr,a
;	nrf24l01.c:535: break;
;	nrf24l01.c:536: case 18:
	sjmp	00106$
00104$:
;	nrf24l01.c:537: register_new_value = register_current_value;
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	movx	@dptr,a
;	nrf24l01.c:538: break;
;	nrf24l01.c:539: default:
	sjmp	00106$
00105$:
;	nrf24l01.c:540: register_new_value = register_current_value | (1 << RF_PWR_1);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x04
	movx	@dptr,a
;	nrf24l01.c:542: }
00106$:
;	nrf24l01.c:543: nrf24_write(RF_SETUP_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:544: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_rf_channel'
;------------------------------------------------------------
;rf_channel                Allocated with name '_nrf24_rf_channel_rf_channel_65536_227'
;write_pointer             Allocated with name '_nrf24_rf_channel_write_pointer_131072_229'
;write_pointer             Allocated with name '_nrf24_rf_channel_write_pointer_131072_230'
;------------------------------------------------------------
;	nrf24l01.c:547: void nrf24_rf_channel(uint8_t rf_channel)
;	-----------------------------------------
;	 function nrf24_rf_channel
;	-----------------------------------------
_nrf24_rf_channel:
	mov	a,dpl
	mov	dptr,#_nrf24_rf_channel_rf_channel_65536_227
	movx	@dptr,a
;	nrf24l01.c:549: if ((rf_channel <= 125) && (rf_channel >= 1))
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x7d
	jc	00102$
	cjne	r7,#0x01,00116$
00116$:
	jc	00102$
;	nrf24l01.c:551: uint8_t write_pointer = rf_channel;
	mov	dptr,#_nrf24_rf_channel_write_pointer_131072_229
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:552: nrf24_write(RF_CH_ADDRESS, &write_pointer, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_nrf24_rf_channel_write_pointer_131072_229
	movx	@dptr,a
	mov	a,#(_nrf24_rf_channel_write_pointer_131072_229 >> 8)
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
;	nrf24l01.c:556: uint8_t write_pointer = 1;
	mov	dptr,#_nrf24_rf_channel_write_pointer_131072_230
	mov	a,#0x01
	movx	@dptr,a
;	nrf24l01.c:557: nrf24_write(RF_CH_ADDRESS, &write_pointer, 1, CLOSE);
	mov	dptr,#_nrf24_write_PARM_2
	mov	a,#_nrf24_rf_channel_write_pointer_131072_230
	movx	@dptr,a
	mov	a,#(_nrf24_rf_channel_write_pointer_131072_230 >> 8)
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
;	nrf24l01.c:559: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_interrupt_mask'
;------------------------------------------------------------
;tx_mask                   Allocated with name '_nrf24_interrupt_mask_PARM_2'
;max_rt_mask               Allocated with name '_nrf24_interrupt_mask_PARM_3'
;rx_mask                   Allocated with name '_nrf24_interrupt_mask_rx_mask_65536_231'
;------------------------------------------------------------
;	nrf24l01.c:562: void nrf24_interrupt_mask(uint8_t rx_mask, uint8_t tx_mask, uint8_t max_rt_mask)
;	-----------------------------------------
;	 function nrf24_interrupt_mask
;	-----------------------------------------
_nrf24_interrupt_mask:
	mov	a,dpl
	mov	dptr,#_nrf24_interrupt_mask_rx_mask_65536_231
	movx	@dptr,a
;	nrf24l01.c:564: nrf24_read(CONFIG_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:565: if (rx_mask)
	mov	dptr,#_nrf24_interrupt_mask_rx_mask_65536_231
	movx	a,@dptr
	jz	00102$
;	nrf24l01.c:566: register_new_value = (register_current_value) | (1 << MASK_RX_DR);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x40
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:568: register_new_value &= (~(1 << MASK_RX_DR));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xbf
	movx	@dptr,a
00103$:
;	nrf24l01.c:569: if (tx_mask)
	mov	dptr,#_nrf24_interrupt_mask_PARM_2
	movx	a,@dptr
	jz	00105$
;	nrf24l01.c:570: register_new_value |= (1 << MASK_TX_DS);
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	acc,#0x20
	movx	@dptr,a
	sjmp	00106$
00105$:
;	nrf24l01.c:572: register_new_value &= (~(1 << MASK_TX_DS));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xdf
	movx	@dptr,a
00106$:
;	nrf24l01.c:573: if (max_rt_mask)
	mov	dptr,#_nrf24_interrupt_mask_PARM_3
	movx	a,@dptr
	jz	00108$
;	nrf24l01.c:574: register_new_value |= (1 << MASK_MAX_RT);
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	acc,#0x10
	movx	@dptr,a
	sjmp	00109$
00108$:
;	nrf24l01.c:576: register_new_value &= (~(1 << MASK_MAX_RT));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xef
	movx	@dptr,a
00109$:
;	nrf24l01.c:578: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:579: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_crc_configuration'
;------------------------------------------------------------
;crc_encoding_scheme       Allocated with name '_nrf24_crc_configuration_PARM_2'
;crc_enable                Allocated with name '_nrf24_crc_configuration_crc_enable_65536_233'
;------------------------------------------------------------
;	nrf24l01.c:582: void nrf24_crc_configuration(uint8_t crc_enable, uint8_t crc_encoding_scheme)
;	-----------------------------------------
;	 function nrf24_crc_configuration
;	-----------------------------------------
_nrf24_crc_configuration:
	mov	a,dpl
	mov	dptr,#_nrf24_crc_configuration_crc_enable_65536_233
	movx	@dptr,a
;	nrf24l01.c:584: nrf24_read(CONFIG_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:585: if (crc_enable)
	mov	dptr,#_nrf24_crc_configuration_crc_enable_65536_233
	movx	a,@dptr
	jz	00102$
;	nrf24l01.c:586: register_new_value = (register_current_value) | (1 << EN_CRC);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x08
	movx	@dptr,a
	sjmp	00103$
00102$:
;	nrf24l01.c:588: register_new_value &= (~(1 << EN_CRC));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xf7
	movx	@dptr,a
00103$:
;	nrf24l01.c:589: if (crc_encoding_scheme == 2)
	mov	dptr,#_nrf24_crc_configuration_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00105$
;	nrf24l01.c:590: register_new_value |= (1 << CRCO);
	mov	dptr,#_register_new_value
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
	sjmp	00106$
00105$:
;	nrf24l01.c:592: register_new_value &= (~(1 << CRCO));
	mov	dptr,#_register_new_value
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
00106$:
;	nrf24l01.c:594: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:595: }
	ljmp	_nrf24_write
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_mode'
;------------------------------------------------------------
;mode                      Allocated with name '_nrf24_mode_mode_65536_235'
;------------------------------------------------------------
;	nrf24l01.c:598: void nrf24_mode(uint8_t mode) {
;	-----------------------------------------
;	 function nrf24_mode
;	-----------------------------------------
_nrf24_mode:
	mov	a,dpl
	mov	dptr,#_nrf24_mode_mode_65536_235
	movx	@dptr,a
;	nrf24l01.c:599: nrf24_read(CONFIG_ADDRESS, &register_current_value, 1, CLOSE);
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
;	nrf24l01.c:600: switch (mode) {
	mov	dptr,#_nrf24_mode_mode_65536_235
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jnc	00114$
	ljmp	00106$
00114$:
	mov	a,r7
	add	a,r7
;	nrf24l01.c:601: case POWER_DOWN:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
00101$:
;	nrf24l01.c:602: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:603: register_new_value = (register_current_value) & (~(1 << PWR_UP));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfd
	movx	@dptr,a
;	nrf24l01.c:604: delay_function(POWER_DOWN_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:605: break;
	ljmp	00107$
;	nrf24l01.c:606: case STANDBYI:                                 /*standby I is defined by 'PWR_UP = 1' and 'CE pin LOW'*/
00102$:
;	nrf24l01.c:607: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:608: register_new_value = (register_current_value) | (1 << PWR_UP);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x02
	movx	@dptr,a
;	nrf24l01.c:609: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:610: break;
;	nrf24l01.c:611: case STANDBYII:                                 /*standby ii is related to a ptx device*/
	sjmp	00107$
00103$:
;	nrf24l01.c:613: register_new_value = ((register_current_value) | (1 << PWR_UP)) & (~(1 << PRIM_RX));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	orl	a,#0x02
	mov	dptr,#_register_new_value
	anl	a,#0xfe
	movx	@dptr,a
;	nrf24l01.c:614: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:615: break;
;	nrf24l01.c:616: case PTX:
	sjmp	00107$
00104$:
;	nrf24l01.c:618: register_new_value = ((register_current_value) | (1 << PWR_UP)) & (~(1 << PRIM_RX));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	orl	a,#0x02
	mov	dptr,#_register_new_value
	anl	a,#0xfe
	movx	@dptr,a
;	nrf24l01.c:619: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:620: break;
;	nrf24l01.c:621: case PRX:
	sjmp	00107$
00105$:
;	nrf24l01.c:622: nrf24_CE(CE_ON);
	mov	dpl,#0x01
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:623: register_new_value = (register_current_value) | (1 << PWR_UP) | (1 << PRIM_RX);
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	orl	a,#0x03
	movx	@dptr,a
;	nrf24l01.c:624: delay_function(STANDBYI_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:625: break;
;	nrf24l01.c:626: default:
	sjmp	00107$
00106$:
;	nrf24l01.c:627: nrf24_CE(CE_OFF);
	mov	dpl,#0x00
	push	ar7
	lcall	_nrf24_CE
;	nrf24l01.c:628: register_new_value = (register_current_value) & (~(1 << PWR_UP));
	mov	dptr,#_register_current_value
	movx	a,@dptr
	mov	dptr,#_register_new_value
	anl	a,#0xfd
	movx	@dptr,a
;	nrf24l01.c:629: delay_function(POWER_DOWN_DELAY);
	mov	dptr,#(0x02&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_function
	pop	ar7
;	nrf24l01.c:631: }
00107$:
;	nrf24l01.c:632: nrf24_write(CONFIG_ADDRESS, &register_new_value, 1, CLOSE);
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
;	nrf24l01.c:633: current_mode = mode;
	mov	dptr,#_current_mode
	mov	a,r7
	movx	@dptr,a
;	nrf24l01.c:634: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_read'
;------------------------------------------------------------
;value                     Allocated with name '_nrf24_read_PARM_2'
;data_length               Allocated with name '_nrf24_read_PARM_3'
;spi_state                 Allocated with name '_nrf24_read_PARM_4'
;address                   Allocated with name '_nrf24_read_address_65536_238'
;------------------------------------------------------------
;	nrf24l01.c:638: void nrf24_read(uint8_t address, uint8_t *value, uint8_t data_length, uint8_t spi_state) {
;	-----------------------------------------
;	 function nrf24_read
;	-----------------------------------------
_nrf24_read:
	mov	a,dpl
	mov	dptr,#_nrf24_read_address_65536_238
	movx	@dptr,a
;	nrf24l01.c:639: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:641: SPI_command = R_REGISTER | address;    /*in order to read CONFIG, then change one bit*/
	mov	dptr,#_nrf24_read_address_65536_238
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SPI_command
	movx	@dptr,a
;	nrf24l01.c:642: SPI_send_command(SPI_command);
	mov	dpl,r7
	lcall	_SPI_send_command
;	nrf24l01.c:644: SPI_command = 0;
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
;	nrf24l01.c:645: for (; data_length ; data_length--) {
	mov	a,r4
	jz	00101$
;	nrf24l01.c:646: *value = SPI_send_command(SPI_command);
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
;	nrf24l01.c:647: value++;
;	nrf24l01.c:645: for (; data_length ; data_length--) {
	dec	r4
	sjmp	00105$
00101$:
;	nrf24l01.c:649: if (spi_state == CLOSE) {
	mov	dptr,#_nrf24_read_PARM_4
	movx	a,@dptr
	jnz	00107$
;	nrf24l01.c:650: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
;	nrf24l01.c:652: }
	ljmp	_nrf24_SPI
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_write'
;------------------------------------------------------------
;value                     Allocated with name '_nrf24_write_PARM_2'
;data_length               Allocated with name '_nrf24_write_PARM_3'
;spi_state                 Allocated with name '_nrf24_write_PARM_4'
;address                   Allocated with name '_nrf24_write_address_65536_243'
;------------------------------------------------------------
;	nrf24l01.c:654: void nrf24_write(uint8_t address, uint8_t *value, uint8_t data_length, uint8_t spi_state) {
;	-----------------------------------------
;	 function nrf24_write
;	-----------------------------------------
_nrf24_write:
	mov	a,dpl
	mov	dptr,#_nrf24_write_address_65536_243
	movx	@dptr,a
;	nrf24l01.c:655: nrf24_SPI(SPI_ON);
	mov	dpl,#0x00
	lcall	_nrf24_SPI
;	nrf24l01.c:657: SPI_command = W_REGISTER | address;    /*in order to read CONFIG, then change one bit*/
	mov	dptr,#_nrf24_write_address_65536_243
	movx	a,@dptr
	orl	a,#0x20
	mov	r7,a
	mov	dptr,#_SPI_command
	movx	@dptr,a
;	nrf24l01.c:658: SPI_send_command(SPI_command);
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
;	nrf24l01.c:659: for (; data_length ; data_length--) {
	mov	a,r4
	jz	00101$
;	nrf24l01.c:660: SPI_command = *value;
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
;	nrf24l01.c:661: value++;
;	nrf24l01.c:662: SPI_send_command(SPI_command);
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
;	nrf24l01.c:659: for (; data_length ; data_length--) {
	dec	r4
	sjmp	00105$
00101$:
;	nrf24l01.c:664: if (spi_state == CLOSE) {
	mov	dptr,#_nrf24_write_PARM_4
	movx	a,@dptr
	jnz	00107$
;	nrf24l01.c:665: nrf24_SPI(SPI_OFF);
	mov	dpl,#0x01
;	nrf24l01.c:667: }
	ljmp	_nrf24_SPI
00107$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.ascii "nrf24l01 Failed to Initialize:"
	.db 0x0a
	.ascii "Read value doesn't match the newly written value ;("
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0d
	.ascii "Register 0x%02x: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.ascii "Register 0x%02x: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.ascii "Register 0x1C: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.ascii "Register 0x1D: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__dataReady:
	.db #0x00	;  0
__xinit__CSN_pin:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
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
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
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
__xinit__hardwareCheckPassed:
	.db #0x00	;  0
__xinit__datapipe_address:
	.db #0xe1	; 225
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xd2	; 210
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
