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
	.globl _gpio_pin_init_PARM_4
	.globl _gpio_pin_init_PARM_3
	.globl _gpio_pin_init_PARM_2
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
	.globl _gpio_pin_init
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
_gpioConfigure_sloc1_1_0:
	.ds 3
_gpioConfigure_sloc2_1_0:
	.ds 3
_gpioConfigure_sloc3_1_0:
	.ds 1
_gpioConfigure_sloc4_1_0:
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
___gpio_setBits_PARM_2:
	.ds 1
___gpio_setBits_PARM_3:
	.ds 3
___gpio_setBits_portValue_65536_51:
	.ds 1
___isOutput_gpioConfig_65536_53:
	.ds 3
___isInput_gpioConfig_65536_55:
	.ds 3
_gpio_pin_init_PARM_2:
	.ds 1
_gpio_pin_init_PARM_3:
	.ds 1
_gpio_pin_init_PARM_4:
	.ds 1
_gpio_pin_init_config_65536_57:
	.ds 3
_gpioConfigure_gpioConfig_65536_59:
	.ds 3
_gpioConfigure_mask_65536_60:
	.ds 1
_gpioConfigure_pm1_65537_63:
	.ds 1
_gpioConfigure_pm0_65537_63:
	.ds 1
_gpioConfigure_pncs_65537_63:
	.ds 1
_gpioConfigure_ppu_65537_63:
	.ds 1
_gpioConfigure_pdr_65537_63:
	.ds 1
_gpioConfigure_psr_65537_63:
	.ds 1
_gpioConfigure_pie_65537_63:
	.ds 1
_gpioConfigure_pim1_65537_63:
	.ds 1
_gpioConfigure_pim0_65537_63:
	.ds 1
_gpioConfigure_pintf_65537_63:
	.ds 1
_gpioConfigure_pinte_65537_63:
	.ds 1
_gpioConfigure_pwkue_65537_63:
	.ds 1
___getPort_port_65536_68:
	.ds 1
___getPort_value_65536_69:
	.ds 1
_gpioRead_gpioConfig_65536_71:
	.ds 3
_gpioWrite_PARM_2:
	.ds 1
_gpioWrite_gpioConfig_65536_73:
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
;Allocation info for local variables in function '__gpio_setBits'
;------------------------------------------------------------
;cfgValue                  Allocated with name '___gpio_setBits_PARM_2'
;gpioConfig                Allocated with name '___gpio_setBits_PARM_3'
;portValue                 Allocated with name '___gpio_setBits_portValue_65536_51'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:39: static uint8_t __gpio_setBits(uint8_t portValue, uint8_t cfgValue, GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function __gpio_setBits
;	-----------------------------------------
___gpio_setBits:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#___gpio_setBits_portValue_65536_51
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:40: return cfgValue ? (portValue | gpioConfig->__setMask) : (portValue & gpioConfig->__clearMask);
	mov	dptr,#___gpio_setBits_PARM_2
	movx	a,@dptr
	jz	00103$
	mov	dptr,#___gpio_setBits_PARM_3
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
	mov	dptr,#___gpio_setBits_portValue_65536_51
	movx	a,@dptr
	orl	a,r5
	mov	r7,a
	sjmp	00104$
00103$:
	mov	dptr,#___gpio_setBits_PARM_3
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
	mov	dptr,#___gpio_setBits_portValue_65536_51
	movx	a,@dptr
	anl	a,r4
	mov	r7,a
00104$:
	mov	dpl,r7
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__isOutput'
;------------------------------------------------------------
;gpioConfig                Allocated with name '___isOutput_gpioConfig_65536_53'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:43: static uint8_t __isOutput(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function __isOutput
;	-----------------------------------------
___isOutput:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___isOutput_gpioConfig_65536_53
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:44: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_PUSH_PULL_MODE || gpioConfig->pinMode == GPIO_OPEN_DRAIN_MODE;
	mov	dptr,#___isOutput_gpioConfig_65536_53
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__isInput'
;------------------------------------------------------------
;gpioConfig                Allocated with name '___isInput_gpioConfig_65536_55'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:47: static uint8_t __isInput(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function __isInput
;	-----------------------------------------
___isInput:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#___isInput_gpioConfig_65536_55
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:48: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_HIGH_IMPEDANCE_MODE;
	mov	dptr,#___isInput_gpioConfig_65536_55
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_pin_init'
;------------------------------------------------------------
;gpioPort                  Allocated with name '_gpio_pin_init_PARM_2'
;gpioPin                   Allocated with name '_gpio_pin_init_PARM_3'
;gpioMode                  Allocated with name '_gpio_pin_init_PARM_4'
;config                    Allocated with name '_gpio_pin_init_config_65536_57'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:51: void gpio_pin_init(GpioConfig *config, GpioPort gpioPort, GpioPin gpioPin, GpioPinMode gpioMode) {
;	-----------------------------------------
;	 function gpio_pin_init
;	-----------------------------------------
_gpio_pin_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gpio_pin_init_config_65536_57
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:53: config->port = gpioPort;
	mov	dptr,#_gpio_pin_init_config_65536_57
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gpio_pin_init_PARM_2
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:54: config->pin = gpioPin;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_gpio_pin_init_PARM_3
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:55: config->pinMode = gpioMode;
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_gpio_pin_init_PARM_4
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:58: config->schmidtTrigger = DISABLE_SCHMIDT_TRIGGER;
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:59: config->internalPullUp = DISABLE_INTERNAL_PULL_UP;
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:63: config->speed = GPIO_SPEED_SLOWEST;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x03
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:64: config->digitalInput = ENABLE_GPIO_DIGITAL_INPUT;
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:68: config->pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT;
	mov	a,#0x08
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:69: config->interruptTrigger = GPIO_FALLING_EDGE;
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:70: config->wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP;
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:73: return;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:74: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'gpioConfigure'
;------------------------------------------------------------
;sloc0                     Allocated with name '_gpioConfigure_sloc0_1_0'
;sloc1                     Allocated with name '_gpioConfigure_sloc1_1_0'
;sloc2                     Allocated with name '_gpioConfigure_sloc2_1_0'
;sloc3                     Allocated with name '_gpioConfigure_sloc3_1_0'
;sloc4                     Allocated with name '_gpioConfigure_sloc4_1_0'
;gpioConfig                Allocated with name '_gpioConfigure_gpioConfig_65536_59'
;mask                      Allocated with name '_gpioConfigure_mask_65536_60'
;n                         Allocated with name '_gpioConfigure_n_131072_61'
;pm1                       Allocated with name '_gpioConfigure_pm1_65537_63'
;pm0                       Allocated with name '_gpioConfigure_pm0_65537_63'
;pncs                      Allocated with name '_gpioConfigure_pncs_65537_63'
;ppu                       Allocated with name '_gpioConfigure_ppu_65537_63'
;pdr                       Allocated with name '_gpioConfigure_pdr_65537_63'
;psr                       Allocated with name '_gpioConfigure_psr_65537_63'
;pie                       Allocated with name '_gpioConfigure_pie_65537_63'
;pim1                      Allocated with name '_gpioConfigure_pim1_65537_63'
;pim0                      Allocated with name '_gpioConfigure_pim0_65537_63'
;pintf                     Allocated with name '_gpioConfigure_pintf_65537_63'
;pinte                     Allocated with name '_gpioConfigure_pinte_65537_63'
;pwkue                     Allocated with name '_gpioConfigure_pwkue_65537_63'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:76: void gpioConfigure(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function gpioConfigure
;	-----------------------------------------
_gpioConfigure:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:78: uint8_t mask = 0;
	mov	dptr,#_gpioConfigure_mask_65536_60
	clr	a
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:80: for (uint8_t n = gpioConfig->count; n > 0; n--) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:81: mask = mask << 1;
	mov	dptr,#_gpioConfigure_mask_65536_60
	movx	a,@dptr
	add	a,acc
	mov	r3,a
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:82: mask |= 1;
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:80: for (uint8_t n = gpioConfig->count; n > 0; n--) {
	dec	r4
	sjmp	00117$
00101$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:85: gpioConfig->__setMask = mask << gpioConfig->pin;
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
	mov	dptr,#_gpioConfigure_mask_65536_60
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:86: gpioConfig->__clearMask = ~gpioConfig->__setMask;
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:88: uint8_t pm1 = 0;
	mov	dptr,#_gpioConfigure_pm1_65537_63
	clr	a
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:89: uint8_t pm0 = 0;
	mov	dptr,#_gpioConfigure_pm0_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:92: uint8_t pncs = 0;
	mov	dptr,#_gpioConfigure_pncs_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:93: uint8_t ppu = 0;
	mov	dptr,#_gpioConfigure_ppu_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:97: uint8_t pdr = 0;
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:98: uint8_t psr = 0;
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:99: uint8_t pie = 0;
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:103: uint8_t pim1 = 0;
	mov	dptr,#_gpioConfigure_pim1_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:104: uint8_t pim0 = 0;
	mov	dptr,#_gpioConfigure_pim0_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:105: uint8_t pintf = 0;
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:106: uint8_t pinte = 0;
	mov	dptr,#_gpioConfigure_pinte_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:107: uint8_t pwkue = 0;
	mov	dptr,#_gpioConfigure_pwkue_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:110: switch (gpioConfig->port) {
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:142: case GPIO_PORT1:
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:143: pm1 = P1M1;
	mov	dptr,#_gpioConfigure_pm1_65537_63
	mov	a,_P1M1
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:144: pm0 = P1M0;
	mov	dptr,#_gpioConfigure_pm0_65537_63
	mov	a,_P1M0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:147: pncs = P1NCS;
	mov	dptr,#_P1NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:148: ppu = P1PU;
	mov	dptr,#_P1PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:152: pdr = P1DR;
	mov	dptr,#_P1DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:153: psr = P1SR;
	mov	dptr,#_P1SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:154: pie = P1IE;
	mov	dptr,#_P1IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:158: pim1 = P1IM1;
	mov	dptr,#_P1IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:159: pim0 = P1IM0;
	mov	dptr,#_P1IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:160: pintf = P1INTF;
	mov	dptr,#_P1INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:161: pinte = P1INTE;
	mov	dptr,#_P1INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:162: pwkue = P1WKUE;
	mov	dptr,#_P1WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:164: break;
	ljmp	00106$
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:170: case GPIO_PORT2:
00103$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:171: pm1 = P2M1;
	mov	dptr,#_gpioConfigure_pm1_65537_63
	mov	a,_P2M1
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:172: pm0 = P2M0;
	mov	dptr,#_gpioConfigure_pm0_65537_63
	mov	a,_P2M0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:175: pncs = P2NCS;
	mov	dptr,#_P2NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:176: ppu = P2PU;
	mov	dptr,#_P2PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:180: pdr = P2DR;
	mov	dptr,#_P2DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:181: psr = P2SR;
	mov	dptr,#_P2SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:182: pie = P2IE;
	mov	dptr,#_P2IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:186: pim1 = P2IM1;
	mov	dptr,#_P2IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:187: pim0 = P2IM0;
	mov	dptr,#_P2IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:188: pintf = P2INTF;
	mov	dptr,#_P2INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:189: pinte = P2INTE;
	mov	dptr,#_P2INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:190: pwkue = P2WKUE;
	mov	dptr,#_P2WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:192: break;
	ljmp	00106$
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:197: case GPIO_PORT3:
00104$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:198: pm1 = P3M1;
	mov	dptr,#_gpioConfigure_pm1_65537_63
	mov	a,_P3M1
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:199: pm0 = P3M0;
	mov	dptr,#_gpioConfigure_pm0_65537_63
	mov	a,_P3M0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:202: pncs = P3NCS;
	mov	dptr,#_P3NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:203: ppu = P3PU;
	mov	dptr,#_P3PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:207: pdr = P3DR;
	mov	dptr,#_P3DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:208: psr = P3SR;
	mov	dptr,#_P3SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:209: pie = P3IE;
	mov	dptr,#_P3IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:213: pim1 = P3IM1;
	mov	dptr,#_P3IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:214: pim0 = P3IM0;
	mov	dptr,#_P3IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:215: pintf = P3INTF;
	mov	dptr,#_P3INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:216: pinte = P3INTE;
	mov	dptr,#_P3INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:217: pwkue = P3WKUE;
	mov	dptr,#_P3WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:219: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:252: case GPIO_PORT5:
	sjmp	00106$
00105$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:253: pm1 = P5M1;
	mov	dptr,#_gpioConfigure_pm1_65537_63
	mov	a,_P5M1
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:254: pm0 = P5M0;
	mov	dptr,#_gpioConfigure_pm0_65537_63
	mov	a,_P5M0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:257: pncs = P5NCS;
	mov	dptr,#_P5NCS
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pncs_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:258: ppu = P5PU;
	mov	dptr,#_P5PU
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_ppu_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:262: pdr = P5DR;
	mov	dptr,#_P5DR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:263: psr = P5SR;
	mov	dptr,#_P5SR
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:264: pie = P5IE;
	mov	dptr,#_P5IE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:268: pim1 = P5IM1;
	mov	dptr,#_P5IM1
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim1_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:269: pim0 = P5IM0;
	mov	dptr,#_P5IM0
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pim0_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:270: pintf = P5INTF;
	mov	dptr,#_P5INTF
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:271: pinte = P5INTE;
	mov	dptr,#_P5INTE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pinte_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:272: pwkue = P5WKUE;
	mov	dptr,#_P5WKUE
	movx	a,@dptr
	mov	dptr,#_gpioConfigure_pwkue_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:332: }
00106$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:334: pm1 = __gpio_setBits(pm1, gpioConfig->pinMode & 2, gpioConfig);
	mov	dptr,#_gpioConfigure_pm1_65537_63
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
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
	mov	dptr,#___gpio_setBits_PARM_2
	mov	a,#0x02
	anl	a,r1
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	___gpio_setBits
	mov	r7,dpl
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:335: pm0 = __gpio_setBits(pm0, gpioConfig->pinMode & 1, gpioConfig);
	mov	dptr,#_gpioConfigure_pm0_65537_63
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
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
	mov	dptr,#___gpio_setBits_PARM_2
	mov	a,#0x01
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
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
	lcall	___gpio_setBits
	mov	r6,dpl
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:338: pncs = __gpio_setBits(pncs, gpioConfig->schmidtTrigger, gpioConfig);
	mov	dptr,#_gpioConfigure_pncs_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
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
	mov	ar5,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#___gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc0_1_0
	push	ar6
	lcall	___gpio_setBits
	mov	r5,dpl
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:339: ppu = __gpio_setBits(ppu, gpioConfig->internalPullUp, gpioConfig);
	mov	dptr,#_gpioConfigure_ppu_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc1_1_0 + 2),a
	mov	a,#0x05
	add	a,_gpioConfigure_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_gpioConfigure_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_gpioConfigure_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#___gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc1_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc0_1_0
	push	ar5
	lcall	___gpio_setBits
	mov	r4,dpl
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:343: if (__isOutput(gpioConfig)) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar4
	lcall	___isOutput
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00180$
	ljmp	00108$
00180$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:344: pdr = __gpio_setBits(pdr, gpioConfig->speed & 1, gpioConfig);
	push	ar4
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc1_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 2),a
	mov	a,#0x06
	add	a,_gpioConfigure_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#___gpio_setBits_PARM_2
	mov	a,#0x01
	anl	a,r2
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc1_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___gpio_setBits
	mov	a,dpl
	pop	ar4
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:345: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc1_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 2),a
	mov	a,#0x06
	add	a,_gpioConfigure_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#___gpio_setBits_PARM_2
	mov	a,#0x02
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc1_1_0
	push	ar4
	lcall	___gpio_setBits
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
	pop	ar4
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:345: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
00108$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:348: if (__isInput(gpioConfig)) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___isInput
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00110$
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:349: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
	push	ar4
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc1_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 2),a
	mov	a,#0x07
	add	a,_gpioConfigure_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#___gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc1_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___gpio_setBits
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
	pop	ar4
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:349: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
00110$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:354: pim1 = __gpio_setBits(pim1, gpioConfig->interruptTrigger & 2, gpioConfig);
	push	ar4
	mov	dptr,#_gpioConfigure_pim1_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc1_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 2),a
	mov	a,#0x09
	add	a,_gpioConfigure_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#___gpio_setBits_PARM_2
	mov	a,#0x02
	anl	a,r2
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc1_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___gpio_setBits
	mov	_gpioConfigure_sloc1_1_0,dpl
	pop	ar4
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:355: pim0 = __gpio_setBits(pim0, gpioConfig->interruptTrigger & 1, gpioConfig);
	mov	dptr,#_gpioConfigure_pim0_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc2_1_0 + 2),a
	mov	a,#0x09
	add	a,_gpioConfigure_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_gpioConfigure_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_gpioConfigure_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#___gpio_setBits_PARM_2
	mov	a,#0x01
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc2_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc0_1_0
	push	ar4
	lcall	___gpio_setBits
	mov	_gpioConfigure_sloc2_1_0,dpl
	pop	ar4
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:356: pintf &= gpioConfig->__clearMask;
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc0_1_0 + 2),a
	mov	a,#0x0c
	add	a,_gpioConfigure_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
	mov	r1,a
	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	a,@dptr
	anl	a,r0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:357: pinte = __gpio_setBits(pinte, gpioConfig->pinInterrupt, gpioConfig);
	mov	dptr,#_gpioConfigure_pinte_65537_63
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
	add	a,_gpioConfigure_sloc0_1_0
	mov	r1,a
	clr	a
	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
	mov	r2,a
	mov	r3,(_gpioConfigure_sloc0_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dptr,#___gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar4
	lcall	___gpio_setBits
	mov	_gpioConfigure_sloc0_1_0,dpl
	pop	ar4
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:358: pwkue = __gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
	mov	dptr,#_gpioConfigure_pwkue_65537_63
	movx	a,@dptr
	mov	_gpioConfigure_sloc3_1_0,a
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	_gpioConfigure_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gpioConfigure_sloc4_1_0 + 2),a
	mov	a,#0x0a
	add	a,_gpioConfigure_sloc4_1_0
	mov	r0,a
	clr	a
	addc	a,(_gpioConfigure_sloc4_1_0 + 1)
	mov	r3,a
	mov	r4,(_gpioConfigure_sloc4_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#___gpio_setBits_PARM_2
	movx	@dptr,a
	mov	dptr,#___gpio_setBits_PARM_3
	mov	a,_gpioConfigure_sloc4_1_0
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gpioConfigure_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_gpioConfigure_sloc3_1_0
	push	ar4
	lcall	___gpio_setBits
	mov	_gpioConfigure_sloc4_1_0,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:361: switch (gpioConfig->port) {
	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_gpioConfigure_sloc3_1_0,a
	mov	a,#0x01
	cjne	a,_gpioConfigure_sloc3_1_0,00182$
	pop	ar4
	sjmp	00111$
00182$:
	pop	ar4
	mov	a,#0x02
	cjne	a,_gpioConfigure_sloc3_1_0,00183$
	sjmp	00112$
00183$:
	mov	a,#0x03
	cjne	a,_gpioConfigure_sloc3_1_0,00184$
	ljmp	00113$
00184$:
	mov	a,#0x05
	cjne	a,_gpioConfigure_sloc3_1_0,00185$
	ljmp	00114$
00185$:
	ret
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:393: case GPIO_PORT1:
00111$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:394: P1M1 = pm1;
	mov	_P1M1,r7
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:395: P1M0 = pm0;
	mov	_P1M0,r6
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:398: P1NCS = pncs;
	mov	dptr,#_P1NCS
	mov	a,r5
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:399: P1PU = ppu;
	mov	dptr,#_P1PU
	mov	a,r4
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:403: P1DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	a,@dptr
	mov	dptr,#_P1DR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:404: P1SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	a,@dptr
	mov	dptr,#_P1SR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:405: P1IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	a,@dptr
	mov	dptr,#_P1IE
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:409: P1IM1 = pim1;
	mov	dptr,#_P1IM1
	mov	a,_gpioConfigure_sloc1_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:410: P1IM0 = pim0;
	mov	dptr,#_P1IM0
	mov	a,_gpioConfigure_sloc2_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:411: P1INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	a,@dptr
	mov	dptr,#_P1INTF
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:412: P1INTE = pinte;
	mov	dptr,#_P1INTE
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:413: P1WKUE = pwkue;
	mov	dptr,#_P1WKUE
	mov	a,_gpioConfigure_sloc4_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:415: break;
	ret
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:421: case GPIO_PORT2:
00112$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:422: P2M1 = pm1;
	mov	_P2M1,r7
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:423: P2M0 = pm0;
	mov	_P2M0,r6
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:426: P2NCS = pncs;
	mov	dptr,#_P2NCS
	mov	a,r5
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:427: P2PU = ppu;
	mov	dptr,#_P2PU
	mov	a,r4
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:431: P2DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	a,@dptr
	mov	dptr,#_P2DR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:432: P2SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	a,@dptr
	mov	dptr,#_P2SR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:433: P2IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	a,@dptr
	mov	dptr,#_P2IE
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:437: P2IM1 = pim1;
	mov	dptr,#_P2IM1
	mov	a,_gpioConfigure_sloc1_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:438: P2IM0 = pim0;
	mov	dptr,#_P2IM0
	mov	a,_gpioConfigure_sloc2_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:439: P2INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	a,@dptr
	mov	dptr,#_P2INTF
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:440: P2INTE = pinte;
	mov	dptr,#_P2INTE
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:441: P2WKUE = pwkue;
	mov	dptr,#_P2WKUE
	mov	a,_gpioConfigure_sloc4_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:443: break;
	ret
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:448: case GPIO_PORT3:
00113$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:449: P3M1 = pm1;
	mov	_P3M1,r7
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:450: P3M0 = pm0;
	mov	_P3M0,r6
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:453: P3NCS = pncs;
	mov	dptr,#_P3NCS
	mov	a,r5
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:454: P3PU = ppu;
	mov	dptr,#_P3PU
	mov	a,r4
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:458: P3DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	a,@dptr
	mov	dptr,#_P3DR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:459: P3SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	a,@dptr
	mov	dptr,#_P3SR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:460: P3IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	a,@dptr
	mov	dptr,#_P3IE
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:464: P3IM1 = pim1;
	mov	dptr,#_P3IM1
	mov	a,_gpioConfigure_sloc1_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:465: P3IM0 = pim0;
	mov	dptr,#_P3IM0
	mov	a,_gpioConfigure_sloc2_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:466: P3INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	a,@dptr
	mov	dptr,#_P3INTF
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:467: P3INTE = pinte;
	mov	dptr,#_P3INTE
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:468: P3WKUE = pwkue;
	mov	dptr,#_P3WKUE
	mov	a,_gpioConfigure_sloc4_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:470: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:503: case GPIO_PORT5:
	ret
00114$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:504: P5M1 = pm1;
	mov	_P5M1,r7
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:505: P5M0 = pm0;
	mov	_P5M0,r6
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:508: P5NCS = pncs;
	mov	dptr,#_P5NCS
	mov	a,r5
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:509: P5PU = ppu;
	mov	dptr,#_P5PU
	mov	a,r4
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:513: P5DR = pdr;
	mov	dptr,#_gpioConfigure_pdr_65537_63
	movx	a,@dptr
	mov	dptr,#_P5DR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:514: P5SR = psr;
	mov	dptr,#_gpioConfigure_psr_65537_63
	movx	a,@dptr
	mov	dptr,#_P5SR
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:515: P5IE = pie;
	mov	dptr,#_gpioConfigure_pie_65537_63
	movx	a,@dptr
	mov	dptr,#_P5IE
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:519: P5IM1 = pim1;
	mov	dptr,#_P5IM1
	mov	a,_gpioConfigure_sloc1_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:520: P5IM0 = pim0;
	mov	dptr,#_P5IM0
	mov	a,_gpioConfigure_sloc2_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:521: P5INTF = pintf;
	mov	dptr,#_gpioConfigure_pintf_65537_63
	movx	a,@dptr
	mov	dptr,#_P5INTF
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:522: P5INTE = pinte;
	mov	dptr,#_P5INTE
	mov	a,_gpioConfigure_sloc0_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:523: P5WKUE = pwkue;
	mov	dptr,#_P5WKUE
	mov	a,_gpioConfigure_sloc4_1_0
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:584: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__getPort'
;------------------------------------------------------------
;port                      Allocated with name '___getPort_port_65536_68'
;value                     Allocated with name '___getPort_value_65536_69'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:586: static uint8_t __getPort(GpioPort port) {
;	-----------------------------------------
;	 function __getPort
;	-----------------------------------------
___getPort:
	mov	a,dpl
	mov	dptr,#___getPort_port_65536_68
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:587: uint8_t value = 0;
	mov	dptr,#___getPort_value_65536_69
	clr	a
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:589: switch (port) {
	mov	dptr,#___getPort_port_65536_68
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:599: case GPIO_PORT1:
	cjne	r7,#0x05,00105$
	sjmp	00104$
00101$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:600: value = P1;
	mov	dptr,#___getPort_value_65536_69
	mov	a,_P1
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:601: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:606: case GPIO_PORT2:
	sjmp	00105$
00102$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:607: value = P2;
	mov	dptr,#___getPort_value_65536_69
	mov	a,_P2
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:608: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:612: case GPIO_PORT3:
	sjmp	00105$
00103$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:613: value = P3;
	mov	dptr,#___getPort_value_65536_69
	mov	a,_P3
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:614: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:625: case GPIO_PORT5:
	sjmp	00105$
00104$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:626: value = P5;
	mov	dptr,#___getPort_value_65536_69
	mov	a,_P5
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:644: }
00105$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:646: return value;
	mov	dptr,#___getPort_value_65536_69
	movx	a,@dptr
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:647: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpioRead'
;------------------------------------------------------------
;gpioConfig                Allocated with name '_gpioRead_gpioConfig_65536_71'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:649: uint8_t gpioRead(GpioConfig *gpioConfig) {
;	-----------------------------------------
;	 function gpioRead
;	-----------------------------------------
_gpioRead:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gpioRead_gpioConfig_65536_71
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:650: return (__getPort(gpioConfig->port) & gpioConfig->__setMask) >> gpioConfig->pin;
	mov	dptr,#_gpioRead_gpioConfig_65536_71
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
	lcall	___getPort
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:651: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpioWrite'
;------------------------------------------------------------
;value                     Allocated with name '_gpioWrite_PARM_2'
;gpioConfig                Allocated with name '_gpioWrite_gpioConfig_65536_73'
;------------------------------------------------------------
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:653: void gpioWrite(GpioConfig *gpioConfig, uint8_t value) {
;	-----------------------------------------
;	 function gpioWrite
;	-----------------------------------------
_gpioWrite:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gpioWrite_gpioConfig_65536_73
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:654: if (gpioConfig->count == 1) {
	mov	dptr,#_gpioWrite_gpioConfig_65536_73
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:658: value = value ? 1 : 0;
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:661: value = (value << gpioConfig->pin) & gpioConfig->__setMask;
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:662: value |= __getPort(gpioConfig->port) & gpioConfig->__clearMask;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___getPort
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:664: switch (gpioConfig->port) {
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
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:674: case GPIO_PORT1:
	cjne	r7,#0x05,00108$
	sjmp	00106$
00103$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:675: P1 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P1,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:676: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:681: case GPIO_PORT2:
	ret
00104$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:682: P2 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P2,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:683: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:687: case GPIO_PORT3:
	ret
00105$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:688: P3 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P3,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:689: break;
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:700: case GPIO_PORT5:
	ret
00106$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:701: P5 = value;
	mov	dptr,#_gpioWrite_PARM_2
	movx	a,@dptr
	mov	_P5,a
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:718: }
00108$:
;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:719: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
