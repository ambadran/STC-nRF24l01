;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X ppc)
;--------------------------------------------------------
	.module spi_hal
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _gpioConfigure
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
	.globl _spiReceive_PARM_3
	.globl _spiReceive_PARM_2
	.globl _spiSend_PARM_3
	.globl _spiSend_PARM_2
	.globl _spiConfigure_PARM_5
	.globl _spiConfigure_PARM_4
	.globl _spiConfigure_PARM_3
	.globl _spiConfigure_PARM_2
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
	.globl _spiSelectSpeed
	.globl _spiConfigure
	.globl _spiSend
	.globl _spiReceive
	.globl _spi_isr
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
___spiState:
	.ds 10
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
; uninitialized external ram data
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
_uartGetCharacter_result_10000_50:
	.ds 1
___configurePins_PARM_2:
	.ds 1
___configurePins_pinSwitch_10000_109:
	.ds 1
___configurePins_pinConfig_40001_114:
	.ds 13
_spiSelectSpeed_maxDeviceRate_10000_115:
	.ds 4
_spiSelectSpeed_divisor_10000_116:
	.ds 2
_spiSelectSpeed_pot_10001_118:
	.ds 1
_spiSelectSpeed_n_20001_119:
	.ds 2
_spiSelectSpeed_result_10002_121:
	.ds 1
_spiConfigure_PARM_2:
	.ds 1
_spiConfigure_PARM_3:
	.ds 1
_spiConfigure_PARM_4:
	.ds 1
_spiConfigure_PARM_5:
	.ds 1
_spiConfigure_bitOrder_10000_125:
	.ds 1
_spiSend_PARM_2:
	.ds 2
_spiSend_PARM_3:
	.ds 3
_spiSend_buffer_10000_127:
	.ds 3
_spiReceive_PARM_2:
	.ds 2
_spiReceive_PARM_3:
	.ds 3
_spiReceive_buffer_10000_129:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
;Allocation info for local variables in function '__configurePins'
;------------------------------------------------------------
;outputPinMode             Allocated with name '___configurePins_PARM_2'
;pinSwitch                 Allocated with name '___configurePins_pinSwitch_10000_109'
;i                         Allocated with name '___configurePins_i_20000_111'
;pinConfig                 Allocated with name '___configurePins_pinConfig_40001_114'
;pinDefinition             Allocated with name '___configurePins_pinDefinition_40001_114'
;------------------------------------------------------------
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:101: static void __configurePins(uint8_t pinSwitch, GpioPinMode outputPinMode) {
;	-----------------------------------------
;	 function __configurePins
;	-----------------------------------------
___configurePins:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#___configurePins_pinSwitch_10000_109
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / SPI_ROW_SIZE); i++) {
	mov	r7,#0x00
00105$:
	cjne	r7,#0x03,00127$
00127$:
	jc	00128$
	ret
00128$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:103: if (__pinConfigurations[i][SPI_PIN_SWITCH] == pinSwitch) {
	mov	a,r7
	mov	b,#0x05
	mul	ab
	mov	r5,a
	mov	r6,b
	add	a, #___pinConfigurations
	mov	dpl,a
	mov	a,r6
	addc	a, #(___pinConfigurations >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#___configurePins_pinSwitch_10000_109
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00129$
	sjmp	00130$
00129$:
	ljmp	00106$
00130$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:104: P_SW1 = (P_SW1 & ~M_SPI_S) | ((pinSwitch << P_SPI_S) & M_SPI_S);
	mov	a,#0xf3
	anl	a,_P_SW1
	mov	r4,a
	mov	a,r3
	add	a,r3
	add	a,acc
	mov	r3,a
	mov	a,#0x0c
	anl	a,r3
	orl	a,r4
	mov	_P_SW1,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:106: GpioConfig pinConfig = GPIO_PIN_CONFIG(GPIO_PORT3, GPIO_PIN0, outputPinMode);
	mov	dptr,#___configurePins_pinConfig_40001_114
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0002)
	inc	a
	movx	@dptr,a
	mov	dptr,#___configurePins_PARM_2
	movx	a,@dptr
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0006)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0007)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x000c)
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:111: pinDefinition = __pinConfigurations[i][SPI_MOSI_PIN];
	mov	a,r5
	add	a, #___pinConfigurations
	mov	r5,a
	mov	a,r6
	addc	a, #(___pinConfigurations >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:112: pinConfig.port = (GpioPort) (pinDefinition >> 4);
	mov	r4,a
	swap	a
	anl	a,#0x0f
	mov	dptr,#___configurePins_pinConfig_40001_114
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:113: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
	anl	ar4,#0x0f
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
	mov	a,r4
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:114: gpioConfigure(&pinConfig);
	mov	dptr,#___configurePins_pinConfig_40001_114
	mov	b, #0x00
	push	ar6
	push	ar5
	lcall	_gpioConfigure
	pop	ar5
	pop	ar6
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:116: pinDefinition = __pinConfigurations[i][SPI_SCLK_PIN];
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:117: pinConfig.port = (GpioPort) (pinDefinition >> 4);
	mov	r4,a
	swap	a
	anl	a,#0x0f
	mov	dptr,#___configurePins_pinConfig_40001_114
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:118: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
	anl	ar4,#0x0f
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
	mov	a,r4
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:119: gpioConfigure(&pinConfig);
	mov	dptr,#___configurePins_pinConfig_40001_114
	mov	b, #0x00
	push	ar6
	push	ar5
	lcall	_gpioConfigure
	pop	ar5
	pop	ar6
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:122: pinConfig.pinMode = GPIO_BIDIRECTIONAL_MODE;
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0003)
	clr	a
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:124: pinDefinition = __pinConfigurations[i][SPI_MISO_PIN];
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	movc	a,@a+dptr
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:125: pinConfig.port = (GpioPort) (pinDefinition >> 4);
	mov	r6,a
	swap	a
	anl	a,#0x0f
	mov	dptr,#___configurePins_pinConfig_40001_114
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:126: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
	anl	ar6,#0x0f
	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:127: gpioConfigure(&pinConfig);
	mov	dptr,#___configurePins_pinConfig_40001_114
	mov	b, #0x00
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:153: break;
	ljmp	_gpioConfigure
00106$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / SPI_ROW_SIZE); i++) {
	inc	r7
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:156: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'spiSelectSpeed'
;------------------------------------------------------------
;maxDeviceRate             Allocated with name '_spiSelectSpeed_maxDeviceRate_10000_115'
;divisor                   Allocated with name '_spiSelectSpeed_divisor_10000_116'
;pot                       Allocated with name '_spiSelectSpeed_pot_10001_118'
;n                         Allocated with name '_spiSelectSpeed_n_20001_119'
;result                    Allocated with name '_spiSelectSpeed_result_10002_121'
;------------------------------------------------------------
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:165: SpiSpeed spiSelectSpeed(uint32_t maxDeviceRate) {
;	-----------------------------------------
;	 function spiSelectSpeed
;	-----------------------------------------
_spiSelectSpeed:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_spiSelectSpeed_maxDeviceRate_10000_115
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
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:166: uint16_t divisor = (uint16_t) (MCU_FREQ / maxDeviceRate);
	mov	dptr,#_spiSelectSpeed_maxDeviceRate_10000_115
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0ec0
	mov	b, #0x16
	mov	a, #0x02
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divulong
	mov	r0, dpl
	mov	r1, dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_spiSelectSpeed_divisor_10000_116
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:168: if (MCU_FREQ % maxDeviceRate) {
	mov	dptr,#__modulong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0ec0
	mov	b, #0x16
	mov	a, #0x02
	push	ar1
	push	ar0
	lcall	__modulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	pop	ar0
	pop	ar1
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00102$
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:169: divisor++;
	mov	dptr,#_spiSelectSpeed_divisor_10000_116
	mov	a,#0x01
	add	a, r0
	movx	@dptr,a
	clr	a
	addc	a, r1
	inc	dptr
	movx	@dptr,a
00102$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:176: for (uint16_t n = divisor; n > 1; n = n >> 1, pot++);
	mov	dptr,#_spiSelectSpeed_divisor_10000_116
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spiSelectSpeed_n_20001_119
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	r5,#0x00
00116$:
	mov	dptr,#_spiSelectSpeed_n_20001_119
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r3
	mov	ar2,r4
	clr	c
	mov	a,#0x01
	subb	a,r1
	clr	a
	subb	a,r2
	jnc	00128$
	mov	a,r4
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	dptr,#_spiSelectSpeed_n_20001_119
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	inc	r5
	sjmp	00116$
00128$:
	mov	dptr,#_spiSelectSpeed_pot_10001_118
	mov	a,r5
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:178: if (divisor > (1 << pot)) {
	mov	b,r5
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00172$
00171$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00172$:
	djnz	b,00171$
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jnc	00105$
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:179: pot++;
	mov	dptr,#_spiSelectSpeed_pot_10001_118
	mov	a,r5
	inc	a
	movx	@dptr,a
00105$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:183: SpiSpeed result = SPI_SYSCLK_DIV_4;
	mov	dptr,#_spiSelectSpeed_result_10002_121
	clr	a
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:198: if (pot > 2 && pot <= 3) {
	mov	dptr,#_spiSelectSpeed_pot_10001_118
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x02
	jnc	00112$
	mov	a,r7
	add	a,#0xff - 0x03
	jc	00112$
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:199: result = SPI_SYSCLK_DIV_8;
	mov	dptr,#_spiSelectSpeed_result_10002_121
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00113$
00112$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:200: } else if (pot < 2) {
	mov	dptr,#_spiSelectSpeed_pot_10001_118
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00176$
00176$:
	jnc	00109$
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:201: result = SPI_SYSCLK_DIV_2;
	mov	dptr,#_spiSelectSpeed_result_10002_121
	mov	a,#0x03
	movx	@dptr,a
	sjmp	00113$
00109$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:202: } else if (pot > 3) {
	mov	a,r7
	add	a,#0xff - 0x03
	jnc	00113$
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:203: result = SPI_SYSCLK_DIV_16;
	mov	dptr,#_spiSelectSpeed_result_10002_121
	mov	a,#0x02
	movx	@dptr,a
00113$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:217: return result;
	mov	dptr,#_spiSelectSpeed_result_10002_121
	movx	a,@dptr
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:218: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spiConfigure'
;------------------------------------------------------------
;mode                      Allocated with name '_spiConfigure_PARM_2'
;speed                     Allocated with name '_spiConfigure_PARM_3'
;pinSwitch                 Allocated with name '_spiConfigure_PARM_4'
;outputPinMode             Allocated with name '_spiConfigure_PARM_5'
;bitOrder                  Allocated with name '_spiConfigure_bitOrder_10000_125'
;------------------------------------------------------------
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:220: void spiConfigure(SpiBitOrder bitOrder, SpiMode mode, SpiSpeed speed, uint8_t pinSwitch, GpioPinMode outputPinMode) {
;	-----------------------------------------
;	 function spiConfigure
;	-----------------------------------------
_spiConfigure:
	mov	a,dpl
	mov	dptr,#_spiConfigure_bitOrder_10000_125
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:221: __configurePins(pinSwitch, outputPinMode);
	mov	dptr,#_spiConfigure_PARM_4
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spiConfigure_PARM_5
	movx	a,@dptr
	mov	dptr,#___configurePins_PARM_2
	movx	@dptr,a
	mov	dpl, r7
	lcall	___configurePins
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:222: SPCTL = bitOrder | mode | speed |
	mov	dptr,#_spiConfigure_bitOrder_10000_125
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spiConfigure_PARM_2
	movx	a,@dptr
	orl	ar7,a
	mov	dptr,#_spiConfigure_PARM_3
	movx	a,@dptr
	orl	a,r7
	orl	a,#0xd0
	mov	_SPCTL,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:228: IE2 = IE2 | M_SPIEN;
	orl	_IE2,#0x02
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:229: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spiSend'
;------------------------------------------------------------
;bufferSize                Allocated with name '_spiSend_PARM_2'
;readyFlag                 Allocated with name '_spiSend_PARM_3'
;buffer                    Allocated with name '_spiSend_buffer_10000_127'
;------------------------------------------------------------
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:231: void spiSend(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
;	-----------------------------------------
;	 function spiSend
;	-----------------------------------------
_spiSend:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_spiSend_buffer_10000_127
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:232: __spiState.buffer = buffer;
	mov	dptr,#_spiSend_buffer_10000_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#___spiState
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:233: __spiState.bufferSize = bufferSize;
	mov	dptr,#_spiSend_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(___spiState + 0x0005)
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:234: __spiState.readyFlag = readyFlag;
	mov	dptr,#_spiSend_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#(___spiState + 0x0007)
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:235: *__spiState.readyFlag = false;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:236: __spiState.index = 0;
	mov	r0,#(___spiState + 0x0003)
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:239: SPDAT = __spiState.buffer[__spiState.index];
	mov	r0,#___spiState
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#(___spiState + 0x0003)
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,r3
	add	a, r5
	mov	r5,a
	mov	a,r4
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_SPDAT,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:241: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spiReceive'
;------------------------------------------------------------
;bufferSize                Allocated with name '_spiReceive_PARM_2'
;readyFlag                 Allocated with name '_spiReceive_PARM_3'
;buffer                    Allocated with name '_spiReceive_buffer_10000_129'
;------------------------------------------------------------
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:243: void spiReceive(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
;	-----------------------------------------
;	 function spiReceive
;	-----------------------------------------
_spiReceive:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_spiReceive_buffer_10000_129
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:244: memset(buffer, 0, bufferSize);
	mov	dptr,#_spiReceive_buffer_10000_129
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dptr,#_spiReceive_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	_memset
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:245: spiSend(buffer, bufferSize, readyFlag);
	mov	dptr,#_spiReceive_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_spiSend_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spiSend_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:246: }
	ljmp	_spiSend
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_isr'
;------------------------------------------------------------
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:248: INTERRUPT(spi_isr, SPI_INTERRUPT) {
;	-----------------------------------------
;	 function spi_isr
;	-----------------------------------------
_spi_isr:
	push	acc
	push	b
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar0
	push	psw
	mov	psw,#0x00
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:249: SPSTAT |= M_SPIIF | M_WCOL;
	orl	_SPSTAT,#0xc0
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:252: __spiState.buffer[__spiState.index] = SPDAT;
	mov	r0,#___spiState
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#(___spiState + 0x0003)
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,r3
	add	a, r5
	mov	r5,a
	mov	a,r4
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_SPDAT
	lcall	__gptrput
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:253: __spiState.index++;
	mov	r0,#(___spiState + 0x0003)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	inc	r6
	cjne	r6,#0x00,00112$
	inc	r7
00112$:
	mov	r0,#(___spiState + 0x0003)
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:255: if (__spiState.index < __spiState.bufferSize) {
	mov	r0,#(___spiState + 0x0005)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00102$
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:257: SPDAT = __spiState.buffer[__spiState.index];
	mov	r0,#___spiState
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#(___spiState + 0x0003)
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,r3
	add	a, r5
	mov	r5,a
	mov	a,r4
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_SPDAT,a
	sjmp	00104$
00102$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:260: *__spiState.readyFlag = true;
	mov	r0,#(___spiState + 0x0007)
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00104$:
;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:275: }
	pop	psw
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
	.area CSEG    (CODE)
	.area CONST   (CODE)
___pinConfigurations:
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x03	; 3
	.db #0x35	; 53	'5'
	.db #0x34	; 52	'4'
	.db #0x33	; 51	'3'
	.db #0x32	; 50	'2'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
