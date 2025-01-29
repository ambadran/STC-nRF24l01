;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module gpio_hal
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _gpioWrite_PARM_2
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
	.globl _gpioConfigure
	.globl _gpioRead
	.globl _gpioWrite
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
_gpioConfigure_sloc0_1_0:
	.ds 3
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
__gpio_setBits_PARM_2:
	.ds 1
__gpio_setBits_PARM_3:
	.ds 3
__gpio_setBits_portValue_65536_131:
	.ds 1
__isOutput_gpioConfig_65536_133:
	.ds 3
__isInput_gpioConfig_65536_135:
	.ds 3
_gpioConfigure_gpioConfig_65536_137:
	.ds 3
_gpioConfigure_mask_65536_138:
	.ds 1
_gpioConfigure_pm1_65537_141:
	.ds 1
_gpioConfigure_pm0_65537_141:
	.ds 1
_gpioConfigure_pncs_65537_141:
	.ds 1
_gpioConfigure_ppu_65537_141:
	.ds 1
_gpioConfigure_pdr_65537_141:
	.ds 1
_gpioConfigure_psr_65537_141:
	.ds 1
_gpioConfigure_pie_65537_141:
	.ds 1
_gpioConfigure_pim1_65537_141:
	.ds 1
_gpioConfigure_pim0_65537_141:
	.ds 1
_gpioConfigure_pintf_65537_141:
	.ds 1
_gpioConfigure_pinte_65537_141:
	.ds 1
_gpioConfigure_pwkue_65537_141:
	.ds 1
__getPort_port_65536_146:
	.ds 1
__getPort_value_65536_147:
	.ds 1
_gpioRead_gpioConfig_65536_149:
	.ds 3
_gpioWrite_PARM_2:
	.ds 1
_gpioWrite_gpioConfig_65536_151:
	.ds 3
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
;Allocation info for local variables in function '_gpio_setBits'
;------------------------------------------------------------
;cfgValue                  Allocated with name '__gpio_setBits_PARM_2'
;gpioConfig                Allocated with name '__gpio_setBits_PARM_3'
;portValue                 Allocated with name '__gpio_setBits_portValue_65536_131'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:39: static uint8_t _gpio_setBits(uint8_t portValue, uint8_t cfgValue, GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function _gpio_setBits
;	-----------------------------------------
__gpio_setBits:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#__gpio_setBits_portValue_65536_131
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:40: return cfgValue ? (portValue | gpioConfig->__setMask) : (portValue & gpioConfig->__clearMask);
	mov	dptr,#__gpio_setBits_PARM_2
	movx	a,@dptr
	jz	00103$
	mov	dptr,#__gpio_setBits_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#__gpio_setBits_portValue_65536_131
	movx	a,@dptr
	orl	a,r5
	mov	r7,a
	sjmp	00104$
00103$:
	mov	dptr,#__gpio_setBits_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0c
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__gpio_setBits_portValue_65536_131
	movx	a,@dptr
	anl	a,r4
	mov	r7,a
00104$:
	mov	dpl,r7
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_isOutput'
;------------------------------------------------------------
;gpioConfig                Allocated with name '__isOutput_gpioConfig_65536_133'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:43: static uint8_t _isOutput(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function _isOutput
;	-----------------------------------------
__isOutput:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#__isOutput_gpioConfig_65536_133
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:44: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_PUSH_PULL_MODE || gpioConfig->pinMode == GPIO_OPEN_DRAIN_MODE;
	mov	dptr,#__isOutput_gpioConfig_65536_133
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00104$
	cjne	r7,#0x01,00122$
	sjmp	00104$
00122$:
	cjne	r7,#0x03,00123$
	sjmp	00104$
00123$:
	mov	r7,#0x00
	sjmp	00105$
00104$:
	mov	r7,#0x01
00105$:
	mov	dpl,r7
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_isInput'
;------------------------------------------------------------
;gpioConfig                Allocated with name '__isInput_gpioConfig_65536_135'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:47: static uint8_t _isInput(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function _isInput
;	-----------------------------------------
__isInput:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#__isInput_gpioConfig_65536_135
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:48: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_HIGH_IMPEDANCE_MODE;
	mov	dptr,#__isInput_gpioConfig_65536_135
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00104$
	cjne	r7,#0x02,00115$
	sjmp	00104$
00115$:
	mov	r7,#0x00
	sjmp	00105$
00104$:
	mov	r7,#0x01
00105$:
	mov	dpl,r7
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpioConfigure'
;------------------------------------------------------------
;sloc0                     Allocated with name '_gpioConfigure_sloc0_1_0'
;gpioConfig                Allocated with name '_gpioConfigure_gpioConfig_65536_137'
;mask                      Allocated with name '_gpioConfigure_mask_65536_138'
;n                         Allocated with name '_gpioConfigure_n_131072_139'
;pm1                       Allocated with name '_gpioConfigure_pm1_65537_141'
;pm0                       Allocated with name '_gpioConfigure_pm0_65537_141'
;pncs                      Allocated with name '_gpioConfigure_pncs_65537_141'
;ppu                       Allocated with name '_gpioConfigure_ppu_65537_141'
;pdr                       Allocated with name '_gpioConfigure_pdr_65537_141'
;psr                       Allocated with name '_gpioConfigure_psr_65537_141'
;pie                       Allocated with name '_gpioConfigure_pie_65537_141'
;pim1                      Allocated with name '_gpioConfigure_pim1_65537_141'
;pim0                      Allocated with name '_gpioConfigure_pim0_65537_141'
;pintf                     Allocated with name '_gpioConfigure_pintf_65537_141'
;pinte                     Allocated with name '_gpioConfigure_pinte_65537_141'
;pwkue                     Allocated with name '_gpioConfigure_pwkue_65537_141'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:51: void gpioConfigure(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function gpioConfigure
;	-----------------------------------------
_gpioConfigure:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:53: uint8_t mask = 0;
	mov	dptr,#_gpioConfigure_mask_65536_138
	clr	a
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
00117$:
	mov	a,r4
	jz	00101$
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:56: mask = mask << 1;
	mov	dptr,#_gpioConfigure_mask_65536_138
	movx	a,@dptr
	add	a,acc
	mov	r3,a
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:57: mask |= 1;
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
	dec	r4
	sjmp	00117$
00101$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:60: gpioConfig->__setMask = mask << gpioConfig->pin;
	mov	a,#0x0b
	add	a,r5
	mov	_gpioConfigure_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_gpioConfigure_sloc0_1_0 + 1),a
	mov	(_gpioConfigure_sloc0_1_0 + 2),r7
	mov	a,#0x01
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_gpioConfigure_mask_65536_138
	movx	a,@dptr
	mov	b,r0
	inc	b
	sjmp	00175$
00173$:
	add	a,acc
00175$:
	djnz	b,00173$
	mov	r0,a
	mov	dpl,_gpioConfigure_sloc0_1_0
	mov	dph,(_gpioConfigure_sloc0_1_0 + 1)
	mov	b,(_gpioConfigure_sloc0_1_0 + 2)
	lcall	__gptrput
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:61: gpioConfig->__clearMask = ~gpioConfig->__setMask;
	mov	a,#0x0c
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,r0
	cpl	a
	mov	r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:63: uint8_t pm1 = 0;
	mov	dptr,#_gpioConfigure_pm1_65537_141
	clr	a
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:64: uint8_t pm0 = 0;
	mov	dptr,#_gpioConfigure_pm0_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:67: uint8_t pncs = 0;
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:68: uint8_t ppu = 0;
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:72: uint8_t pdr = 0;
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:73: uint8_t psr = 0;
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:74: uint8_t pie = 0;
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:78: uint8_t pim1 = 0;
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:79: uint8_t pim0 = 0;
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:80: uint8_t pintf = 0;
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:81: uint8_t pinte = 0;
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:82: uint8_t pwkue = 0;
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:85: switch (gpioConfig->port) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x01,00176$
	sjmp	00102$
00176$:
	cjne	r7,#0x02,00177$
	sjmp	00103$
00177$:
	cjne	r7,#0x03,00178$
	ljmp	00104$
00178$:
	cjne	r7,#0x05,00179$
	ljmp	00105$
00179$:
	ljmp	00106$
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:117: case GPIO_PORT1:
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:118: pm1 = P1M1;
	mov	dptr,#_gpioConfigure_pm1_65537_141
	mov	a,_P1M1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:119: pm0 = P1M0;
	mov	dptr,#_gpioConfigure_pm0_65537_141
	mov	a,_P1M0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:122: pncs = P1NCS;
	mov	dptr,#_P1NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:123: ppu = P1PU;
	mov	dptr,#_P1PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:127: pdr = P1DR;
	mov	dptr,#_P1DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:128: psr = P1SR;
	mov	dptr,#_P1SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:129: pie = P1IE;
	mov	dptr,#_P1IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:133: pim1 = P1IM1;
	mov	dptr,#_P1IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:134: pim0 = P1IM0;
	mov	dptr,#_P1IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:135: pintf = P1INTF;
	mov	dptr,#_P1INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:136: pinte = P1INTE;
	mov	dptr,#_P1INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:137: pwkue = P1WKUE;
	mov	dptr,#_P1WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:139: break;
	ljmp	00106$
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:145: case GPIO_PORT2:
00103$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:146: pm1 = P2M1;
	mov	dptr,#_gpioConfigure_pm1_65537_141
	mov	a,_P2M1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:147: pm0 = P2M0;
	mov	dptr,#_gpioConfigure_pm0_65537_141
	mov	a,_P2M0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:150: pncs = P2NCS;
	mov	dptr,#_P2NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:151: ppu = P2PU;
	mov	dptr,#_P2PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:155: pdr = P2DR;
	mov	dptr,#_P2DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:156: psr = P2SR;
	mov	dptr,#_P2SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:157: pie = P2IE;
	mov	dptr,#_P2IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:161: pim1 = P2IM1;
	mov	dptr,#_P2IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:162: pim0 = P2IM0;
	mov	dptr,#_P2IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:163: pintf = P2INTF;
	mov	dptr,#_P2INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:164: pinte = P2INTE;
	mov	dptr,#_P2INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:165: pwkue = P2WKUE;
	mov	dptr,#_P2WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:167: break;
	ljmp	00106$
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:172: case GPIO_PORT3:
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:173: pm1 = P3M1;
	mov	dptr,#_gpioConfigure_pm1_65537_141
	mov	a,_P3M1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:174: pm0 = P3M0;
	mov	dptr,#_gpioConfigure_pm0_65537_141
	mov	a,_P3M0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:177: pncs = P3NCS;
	mov	dptr,#_P3NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:178: ppu = P3PU;
	mov	dptr,#_P3PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:182: pdr = P3DR;
	mov	dptr,#_P3DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:183: psr = P3SR;
	mov	dptr,#_P3SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:184: pie = P3IE;
	mov	dptr,#_P3IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:188: pim1 = P3IM1;
	mov	dptr,#_P3IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:189: pim0 = P3IM0;
	mov	dptr,#_P3IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:190: pintf = P3INTF;
	mov	dptr,#_P3INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:191: pinte = P3INTE;
	mov	dptr,#_P3INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:192: pwkue = P3WKUE;
	mov	dptr,#_P3WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:194: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:227: case GPIO_PORT5:
	sjmp	00106$
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:228: pm1 = P5M1;
	mov	dptr,#_gpioConfigure_pm1_65537_141
	mov	a,_P5M1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:229: pm0 = P5M0;
	mov	dptr,#_gpioConfigure_pm0_65537_141
	mov	a,_P5M0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:232: pncs = P5NCS;
	mov	dptr,#_P5NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:233: ppu = P5PU;
	mov	dptr,#_P5PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:237: pdr = P5DR;
	mov	dptr,#_P5DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:238: psr = P5SR;
	mov	dptr,#_P5SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:239: pie = P5IE;
	mov	dptr,#_P5IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:243: pim1 = P5IM1;
	mov	dptr,#_P5IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:244: pim0 = P5IM0;
	mov	dptr,#_P5IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:245: pintf = P5INTF;
	mov	dptr,#_P5INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:246: pinte = P5INTE;
	mov	dptr,#_P5INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:247: pwkue = P5WKUE;
	mov	dptr,#_P5WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:307: }
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:309: pm1 = _gpio_setBits(pm1, gpioConfig->pinMode & 2, gpioConfig);
	mov	dptr,#_gpioConfigure_pm1_65537_141
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x03
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#__gpio_setBits_PARM_2
	mov	a,#0x02
	anl	a,r1
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	__gpio_setBits
	mov	r7,dpl
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:310: pm0 = _gpio_setBits(pm0, gpioConfig->pinMode & 1, gpioConfig);
	mov	dptr,#_gpioConfigure_pm0_65537_141
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#__gpio_setBits_PARM_2
	mov	a,#0x01
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	__gpio_setBits
	mov	r6,dpl
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:313: if (_isInput(gpioConfig)) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar6
	lcall	__isInput
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00180$
	ljmp	00108$
00180$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:315: pncs = _gpio_setBits(pncs, gpioConfig->schmidtTrigger, gpioConfig);
	push	ar6
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x04
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar6,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#__gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:316: ppu = _gpio_setBits(ppu, gpioConfig->internalPullUp, gpioConfig);
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x05
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dptr,#__gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:320: pie = _gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x07
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dptr,#__gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:324: pim1 = _gpio_setBits(pim1, gpioConfig->interruptTrigger & 2, gpioConfig);
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x09
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#__gpio_setBits_PARM_2
	mov	a,#0x02
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:325: pim0 = _gpio_setBits(pim0, gpioConfig->interruptTrigger & 1, gpioConfig);
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x09
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#__gpio_setBits_PARM_2
	mov	a,#0x01
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:326: pintf &= gpioConfig->__clearMask;
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0c
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	a,@dptr
	anl	a,r1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:327: pinte = _gpio_setBits(pinte, gpioConfig->pinInterrupt, gpioConfig);
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x08
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	ar2,r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dptr,#__gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:328: pwkue = _gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x0a
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dptr,#__gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:562: }
	pop	ar6
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:328: pwkue = _gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:334: if (_isOutput(gpioConfig)) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	__isOutput
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00181$
	ljmp	00110$
00181$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:335: pdr = _gpio_setBits(pdr, gpioConfig->speed & 1, gpioConfig);
	push	ar6
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar6,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#__gpio_setBits_PARM_2
	mov	a,#0x01
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:336: psr = _gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x06
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#__gpio_setBits_PARM_2
	mov	a,#0x02
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#__gpio_setBits_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar6
	lcall	__gpio_setBits
	mov	a,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:562: }
	pop	ar6
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:336: psr = _gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
00110$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:340: switch (gpioConfig->port) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x01,00182$
	sjmp	00111$
00182$:
	cjne	r5,#0x02,00183$
	sjmp	00112$
00183$:
	cjne	r5,#0x03,00184$
	ljmp	00113$
00184$:
	cjne	r5,#0x05,00185$
	ljmp	00114$
00185$:
	ret
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:372: case GPIO_PORT1:
00111$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:373: P1M1 = pm1;
	mov	_P1M1,r7
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:374: P1M0 = pm0;
	mov	_P1M0,r6
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:377: P1NCS = pncs;
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	a,@dptr
	mov	dptr,#_P1NCS
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:378: P1PU = ppu;
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	a,@dptr
	mov	dptr,#_P1PU
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:382: P1DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	a,@dptr
	mov	dptr,#_P1DR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:383: P1SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	a,@dptr
	mov	dptr,#_P1SR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:384: P1IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	a,@dptr
	mov	dptr,#_P1IE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:388: P1IM1 = pim1;
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	a,@dptr
	mov	dptr,#_P1IM1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:389: P1IM0 = pim0;
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	a,@dptr
	mov	dptr,#_P1IM0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:390: P1INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	a,@dptr
	mov	dptr,#_P1INTF
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:391: P1INTE = pinte;
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	a,@dptr
	mov	dptr,#_P1INTE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:392: P1WKUE = pwkue;
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	a,@dptr
	mov	dptr,#_P1WKUE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:394: break;
	ret
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:400: case GPIO_PORT2:
00112$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:401: P2M1 = pm1;
	mov	_P2M1,r7
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:402: P2M0 = pm0;
	mov	_P2M0,r6
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:405: P2NCS = pncs;
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	a,@dptr
	mov	dptr,#_P2NCS
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:406: P2PU = ppu;
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	a,@dptr
	mov	dptr,#_P2PU
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:410: P2DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	a,@dptr
	mov	dptr,#_P2DR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:411: P2SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	a,@dptr
	mov	dptr,#_P2SR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:412: P2IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	a,@dptr
	mov	dptr,#_P2IE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:416: P2IM1 = pim1;
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	a,@dptr
	mov	dptr,#_P2IM1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:417: P2IM0 = pim0;
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	a,@dptr
	mov	dptr,#_P2IM0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:418: P2INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	a,@dptr
	mov	dptr,#_P2INTF
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:419: P2INTE = pinte;
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	a,@dptr
	mov	dptr,#_P2INTE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:420: P2WKUE = pwkue;
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	a,@dptr
	mov	dptr,#_P2WKUE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:422: break;
	ret
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:427: case GPIO_PORT3:
00113$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:428: P3M1 = pm1;
	mov	_P3M1,r7
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:429: P3M0 = pm0;
	mov	_P3M0,r6
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:432: P3NCS = pncs;
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	a,@dptr
	mov	dptr,#_P3NCS
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:433: P3PU = ppu;
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	a,@dptr
	mov	dptr,#_P3PU
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:437: P3DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	a,@dptr
	mov	dptr,#_P3DR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:438: P3SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	a,@dptr
	mov	dptr,#_P3SR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:439: P3IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	a,@dptr
	mov	dptr,#_P3IE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:443: P3IM1 = pim1;
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	a,@dptr
	mov	dptr,#_P3IM1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:444: P3IM0 = pim0;
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	a,@dptr
	mov	dptr,#_P3IM0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:445: P3INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	a,@dptr
	mov	dptr,#_P3INTF
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:446: P3INTE = pinte;
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	a,@dptr
	mov	dptr,#_P3INTE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:447: P3WKUE = pwkue;
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	a,@dptr
	mov	dptr,#_P3WKUE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:449: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:482: case GPIO_PORT5:
	ret
00114$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:483: P5M1 = pm1;
	mov	_P5M1,r7
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:484: P5M0 = pm0;
	mov	_P5M0,r6
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:487: P5NCS = pncs;
	mov	dptr,#_gpioConfigure_pncs_65537_141
	movx	a,@dptr
	mov	dptr,#_P5NCS
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:488: P5PU = ppu;
	mov	dptr,#_gpioConfigure_ppu_65537_141
	movx	a,@dptr
	mov	dptr,#_P5PU
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:492: P5DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_141
	movx	a,@dptr
	mov	dptr,#_P5DR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:493: P5SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_141
	movx	a,@dptr
	mov	dptr,#_P5SR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:494: P5IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_141
	movx	a,@dptr
	mov	dptr,#_P5IE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:498: P5IM1 = pim1;
	mov	dptr,#_gpioConfigure_pim1_65537_141
	movx	a,@dptr
	mov	dptr,#_P5IM1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:499: P5IM0 = pim0;
	mov	dptr,#_gpioConfigure_pim0_65537_141
	movx	a,@dptr
	mov	dptr,#_P5IM0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:500: P5INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_141
	movx	a,@dptr
	mov	dptr,#_P5INTF
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:501: P5INTE = pinte;
	mov	dptr,#_gpioConfigure_pinte_65537_141
	movx	a,@dptr
	mov	dptr,#_P5INTE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:502: P5WKUE = pwkue;
	mov	dptr,#_gpioConfigure_pwkue_65537_141
	movx	a,@dptr
	mov	dptr,#_P5WKUE
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:562: }
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:563: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_getPort'
;------------------------------------------------------------
;port                      Allocated with name '__getPort_port_65536_146'
;value                     Allocated with name '__getPort_value_65536_147'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:565: static uint8_t _getPort(GpioPort port) {
;	-----------------------------------------
;	 function _getPort
;	-----------------------------------------
__getPort:
	mov	a,dpl
	mov	dptr,#__getPort_port_65536_146
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:566: uint8_t value = 0;
	mov	dptr,#__getPort_value_65536_147
	clr	a
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:568: switch (port) {
	mov	dptr,#__getPort_port_65536_146
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00124$
	sjmp	00101$
00124$:
	cjne	r7,#0x02,00125$
	sjmp	00102$
00125$:
	cjne	r7,#0x03,00126$
	sjmp	00103$
00126$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:578: case GPIO_PORT1:
	cjne	r7,#0x05,00105$
	sjmp	00104$
00101$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:579: value = P1;
	mov	dptr,#__getPort_value_65536_147
	mov	a,_P1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:580: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:585: case GPIO_PORT2:
	sjmp	00105$
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:586: value = P2;
	mov	dptr,#__getPort_value_65536_147
	mov	a,_P2
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:587: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:591: case GPIO_PORT3:
	sjmp	00105$
00103$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:592: value = P3;
	mov	dptr,#__getPort_value_65536_147
	mov	a,_P3
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:593: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:604: case GPIO_PORT5:
	sjmp	00105$
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:605: value = P5;
	mov	dptr,#__getPort_value_65536_147
	mov	a,_P5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:623: }
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:625: return value;
	mov	dptr,#__getPort_value_65536_147
	movx	a,@dptr
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:626: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpioRead'
;------------------------------------------------------------
;gpioConfig                Allocated with name '_gpioRead_gpioConfig_65536_149'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:628: uint8_t gpioRead(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function gpioRead
;	-----------------------------------------
_gpioRead:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gpioRead_gpioConfig_65536_149
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:629: return (_getPort(gpioConfig->port) & gpioConfig->__setMask) >> gpioConfig->pin;
	mov	dptr,#_gpioRead_gpioConfig_65536_149
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
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	__getPort
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x0b
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
	anl	ar4,a
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,r4
	sjmp	00105$
00104$:
	clr	c
	rrc	a
00105$:
	djnz	b,00104$
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:630: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpioWrite'
;------------------------------------------------------------
;value                     Allocated with name '_gpioWrite_PARM_2'
;gpioConfig                Allocated with name '_gpioWrite_gpioConfig_65536_151'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:632: void gpioWrite(GpioConfig *gpioConfig, uint8_t value) {
;	-----------------------------------------
;	 function gpioWrite
;	-----------------------------------------
_gpioWrite:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gpioWrite_gpioConfig_65536_151
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:633: if (gpioConfig->count == 1) {
	mov	dptr,#_gpioWrite_gpioConfig_65536_151
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00102$
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:637: value = value ? 1 : 0;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	jz	00110$
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00111$
00110$:
	mov	r3,#0x00
	mov	r4,#0x00
00111$:
	mov	dptr,#_gpioWrite_PARM_2
	mov	a,r3
	movx	@dptr,a
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:640: value = (value << gpioConfig->pin) & gpioConfig->__setMask;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	b,r2
	inc	b
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	mov	r2,a
	mov	a,#0x0b
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_gpioWrite_PARM_2
	anl	a,r2
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:641: value |= _getPort(gpioConfig->port) & gpioConfig->__clearMask;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	__getPort
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x0c
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
	mov	r1,a
	anl	ar4,a
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:643: switch (gpioConfig->port) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x01,00142$
	sjmp	00103$
00142$:
	cjne	r7,#0x02,00143$
	sjmp	00104$
00143$:
	cjne	r7,#0x03,00144$
	sjmp	00105$
00144$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:653: case GPIO_PORT1:
	cjne	r7,#0x05,00108$
	sjmp	00106$
00103$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:654: P1 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P1,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:655: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:660: case GPIO_PORT2:
	ret
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:661: P2 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P2,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:662: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:666: case GPIO_PORT3:
	ret
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:667: P3 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P3,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:668: break;
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:679: case GPIO_PORT5:
	ret
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:680: P5 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P5,a
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:697: }
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:698: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
