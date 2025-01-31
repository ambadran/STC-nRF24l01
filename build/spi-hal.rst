                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _gpioConfigure
                                     12 	.globl _memset
                                     13 	.globl _S1SM0_FE
                                     14 	.globl _T1IE
                                     15 	.globl _T0IE
                                     16 	.globl _T1RUN
                                     17 	.globl _T0RUN
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _EA
                                     27 	.globl _INT1IE
                                     28 	.globl _INT0IE
                                     29 	.globl _INT1TR
                                     30 	.globl _INT0TR
                                     31 	.globl _P5_5
                                     32 	.globl _P5_4
                                     33 	.globl _P5_3
                                     34 	.globl _P5_2
                                     35 	.globl _P5_1
                                     36 	.globl _P5_0
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _P2_7
                                     46 	.globl _P2_6
                                     47 	.globl _P2_5
                                     48 	.globl _P2_4
                                     49 	.globl _P2_3
                                     50 	.globl _P2_2
                                     51 	.globl _P2_1
                                     52 	.globl _P2_0
                                     53 	.globl _P1_7
                                     54 	.globl _P1_6
                                     55 	.globl _P1_5
                                     56 	.globl _P1_4
                                     57 	.globl _P1_3
                                     58 	.globl _P1_2
                                     59 	.globl _P1_1
                                     60 	.globl _P1_0
                                     61 	.globl _USBADR
                                     62 	.globl _USBCON
                                     63 	.globl _USBDAT
                                     64 	.globl _USBCLK
                                     65 	.globl _S4BUF
                                     66 	.globl _S4CON
                                     67 	.globl _S3BUF
                                     68 	.globl _S3CON
                                     69 	.globl _S2BUF
                                     70 	.globl _S2CON
                                     71 	.globl _S1BUF
                                     72 	.globl _S1CON
                                     73 	.globl _SADEN
                                     74 	.globl _SADDR
                                     75 	.globl _AUXINTIF
                                     76 	.globl _T3
                                     77 	.globl _T3L
                                     78 	.globl _T3H
                                     79 	.globl _T4
                                     80 	.globl _T4L
                                     81 	.globl _T4H
                                     82 	.globl _T4T3M
                                     83 	.globl _WDT_CONTR
                                     84 	.globl _AUXR
                                     85 	.globl _T2
                                     86 	.globl _T2H
                                     87 	.globl _T2L
                                     88 	.globl _T1
                                     89 	.globl _T1H
                                     90 	.globl _T1L
                                     91 	.globl _T0
                                     92 	.globl _T0H
                                     93 	.globl _T0L
                                     94 	.globl _TMOD
                                     95 	.globl _TCON
                                     96 	.globl _IRTRIM
                                     97 	.globl _LIRTRIM
                                     98 	.globl _IRCBAND
                                     99 	.globl _SPDAT
                                    100 	.globl _SPCTL
                                    101 	.globl _SPSTAT
                                    102 	.globl _WKTC
                                    103 	.globl _WKTCH
                                    104 	.globl _WKTCL
                                    105 	.globl _BUS_SPEED
                                    106 	.globl _P_SW2
                                    107 	.globl _P_SW1
                                    108 	.globl _RSTCFG
                                    109 	.globl _PCON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _SP
                                    114 	.globl _IP3H
                                    115 	.globl _IP3L
                                    116 	.globl _IP2H
                                    117 	.globl _IP2L
                                    118 	.globl _IE2
                                    119 	.globl _IP1H
                                    120 	.globl _IP1L
                                    121 	.globl _IE1
                                    122 	.globl _INT_CLKO
                                    123 	.globl _IAP_TPS
                                    124 	.globl _IAP_CONTR
                                    125 	.globl _IAP_TRIG
                                    126 	.globl _IAP_CMD
                                    127 	.globl _IAP_ADDR
                                    128 	.globl _IAP_ADDRL
                                    129 	.globl _IAP_ADDRH
                                    130 	.globl _IAP_DATA
                                    131 	.globl _P5M0
                                    132 	.globl _P5M1
                                    133 	.globl _P5
                                    134 	.globl _P3M0
                                    135 	.globl _P3M1
                                    136 	.globl _P3
                                    137 	.globl _P2M0
                                    138 	.globl _P2M1
                                    139 	.globl _P2
                                    140 	.globl _P1M0
                                    141 	.globl _P1M1
                                    142 	.globl _P1
                                    143 	.globl _TA
                                    144 	.globl _DPH1
                                    145 	.globl _DPL1
                                    146 	.globl _DPS
                                    147 	.globl _DP
                                    148 	.globl _DPH
                                    149 	.globl _DPL
                                    150 	.globl _CMPCR2
                                    151 	.globl _CMPCR1
                                    152 	.globl _DMA_ADC_AMT
                                    153 	.globl _ADCCFG
                                    154 	.globl _ADC_RES
                                    155 	.globl _ADC_RESL
                                    156 	.globl _ADC_RESH
                                    157 	.globl _ADC_CONTR
                                    158 	.globl _spiReceive_PARM_3
                                    159 	.globl _spiReceive_PARM_2
                                    160 	.globl _spiSend_PARM_3
                                    161 	.globl _spiSend_PARM_2
                                    162 	.globl _spiConfigure_PARM_5
                                    163 	.globl _spiConfigure_PARM_4
                                    164 	.globl _spiConfigure_PARM_3
                                    165 	.globl _spiConfigure_PARM_2
                                    166 	.globl _DMA_UR4R_TXAL
                                    167 	.globl _DMA_UR4R_TXAH
                                    168 	.globl _DMA_UR4R_DONE
                                    169 	.globl _DMA_UR4R_AMT
                                    170 	.globl _DMA_UR4R_STA
                                    171 	.globl _DMA_UR4R_CR
                                    172 	.globl _DMA_UR4R_CFG
                                    173 	.globl _DMA_UR4T_TXAL
                                    174 	.globl _DMA_UR4T_TXAH
                                    175 	.globl _DMA_UR4T_DONE
                                    176 	.globl _DMA_UR4T_AMT
                                    177 	.globl _DMA_UR4T_STA
                                    178 	.globl _DMA_UR4T_CR
                                    179 	.globl _DMA_UR4T_CFG
                                    180 	.globl _DMA_UR3R_TXAL
                                    181 	.globl _DMA_UR3R_TXAH
                                    182 	.globl _DMA_UR3R_DONE
                                    183 	.globl _DMA_UR3R_AMT
                                    184 	.globl _DMA_UR3R_STA
                                    185 	.globl _DMA_UR3R_CR
                                    186 	.globl _DMA_UR3R_CFG
                                    187 	.globl _DMA_UR3T_TXAL
                                    188 	.globl _DMA_UR3T_TXAH
                                    189 	.globl _DMA_UR3T_DONE
                                    190 	.globl _DMA_UR3T_AMT
                                    191 	.globl _DMA_UR3T_STA
                                    192 	.globl _DMA_UR3T_CR
                                    193 	.globl _DMA_UR3T_CFG
                                    194 	.globl _DMA_UR2R_TXAL
                                    195 	.globl _DMA_UR2R_TXAH
                                    196 	.globl _DMA_UR2R_DONE
                                    197 	.globl _DMA_UR2R_AMT
                                    198 	.globl _DMA_UR2R_STA
                                    199 	.globl _DMA_UR2R_CR
                                    200 	.globl _DMA_UR2R_CFG
                                    201 	.globl _DMA_UR2T_TXAL
                                    202 	.globl _DMA_UR2T_TXAH
                                    203 	.globl _DMA_UR2T_DONE
                                    204 	.globl _DMA_UR2T_AMT
                                    205 	.globl _DMA_UR2T_STA
                                    206 	.globl _DMA_UR2T_CR
                                    207 	.globl _DMA_UR2T_CFG
                                    208 	.globl _DMA_UR1R_TXAL
                                    209 	.globl _DMA_UR1R_TXAH
                                    210 	.globl _DMA_UR1R_DONE
                                    211 	.globl _DMA_UR1R_AMT
                                    212 	.globl _DMA_UR1R_STA
                                    213 	.globl _DMA_UR1R_CR
                                    214 	.globl _DMA_UR1R_CFG
                                    215 	.globl _DMA_UR1T_TXAL
                                    216 	.globl _DMA_UR1T_TXAH
                                    217 	.globl _DMA_UR1T_DONE
                                    218 	.globl _DMA_URTX_AMT
                                    219 	.globl _DMA_UR1T_STA
                                    220 	.globl _DMA_UR1T_CR
                                    221 	.globl _DMA_UR1T_CFG
                                    222 	.globl _TM4PS
                                    223 	.globl _TM3PS
                                    224 	.globl _TM2PS
                                    225 	.globl _IRC48MCR
                                    226 	.globl _IRCDB
                                    227 	.globl _MCLKOCR
                                    228 	.globl _CKSEL
                                    229 	.globl _IRC32KCR
                                    230 	.globl _X32KCR
                                    231 	.globl _XOSCCR
                                    232 	.globl _HIRCCR
                                    233 	.globl _CLKDIV
                                    234 	.globl _DMA_SPI_CFG2
                                    235 	.globl _DMA_SPI_RXAL
                                    236 	.globl _DMA_SPI_RXAH
                                    237 	.globl _DMA_SPI_TXAL
                                    238 	.globl _DMA_SPI_TXAH
                                    239 	.globl _DMA_SPI_DONE
                                    240 	.globl _DMA_SPI_AMT
                                    241 	.globl _DMA_SPI_STA
                                    242 	.globl _DMA_SPI_CR
                                    243 	.globl _DMA_SPI_CFG
                                    244 	.globl _SSEC
                                    245 	.globl _SEC
                                    246 	.globl _MIN
                                    247 	.globl _HOUR
                                    248 	.globl _DAY
                                    249 	.globl _MONTH
                                    250 	.globl _YEAR
                                    251 	.globl _INISSEC
                                    252 	.globl _INISEC
                                    253 	.globl _INIMIN
                                    254 	.globl _INIHOUR
                                    255 	.globl _INIDAY
                                    256 	.globl _INIMONTH
                                    257 	.globl _INIYEAR
                                    258 	.globl _ALASSEC
                                    259 	.globl _ALASEC
                                    260 	.globl _ALAMIN
                                    261 	.globl _ALAHOUR
                                    262 	.globl _RTCIF
                                    263 	.globl _RTCIEN
                                    264 	.globl _RTCCFG
                                    265 	.globl _RTCCR
                                    266 	.globl _PWMB_OISR
                                    267 	.globl _PWMB_DTR
                                    268 	.globl _PWMB_BKR
                                    269 	.globl _PWMB_CCR4L
                                    270 	.globl _PWMB_CCR4H
                                    271 	.globl _PWMB_CCR3L
                                    272 	.globl _PWMB_CCR3H
                                    273 	.globl _PWMB_CCR2L
                                    274 	.globl _PWMB_CCR2H
                                    275 	.globl _PWMB_CCR1L
                                    276 	.globl _PWMB_CCR1H
                                    277 	.globl _PWMB_RCR
                                    278 	.globl _PWMB_ARRL
                                    279 	.globl _PWMB_ARRH
                                    280 	.globl _PWMB_PSCRL
                                    281 	.globl _PWMB_PSCRH
                                    282 	.globl _PWMB_CNTRL
                                    283 	.globl _PWMB_CNTRH
                                    284 	.globl _PWMB_CCER2
                                    285 	.globl _PWMB_CCER1
                                    286 	.globl _PWMB_CCMR4
                                    287 	.globl _PWMB_CCMR3
                                    288 	.globl _PWMB_CCMR2
                                    289 	.globl _PWMB_CCMR1
                                    290 	.globl _PWMB_EGR
                                    291 	.globl _PWMB_SR2
                                    292 	.globl _PWMB_SR1
                                    293 	.globl _PWMB_IER
                                    294 	.globl _PWMB_ETR
                                    295 	.globl _PWMB_SMCR
                                    296 	.globl _PWMB_CR2
                                    297 	.globl _PWMB_CR1
                                    298 	.globl _PWMA_OISR
                                    299 	.globl _PWMA_DTR
                                    300 	.globl _PWMA_BKR
                                    301 	.globl _PWMA_CCR4L
                                    302 	.globl _PWMA_CCR4H
                                    303 	.globl _PWMA_CCR3L
                                    304 	.globl _PWMA_CCR3H
                                    305 	.globl _PWMA_CCR2L
                                    306 	.globl _PWMA_CCR2H
                                    307 	.globl _PWMA_CCR1L
                                    308 	.globl _PWMA_CCR1H
                                    309 	.globl _PWMA_RCR
                                    310 	.globl _PWMA_ARRL
                                    311 	.globl _PWMA_ARRH
                                    312 	.globl _PWMA_PSCRL
                                    313 	.globl _PWMA_PSCRH
                                    314 	.globl _PWMA_CNTRL
                                    315 	.globl _PWMA_CNTRH
                                    316 	.globl _PWMA_CCER2
                                    317 	.globl _PWMA_CCER1
                                    318 	.globl _PWMA_CCMR4
                                    319 	.globl _PWMA_CCMR3
                                    320 	.globl _PWMA_CCMR2
                                    321 	.globl _PWMA_CCMR1
                                    322 	.globl _PWMA_EGR
                                    323 	.globl _PWMA_SR2
                                    324 	.globl _PWMA_SR1
                                    325 	.globl _PWMA_IER
                                    326 	.globl _PWMA_ETR
                                    327 	.globl _PWMA_SMCR
                                    328 	.globl _PWMA_CR2
                                    329 	.globl _PWMA_CR1
                                    330 	.globl _PWMB_IOAUX
                                    331 	.globl _PWMB_PS
                                    332 	.globl _PWMB_ENO
                                    333 	.globl _PWMB_ETRPS
                                    334 	.globl _PWMA_IOAUX
                                    335 	.globl _PWMA_PS
                                    336 	.globl _PWMA_ENO
                                    337 	.globl _PWMA_ETRPS
                                    338 	.globl _RSTFLAG
                                    339 	.globl _SPFUNC
                                    340 	.globl _OPCON
                                    341 	.globl _ARCON
                                    342 	.globl _MD4
                                    343 	.globl _MD5
                                    344 	.globl _MD0
                                    345 	.globl _MD1
                                    346 	.globl _MD2
                                    347 	.globl _MD3
                                    348 	.globl _DMA_LCM_RXAL
                                    349 	.globl _DMA_LCM_RXAH
                                    350 	.globl _DMA_LCM_TXAL
                                    351 	.globl _DMA_LCM_TXAH
                                    352 	.globl _DMA_LCM_DONE
                                    353 	.globl _DMA_LCM_AMT
                                    354 	.globl _DMA_LCM_STA
                                    355 	.globl _DMA_LCM_CR
                                    356 	.globl _DMA_LCM_CFG
                                    357 	.globl _LCMIDDAT
                                    358 	.globl _LCMIDDATH
                                    359 	.globl _LCMIDDATL
                                    360 	.globl _LCMSTA
                                    361 	.globl _LCMCR
                                    362 	.globl _LCMCFG2
                                    363 	.globl _LCMCFG
                                    364 	.globl _I2CMSAUX
                                    365 	.globl _I2CRXD
                                    366 	.globl _I2CTXD
                                    367 	.globl _I2CSLADR
                                    368 	.globl _I2CSLST
                                    369 	.globl _I2CSLCR
                                    370 	.globl _I2CMSST
                                    371 	.globl _I2CMSCR
                                    372 	.globl _I2CCFG
                                    373 	.globl _PINIPH
                                    374 	.globl _PINIPL
                                    375 	.globl _P5IE
                                    376 	.globl _P5DR
                                    377 	.globl _P5SR
                                    378 	.globl _P5NCS
                                    379 	.globl _P5PU
                                    380 	.globl _P5WKUE
                                    381 	.globl _P5IM1
                                    382 	.globl _P5IM0
                                    383 	.globl _P5INTF
                                    384 	.globl _P5INTE
                                    385 	.globl _P3IE
                                    386 	.globl _P3DR
                                    387 	.globl _P3SR
                                    388 	.globl _P3NCS
                                    389 	.globl _P3PU
                                    390 	.globl _P3WKUE
                                    391 	.globl _P3IM1
                                    392 	.globl _P3IM0
                                    393 	.globl _P3INTF
                                    394 	.globl _P3INTE
                                    395 	.globl _P2IE
                                    396 	.globl _P2DR
                                    397 	.globl _P2SR
                                    398 	.globl _P2NCS
                                    399 	.globl _P2PU
                                    400 	.globl _P2WKUE
                                    401 	.globl _P2IM1
                                    402 	.globl _P2IM0
                                    403 	.globl _P2INTF
                                    404 	.globl _P2INTE
                                    405 	.globl _P1IE
                                    406 	.globl _P1DR
                                    407 	.globl _P1SR
                                    408 	.globl _P1NCS
                                    409 	.globl _P1PU
                                    410 	.globl _P1WKUE
                                    411 	.globl _P1IM1
                                    412 	.globl _P1IM0
                                    413 	.globl _P1INTF
                                    414 	.globl _P1INTE
                                    415 	.globl _DMA_M2M_RXAL
                                    416 	.globl _DMA_M2M_RXAH
                                    417 	.globl _DMA_M2M_TXAL
                                    418 	.globl _DMA_M2M_TXAH
                                    419 	.globl _DMA_M2M_DONE
                                    420 	.globl _DMA_M2M_AMT
                                    421 	.globl _DMA_M2M_STA
                                    422 	.globl _DMA_M2M_CR
                                    423 	.globl _DMA_M2M_CFG
                                    424 	.globl _CMPEXCFG
                                    425 	.globl _CHIP_PACKAGE_TYPE
                                    426 	.globl _CHIP_TEST_DAY_BCD
                                    427 	.globl _CHIP_TEST_MONTH_BCD
                                    428 	.globl _CHIP_TEST_YEAR_BCD
                                    429 	.globl _PROGRAM_AREA_SIZE
                                    430 	.globl _VRTRIM_44MHz
                                    431 	.globl _VRTRIM_27MHz
                                    432 	.globl _VRTRIM_10MHz
                                    433 	.globl _VRTRIM_6MHz
                                    434 	.globl _IRTRIM_48MHz
                                    435 	.globl _IRTRIM_44_2368MHz
                                    436 	.globl _IRTRIM_40MHz
                                    437 	.globl _IRTRIM_36_864MHz
                                    438 	.globl _IRTRIM_35MHz
                                    439 	.globl _IRTRIM_33_1776MHz
                                    440 	.globl _IRTRIM_30MHz
                                    441 	.globl _IRTRIM_27MHz
                                    442 	.globl _IRTRIM_24MHz
                                    443 	.globl _IRTRIM_22_1184MHz
                                    444 	.globl ___OTHER_INFO
                                    445 	.globl _CHIP_GUID
                                    446 	.globl _DMA_ADC_CHSW1
                                    447 	.globl _DMA_ADC_CHSW0
                                    448 	.globl _DMA_ADC_CFG2
                                    449 	.globl _DMA_ADC_RXAL
                                    450 	.globl _DMA_ADC_RXAH
                                    451 	.globl _DMA_ADC_STA
                                    452 	.globl _DMA_ADC_CR
                                    453 	.globl _DMA_ADC_CFG
                                    454 	.globl _ADCEXCFG
                                    455 	.globl _ADCTIM
                                    456 	.globl _spiSelectSpeed
                                    457 	.globl _spiConfigure
                                    458 	.globl _spiSend
                                    459 	.globl _spiReceive
                                    460 	.globl _spi_isr
                                    461 ;--------------------------------------------------------
                                    462 ; special function registers
                                    463 ;--------------------------------------------------------
                                    464 	.area RSEG    (ABS,DATA)
      000000                        465 	.org 0x0000
                           0000BC   466 _ADC_CONTR	=	0x00bc
                           0000BD   467 _ADC_RESH	=	0x00bd
                           0000BE   468 _ADC_RESL	=	0x00be
                           00BDBE   469 _ADC_RES	=	0xbdbe
                           0000DE   470 _ADCCFG	=	0x00de
                           0000FA   471 _DMA_ADC_AMT	=	0x00fa
                           0000E6   472 _CMPCR1	=	0x00e6
                           0000E7   473 _CMPCR2	=	0x00e7
                           000082   474 _DPL	=	0x0082
                           000083   475 _DPH	=	0x0083
                           008382   476 _DP	=	0x8382
                           0000E3   477 _DPS	=	0x00e3
                           0000E4   478 _DPL1	=	0x00e4
                           0000E5   479 _DPH1	=	0x00e5
                           0000AE   480 _TA	=	0x00ae
                           000090   481 _P1	=	0x0090
                           000091   482 _P1M1	=	0x0091
                           000092   483 _P1M0	=	0x0092
                           0000A0   484 _P2	=	0x00a0
                           000095   485 _P2M1	=	0x0095
                           000096   486 _P2M0	=	0x0096
                           0000B0   487 _P3	=	0x00b0
                           0000B1   488 _P3M1	=	0x00b1
                           0000B2   489 _P3M0	=	0x00b2
                           0000C8   490 _P5	=	0x00c8
                           0000C9   491 _P5M1	=	0x00c9
                           0000CA   492 _P5M0	=	0x00ca
                           0000C2   493 _IAP_DATA	=	0x00c2
                           0000C3   494 _IAP_ADDRH	=	0x00c3
                           0000C4   495 _IAP_ADDRL	=	0x00c4
                           00C3C4   496 _IAP_ADDR	=	0xc3c4
                           0000C5   497 _IAP_CMD	=	0x00c5
                           0000C6   498 _IAP_TRIG	=	0x00c6
                           0000C7   499 _IAP_CONTR	=	0x00c7
                           0000F5   500 _IAP_TPS	=	0x00f5
                           00008F   501 _INT_CLKO	=	0x008f
                           0000A8   502 _IE1	=	0x00a8
                           0000B8   503 _IP1L	=	0x00b8
                           0000B7   504 _IP1H	=	0x00b7
                           0000AF   505 _IE2	=	0x00af
                           0000B5   506 _IP2L	=	0x00b5
                           0000B6   507 _IP2H	=	0x00b6
                           0000DF   508 _IP3L	=	0x00df
                           0000EE   509 _IP3H	=	0x00ee
                           000081   510 _SP	=	0x0081
                           0000D0   511 _PSW	=	0x00d0
                           0000E0   512 _ACC	=	0x00e0
                           0000F0   513 _B	=	0x00f0
                           000087   514 _PCON	=	0x0087
                           0000FF   515 _RSTCFG	=	0x00ff
                           0000A2   516 _P_SW1	=	0x00a2
                           0000BA   517 _P_SW2	=	0x00ba
                           0000A1   518 _BUS_SPEED	=	0x00a1
                           0000AA   519 _WKTCL	=	0x00aa
                           0000AB   520 _WKTCH	=	0x00ab
                           00ABAA   521 _WKTC	=	0xabaa
                           0000CD   522 _SPSTAT	=	0x00cd
                           0000CE   523 _SPCTL	=	0x00ce
                           0000CF   524 _SPDAT	=	0x00cf
                           00009D   525 _IRCBAND	=	0x009d
                           00009E   526 _LIRTRIM	=	0x009e
                           00009F   527 _IRTRIM	=	0x009f
                           000088   528 _TCON	=	0x0088
                           000089   529 _TMOD	=	0x0089
                           00008A   530 _T0L	=	0x008a
                           00008C   531 _T0H	=	0x008c
                           008C8A   532 _T0	=	0x8c8a
                           00008B   533 _T1L	=	0x008b
                           00008D   534 _T1H	=	0x008d
                           008D8B   535 _T1	=	0x8d8b
                           0000D7   536 _T2L	=	0x00d7
                           0000D6   537 _T2H	=	0x00d6
                           00D6D7   538 _T2	=	0xd6d7
                           00008E   539 _AUXR	=	0x008e
                           0000C1   540 _WDT_CONTR	=	0x00c1
                           0000D1   541 _T4T3M	=	0x00d1
                           0000D2   542 _T4H	=	0x00d2
                           0000D3   543 _T4L	=	0x00d3
                           00D2D3   544 _T4	=	0xd2d3
                           0000D4   545 _T3H	=	0x00d4
                           0000D5   546 _T3L	=	0x00d5
                           00D4D5   547 _T3	=	0xd4d5
                           0000EF   548 _AUXINTIF	=	0x00ef
                           0000A9   549 _SADDR	=	0x00a9
                           0000B9   550 _SADEN	=	0x00b9
                           000098   551 _S1CON	=	0x0098
                           000099   552 _S1BUF	=	0x0099
                           00009A   553 _S2CON	=	0x009a
                           00009B   554 _S2BUF	=	0x009b
                           0000AC   555 _S3CON	=	0x00ac
                           0000AD   556 _S3BUF	=	0x00ad
                           000084   557 _S4CON	=	0x0084
                           000085   558 _S4BUF	=	0x0085
                           0000DC   559 _USBCLK	=	0x00dc
                           0000EC   560 _USBDAT	=	0x00ec
                           0000F4   561 _USBCON	=	0x00f4
                           0000FC   562 _USBADR	=	0x00fc
                                    563 ;--------------------------------------------------------
                                    564 ; special function bits
                                    565 ;--------------------------------------------------------
                                    566 	.area RSEG    (ABS,DATA)
      000000                        567 	.org 0x0000
                           000090   568 _P1_0	=	0x0090
                           000091   569 _P1_1	=	0x0091
                           000092   570 _P1_2	=	0x0092
                           000093   571 _P1_3	=	0x0093
                           000094   572 _P1_4	=	0x0094
                           000095   573 _P1_5	=	0x0095
                           000096   574 _P1_6	=	0x0096
                           000097   575 _P1_7	=	0x0097
                           0000A0   576 _P2_0	=	0x00a0
                           0000A1   577 _P2_1	=	0x00a1
                           0000A2   578 _P2_2	=	0x00a2
                           0000A3   579 _P2_3	=	0x00a3
                           0000A4   580 _P2_4	=	0x00a4
                           0000A5   581 _P2_5	=	0x00a5
                           0000A6   582 _P2_6	=	0x00a6
                           0000A7   583 _P2_7	=	0x00a7
                           0000B0   584 _P3_0	=	0x00b0
                           0000B1   585 _P3_1	=	0x00b1
                           0000B2   586 _P3_2	=	0x00b2
                           0000B3   587 _P3_3	=	0x00b3
                           0000B4   588 _P3_4	=	0x00b4
                           0000B5   589 _P3_5	=	0x00b5
                           0000B6   590 _P3_6	=	0x00b6
                           0000B7   591 _P3_7	=	0x00b7
                           0000C8   592 _P5_0	=	0x00c8
                           0000C9   593 _P5_1	=	0x00c9
                           0000CA   594 _P5_2	=	0x00ca
                           0000CB   595 _P5_3	=	0x00cb
                           0000CC   596 _P5_4	=	0x00cc
                           0000CD   597 _P5_5	=	0x00cd
                           000088   598 _INT0TR	=	0x0088
                           00008A   599 _INT1TR	=	0x008a
                           0000A8   600 _INT0IE	=	0x00a8
                           0000AA   601 _INT1IE	=	0x00aa
                           0000AF   602 _EA	=	0x00af
                           0000D0   603 _P	=	0x00d0
                           0000D1   604 _F1	=	0x00d1
                           0000D2   605 _OV	=	0x00d2
                           0000D3   606 _RS0	=	0x00d3
                           0000D4   607 _RS1	=	0x00d4
                           0000D5   608 _F0	=	0x00d5
                           0000D6   609 _AC	=	0x00d6
                           0000D7   610 _CY	=	0x00d7
                           00008C   611 _T0RUN	=	0x008c
                           00008E   612 _T1RUN	=	0x008e
                           0000A9   613 _T0IE	=	0x00a9
                           0000AB   614 _T1IE	=	0x00ab
                           00009F   615 _S1SM0_FE	=	0x009f
                                    616 ;--------------------------------------------------------
                                    617 ; overlayable register banks
                                    618 ;--------------------------------------------------------
                                    619 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        620 	.ds 8
                                    621 ;--------------------------------------------------------
                                    622 ; internal ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area DSEG    (DATA)
                                    625 ;--------------------------------------------------------
                                    626 ; overlayable items in internal ram 
                                    627 ;--------------------------------------------------------
                                    628 ;--------------------------------------------------------
                                    629 ; indirectly addressable internal ram data
                                    630 ;--------------------------------------------------------
                                    631 	.area ISEG    (DATA)
      000033                        632 __spiState:
      000033                        633 	.ds 10
                                    634 ;--------------------------------------------------------
                                    635 ; absolute internal ram data
                                    636 ;--------------------------------------------------------
                                    637 	.area IABS    (ABS,DATA)
                                    638 	.area IABS    (ABS,DATA)
                                    639 ;--------------------------------------------------------
                                    640 ; bit data
                                    641 ;--------------------------------------------------------
                                    642 	.area BSEG    (BIT)
                                    643 ;--------------------------------------------------------
                                    644 ; paged external ram data
                                    645 ;--------------------------------------------------------
                                    646 	.area PSEG    (PAG,XDATA)
                                    647 ;--------------------------------------------------------
                                    648 ; external ram data
                                    649 ;--------------------------------------------------------
                                    650 	.area XSEG    (XDATA)
                           00FEA8   651 _ADCTIM	=	0xfea8
                           00FEAD   652 _ADCEXCFG	=	0xfead
                           00FA10   653 _DMA_ADC_CFG	=	0xfa10
                           00FA11   654 _DMA_ADC_CR	=	0xfa11
                           00FA12   655 _DMA_ADC_STA	=	0xfa12
                           00FA17   656 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   657 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   658 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   659 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   660 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   661 _CHIP_GUID	=	0xfde0
                           00FDE7   662 ___OTHER_INFO	=	0xfde7
                           00FDEB   663 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   664 _IRTRIM_24MHz	=	0xfdec
                           00FDED   665 _IRTRIM_27MHz	=	0xfded
                           00FDEE   666 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   667 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   668 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   669 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   670 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   671 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   672 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   673 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   674 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   675 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   676 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   677 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   678 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   679 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   680 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   681 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   682 _CMPEXCFG	=	0xfeae
                           00FA00   683 _DMA_M2M_CFG	=	0xfa00
                           00FA01   684 _DMA_M2M_CR	=	0xfa01
                           00FA02   685 _DMA_M2M_STA	=	0xfa02
                           00FA03   686 _DMA_M2M_AMT	=	0xfa03
                           00FA04   687 _DMA_M2M_DONE	=	0xfa04
                           00FA05   688 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   689 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   690 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   691 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   692 _P1INTE	=	0xfd01
                           00FD11   693 _P1INTF	=	0xfd11
                           00FD21   694 _P1IM0	=	0xfd21
                           00FD31   695 _P1IM1	=	0xfd31
                           00FD41   696 _P1WKUE	=	0xfd41
                           00FE11   697 _P1PU	=	0xfe11
                           00FE19   698 _P1NCS	=	0xfe19
                           00FE21   699 _P1SR	=	0xfe21
                           00FE29   700 _P1DR	=	0xfe29
                           00FE31   701 _P1IE	=	0xfe31
                           00FD02   702 _P2INTE	=	0xfd02
                           00FD12   703 _P2INTF	=	0xfd12
                           00FD22   704 _P2IM0	=	0xfd22
                           00FD32   705 _P2IM1	=	0xfd32
                           00FD42   706 _P2WKUE	=	0xfd42
                           00FE12   707 _P2PU	=	0xfe12
                           00FE1A   708 _P2NCS	=	0xfe1a
                           00FE22   709 _P2SR	=	0xfe22
                           00FE2A   710 _P2DR	=	0xfe2a
                           00FE32   711 _P2IE	=	0xfe32
                           00FD03   712 _P3INTE	=	0xfd03
                           00FD13   713 _P3INTF	=	0xfd13
                           00FD23   714 _P3IM0	=	0xfd23
                           00FD33   715 _P3IM1	=	0xfd33
                           00FD43   716 _P3WKUE	=	0xfd43
                           00FE13   717 _P3PU	=	0xfe13
                           00FE1B   718 _P3NCS	=	0xfe1b
                           00FE23   719 _P3SR	=	0xfe23
                           00FE2B   720 _P3DR	=	0xfe2b
                           00FE33   721 _P3IE	=	0xfe33
                           00FD05   722 _P5INTE	=	0xfd05
                           00FD15   723 _P5INTF	=	0xfd15
                           00FD25   724 _P5IM0	=	0xfd25
                           00FD35   725 _P5IM1	=	0xfd35
                           00FD45   726 _P5WKUE	=	0xfd45
                           00FE15   727 _P5PU	=	0xfe15
                           00FE1D   728 _P5NCS	=	0xfe1d
                           00FE25   729 _P5SR	=	0xfe25
                           00FE2D   730 _P5DR	=	0xfe2d
                           00FE35   731 _P5IE	=	0xfe35
                           00FD60   732 _PINIPL	=	0xfd60
                           00FD61   733 _PINIPH	=	0xfd61
                           00FE80   734 _I2CCFG	=	0xfe80
                           00FE81   735 _I2CMSCR	=	0xfe81
                           00FE82   736 _I2CMSST	=	0xfe82
                           00FE83   737 _I2CSLCR	=	0xfe83
                           00FE84   738 _I2CSLST	=	0xfe84
                           00FE85   739 _I2CSLADR	=	0xfe85
                           00FE86   740 _I2CTXD	=	0xfe86
                           00FE87   741 _I2CRXD	=	0xfe87
                           00FE88   742 _I2CMSAUX	=	0xfe88
                           00FE50   743 _LCMCFG	=	0xfe50
                           00FE51   744 _LCMCFG2	=	0xfe51
                           00FE52   745 _LCMCR	=	0xfe52
                           00FE53   746 _LCMSTA	=	0xfe53
                           00FE54   747 _LCMIDDATL	=	0xfe54
                           00FE55   748 _LCMIDDATH	=	0xfe55
                           00FE54   749 _LCMIDDAT	=	0xfe54
                           00FA70   750 _DMA_LCM_CFG	=	0xfa70
                           00FA71   751 _DMA_LCM_CR	=	0xfa71
                           00FA72   752 _DMA_LCM_STA	=	0xfa72
                           00FA73   753 _DMA_LCM_AMT	=	0xfa73
                           00FA74   754 _DMA_LCM_DONE	=	0xfa74
                           00FA75   755 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   756 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   757 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   758 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   759 _MD3	=	0xfcf0
                           00FCF1   760 _MD2	=	0xfcf1
                           00FCF2   761 _MD1	=	0xfcf2
                           00FCF3   762 _MD0	=	0xfcf3
                           00FCF4   763 _MD5	=	0xfcf4
                           00FCF5   764 _MD4	=	0xfcf5
                           00FCF6   765 _ARCON	=	0xfcf6
                           00FCF7   766 _OPCON	=	0xfcf7
                           00FE08   767 _SPFUNC	=	0xfe08
                           00FE09   768 _RSTFLAG	=	0xfe09
                           00FEB0   769 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   770 _PWMA_ENO	=	0xfeb1
                           00FEB2   771 _PWMA_PS	=	0xfeb2
                           00FEB3   772 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   773 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   774 _PWMB_ENO	=	0xfeb5
                           00FEB6   775 _PWMB_PS	=	0xfeb6
                           00FEB7   776 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   777 _PWMA_CR1	=	0xfec0
                           00FEC1   778 _PWMA_CR2	=	0xfec1
                           00FEC2   779 _PWMA_SMCR	=	0xfec2
                           00FEC3   780 _PWMA_ETR	=	0xfec3
                           00FEC4   781 _PWMA_IER	=	0xfec4
                           00FEC5   782 _PWMA_SR1	=	0xfec5
                           00FEC6   783 _PWMA_SR2	=	0xfec6
                           00FEC7   784 _PWMA_EGR	=	0xfec7
                           00FEC8   785 _PWMA_CCMR1	=	0xfec8
                           00FEC9   786 _PWMA_CCMR2	=	0xfec9
                           00FECA   787 _PWMA_CCMR3	=	0xfeca
                           00FECB   788 _PWMA_CCMR4	=	0xfecb
                           00FECC   789 _PWMA_CCER1	=	0xfecc
                           00FECD   790 _PWMA_CCER2	=	0xfecd
                           00FECE   791 _PWMA_CNTRH	=	0xfece
                           00FECF   792 _PWMA_CNTRL	=	0xfecf
                           00FED0   793 _PWMA_PSCRH	=	0xfed0
                           00FED1   794 _PWMA_PSCRL	=	0xfed1
                           00FED2   795 _PWMA_ARRH	=	0xfed2
                           00FED3   796 _PWMA_ARRL	=	0xfed3
                           00FED4   797 _PWMA_RCR	=	0xfed4
                           00FED5   798 _PWMA_CCR1H	=	0xfed5
                           00FED6   799 _PWMA_CCR1L	=	0xfed6
                           00FED7   800 _PWMA_CCR2H	=	0xfed7
                           00FED8   801 _PWMA_CCR2L	=	0xfed8
                           00FED9   802 _PWMA_CCR3H	=	0xfed9
                           00FEDA   803 _PWMA_CCR3L	=	0xfeda
                           00FEDB   804 _PWMA_CCR4H	=	0xfedb
                           00FEDC   805 _PWMA_CCR4L	=	0xfedc
                           00FEDD   806 _PWMA_BKR	=	0xfedd
                           00FEDE   807 _PWMA_DTR	=	0xfede
                           00FEDF   808 _PWMA_OISR	=	0xfedf
                           00FEE0   809 _PWMB_CR1	=	0xfee0
                           00FEE1   810 _PWMB_CR2	=	0xfee1
                           00FEE2   811 _PWMB_SMCR	=	0xfee2
                           00FEE3   812 _PWMB_ETR	=	0xfee3
                           00FEE4   813 _PWMB_IER	=	0xfee4
                           00FEE5   814 _PWMB_SR1	=	0xfee5
                           00FEE6   815 _PWMB_SR2	=	0xfee6
                           00FEE7   816 _PWMB_EGR	=	0xfee7
                           00FEE8   817 _PWMB_CCMR1	=	0xfee8
                           00FEE9   818 _PWMB_CCMR2	=	0xfee9
                           00FEEA   819 _PWMB_CCMR3	=	0xfeea
                           00FEEB   820 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   821 _PWMB_CCER1	=	0xfeec
                           00FEED   822 _PWMB_CCER2	=	0xfeed
                           00FEEE   823 _PWMB_CNTRH	=	0xfeee
                           00FEEF   824 _PWMB_CNTRL	=	0xfeef
                           00FEF0   825 _PWMB_PSCRH	=	0xfef0
                           00FEF1   826 _PWMB_PSCRL	=	0xfef1
                           00FEF2   827 _PWMB_ARRH	=	0xfef2
                           00FEF3   828 _PWMB_ARRL	=	0xfef3
                           00FEF4   829 _PWMB_RCR	=	0xfef4
                           00FEF5   830 _PWMB_CCR1H	=	0xfef5
                           00FEF6   831 _PWMB_CCR1L	=	0xfef6
                           00FEF7   832 _PWMB_CCR2H	=	0xfef7
                           00FEF8   833 _PWMB_CCR2L	=	0xfef8
                           00FEF9   834 _PWMB_CCR3H	=	0xfef9
                           00FEFA   835 _PWMB_CCR3L	=	0xfefa
                           00FEFB   836 _PWMB_CCR4H	=	0xfefb
                           00FEFC   837 _PWMB_CCR4L	=	0xfefc
                           00FEFD   838 _PWMB_BKR	=	0xfefd
                           00FEFE   839 _PWMB_DTR	=	0xfefe
                           00FEFF   840 _PWMB_OISR	=	0xfeff
                           00FE60   841 _RTCCR	=	0xfe60
                           00FE61   842 _RTCCFG	=	0xfe61
                           00FE62   843 _RTCIEN	=	0xfe62
                           00FE63   844 _RTCIF	=	0xfe63
                           00FE64   845 _ALAHOUR	=	0xfe64
                           00FE65   846 _ALAMIN	=	0xfe65
                           00FE66   847 _ALASEC	=	0xfe66
                           00FE67   848 _ALASSEC	=	0xfe67
                           00FE68   849 _INIYEAR	=	0xfe68
                           00FE69   850 _INIMONTH	=	0xfe69
                           00FE6A   851 _INIDAY	=	0xfe6a
                           00FE6B   852 _INIHOUR	=	0xfe6b
                           00FE6C   853 _INIMIN	=	0xfe6c
                           00FE6D   854 _INISEC	=	0xfe6d
                           00FE6E   855 _INISSEC	=	0xfe6e
                           00FE70   856 _YEAR	=	0xfe70
                           00FE71   857 _MONTH	=	0xfe71
                           00FE72   858 _DAY	=	0xfe72
                           00FE73   859 _HOUR	=	0xfe73
                           00FE74   860 _MIN	=	0xfe74
                           00FE75   861 _SEC	=	0xfe75
                           00FE76   862 _SSEC	=	0xfe76
                           00FA20   863 _DMA_SPI_CFG	=	0xfa20
                           00FA21   864 _DMA_SPI_CR	=	0xfa21
                           00FA22   865 _DMA_SPI_STA	=	0xfa22
                           00FA23   866 _DMA_SPI_AMT	=	0xfa23
                           00FA24   867 _DMA_SPI_DONE	=	0xfa24
                           00FA25   868 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   869 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   870 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   871 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   872 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   873 _CLKDIV	=	0xfe01
                           00FE02   874 _HIRCCR	=	0xfe02
                           00FE03   875 _XOSCCR	=	0xfe03
                           00FE08   876 _X32KCR	=	0xfe08
                           00FE04   877 _IRC32KCR	=	0xfe04
                           00FE00   878 _CKSEL	=	0xfe00
                           00FE05   879 _MCLKOCR	=	0xfe05
                           00FE06   880 _IRCDB	=	0xfe06
                           00FE07   881 _IRC48MCR	=	0xfe07
                           00FEA2   882 _TM2PS	=	0xfea2
                           00FEA3   883 _TM3PS	=	0xfea3
                           00FEA4   884 _TM4PS	=	0xfea4
                           00FA30   885 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   886 _DMA_UR1T_CR	=	0xfa31
                           00FA32   887 _DMA_UR1T_STA	=	0xfa32
                           00FA33   888 _DMA_URTX_AMT	=	0xfa33
                           00FA34   889 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   890 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   891 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   892 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   893 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   894 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   895 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   896 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   897 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   898 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   899 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   900 _DMA_UR2T_CR	=	0xfa31
                           00FA32   901 _DMA_UR2T_STA	=	0xfa32
                           00FA33   902 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   903 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   904 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   905 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   906 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   907 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   908 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   909 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   910 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   911 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   912 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   913 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   914 _DMA_UR3T_CR	=	0xfa31
                           00FA32   915 _DMA_UR3T_STA	=	0xfa32
                           00FA33   916 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   917 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   918 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   919 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   920 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   921 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   922 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   923 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   924 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   925 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   926 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   927 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   928 _DMA_UR4T_CR	=	0xfa31
                           00FA32   929 _DMA_UR4T_STA	=	0xfa32
                           00FA33   930 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   931 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   932 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   933 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   934 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   935 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   936 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   937 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   938 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   939 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   940 _DMA_UR4R_TXAL	=	0xfa3e
      000057                        941 _uartGetCharacter_result_65536_69:
      000057                        942 	.ds 1
      000058                        943 __configurePins_PARM_2:
      000058                        944 	.ds 1
      000059                        945 __configurePins_pinSwitch_65536_131:
      000059                        946 	.ds 1
      00005A                        947 __configurePins_pinConfig_262145_136:
      00005A                        948 	.ds 13
      000067                        949 _spiSelectSpeed_maxDeviceRate_65536_137:
      000067                        950 	.ds 4
      00006B                        951 _spiSelectSpeed_divisor_65536_138:
      00006B                        952 	.ds 2
      00006D                        953 _spiSelectSpeed_pot_65537_140:
      00006D                        954 	.ds 1
      00006E                        955 _spiSelectSpeed_n_131073_141:
      00006E                        956 	.ds 2
      000070                        957 _spiSelectSpeed_result_65538_143:
      000070                        958 	.ds 1
      000071                        959 _spiConfigure_PARM_2:
      000071                        960 	.ds 1
      000072                        961 _spiConfigure_PARM_3:
      000072                        962 	.ds 1
      000073                        963 _spiConfigure_PARM_4:
      000073                        964 	.ds 1
      000074                        965 _spiConfigure_PARM_5:
      000074                        966 	.ds 1
      000075                        967 _spiConfigure_bitOrder_65536_147:
      000075                        968 	.ds 1
      000076                        969 _spiSend_PARM_2:
      000076                        970 	.ds 2
      000078                        971 _spiSend_PARM_3:
      000078                        972 	.ds 3
      00007B                        973 _spiSend_buffer_65536_149:
      00007B                        974 	.ds 3
      00007E                        975 _spiReceive_PARM_2:
      00007E                        976 	.ds 2
      000080                        977 _spiReceive_PARM_3:
      000080                        978 	.ds 3
      000083                        979 _spiReceive_buffer_65536_151:
      000083                        980 	.ds 3
                                    981 ;--------------------------------------------------------
                                    982 ; absolute external ram data
                                    983 ;--------------------------------------------------------
                                    984 	.area XABS    (ABS,XDATA)
                                    985 ;--------------------------------------------------------
                                    986 ; external initialized ram data
                                    987 ;--------------------------------------------------------
                                    988 	.area XISEG   (XDATA)
                                    989 	.area HOME    (CODE)
                                    990 	.area GSINIT0 (CODE)
                                    991 	.area GSINIT1 (CODE)
                                    992 	.area GSINIT2 (CODE)
                                    993 	.area GSINIT3 (CODE)
                                    994 	.area GSINIT4 (CODE)
                                    995 	.area GSINIT5 (CODE)
                                    996 	.area GSINIT  (CODE)
                                    997 	.area GSFINAL (CODE)
                                    998 	.area CSEG    (CODE)
                                    999 ;--------------------------------------------------------
                                   1000 ; global & static initialisations
                                   1001 ;--------------------------------------------------------
                                   1002 	.area HOME    (CODE)
                                   1003 	.area GSINIT  (CODE)
                                   1004 	.area GSFINAL (CODE)
                                   1005 	.area GSINIT  (CODE)
                                   1006 ;--------------------------------------------------------
                                   1007 ; Home
                                   1008 ;--------------------------------------------------------
                                   1009 	.area HOME    (CODE)
                                   1010 	.area HOME    (CODE)
                                   1011 ;--------------------------------------------------------
                                   1012 ; code
                                   1013 ;--------------------------------------------------------
                                   1014 	.area CSEG    (CODE)
                                   1015 ;------------------------------------------------------------
                                   1016 ;Allocation info for local variables in function '_configurePins'
                                   1017 ;------------------------------------------------------------
                                   1018 ;outputPinMode             Allocated with name '__configurePins_PARM_2'
                                   1019 ;pinSwitch                 Allocated with name '__configurePins_pinSwitch_65536_131'
                                   1020 ;i                         Allocated with name '__configurePins_i_131072_133'
                                   1021 ;pinConfig                 Allocated with name '__configurePins_pinConfig_262145_136'
                                   1022 ;pinDefinition             Allocated with name '__configurePins_pinDefinition_262145_136'
                                   1023 ;------------------------------------------------------------
                                   1024 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:101: static void _configurePins(uint8_t pinSwitch, GpioPinMode outputPinMode) {
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function _configurePins
                                   1027 ;	-----------------------------------------
      00110C                       1028 __configurePins:
                           000007  1029 	ar7 = 0x07
                           000006  1030 	ar6 = 0x06
                           000005  1031 	ar5 = 0x05
                           000004  1032 	ar4 = 0x04
                           000003  1033 	ar3 = 0x03
                           000002  1034 	ar2 = 0x02
                           000001  1035 	ar1 = 0x01
                           000000  1036 	ar0 = 0x00
      00110C E5 82            [12] 1037 	mov	a,dpl
      00110E 90 00 59         [24] 1038 	mov	dptr,#__configurePins_pinSwitch_65536_131
      001111 F0               [24] 1039 	movx	@dptr,a
                                   1040 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(_pinConfigurations) / SPI_ROW_SIZE); i++) {
      001112 7F 00            [12] 1041 	mov	r7,#0x00
      001114                       1042 00105$:
      001114 BF 03 00         [24] 1043 	cjne	r7,#0x03,00121$
      001117                       1044 00121$:
      001117 40 01            [24] 1045 	jc	00122$
      001119 22               [24] 1046 	ret
      00111A                       1047 00122$:
                                   1048 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:103: if (_pinConfigurations[i][SPI_PIN_SWITCH] == pinSwitch) {
      00111A EF               [12] 1049 	mov	a,r7
      00111B 75 F0 05         [24] 1050 	mov	b,#0x05
      00111E A4               [48] 1051 	mul	ab
      00111F FD               [12] 1052 	mov	r5,a
      001120 AE F0            [24] 1053 	mov	r6,b
      001122 24 72            [12] 1054 	add	a,#__pinConfigurations
      001124 F5 82            [12] 1055 	mov	dpl,a
      001126 EE               [12] 1056 	mov	a,r6
      001127 34 4A            [12] 1057 	addc	a,#(__pinConfigurations >> 8)
      001129 F5 83            [12] 1058 	mov	dph,a
      00112B E4               [12] 1059 	clr	a
      00112C 93               [24] 1060 	movc	a,@a+dptr
      00112D FC               [12] 1061 	mov	r4,a
      00112E 90 00 59         [24] 1062 	mov	dptr,#__configurePins_pinSwitch_65536_131
      001131 E0               [24] 1063 	movx	a,@dptr
      001132 FB               [12] 1064 	mov	r3,a
      001133 EC               [12] 1065 	mov	a,r4
      001134 B5 03 02         [24] 1066 	cjne	a,ar3,00123$
      001137 80 03            [24] 1067 	sjmp	00124$
      001139                       1068 00123$:
      001139 02 12 16         [24] 1069 	ljmp	00106$
      00113C                       1070 00124$:
                                   1071 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:104: P_SW1 = (P_SW1 & ~M_SPI_S) | ((pinSwitch << P_SPI_S) & M_SPI_S);
      00113C 74 F3            [12] 1072 	mov	a,#0xf3
      00113E 55 A2            [12] 1073 	anl	a,_P_SW1
      001140 FC               [12] 1074 	mov	r4,a
      001141 EB               [12] 1075 	mov	a,r3
      001142 2B               [12] 1076 	add	a,r3
      001143 25 E0            [12] 1077 	add	a,acc
      001145 FB               [12] 1078 	mov	r3,a
      001146 74 0C            [12] 1079 	mov	a,#0x0c
      001148 5B               [12] 1080 	anl	a,r3
      001149 4C               [12] 1081 	orl	a,r4
      00114A F5 A2            [12] 1082 	mov	_P_SW1,a
                                   1083 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:106: GpioConfig pinConfig = GPIO_PIN_CONFIG(GPIO_PORT3, GPIO_PIN0, GPIO_HIGH_IMPEDANCE_MODE);
      00114C 90 00 5A         [24] 1084 	mov	dptr,#__configurePins_pinConfig_262145_136
      00114F 74 03            [12] 1085 	mov	a,#0x03
      001151 F0               [24] 1086 	movx	@dptr,a
      001152 90 00 5B         [24] 1087 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0001)
      001155 E4               [12] 1088 	clr	a
      001156 F0               [24] 1089 	movx	@dptr,a
      001157 90 00 5C         [24] 1090 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0002)
      00115A 04               [12] 1091 	inc	a
      00115B F0               [24] 1092 	movx	@dptr,a
      00115C 90 00 5D         [24] 1093 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0003)
      00115F 04               [12] 1094 	inc	a
      001160 F0               [24] 1095 	movx	@dptr,a
      001161 90 00 5E         [24] 1096 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0004)
      001164 14               [12] 1097 	dec	a
      001165 F0               [24] 1098 	movx	@dptr,a
      001166 90 00 5F         [24] 1099 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0005)
      001169 E4               [12] 1100 	clr	a
      00116A F0               [24] 1101 	movx	@dptr,a
      00116B 90 00 60         [24] 1102 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0006)
      00116E 74 03            [12] 1103 	mov	a,#0x03
      001170 F0               [24] 1104 	movx	@dptr,a
      001171 90 00 61         [24] 1105 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0007)
      001174 74 01            [12] 1106 	mov	a,#0x01
      001176 F0               [24] 1107 	movx	@dptr,a
      001177 90 00 62         [24] 1108 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0008)
      00117A E4               [12] 1109 	clr	a
      00117B F0               [24] 1110 	movx	@dptr,a
      00117C 90 00 63         [24] 1111 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0009)
      00117F F0               [24] 1112 	movx	@dptr,a
      001180 90 00 64         [24] 1113 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x000a)
      001183 F0               [24] 1114 	movx	@dptr,a
      001184 90 00 65         [24] 1115 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x000b)
      001187 F0               [24] 1116 	movx	@dptr,a
      001188 90 00 66         [24] 1117 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x000c)
      00118B F0               [24] 1118 	movx	@dptr,a
                                   1119 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:111: pinDefinition = _pinConfigurations[i][SPI_MISO_PIN];
      00118C ED               [12] 1120 	mov	a,r5
      00118D 24 72            [12] 1121 	add	a,#__pinConfigurations
      00118F FD               [12] 1122 	mov	r5,a
      001190 EE               [12] 1123 	mov	a,r6
      001191 34 4A            [12] 1124 	addc	a,#(__pinConfigurations >> 8)
      001193 FE               [12] 1125 	mov	r6,a
      001194 8D 82            [24] 1126 	mov	dpl,r5
      001196 8E 83            [24] 1127 	mov	dph,r6
      001198 A3               [24] 1128 	inc	dptr
      001199 A3               [24] 1129 	inc	dptr
      00119A A3               [24] 1130 	inc	dptr
      00119B E4               [12] 1131 	clr	a
      00119C 93               [24] 1132 	movc	a,@a+dptr
                                   1133 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:112: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      00119D FC               [12] 1134 	mov	r4,a
      00119E C4               [12] 1135 	swap	a
      00119F 54 0F            [12] 1136 	anl	a,#0x0f
      0011A1 90 00 5A         [24] 1137 	mov	dptr,#__configurePins_pinConfig_262145_136
      0011A4 F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:113: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      0011A5 53 04 0F         [24] 1140 	anl	ar4,#0x0f
      0011A8 90 00 5B         [24] 1141 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0001)
      0011AB EC               [12] 1142 	mov	a,r4
      0011AC F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:114: gpioConfigure(&pinConfig);
      0011AD 90 00 5A         [24] 1145 	mov	dptr,#__configurePins_pinConfig_262145_136
      0011B0 75 F0 00         [24] 1146 	mov	b,#0x00
      0011B3 C0 06            [24] 1147 	push	ar6
      0011B5 C0 05            [24] 1148 	push	ar5
      0011B7 12 01 7E         [24] 1149 	lcall	_gpioConfigure
      0011BA D0 05            [24] 1150 	pop	ar5
      0011BC D0 06            [24] 1151 	pop	ar6
                                   1152 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:117: pinConfig.pinMode = outputPinMode;
      0011BE 90 00 58         [24] 1153 	mov	dptr,#__configurePins_PARM_2
      0011C1 E0               [24] 1154 	movx	a,@dptr
      0011C2 90 00 5D         [24] 1155 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0003)
      0011C5 F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:119: pinConfig.speed = GPIO_SPEED_FASTEST;
      0011C6 90 00 60         [24] 1158 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0006)
      0011C9 E4               [12] 1159 	clr	a
      0011CA F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:121: pinDefinition = _pinConfigurations[i][SPI_MOSI_PIN];
      0011CB 8D 82            [24] 1162 	mov	dpl,r5
      0011CD 8E 83            [24] 1163 	mov	dph,r6
      0011CF A3               [24] 1164 	inc	dptr
      0011D0 A3               [24] 1165 	inc	dptr
                                   1166 ;	genFromRTrack removed	clr	a
      0011D1 93               [24] 1167 	movc	a,@a+dptr
                                   1168 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:122: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      0011D2 FC               [12] 1169 	mov	r4,a
      0011D3 C4               [12] 1170 	swap	a
      0011D4 54 0F            [12] 1171 	anl	a,#0x0f
      0011D6 90 00 5A         [24] 1172 	mov	dptr,#__configurePins_pinConfig_262145_136
      0011D9 F0               [24] 1173 	movx	@dptr,a
                                   1174 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:123: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      0011DA 53 04 0F         [24] 1175 	anl	ar4,#0x0f
      0011DD 90 00 5B         [24] 1176 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0001)
      0011E0 EC               [12] 1177 	mov	a,r4
      0011E1 F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:124: gpioConfigure(&pinConfig);
      0011E2 90 00 5A         [24] 1180 	mov	dptr,#__configurePins_pinConfig_262145_136
      0011E5 75 F0 00         [24] 1181 	mov	b,#0x00
      0011E8 C0 06            [24] 1182 	push	ar6
      0011EA C0 05            [24] 1183 	push	ar5
      0011EC 12 01 7E         [24] 1184 	lcall	_gpioConfigure
      0011EF D0 05            [24] 1185 	pop	ar5
      0011F1 D0 06            [24] 1186 	pop	ar6
                                   1187 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:126: pinDefinition = _pinConfigurations[i][SPI_SCLK_PIN];
      0011F3 8D 82            [24] 1188 	mov	dpl,r5
      0011F5 8E 83            [24] 1189 	mov	dph,r6
      0011F7 A3               [24] 1190 	inc	dptr
      0011F8 A3               [24] 1191 	inc	dptr
      0011F9 A3               [24] 1192 	inc	dptr
      0011FA A3               [24] 1193 	inc	dptr
      0011FB E4               [12] 1194 	clr	a
      0011FC 93               [24] 1195 	movc	a,@a+dptr
                                   1196 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:127: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      0011FD FE               [12] 1197 	mov	r6,a
      0011FE C4               [12] 1198 	swap	a
      0011FF 54 0F            [12] 1199 	anl	a,#0x0f
      001201 90 00 5A         [24] 1200 	mov	dptr,#__configurePins_pinConfig_262145_136
      001204 F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:128: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      001205 53 06 0F         [24] 1203 	anl	ar6,#0x0f
      001208 90 00 5B         [24] 1204 	mov	dptr,#(__configurePins_pinConfig_262145_136 + 0x0001)
      00120B EE               [12] 1205 	mov	a,r6
      00120C F0               [24] 1206 	movx	@dptr,a
                                   1207 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:129: gpioConfigure(&pinConfig);
      00120D 90 00 5A         [24] 1208 	mov	dptr,#__configurePins_pinConfig_262145_136
      001210 75 F0 00         [24] 1209 	mov	b,#0x00
                                   1210 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:157: break;
      001213 02 01 7E         [24] 1211 	ljmp	_gpioConfigure
      001216                       1212 00106$:
                                   1213 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(_pinConfigurations) / SPI_ROW_SIZE); i++) {
      001216 0F               [12] 1214 	inc	r7
                                   1215 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:160: }
      001217 02 11 14         [24] 1216 	ljmp	00105$
                                   1217 ;------------------------------------------------------------
                                   1218 ;Allocation info for local variables in function 'spiSelectSpeed'
                                   1219 ;------------------------------------------------------------
                                   1220 ;maxDeviceRate             Allocated with name '_spiSelectSpeed_maxDeviceRate_65536_137'
                                   1221 ;divisor                   Allocated with name '_spiSelectSpeed_divisor_65536_138'
                                   1222 ;pot                       Allocated with name '_spiSelectSpeed_pot_65537_140'
                                   1223 ;n                         Allocated with name '_spiSelectSpeed_n_131073_141'
                                   1224 ;result                    Allocated with name '_spiSelectSpeed_result_65538_143'
                                   1225 ;------------------------------------------------------------
                                   1226 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:169: SpiSpeed spiSelectSpeed(uint32_t maxDeviceRate) {
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function spiSelectSpeed
                                   1229 ;	-----------------------------------------
      00121A                       1230 _spiSelectSpeed:
      00121A AF 82            [24] 1231 	mov	r7,dpl
      00121C AE 83            [24] 1232 	mov	r6,dph
      00121E AD F0            [24] 1233 	mov	r5,b
      001220 FC               [12] 1234 	mov	r4,a
      001221 90 00 67         [24] 1235 	mov	dptr,#_spiSelectSpeed_maxDeviceRate_65536_137
      001224 EF               [12] 1236 	mov	a,r7
      001225 F0               [24] 1237 	movx	@dptr,a
      001226 EE               [12] 1238 	mov	a,r6
      001227 A3               [24] 1239 	inc	dptr
      001228 F0               [24] 1240 	movx	@dptr,a
      001229 ED               [12] 1241 	mov	a,r5
      00122A A3               [24] 1242 	inc	dptr
      00122B F0               [24] 1243 	movx	@dptr,a
      00122C EC               [12] 1244 	mov	a,r4
      00122D A3               [24] 1245 	inc	dptr
      00122E F0               [24] 1246 	movx	@dptr,a
                                   1247 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:170: uint16_t divisor = (uint16_t) (MCU_FREQ / maxDeviceRate);
      00122F 90 00 67         [24] 1248 	mov	dptr,#_spiSelectSpeed_maxDeviceRate_65536_137
      001232 E0               [24] 1249 	movx	a,@dptr
      001233 FC               [12] 1250 	mov	r4,a
      001234 A3               [24] 1251 	inc	dptr
      001235 E0               [24] 1252 	movx	a,@dptr
      001236 FD               [12] 1253 	mov	r5,a
      001237 A3               [24] 1254 	inc	dptr
      001238 E0               [24] 1255 	movx	a,@dptr
      001239 FE               [12] 1256 	mov	r6,a
      00123A A3               [24] 1257 	inc	dptr
      00123B E0               [24] 1258 	movx	a,@dptr
      00123C FF               [12] 1259 	mov	r7,a
      00123D 90 02 CD         [24] 1260 	mov	dptr,#__divulong_PARM_2
      001240 EC               [12] 1261 	mov	a,r4
      001241 F0               [24] 1262 	movx	@dptr,a
      001242 ED               [12] 1263 	mov	a,r5
      001243 A3               [24] 1264 	inc	dptr
      001244 F0               [24] 1265 	movx	@dptr,a
      001245 EE               [12] 1266 	mov	a,r6
      001246 A3               [24] 1267 	inc	dptr
      001247 F0               [24] 1268 	movx	@dptr,a
      001248 EF               [12] 1269 	mov	a,r7
      001249 A3               [24] 1270 	inc	dptr
      00124A F0               [24] 1271 	movx	@dptr,a
      00124B 90 0E C0         [24] 1272 	mov	dptr,#0x0ec0
      00124E 75 F0 16         [24] 1273 	mov	b,#0x16
      001251 74 02            [12] 1274 	mov	a,#0x02
      001253 C0 07            [24] 1275 	push	ar7
      001255 C0 06            [24] 1276 	push	ar6
      001257 C0 05            [24] 1277 	push	ar5
      001259 C0 04            [24] 1278 	push	ar4
      00125B 12 3B F6         [24] 1279 	lcall	__divulong
      00125E A8 82            [24] 1280 	mov	r0,dpl
      001260 A9 83            [24] 1281 	mov	r1,dph
      001262 D0 04            [24] 1282 	pop	ar4
      001264 D0 05            [24] 1283 	pop	ar5
      001266 D0 06            [24] 1284 	pop	ar6
      001268 D0 07            [24] 1285 	pop	ar7
      00126A 90 00 6B         [24] 1286 	mov	dptr,#_spiSelectSpeed_divisor_65536_138
      00126D E8               [12] 1287 	mov	a,r0
      00126E F0               [24] 1288 	movx	@dptr,a
      00126F E9               [12] 1289 	mov	a,r1
      001270 A3               [24] 1290 	inc	dptr
      001271 F0               [24] 1291 	movx	@dptr,a
                                   1292 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:172: if (MCU_FREQ % maxDeviceRate) {
      001272 90 02 C4         [24] 1293 	mov	dptr,#__modulong_PARM_2
      001275 EC               [12] 1294 	mov	a,r4
      001276 F0               [24] 1295 	movx	@dptr,a
      001277 ED               [12] 1296 	mov	a,r5
      001278 A3               [24] 1297 	inc	dptr
      001279 F0               [24] 1298 	movx	@dptr,a
      00127A EE               [12] 1299 	mov	a,r6
      00127B A3               [24] 1300 	inc	dptr
      00127C F0               [24] 1301 	movx	@dptr,a
      00127D EF               [12] 1302 	mov	a,r7
      00127E A3               [24] 1303 	inc	dptr
      00127F F0               [24] 1304 	movx	@dptr,a
      001280 90 0E C0         [24] 1305 	mov	dptr,#0x0ec0
      001283 75 F0 16         [24] 1306 	mov	b,#0x16
      001286 74 02            [12] 1307 	mov	a,#0x02
      001288 C0 01            [24] 1308 	push	ar1
      00128A C0 00            [24] 1309 	push	ar0
      00128C 12 39 E5         [24] 1310 	lcall	__modulong
      00128F AC 82            [24] 1311 	mov	r4,dpl
      001291 AD 83            [24] 1312 	mov	r5,dph
      001293 AE F0            [24] 1313 	mov	r6,b
      001295 FF               [12] 1314 	mov	r7,a
      001296 D0 00            [24] 1315 	pop	ar0
      001298 D0 01            [24] 1316 	pop	ar1
      00129A EC               [12] 1317 	mov	a,r4
      00129B 4D               [12] 1318 	orl	a,r5
      00129C 4E               [12] 1319 	orl	a,r6
      00129D 4F               [12] 1320 	orl	a,r7
      00129E 60 0B            [24] 1321 	jz	00102$
                                   1322 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:173: divisor++;
      0012A0 90 00 6B         [24] 1323 	mov	dptr,#_spiSelectSpeed_divisor_65536_138
      0012A3 74 01            [12] 1324 	mov	a,#0x01
      0012A5 28               [12] 1325 	add	a,r0
      0012A6 F0               [24] 1326 	movx	@dptr,a
      0012A7 E4               [12] 1327 	clr	a
      0012A8 39               [12] 1328 	addc	a,r1
      0012A9 A3               [24] 1329 	inc	dptr
      0012AA F0               [24] 1330 	movx	@dptr,a
      0012AB                       1331 00102$:
                                   1332 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:180: for (uint16_t n = divisor; n > 1; n = n >> 1, pot++);
      0012AB 90 00 6B         [24] 1333 	mov	dptr,#_spiSelectSpeed_divisor_65536_138
      0012AE E0               [24] 1334 	movx	a,@dptr
      0012AF FE               [12] 1335 	mov	r6,a
      0012B0 A3               [24] 1336 	inc	dptr
      0012B1 E0               [24] 1337 	movx	a,@dptr
      0012B2 FF               [12] 1338 	mov	r7,a
      0012B3 90 00 6E         [24] 1339 	mov	dptr,#_spiSelectSpeed_n_131073_141
      0012B6 EE               [12] 1340 	mov	a,r6
      0012B7 F0               [24] 1341 	movx	@dptr,a
      0012B8 EF               [12] 1342 	mov	a,r7
      0012B9 A3               [24] 1343 	inc	dptr
      0012BA F0               [24] 1344 	movx	@dptr,a
      0012BB 7D 00            [12] 1345 	mov	r5,#0x00
      0012BD                       1346 00116$:
      0012BD 90 00 6E         [24] 1347 	mov	dptr,#_spiSelectSpeed_n_131073_141
      0012C0 E0               [24] 1348 	movx	a,@dptr
      0012C1 FB               [12] 1349 	mov	r3,a
      0012C2 A3               [24] 1350 	inc	dptr
      0012C3 E0               [24] 1351 	movx	a,@dptr
      0012C4 FC               [12] 1352 	mov	r4,a
      0012C5 8B 01            [24] 1353 	mov	ar1,r3
      0012C7 8C 02            [24] 1354 	mov	ar2,r4
      0012C9 C3               [12] 1355 	clr	c
      0012CA 74 01            [12] 1356 	mov	a,#0x01
      0012CC 99               [12] 1357 	subb	a,r1
      0012CD E4               [12] 1358 	clr	a
      0012CE 9A               [12] 1359 	subb	a,r2
      0012CF 50 12            [24] 1360 	jnc	00128$
      0012D1 EC               [12] 1361 	mov	a,r4
      0012D2 C3               [12] 1362 	clr	c
      0012D3 13               [12] 1363 	rrc	a
      0012D4 CB               [12] 1364 	xch	a,r3
      0012D5 13               [12] 1365 	rrc	a
      0012D6 CB               [12] 1366 	xch	a,r3
      0012D7 FC               [12] 1367 	mov	r4,a
      0012D8 90 00 6E         [24] 1368 	mov	dptr,#_spiSelectSpeed_n_131073_141
      0012DB EB               [12] 1369 	mov	a,r3
      0012DC F0               [24] 1370 	movx	@dptr,a
      0012DD EC               [12] 1371 	mov	a,r4
      0012DE A3               [24] 1372 	inc	dptr
      0012DF F0               [24] 1373 	movx	@dptr,a
      0012E0 0D               [12] 1374 	inc	r5
      0012E1 80 DA            [24] 1375 	sjmp	00116$
      0012E3                       1376 00128$:
      0012E3 90 00 6D         [24] 1377 	mov	dptr,#_spiSelectSpeed_pot_65537_140
      0012E6 ED               [12] 1378 	mov	a,r5
      0012E7 F0               [24] 1379 	movx	@dptr,a
                                   1380 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:182: if (divisor > (1 << pot)) {
      0012E8 8D F0            [24] 1381 	mov	b,r5
      0012EA 05 F0            [12] 1382 	inc	b
      0012EC 7B 01            [12] 1383 	mov	r3,#0x01
      0012EE 7C 00            [12] 1384 	mov	r4,#0x00
      0012F0 80 06            [24] 1385 	sjmp	00156$
      0012F2                       1386 00155$:
      0012F2 EB               [12] 1387 	mov	a,r3
      0012F3 2B               [12] 1388 	add	a,r3
      0012F4 FB               [12] 1389 	mov	r3,a
      0012F5 EC               [12] 1390 	mov	a,r4
      0012F6 33               [12] 1391 	rlc	a
      0012F7 FC               [12] 1392 	mov	r4,a
      0012F8                       1393 00156$:
      0012F8 D5 F0 F7         [24] 1394 	djnz	b,00155$
      0012FB C3               [12] 1395 	clr	c
      0012FC EB               [12] 1396 	mov	a,r3
      0012FD 9E               [12] 1397 	subb	a,r6
      0012FE EC               [12] 1398 	mov	a,r4
      0012FF 9F               [12] 1399 	subb	a,r7
      001300 50 06            [24] 1400 	jnc	00105$
                                   1401 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:183: pot++;
      001302 90 00 6D         [24] 1402 	mov	dptr,#_spiSelectSpeed_pot_65537_140
      001305 ED               [12] 1403 	mov	a,r5
      001306 04               [12] 1404 	inc	a
      001307 F0               [24] 1405 	movx	@dptr,a
      001308                       1406 00105$:
                                   1407 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:187: SpiSpeed result = SPI_SYSCLK_DIV_4;
      001308 90 00 70         [24] 1408 	mov	dptr,#_spiSelectSpeed_result_65538_143
      00130B E4               [12] 1409 	clr	a
      00130C F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:202: if (pot > 2 && pot <= 3) {
      00130D 90 00 6D         [24] 1412 	mov	dptr,#_spiSelectSpeed_pot_65537_140
      001310 E0               [24] 1413 	movx	a,@dptr
      001311 FF               [12] 1414 	mov  r7,a
      001312 24 FD            [12] 1415 	add	a,#0xff - 0x02
      001314 50 0D            [24] 1416 	jnc	00112$
      001316 EF               [12] 1417 	mov	a,r7
      001317 24 FC            [12] 1418 	add	a,#0xff - 0x03
      001319 40 08            [24] 1419 	jc	00112$
                                   1420 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:203: result = SPI_SYSCLK_DIV_8;
      00131B 90 00 70         [24] 1421 	mov	dptr,#_spiSelectSpeed_result_65538_143
      00131E 74 01            [12] 1422 	mov	a,#0x01
      001320 F0               [24] 1423 	movx	@dptr,a
      001321 80 1D            [24] 1424 	sjmp	00113$
      001323                       1425 00112$:
                                   1426 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:204: } else if (pot < 2) {
      001323 90 00 6D         [24] 1427 	mov	dptr,#_spiSelectSpeed_pot_65537_140
      001326 E0               [24] 1428 	movx	a,@dptr
      001327 FF               [12] 1429 	mov	r7,a
      001328 BF 02 00         [24] 1430 	cjne	r7,#0x02,00160$
      00132B                       1431 00160$:
      00132B 50 08            [24] 1432 	jnc	00109$
                                   1433 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:205: result = SPI_SYSCLK_DIV_2;
      00132D 90 00 70         [24] 1434 	mov	dptr,#_spiSelectSpeed_result_65538_143
      001330 74 03            [12] 1435 	mov	a,#0x03
      001332 F0               [24] 1436 	movx	@dptr,a
      001333 80 0B            [24] 1437 	sjmp	00113$
      001335                       1438 00109$:
                                   1439 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:206: } else if (pot > 3) {
      001335 EF               [12] 1440 	mov	a,r7
      001336 24 FC            [12] 1441 	add	a,#0xff - 0x03
      001338 50 06            [24] 1442 	jnc	00113$
                                   1443 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:207: result = SPI_SYSCLK_DIV_16;
      00133A 90 00 70         [24] 1444 	mov	dptr,#_spiSelectSpeed_result_65538_143
      00133D 74 02            [12] 1445 	mov	a,#0x02
      00133F F0               [24] 1446 	movx	@dptr,a
      001340                       1447 00113$:
                                   1448 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:221: return result;
      001340 90 00 70         [24] 1449 	mov	dptr,#_spiSelectSpeed_result_65538_143
      001343 E0               [24] 1450 	movx	a,@dptr
                                   1451 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:222: }
      001344 F5 82            [12] 1452 	mov	dpl,a
      001346 22               [24] 1453 	ret
                                   1454 ;------------------------------------------------------------
                                   1455 ;Allocation info for local variables in function 'spiConfigure'
                                   1456 ;------------------------------------------------------------
                                   1457 ;mode                      Allocated with name '_spiConfigure_PARM_2'
                                   1458 ;speed                     Allocated with name '_spiConfigure_PARM_3'
                                   1459 ;pinSwitch                 Allocated with name '_spiConfigure_PARM_4'
                                   1460 ;outputPinMode             Allocated with name '_spiConfigure_PARM_5'
                                   1461 ;bitOrder                  Allocated with name '_spiConfigure_bitOrder_65536_147'
                                   1462 ;------------------------------------------------------------
                                   1463 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:224: void spiConfigure(SpiBitOrder bitOrder, SpiMode mode, SpiSpeed speed, uint8_t pinSwitch, GpioPinMode outputPinMode) {
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function spiConfigure
                                   1466 ;	-----------------------------------------
      001347                       1467 _spiConfigure:
      001347 E5 82            [12] 1468 	mov	a,dpl
      001349 90 00 75         [24] 1469 	mov	dptr,#_spiConfigure_bitOrder_65536_147
      00134C F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:225: _configurePins(pinSwitch, outputPinMode);
      00134D 90 00 73         [24] 1472 	mov	dptr,#_spiConfigure_PARM_4
      001350 E0               [24] 1473 	movx	a,@dptr
      001351 FF               [12] 1474 	mov	r7,a
      001352 90 00 74         [24] 1475 	mov	dptr,#_spiConfigure_PARM_5
      001355 E0               [24] 1476 	movx	a,@dptr
      001356 90 00 58         [24] 1477 	mov	dptr,#__configurePins_PARM_2
      001359 F0               [24] 1478 	movx	@dptr,a
      00135A 8F 82            [24] 1479 	mov	dpl,r7
      00135C 12 11 0C         [24] 1480 	lcall	__configurePins
                                   1481 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:226: SPCTL = bitOrder | mode | speed |
      00135F 90 00 71         [24] 1482 	mov	dptr,#_spiConfigure_PARM_2
      001362 E0               [24] 1483 	movx	a,@dptr
      001363 FF               [12] 1484 	mov	r7,a
      001364 90 00 75         [24] 1485 	mov	dptr,#_spiConfigure_bitOrder_65536_147
      001367 E0               [24] 1486 	movx	a,@dptr
      001368 42 07            [12] 1487 	orl	ar7,a
      00136A 90 00 72         [24] 1488 	mov	dptr,#_spiConfigure_PARM_3
      00136D E0               [24] 1489 	movx	a,@dptr
      00136E 4F               [12] 1490 	orl	a,r7
      00136F 44 D0            [12] 1491 	orl	a,#0xd0
      001371 F5 CE            [12] 1492 	mov	_SPCTL,a
                                   1493 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:232: IE2 = IE2 | M_SPIEN;
      001373 43 AF 02         [24] 1494 	orl	_IE2,#0x02
                                   1495 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:233: }
      001376 22               [24] 1496 	ret
                                   1497 ;------------------------------------------------------------
                                   1498 ;Allocation info for local variables in function 'spiSend'
                                   1499 ;------------------------------------------------------------
                                   1500 ;bufferSize                Allocated with name '_spiSend_PARM_2'
                                   1501 ;readyFlag                 Allocated with name '_spiSend_PARM_3'
                                   1502 ;buffer                    Allocated with name '_spiSend_buffer_65536_149'
                                   1503 ;------------------------------------------------------------
                                   1504 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:235: void spiSend(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
                                   1505 ;	-----------------------------------------
                                   1506 ;	 function spiSend
                                   1507 ;	-----------------------------------------
      001377                       1508 _spiSend:
      001377 AF F0            [24] 1509 	mov	r7,b
      001379 AE 83            [24] 1510 	mov	r6,dph
      00137B E5 82            [12] 1511 	mov	a,dpl
      00137D 90 00 7B         [24] 1512 	mov	dptr,#_spiSend_buffer_65536_149
      001380 F0               [24] 1513 	movx	@dptr,a
      001381 EE               [12] 1514 	mov	a,r6
      001382 A3               [24] 1515 	inc	dptr
      001383 F0               [24] 1516 	movx	@dptr,a
      001384 EF               [12] 1517 	mov	a,r7
      001385 A3               [24] 1518 	inc	dptr
      001386 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:236: _spiState.buffer = buffer;
      001387 90 00 7B         [24] 1521 	mov	dptr,#_spiSend_buffer_65536_149
      00138A E0               [24] 1522 	movx	a,@dptr
      00138B FD               [12] 1523 	mov	r5,a
      00138C A3               [24] 1524 	inc	dptr
      00138D E0               [24] 1525 	movx	a,@dptr
      00138E FE               [12] 1526 	mov	r6,a
      00138F A3               [24] 1527 	inc	dptr
      001390 E0               [24] 1528 	movx	a,@dptr
      001391 FF               [12] 1529 	mov	r7,a
      001392 78 33            [12] 1530 	mov	r0,#__spiState
      001394 A6 05            [24] 1531 	mov	@r0,ar5
      001396 08               [12] 1532 	inc	r0
      001397 A6 06            [24] 1533 	mov	@r0,ar6
      001399 08               [12] 1534 	inc	r0
      00139A A6 07            [24] 1535 	mov	@r0,ar7
                                   1536 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:237: _spiState.bufferSize = bufferSize;
      00139C 90 00 76         [24] 1537 	mov	dptr,#_spiSend_PARM_2
      00139F E0               [24] 1538 	movx	a,@dptr
      0013A0 FE               [12] 1539 	mov	r6,a
      0013A1 A3               [24] 1540 	inc	dptr
      0013A2 E0               [24] 1541 	movx	a,@dptr
      0013A3 FF               [12] 1542 	mov	r7,a
      0013A4 78 38            [12] 1543 	mov	r0,#(__spiState + 0x0005)
      0013A6 A6 06            [24] 1544 	mov	@r0,ar6
      0013A8 08               [12] 1545 	inc	r0
      0013A9 A6 07            [24] 1546 	mov	@r0,ar7
                                   1547 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:238: _spiState.readyFlag = readyFlag;
      0013AB 90 00 78         [24] 1548 	mov	dptr,#_spiSend_PARM_3
      0013AE E0               [24] 1549 	movx	a,@dptr
      0013AF FD               [12] 1550 	mov	r5,a
      0013B0 A3               [24] 1551 	inc	dptr
      0013B1 E0               [24] 1552 	movx	a,@dptr
      0013B2 FE               [12] 1553 	mov	r6,a
      0013B3 A3               [24] 1554 	inc	dptr
      0013B4 E0               [24] 1555 	movx	a,@dptr
      0013B5 FF               [12] 1556 	mov	r7,a
      0013B6 78 3A            [12] 1557 	mov	r0,#(__spiState + 0x0007)
      0013B8 A6 05            [24] 1558 	mov	@r0,ar5
      0013BA 08               [12] 1559 	inc	r0
      0013BB A6 06            [24] 1560 	mov	@r0,ar6
      0013BD 08               [12] 1561 	inc	r0
      0013BE A6 07            [24] 1562 	mov	@r0,ar7
                                   1563 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:239: *_spiState.readyFlag = false;
      0013C0 8D 82            [24] 1564 	mov	dpl,r5
      0013C2 8E 83            [24] 1565 	mov	dph,r6
      0013C4 8F F0            [24] 1566 	mov	b,r7
      0013C6 E4               [12] 1567 	clr	a
      0013C7 12 3D DF         [24] 1568 	lcall	__gptrput
                                   1569 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:240: _spiState.index = 0;
      0013CA 78 36            [12] 1570 	mov	r0,#(__spiState + 0x0003)
      0013CC 76 00            [12] 1571 	mov	@r0,#0x00
      0013CE 08               [12] 1572 	inc	r0
      0013CF 76 00            [12] 1573 	mov	@r0,#0x00
                                   1574 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:243: SPDAT = _spiState.buffer[_spiState.index];
      0013D1 78 33            [12] 1575 	mov	r0,#__spiState
      0013D3 86 05            [24] 1576 	mov	ar5,@r0
      0013D5 08               [12] 1577 	inc	r0
      0013D6 86 06            [24] 1578 	mov	ar6,@r0
      0013D8 08               [12] 1579 	inc	r0
      0013D9 86 07            [24] 1580 	mov	ar7,@r0
      0013DB 78 36            [12] 1581 	mov	r0,#(__spiState + 0x0003)
      0013DD 86 03            [24] 1582 	mov	ar3,@r0
      0013DF 08               [12] 1583 	inc	r0
      0013E0 86 04            [24] 1584 	mov	ar4,@r0
      0013E2 EB               [12] 1585 	mov	a,r3
      0013E3 2D               [12] 1586 	add	a,r5
      0013E4 FD               [12] 1587 	mov	r5,a
      0013E5 EC               [12] 1588 	mov	a,r4
      0013E6 3E               [12] 1589 	addc	a,r6
      0013E7 FE               [12] 1590 	mov	r6,a
      0013E8 8D 82            [24] 1591 	mov	dpl,r5
      0013EA 8E 83            [24] 1592 	mov	dph,r6
      0013EC 8F F0            [24] 1593 	mov	b,r7
      0013EE 12 4A 06         [24] 1594 	lcall	__gptrget
      0013F1 F5 CF            [12] 1595 	mov	_SPDAT,a
                                   1596 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:245: }
      0013F3 22               [24] 1597 	ret
                                   1598 ;------------------------------------------------------------
                                   1599 ;Allocation info for local variables in function 'spiReceive'
                                   1600 ;------------------------------------------------------------
                                   1601 ;bufferSize                Allocated with name '_spiReceive_PARM_2'
                                   1602 ;readyFlag                 Allocated with name '_spiReceive_PARM_3'
                                   1603 ;buffer                    Allocated with name '_spiReceive_buffer_65536_151'
                                   1604 ;------------------------------------------------------------
                                   1605 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:247: void spiReceive(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
                                   1606 ;	-----------------------------------------
                                   1607 ;	 function spiReceive
                                   1608 ;	-----------------------------------------
      0013F4                       1609 _spiReceive:
      0013F4 AF F0            [24] 1610 	mov	r7,b
      0013F6 AE 83            [24] 1611 	mov	r6,dph
      0013F8 E5 82            [12] 1612 	mov	a,dpl
      0013FA 90 00 83         [24] 1613 	mov	dptr,#_spiReceive_buffer_65536_151
      0013FD F0               [24] 1614 	movx	@dptr,a
      0013FE EE               [12] 1615 	mov	a,r6
      0013FF A3               [24] 1616 	inc	dptr
      001400 F0               [24] 1617 	movx	@dptr,a
      001401 EF               [12] 1618 	mov	a,r7
      001402 A3               [24] 1619 	inc	dptr
      001403 F0               [24] 1620 	movx	@dptr,a
                                   1621 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:248: memset(buffer, 0, bufferSize);
      001404 90 00 83         [24] 1622 	mov	dptr,#_spiReceive_buffer_65536_151
      001407 E0               [24] 1623 	movx	a,@dptr
      001408 FD               [12] 1624 	mov	r5,a
      001409 A3               [24] 1625 	inc	dptr
      00140A E0               [24] 1626 	movx	a,@dptr
      00140B FE               [12] 1627 	mov	r6,a
      00140C A3               [24] 1628 	inc	dptr
      00140D E0               [24] 1629 	movx	a,@dptr
      00140E FF               [12] 1630 	mov	r7,a
      00140F 8D 02            [24] 1631 	mov	ar2,r5
      001411 8E 03            [24] 1632 	mov	ar3,r6
      001413 8F 04            [24] 1633 	mov	ar4,r7
      001415 90 00 7E         [24] 1634 	mov	dptr,#_spiReceive_PARM_2
      001418 E0               [24] 1635 	movx	a,@dptr
      001419 F8               [12] 1636 	mov	r0,a
      00141A A3               [24] 1637 	inc	dptr
      00141B E0               [24] 1638 	movx	a,@dptr
      00141C F9               [12] 1639 	mov	r1,a
      00141D 90 02 DA         [24] 1640 	mov	dptr,#_memset_PARM_2
      001420 E4               [12] 1641 	clr	a
      001421 F0               [24] 1642 	movx	@dptr,a
      001422 90 02 DB         [24] 1643 	mov	dptr,#_memset_PARM_3
      001425 E8               [12] 1644 	mov	a,r0
      001426 F0               [24] 1645 	movx	@dptr,a
      001427 E9               [12] 1646 	mov	a,r1
      001428 A3               [24] 1647 	inc	dptr
      001429 F0               [24] 1648 	movx	@dptr,a
      00142A 8A 82            [24] 1649 	mov	dpl,r2
      00142C 8B 83            [24] 1650 	mov	dph,r3
      00142E 8C F0            [24] 1651 	mov	b,r4
      001430 C0 07            [24] 1652 	push	ar7
      001432 C0 06            [24] 1653 	push	ar6
      001434 C0 05            [24] 1654 	push	ar5
      001436 C0 01            [24] 1655 	push	ar1
      001438 C0 00            [24] 1656 	push	ar0
      00143A 12 3D 1D         [24] 1657 	lcall	_memset
      00143D D0 00            [24] 1658 	pop	ar0
      00143F D0 01            [24] 1659 	pop	ar1
      001441 D0 05            [24] 1660 	pop	ar5
      001443 D0 06            [24] 1661 	pop	ar6
      001445 D0 07            [24] 1662 	pop	ar7
                                   1663 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:249: spiSend(buffer, bufferSize, readyFlag);
      001447 90 00 80         [24] 1664 	mov	dptr,#_spiReceive_PARM_3
      00144A E0               [24] 1665 	movx	a,@dptr
      00144B FA               [12] 1666 	mov	r2,a
      00144C A3               [24] 1667 	inc	dptr
      00144D E0               [24] 1668 	movx	a,@dptr
      00144E FB               [12] 1669 	mov	r3,a
      00144F A3               [24] 1670 	inc	dptr
      001450 E0               [24] 1671 	movx	a,@dptr
      001451 FC               [12] 1672 	mov	r4,a
      001452 90 00 76         [24] 1673 	mov	dptr,#_spiSend_PARM_2
      001455 E8               [12] 1674 	mov	a,r0
      001456 F0               [24] 1675 	movx	@dptr,a
      001457 E9               [12] 1676 	mov	a,r1
      001458 A3               [24] 1677 	inc	dptr
      001459 F0               [24] 1678 	movx	@dptr,a
      00145A 90 00 78         [24] 1679 	mov	dptr,#_spiSend_PARM_3
      00145D EA               [12] 1680 	mov	a,r2
      00145E F0               [24] 1681 	movx	@dptr,a
      00145F EB               [12] 1682 	mov	a,r3
      001460 A3               [24] 1683 	inc	dptr
      001461 F0               [24] 1684 	movx	@dptr,a
      001462 EC               [12] 1685 	mov	a,r4
      001463 A3               [24] 1686 	inc	dptr
      001464 F0               [24] 1687 	movx	@dptr,a
      001465 8D 82            [24] 1688 	mov	dpl,r5
      001467 8E 83            [24] 1689 	mov	dph,r6
      001469 8F F0            [24] 1690 	mov	b,r7
                                   1691 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:250: }
      00146B 02 13 77         [24] 1692 	ljmp	_spiSend
                                   1693 ;------------------------------------------------------------
                                   1694 ;Allocation info for local variables in function 'spi_isr'
                                   1695 ;------------------------------------------------------------
                                   1696 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:252: INTERRUPT(spi_isr, SPI_INTERRUPT) {
                                   1697 ;	-----------------------------------------
                                   1698 ;	 function spi_isr
                                   1699 ;	-----------------------------------------
      00146E                       1700 _spi_isr:
      00146E C0 E0            [24] 1701 	push	acc
      001470 C0 F0            [24] 1702 	push	b
      001472 C0 82            [24] 1703 	push	dpl
      001474 C0 83            [24] 1704 	push	dph
      001476 C0 07            [24] 1705 	push	ar7
      001478 C0 06            [24] 1706 	push	ar6
      00147A C0 05            [24] 1707 	push	ar5
      00147C C0 04            [24] 1708 	push	ar4
      00147E C0 03            [24] 1709 	push	ar3
      001480 C0 02            [24] 1710 	push	ar2
      001482 C0 00            [24] 1711 	push	ar0
      001484 C0 D0            [24] 1712 	push	psw
      001486 75 D0 00         [24] 1713 	mov	psw,#0x00
                                   1714 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:253: SPSTAT |= M_SPIIF | M_WCOL;
      001489 43 CD C0         [24] 1715 	orl	_SPSTAT,#0xc0
                                   1716 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:256: _spiState.buffer[_spiState.index] = SPDAT;
      00148C 78 33            [12] 1717 	mov	r0,#__spiState
      00148E 86 05            [24] 1718 	mov	ar5,@r0
      001490 08               [12] 1719 	inc	r0
      001491 86 06            [24] 1720 	mov	ar6,@r0
      001493 08               [12] 1721 	inc	r0
      001494 86 07            [24] 1722 	mov	ar7,@r0
      001496 78 36            [12] 1723 	mov	r0,#(__spiState + 0x0003)
      001498 86 03            [24] 1724 	mov	ar3,@r0
      00149A 08               [12] 1725 	inc	r0
      00149B 86 04            [24] 1726 	mov	ar4,@r0
      00149D EB               [12] 1727 	mov	a,r3
      00149E 2D               [12] 1728 	add	a,r5
      00149F FD               [12] 1729 	mov	r5,a
      0014A0 EC               [12] 1730 	mov	a,r4
      0014A1 3E               [12] 1731 	addc	a,r6
      0014A2 FE               [12] 1732 	mov	r6,a
      0014A3 8D 82            [24] 1733 	mov	dpl,r5
      0014A5 8E 83            [24] 1734 	mov	dph,r6
      0014A7 8F F0            [24] 1735 	mov	b,r7
      0014A9 E5 CF            [12] 1736 	mov	a,_SPDAT
      0014AB 12 3D DF         [24] 1737 	lcall	__gptrput
                                   1738 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:257: _spiState.index++;
      0014AE 78 36            [12] 1739 	mov	r0,#(__spiState + 0x0003)
      0014B0 86 06            [24] 1740 	mov	ar6,@r0
      0014B2 08               [12] 1741 	inc	r0
      0014B3 86 07            [24] 1742 	mov	ar7,@r0
      0014B5 0E               [12] 1743 	inc	r6
      0014B6 BE 00 01         [24] 1744 	cjne	r6,#0x00,00110$
      0014B9 0F               [12] 1745 	inc	r7
      0014BA                       1746 00110$:
      0014BA 78 36            [12] 1747 	mov	r0,#(__spiState + 0x0003)
      0014BC A6 06            [24] 1748 	mov	@r0,ar6
      0014BE 08               [12] 1749 	inc	r0
      0014BF A6 07            [24] 1750 	mov	@r0,ar7
                                   1751 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:259: if (_spiState.index < _spiState.bufferSize) {
      0014C1 78 36            [12] 1752 	mov	r0,#(__spiState + 0x0003)
      0014C3 86 04            [24] 1753 	mov	ar4,@r0
      0014C5 08               [12] 1754 	inc	r0
      0014C6 86 05            [24] 1755 	mov	ar5,@r0
      0014C8 78 38            [12] 1756 	mov	r0,#(__spiState + 0x0005)
      0014CA 86 02            [24] 1757 	mov	ar2,@r0
      0014CC 08               [12] 1758 	inc	r0
      0014CD 86 03            [24] 1759 	mov	ar3,@r0
      0014CF C3               [12] 1760 	clr	c
      0014D0 EE               [12] 1761 	mov	a,r6
      0014D1 9A               [12] 1762 	subb	a,r2
      0014D2 EF               [12] 1763 	mov	a,r7
      0014D3 9B               [12] 1764 	subb	a,r3
      0014D4 50 1F            [24] 1765 	jnc	00102$
                                   1766 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:261: SPDAT = _spiState.buffer[_spiState.index];
      0014D6 78 33            [12] 1767 	mov	r0,#__spiState
      0014D8 86 03            [24] 1768 	mov	ar3,@r0
      0014DA 08               [12] 1769 	inc	r0
      0014DB 86 06            [24] 1770 	mov	ar6,@r0
      0014DD 08               [12] 1771 	inc	r0
      0014DE 86 07            [24] 1772 	mov	ar7,@r0
      0014E0 EC               [12] 1773 	mov	a,r4
      0014E1 2B               [12] 1774 	add	a,r3
      0014E2 FC               [12] 1775 	mov	r4,a
      0014E3 ED               [12] 1776 	mov	a,r5
      0014E4 3E               [12] 1777 	addc	a,r6
      0014E5 FD               [12] 1778 	mov	r5,a
      0014E6 8F 02            [24] 1779 	mov	ar2,r7
      0014E8 8C 82            [24] 1780 	mov	dpl,r4
      0014EA 8D 83            [24] 1781 	mov	dph,r5
      0014EC 8A F0            [24] 1782 	mov	b,r2
      0014EE 12 4A 06         [24] 1783 	lcall	__gptrget
      0014F1 F5 CF            [12] 1784 	mov	_SPDAT,a
      0014F3 80 15            [24] 1785 	sjmp	00104$
      0014F5                       1786 00102$:
                                   1787 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:264: *_spiState.readyFlag = true;
      0014F5 78 3A            [12] 1788 	mov	r0,#(__spiState + 0x0007)
      0014F7 86 05            [24] 1789 	mov	ar5,@r0
      0014F9 08               [12] 1790 	inc	r0
      0014FA 86 06            [24] 1791 	mov	ar6,@r0
      0014FC 08               [12] 1792 	inc	r0
      0014FD 86 07            [24] 1793 	mov	ar7,@r0
      0014FF 8D 82            [24] 1794 	mov	dpl,r5
      001501 8E 83            [24] 1795 	mov	dph,r6
      001503 8F F0            [24] 1796 	mov	b,r7
      001505 74 01            [12] 1797 	mov	a,#0x01
      001507 12 3D DF         [24] 1798 	lcall	__gptrput
      00150A                       1799 00104$:
                                   1800 ;	/home/mr-a-717/.stc/uni-stc/hal/spi-hal.c:279: }
      00150A D0 D0            [24] 1801 	pop	psw
      00150C D0 00            [24] 1802 	pop	ar0
      00150E D0 02            [24] 1803 	pop	ar2
      001510 D0 03            [24] 1804 	pop	ar3
      001512 D0 04            [24] 1805 	pop	ar4
      001514 D0 05            [24] 1806 	pop	ar5
      001516 D0 06            [24] 1807 	pop	ar6
      001518 D0 07            [24] 1808 	pop	ar7
      00151A D0 83            [24] 1809 	pop	dph
      00151C D0 82            [24] 1810 	pop	dpl
      00151E D0 F0            [24] 1811 	pop	b
      001520 D0 E0            [24] 1812 	pop	acc
      001522 32               [24] 1813 	reti
                                   1814 ;	eliminated unneeded push/pop ar1
                                   1815 	.area CSEG    (CODE)
                                   1816 	.area CONST   (CODE)
      004A72                       1817 __pinConfigurations:
      004A72 00                    1818 	.db #0x00	; 0
      004A73 54                    1819 	.db #0x54	; 84	'T'
      004A74 13                    1820 	.db #0x13	; 19
      004A75 14                    1821 	.db #0x14	; 20
      004A76 15                    1822 	.db #0x15	; 21
      004A77 01                    1823 	.db #0x01	; 1
      004A78 22                    1824 	.db #0x22	; 34
      004A79 23                    1825 	.db #0x23	; 35
      004A7A 24                    1826 	.db #0x24	; 36
      004A7B 25                    1827 	.db #0x25	; 37
      004A7C 03                    1828 	.db #0x03	; 3
      004A7D 35                    1829 	.db #0x35	; 53	'5'
      004A7E 34                    1830 	.db #0x34	; 52	'4'
      004A7F 33                    1831 	.db #0x33	; 51	'3'
      004A80 32                    1832 	.db #0x32	; 50	'2'
                                   1833 	.area XINIT   (CODE)
                                   1834 	.area CABS    (ABS,CODE)
