                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module gpio_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _S1SM0_FE
                                     12 	.globl _T1IE
                                     13 	.globl _T0IE
                                     14 	.globl _T1RUN
                                     15 	.globl _T0RUN
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _EA
                                     25 	.globl _INT1IE
                                     26 	.globl _INT0IE
                                     27 	.globl _INT1TR
                                     28 	.globl _INT0TR
                                     29 	.globl _P5_5
                                     30 	.globl _P5_4
                                     31 	.globl _P5_3
                                     32 	.globl _P5_2
                                     33 	.globl _P5_1
                                     34 	.globl _P5_0
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _P2_7
                                     44 	.globl _P2_6
                                     45 	.globl _P2_5
                                     46 	.globl _P2_4
                                     47 	.globl _P2_3
                                     48 	.globl _P2_2
                                     49 	.globl _P2_1
                                     50 	.globl _P2_0
                                     51 	.globl _P1_7
                                     52 	.globl _P1_6
                                     53 	.globl _P1_5
                                     54 	.globl _P1_4
                                     55 	.globl _P1_3
                                     56 	.globl _P1_2
                                     57 	.globl _P1_1
                                     58 	.globl _P1_0
                                     59 	.globl _USBADR
                                     60 	.globl _USBCON
                                     61 	.globl _USBDAT
                                     62 	.globl _USBCLK
                                     63 	.globl _S4BUF
                                     64 	.globl _S4CON
                                     65 	.globl _S3BUF
                                     66 	.globl _S3CON
                                     67 	.globl _S2BUF
                                     68 	.globl _S2CON
                                     69 	.globl _S1BUF
                                     70 	.globl _S1CON
                                     71 	.globl _SADEN
                                     72 	.globl _SADDR
                                     73 	.globl _AUXINTIF
                                     74 	.globl _T3
                                     75 	.globl _T3L
                                     76 	.globl _T3H
                                     77 	.globl _T4
                                     78 	.globl _T4L
                                     79 	.globl _T4H
                                     80 	.globl _T4T3M
                                     81 	.globl _WDT_CONTR
                                     82 	.globl _AUXR
                                     83 	.globl _T2
                                     84 	.globl _T2H
                                     85 	.globl _T2L
                                     86 	.globl _T1
                                     87 	.globl _T1H
                                     88 	.globl _T1L
                                     89 	.globl _T0
                                     90 	.globl _T0H
                                     91 	.globl _T0L
                                     92 	.globl _TMOD
                                     93 	.globl _TCON
                                     94 	.globl _IRTRIM
                                     95 	.globl _LIRTRIM
                                     96 	.globl _IRCBAND
                                     97 	.globl _SPDAT
                                     98 	.globl _SPCTL
                                     99 	.globl _SPSTAT
                                    100 	.globl _WKTC
                                    101 	.globl _WKTCH
                                    102 	.globl _WKTCL
                                    103 	.globl _BUS_SPEED
                                    104 	.globl _P_SW2
                                    105 	.globl _P_SW1
                                    106 	.globl _RSTCFG
                                    107 	.globl _PCON
                                    108 	.globl _B
                                    109 	.globl _ACC
                                    110 	.globl _PSW
                                    111 	.globl _SP
                                    112 	.globl _IP3H
                                    113 	.globl _IP3L
                                    114 	.globl _IP2H
                                    115 	.globl _IP2L
                                    116 	.globl _IE2
                                    117 	.globl _IP1H
                                    118 	.globl _IP1L
                                    119 	.globl _IE1
                                    120 	.globl _INT_CLKO
                                    121 	.globl _IAP_TPS
                                    122 	.globl _IAP_CONTR
                                    123 	.globl _IAP_TRIG
                                    124 	.globl _IAP_CMD
                                    125 	.globl _IAP_ADDR
                                    126 	.globl _IAP_ADDRL
                                    127 	.globl _IAP_ADDRH
                                    128 	.globl _IAP_DATA
                                    129 	.globl _P5M0
                                    130 	.globl _P5M1
                                    131 	.globl _P5
                                    132 	.globl _P3M0
                                    133 	.globl _P3M1
                                    134 	.globl _P3
                                    135 	.globl _P2M0
                                    136 	.globl _P2M1
                                    137 	.globl _P2
                                    138 	.globl _P1M0
                                    139 	.globl _P1M1
                                    140 	.globl _P1
                                    141 	.globl _TA
                                    142 	.globl _DPH1
                                    143 	.globl _DPL1
                                    144 	.globl _DPS
                                    145 	.globl _DP
                                    146 	.globl _DPH
                                    147 	.globl _DPL
                                    148 	.globl _CMPCR2
                                    149 	.globl _CMPCR1
                                    150 	.globl _DMA_ADC_AMT
                                    151 	.globl _ADCCFG
                                    152 	.globl _ADC_RES
                                    153 	.globl _ADC_RESL
                                    154 	.globl _ADC_RESH
                                    155 	.globl _ADC_CONTR
                                    156 	.globl _gpioWrite_PARM_2
                                    157 	.globl _DMA_UR4R_TXAL
                                    158 	.globl _DMA_UR4R_TXAH
                                    159 	.globl _DMA_UR4R_DONE
                                    160 	.globl _DMA_UR4R_AMT
                                    161 	.globl _DMA_UR4R_STA
                                    162 	.globl _DMA_UR4R_CR
                                    163 	.globl _DMA_UR4R_CFG
                                    164 	.globl _DMA_UR4T_TXAL
                                    165 	.globl _DMA_UR4T_TXAH
                                    166 	.globl _DMA_UR4T_DONE
                                    167 	.globl _DMA_UR4T_AMT
                                    168 	.globl _DMA_UR4T_STA
                                    169 	.globl _DMA_UR4T_CR
                                    170 	.globl _DMA_UR4T_CFG
                                    171 	.globl _DMA_UR3R_TXAL
                                    172 	.globl _DMA_UR3R_TXAH
                                    173 	.globl _DMA_UR3R_DONE
                                    174 	.globl _DMA_UR3R_AMT
                                    175 	.globl _DMA_UR3R_STA
                                    176 	.globl _DMA_UR3R_CR
                                    177 	.globl _DMA_UR3R_CFG
                                    178 	.globl _DMA_UR3T_TXAL
                                    179 	.globl _DMA_UR3T_TXAH
                                    180 	.globl _DMA_UR3T_DONE
                                    181 	.globl _DMA_UR3T_AMT
                                    182 	.globl _DMA_UR3T_STA
                                    183 	.globl _DMA_UR3T_CR
                                    184 	.globl _DMA_UR3T_CFG
                                    185 	.globl _DMA_UR2R_TXAL
                                    186 	.globl _DMA_UR2R_TXAH
                                    187 	.globl _DMA_UR2R_DONE
                                    188 	.globl _DMA_UR2R_AMT
                                    189 	.globl _DMA_UR2R_STA
                                    190 	.globl _DMA_UR2R_CR
                                    191 	.globl _DMA_UR2R_CFG
                                    192 	.globl _DMA_UR2T_TXAL
                                    193 	.globl _DMA_UR2T_TXAH
                                    194 	.globl _DMA_UR2T_DONE
                                    195 	.globl _DMA_UR2T_AMT
                                    196 	.globl _DMA_UR2T_STA
                                    197 	.globl _DMA_UR2T_CR
                                    198 	.globl _DMA_UR2T_CFG
                                    199 	.globl _DMA_UR1R_TXAL
                                    200 	.globl _DMA_UR1R_TXAH
                                    201 	.globl _DMA_UR1R_DONE
                                    202 	.globl _DMA_UR1R_AMT
                                    203 	.globl _DMA_UR1R_STA
                                    204 	.globl _DMA_UR1R_CR
                                    205 	.globl _DMA_UR1R_CFG
                                    206 	.globl _DMA_UR1T_TXAL
                                    207 	.globl _DMA_UR1T_TXAH
                                    208 	.globl _DMA_UR1T_DONE
                                    209 	.globl _DMA_URTX_AMT
                                    210 	.globl _DMA_UR1T_STA
                                    211 	.globl _DMA_UR1T_CR
                                    212 	.globl _DMA_UR1T_CFG
                                    213 	.globl _TM4PS
                                    214 	.globl _TM3PS
                                    215 	.globl _TM2PS
                                    216 	.globl _IRC48MCR
                                    217 	.globl _IRCDB
                                    218 	.globl _MCLKOCR
                                    219 	.globl _CKSEL
                                    220 	.globl _IRC32KCR
                                    221 	.globl _X32KCR
                                    222 	.globl _XOSCCR
                                    223 	.globl _HIRCCR
                                    224 	.globl _CLKDIV
                                    225 	.globl _DMA_SPI_CFG2
                                    226 	.globl _DMA_SPI_RXAL
                                    227 	.globl _DMA_SPI_RXAH
                                    228 	.globl _DMA_SPI_TXAL
                                    229 	.globl _DMA_SPI_TXAH
                                    230 	.globl _DMA_SPI_DONE
                                    231 	.globl _DMA_SPI_AMT
                                    232 	.globl _DMA_SPI_STA
                                    233 	.globl _DMA_SPI_CR
                                    234 	.globl _DMA_SPI_CFG
                                    235 	.globl _SSEC
                                    236 	.globl _SEC
                                    237 	.globl _MIN
                                    238 	.globl _HOUR
                                    239 	.globl _DAY
                                    240 	.globl _MONTH
                                    241 	.globl _YEAR
                                    242 	.globl _INISSEC
                                    243 	.globl _INISEC
                                    244 	.globl _INIMIN
                                    245 	.globl _INIHOUR
                                    246 	.globl _INIDAY
                                    247 	.globl _INIMONTH
                                    248 	.globl _INIYEAR
                                    249 	.globl _ALASSEC
                                    250 	.globl _ALASEC
                                    251 	.globl _ALAMIN
                                    252 	.globl _ALAHOUR
                                    253 	.globl _RTCIF
                                    254 	.globl _RTCIEN
                                    255 	.globl _RTCCFG
                                    256 	.globl _RTCCR
                                    257 	.globl _PWMB_OISR
                                    258 	.globl _PWMB_DTR
                                    259 	.globl _PWMB_BKR
                                    260 	.globl _PWMB_CCR4L
                                    261 	.globl _PWMB_CCR4H
                                    262 	.globl _PWMB_CCR3L
                                    263 	.globl _PWMB_CCR3H
                                    264 	.globl _PWMB_CCR2L
                                    265 	.globl _PWMB_CCR2H
                                    266 	.globl _PWMB_CCR1L
                                    267 	.globl _PWMB_CCR1H
                                    268 	.globl _PWMB_RCR
                                    269 	.globl _PWMB_ARRL
                                    270 	.globl _PWMB_ARRH
                                    271 	.globl _PWMB_PSCRL
                                    272 	.globl _PWMB_PSCRH
                                    273 	.globl _PWMB_CNTRL
                                    274 	.globl _PWMB_CNTRH
                                    275 	.globl _PWMB_CCER2
                                    276 	.globl _PWMB_CCER1
                                    277 	.globl _PWMB_CCMR4
                                    278 	.globl _PWMB_CCMR3
                                    279 	.globl _PWMB_CCMR2
                                    280 	.globl _PWMB_CCMR1
                                    281 	.globl _PWMB_EGR
                                    282 	.globl _PWMB_SR2
                                    283 	.globl _PWMB_SR1
                                    284 	.globl _PWMB_IER
                                    285 	.globl _PWMB_ETR
                                    286 	.globl _PWMB_SMCR
                                    287 	.globl _PWMB_CR2
                                    288 	.globl _PWMB_CR1
                                    289 	.globl _PWMA_OISR
                                    290 	.globl _PWMA_DTR
                                    291 	.globl _PWMA_BKR
                                    292 	.globl _PWMA_CCR4L
                                    293 	.globl _PWMA_CCR4H
                                    294 	.globl _PWMA_CCR3L
                                    295 	.globl _PWMA_CCR3H
                                    296 	.globl _PWMA_CCR2L
                                    297 	.globl _PWMA_CCR2H
                                    298 	.globl _PWMA_CCR1L
                                    299 	.globl _PWMA_CCR1H
                                    300 	.globl _PWMA_RCR
                                    301 	.globl _PWMA_ARRL
                                    302 	.globl _PWMA_ARRH
                                    303 	.globl _PWMA_PSCRL
                                    304 	.globl _PWMA_PSCRH
                                    305 	.globl _PWMA_CNTRL
                                    306 	.globl _PWMA_CNTRH
                                    307 	.globl _PWMA_CCER2
                                    308 	.globl _PWMA_CCER1
                                    309 	.globl _PWMA_CCMR4
                                    310 	.globl _PWMA_CCMR3
                                    311 	.globl _PWMA_CCMR2
                                    312 	.globl _PWMA_CCMR1
                                    313 	.globl _PWMA_EGR
                                    314 	.globl _PWMA_SR2
                                    315 	.globl _PWMA_SR1
                                    316 	.globl _PWMA_IER
                                    317 	.globl _PWMA_ETR
                                    318 	.globl _PWMA_SMCR
                                    319 	.globl _PWMA_CR2
                                    320 	.globl _PWMA_CR1
                                    321 	.globl _PWMB_IOAUX
                                    322 	.globl _PWMB_PS
                                    323 	.globl _PWMB_ENO
                                    324 	.globl _PWMB_ETRPS
                                    325 	.globl _PWMA_IOAUX
                                    326 	.globl _PWMA_PS
                                    327 	.globl _PWMA_ENO
                                    328 	.globl _PWMA_ETRPS
                                    329 	.globl _RSTFLAG
                                    330 	.globl _SPFUNC
                                    331 	.globl _OPCON
                                    332 	.globl _ARCON
                                    333 	.globl _MD4
                                    334 	.globl _MD5
                                    335 	.globl _MD0
                                    336 	.globl _MD1
                                    337 	.globl _MD2
                                    338 	.globl _MD3
                                    339 	.globl _DMA_LCM_RXAL
                                    340 	.globl _DMA_LCM_RXAH
                                    341 	.globl _DMA_LCM_TXAL
                                    342 	.globl _DMA_LCM_TXAH
                                    343 	.globl _DMA_LCM_DONE
                                    344 	.globl _DMA_LCM_AMT
                                    345 	.globl _DMA_LCM_STA
                                    346 	.globl _DMA_LCM_CR
                                    347 	.globl _DMA_LCM_CFG
                                    348 	.globl _LCMIDDAT
                                    349 	.globl _LCMIDDATH
                                    350 	.globl _LCMIDDATL
                                    351 	.globl _LCMSTA
                                    352 	.globl _LCMCR
                                    353 	.globl _LCMCFG2
                                    354 	.globl _LCMCFG
                                    355 	.globl _I2CMSAUX
                                    356 	.globl _I2CRXD
                                    357 	.globl _I2CTXD
                                    358 	.globl _I2CSLADR
                                    359 	.globl _I2CSLST
                                    360 	.globl _I2CSLCR
                                    361 	.globl _I2CMSST
                                    362 	.globl _I2CMSCR
                                    363 	.globl _I2CCFG
                                    364 	.globl _PINIPH
                                    365 	.globl _PINIPL
                                    366 	.globl _P5IE
                                    367 	.globl _P5DR
                                    368 	.globl _P5SR
                                    369 	.globl _P5NCS
                                    370 	.globl _P5PU
                                    371 	.globl _P5WKUE
                                    372 	.globl _P5IM1
                                    373 	.globl _P5IM0
                                    374 	.globl _P5INTF
                                    375 	.globl _P5INTE
                                    376 	.globl _P3IE
                                    377 	.globl _P3DR
                                    378 	.globl _P3SR
                                    379 	.globl _P3NCS
                                    380 	.globl _P3PU
                                    381 	.globl _P3WKUE
                                    382 	.globl _P3IM1
                                    383 	.globl _P3IM0
                                    384 	.globl _P3INTF
                                    385 	.globl _P3INTE
                                    386 	.globl _P2IE
                                    387 	.globl _P2DR
                                    388 	.globl _P2SR
                                    389 	.globl _P2NCS
                                    390 	.globl _P2PU
                                    391 	.globl _P2WKUE
                                    392 	.globl _P2IM1
                                    393 	.globl _P2IM0
                                    394 	.globl _P2INTF
                                    395 	.globl _P2INTE
                                    396 	.globl _P1IE
                                    397 	.globl _P1DR
                                    398 	.globl _P1SR
                                    399 	.globl _P1NCS
                                    400 	.globl _P1PU
                                    401 	.globl _P1WKUE
                                    402 	.globl _P1IM1
                                    403 	.globl _P1IM0
                                    404 	.globl _P1INTF
                                    405 	.globl _P1INTE
                                    406 	.globl _DMA_M2M_RXAL
                                    407 	.globl _DMA_M2M_RXAH
                                    408 	.globl _DMA_M2M_TXAL
                                    409 	.globl _DMA_M2M_TXAH
                                    410 	.globl _DMA_M2M_DONE
                                    411 	.globl _DMA_M2M_AMT
                                    412 	.globl _DMA_M2M_STA
                                    413 	.globl _DMA_M2M_CR
                                    414 	.globl _DMA_M2M_CFG
                                    415 	.globl _CMPEXCFG
                                    416 	.globl _CHIP_PACKAGE_TYPE
                                    417 	.globl _CHIP_TEST_DAY_BCD
                                    418 	.globl _CHIP_TEST_MONTH_BCD
                                    419 	.globl _CHIP_TEST_YEAR_BCD
                                    420 	.globl _PROGRAM_AREA_SIZE
                                    421 	.globl _VRTRIM_44MHz
                                    422 	.globl _VRTRIM_27MHz
                                    423 	.globl _VRTRIM_10MHz
                                    424 	.globl _VRTRIM_6MHz
                                    425 	.globl _IRTRIM_48MHz
                                    426 	.globl _IRTRIM_44_2368MHz
                                    427 	.globl _IRTRIM_40MHz
                                    428 	.globl _IRTRIM_36_864MHz
                                    429 	.globl _IRTRIM_35MHz
                                    430 	.globl _IRTRIM_33_1776MHz
                                    431 	.globl _IRTRIM_30MHz
                                    432 	.globl _IRTRIM_27MHz
                                    433 	.globl _IRTRIM_24MHz
                                    434 	.globl _IRTRIM_22_1184MHz
                                    435 	.globl ___OTHER_INFO
                                    436 	.globl _CHIP_GUID
                                    437 	.globl _DMA_ADC_CHSW1
                                    438 	.globl _DMA_ADC_CHSW0
                                    439 	.globl _DMA_ADC_CFG2
                                    440 	.globl _DMA_ADC_RXAL
                                    441 	.globl _DMA_ADC_RXAH
                                    442 	.globl _DMA_ADC_STA
                                    443 	.globl _DMA_ADC_CR
                                    444 	.globl _DMA_ADC_CFG
                                    445 	.globl _ADCEXCFG
                                    446 	.globl _ADCTIM
                                    447 	.globl _gpioConfigure
                                    448 	.globl _gpioRead
                                    449 	.globl _gpioWrite
                                    450 ;--------------------------------------------------------
                                    451 ; special function registers
                                    452 ;--------------------------------------------------------
                                    453 	.area RSEG    (ABS,DATA)
      000000                        454 	.org 0x0000
                           0000BC   455 _ADC_CONTR	=	0x00bc
                           0000BD   456 _ADC_RESH	=	0x00bd
                           0000BE   457 _ADC_RESL	=	0x00be
                           00BDBE   458 _ADC_RES	=	0xbdbe
                           0000DE   459 _ADCCFG	=	0x00de
                           0000FA   460 _DMA_ADC_AMT	=	0x00fa
                           0000E6   461 _CMPCR1	=	0x00e6
                           0000E7   462 _CMPCR2	=	0x00e7
                           000082   463 _DPL	=	0x0082
                           000083   464 _DPH	=	0x0083
                           008382   465 _DP	=	0x8382
                           0000E3   466 _DPS	=	0x00e3
                           0000E4   467 _DPL1	=	0x00e4
                           0000E5   468 _DPH1	=	0x00e5
                           0000AE   469 _TA	=	0x00ae
                           000090   470 _P1	=	0x0090
                           000091   471 _P1M1	=	0x0091
                           000092   472 _P1M0	=	0x0092
                           0000A0   473 _P2	=	0x00a0
                           000095   474 _P2M1	=	0x0095
                           000096   475 _P2M0	=	0x0096
                           0000B0   476 _P3	=	0x00b0
                           0000B1   477 _P3M1	=	0x00b1
                           0000B2   478 _P3M0	=	0x00b2
                           0000C8   479 _P5	=	0x00c8
                           0000C9   480 _P5M1	=	0x00c9
                           0000CA   481 _P5M0	=	0x00ca
                           0000C2   482 _IAP_DATA	=	0x00c2
                           0000C3   483 _IAP_ADDRH	=	0x00c3
                           0000C4   484 _IAP_ADDRL	=	0x00c4
                           00C3C4   485 _IAP_ADDR	=	0xc3c4
                           0000C5   486 _IAP_CMD	=	0x00c5
                           0000C6   487 _IAP_TRIG	=	0x00c6
                           0000C7   488 _IAP_CONTR	=	0x00c7
                           0000F5   489 _IAP_TPS	=	0x00f5
                           00008F   490 _INT_CLKO	=	0x008f
                           0000A8   491 _IE1	=	0x00a8
                           0000B8   492 _IP1L	=	0x00b8
                           0000B7   493 _IP1H	=	0x00b7
                           0000AF   494 _IE2	=	0x00af
                           0000B5   495 _IP2L	=	0x00b5
                           0000B6   496 _IP2H	=	0x00b6
                           0000DF   497 _IP3L	=	0x00df
                           0000EE   498 _IP3H	=	0x00ee
                           000081   499 _SP	=	0x0081
                           0000D0   500 _PSW	=	0x00d0
                           0000E0   501 _ACC	=	0x00e0
                           0000F0   502 _B	=	0x00f0
                           000087   503 _PCON	=	0x0087
                           0000FF   504 _RSTCFG	=	0x00ff
                           0000A2   505 _P_SW1	=	0x00a2
                           0000BA   506 _P_SW2	=	0x00ba
                           0000A1   507 _BUS_SPEED	=	0x00a1
                           0000AA   508 _WKTCL	=	0x00aa
                           0000AB   509 _WKTCH	=	0x00ab
                           00ABAA   510 _WKTC	=	0xabaa
                           0000CD   511 _SPSTAT	=	0x00cd
                           0000CE   512 _SPCTL	=	0x00ce
                           0000CF   513 _SPDAT	=	0x00cf
                           00009D   514 _IRCBAND	=	0x009d
                           00009E   515 _LIRTRIM	=	0x009e
                           00009F   516 _IRTRIM	=	0x009f
                           000088   517 _TCON	=	0x0088
                           000089   518 _TMOD	=	0x0089
                           00008A   519 _T0L	=	0x008a
                           00008C   520 _T0H	=	0x008c
                           008C8A   521 _T0	=	0x8c8a
                           00008B   522 _T1L	=	0x008b
                           00008D   523 _T1H	=	0x008d
                           008D8B   524 _T1	=	0x8d8b
                           0000D7   525 _T2L	=	0x00d7
                           0000D6   526 _T2H	=	0x00d6
                           00D6D7   527 _T2	=	0xd6d7
                           00008E   528 _AUXR	=	0x008e
                           0000C1   529 _WDT_CONTR	=	0x00c1
                           0000D1   530 _T4T3M	=	0x00d1
                           0000D2   531 _T4H	=	0x00d2
                           0000D3   532 _T4L	=	0x00d3
                           00D2D3   533 _T4	=	0xd2d3
                           0000D4   534 _T3H	=	0x00d4
                           0000D5   535 _T3L	=	0x00d5
                           00D4D5   536 _T3	=	0xd4d5
                           0000EF   537 _AUXINTIF	=	0x00ef
                           0000A9   538 _SADDR	=	0x00a9
                           0000B9   539 _SADEN	=	0x00b9
                           000098   540 _S1CON	=	0x0098
                           000099   541 _S1BUF	=	0x0099
                           00009A   542 _S2CON	=	0x009a
                           00009B   543 _S2BUF	=	0x009b
                           0000AC   544 _S3CON	=	0x00ac
                           0000AD   545 _S3BUF	=	0x00ad
                           000084   546 _S4CON	=	0x0084
                           000085   547 _S4BUF	=	0x0085
                           0000DC   548 _USBCLK	=	0x00dc
                           0000EC   549 _USBDAT	=	0x00ec
                           0000F4   550 _USBCON	=	0x00f4
                           0000FC   551 _USBADR	=	0x00fc
                                    552 ;--------------------------------------------------------
                                    553 ; special function bits
                                    554 ;--------------------------------------------------------
                                    555 	.area RSEG    (ABS,DATA)
      000000                        556 	.org 0x0000
                           000090   557 _P1_0	=	0x0090
                           000091   558 _P1_1	=	0x0091
                           000092   559 _P1_2	=	0x0092
                           000093   560 _P1_3	=	0x0093
                           000094   561 _P1_4	=	0x0094
                           000095   562 _P1_5	=	0x0095
                           000096   563 _P1_6	=	0x0096
                           000097   564 _P1_7	=	0x0097
                           0000A0   565 _P2_0	=	0x00a0
                           0000A1   566 _P2_1	=	0x00a1
                           0000A2   567 _P2_2	=	0x00a2
                           0000A3   568 _P2_3	=	0x00a3
                           0000A4   569 _P2_4	=	0x00a4
                           0000A5   570 _P2_5	=	0x00a5
                           0000A6   571 _P2_6	=	0x00a6
                           0000A7   572 _P2_7	=	0x00a7
                           0000B0   573 _P3_0	=	0x00b0
                           0000B1   574 _P3_1	=	0x00b1
                           0000B2   575 _P3_2	=	0x00b2
                           0000B3   576 _P3_3	=	0x00b3
                           0000B4   577 _P3_4	=	0x00b4
                           0000B5   578 _P3_5	=	0x00b5
                           0000B6   579 _P3_6	=	0x00b6
                           0000B7   580 _P3_7	=	0x00b7
                           0000C8   581 _P5_0	=	0x00c8
                           0000C9   582 _P5_1	=	0x00c9
                           0000CA   583 _P5_2	=	0x00ca
                           0000CB   584 _P5_3	=	0x00cb
                           0000CC   585 _P5_4	=	0x00cc
                           0000CD   586 _P5_5	=	0x00cd
                           000088   587 _INT0TR	=	0x0088
                           00008A   588 _INT1TR	=	0x008a
                           0000A8   589 _INT0IE	=	0x00a8
                           0000AA   590 _INT1IE	=	0x00aa
                           0000AF   591 _EA	=	0x00af
                           0000D0   592 _P	=	0x00d0
                           0000D1   593 _F1	=	0x00d1
                           0000D2   594 _OV	=	0x00d2
                           0000D3   595 _RS0	=	0x00d3
                           0000D4   596 _RS1	=	0x00d4
                           0000D5   597 _F0	=	0x00d5
                           0000D6   598 _AC	=	0x00d6
                           0000D7   599 _CY	=	0x00d7
                           00008C   600 _T0RUN	=	0x008c
                           00008E   601 _T1RUN	=	0x008e
                           0000A9   602 _T0IE	=	0x00a9
                           0000AB   603 _T1IE	=	0x00ab
                           00009F   604 _S1SM0_FE	=	0x009f
                                    605 ;--------------------------------------------------------
                                    606 ; overlayable register banks
                                    607 ;--------------------------------------------------------
                                    608 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        609 	.ds 8
                                    610 ;--------------------------------------------------------
                                    611 ; internal ram data
                                    612 ;--------------------------------------------------------
                                    613 	.area DSEG    (DATA)
      000008                        614 _gpioConfigure_sloc0_1_0:
      000008                        615 	.ds 3
                                    616 ;--------------------------------------------------------
                                    617 ; overlayable items in internal ram 
                                    618 ;--------------------------------------------------------
                                    619 ;--------------------------------------------------------
                                    620 ; indirectly addressable internal ram data
                                    621 ;--------------------------------------------------------
                                    622 	.area ISEG    (DATA)
                                    623 ;--------------------------------------------------------
                                    624 ; absolute internal ram data
                                    625 ;--------------------------------------------------------
                                    626 	.area IABS    (ABS,DATA)
                                    627 	.area IABS    (ABS,DATA)
                                    628 ;--------------------------------------------------------
                                    629 ; bit data
                                    630 ;--------------------------------------------------------
                                    631 	.area BSEG    (BIT)
                                    632 ;--------------------------------------------------------
                                    633 ; paged external ram data
                                    634 ;--------------------------------------------------------
                                    635 	.area PSEG    (PAG,XDATA)
                                    636 ;--------------------------------------------------------
                                    637 ; external ram data
                                    638 ;--------------------------------------------------------
                                    639 	.area XSEG    (XDATA)
                           00FEA8   640 _ADCTIM	=	0xfea8
                           00FEAD   641 _ADCEXCFG	=	0xfead
                           00FA10   642 _DMA_ADC_CFG	=	0xfa10
                           00FA11   643 _DMA_ADC_CR	=	0xfa11
                           00FA12   644 _DMA_ADC_STA	=	0xfa12
                           00FA17   645 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   646 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   647 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   648 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   649 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   650 _CHIP_GUID	=	0xfde0
                           00FDE7   651 ___OTHER_INFO	=	0xfde7
                           00FDEB   652 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   653 _IRTRIM_24MHz	=	0xfdec
                           00FDED   654 _IRTRIM_27MHz	=	0xfded
                           00FDEE   655 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   656 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   657 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   658 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   659 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   660 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   661 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   662 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   663 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   664 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   665 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   666 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   667 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   668 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   669 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   670 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   671 _CMPEXCFG	=	0xfeae
                           00FA00   672 _DMA_M2M_CFG	=	0xfa00
                           00FA01   673 _DMA_M2M_CR	=	0xfa01
                           00FA02   674 _DMA_M2M_STA	=	0xfa02
                           00FA03   675 _DMA_M2M_AMT	=	0xfa03
                           00FA04   676 _DMA_M2M_DONE	=	0xfa04
                           00FA05   677 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   678 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   679 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   680 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   681 _P1INTE	=	0xfd01
                           00FD11   682 _P1INTF	=	0xfd11
                           00FD21   683 _P1IM0	=	0xfd21
                           00FD31   684 _P1IM1	=	0xfd31
                           00FD41   685 _P1WKUE	=	0xfd41
                           00FE11   686 _P1PU	=	0xfe11
                           00FE19   687 _P1NCS	=	0xfe19
                           00FE21   688 _P1SR	=	0xfe21
                           00FE29   689 _P1DR	=	0xfe29
                           00FE31   690 _P1IE	=	0xfe31
                           00FD02   691 _P2INTE	=	0xfd02
                           00FD12   692 _P2INTF	=	0xfd12
                           00FD22   693 _P2IM0	=	0xfd22
                           00FD32   694 _P2IM1	=	0xfd32
                           00FD42   695 _P2WKUE	=	0xfd42
                           00FE12   696 _P2PU	=	0xfe12
                           00FE1A   697 _P2NCS	=	0xfe1a
                           00FE22   698 _P2SR	=	0xfe22
                           00FE2A   699 _P2DR	=	0xfe2a
                           00FE32   700 _P2IE	=	0xfe32
                           00FD03   701 _P3INTE	=	0xfd03
                           00FD13   702 _P3INTF	=	0xfd13
                           00FD23   703 _P3IM0	=	0xfd23
                           00FD33   704 _P3IM1	=	0xfd33
                           00FD43   705 _P3WKUE	=	0xfd43
                           00FE13   706 _P3PU	=	0xfe13
                           00FE1B   707 _P3NCS	=	0xfe1b
                           00FE23   708 _P3SR	=	0xfe23
                           00FE2B   709 _P3DR	=	0xfe2b
                           00FE33   710 _P3IE	=	0xfe33
                           00FD05   711 _P5INTE	=	0xfd05
                           00FD15   712 _P5INTF	=	0xfd15
                           00FD25   713 _P5IM0	=	0xfd25
                           00FD35   714 _P5IM1	=	0xfd35
                           00FD45   715 _P5WKUE	=	0xfd45
                           00FE15   716 _P5PU	=	0xfe15
                           00FE1D   717 _P5NCS	=	0xfe1d
                           00FE25   718 _P5SR	=	0xfe25
                           00FE2D   719 _P5DR	=	0xfe2d
                           00FE35   720 _P5IE	=	0xfe35
                           00FD60   721 _PINIPL	=	0xfd60
                           00FD61   722 _PINIPH	=	0xfd61
                           00FE80   723 _I2CCFG	=	0xfe80
                           00FE81   724 _I2CMSCR	=	0xfe81
                           00FE82   725 _I2CMSST	=	0xfe82
                           00FE83   726 _I2CSLCR	=	0xfe83
                           00FE84   727 _I2CSLST	=	0xfe84
                           00FE85   728 _I2CSLADR	=	0xfe85
                           00FE86   729 _I2CTXD	=	0xfe86
                           00FE87   730 _I2CRXD	=	0xfe87
                           00FE88   731 _I2CMSAUX	=	0xfe88
                           00FE50   732 _LCMCFG	=	0xfe50
                           00FE51   733 _LCMCFG2	=	0xfe51
                           00FE52   734 _LCMCR	=	0xfe52
                           00FE53   735 _LCMSTA	=	0xfe53
                           00FE54   736 _LCMIDDATL	=	0xfe54
                           00FE55   737 _LCMIDDATH	=	0xfe55
                           00FE54   738 _LCMIDDAT	=	0xfe54
                           00FA70   739 _DMA_LCM_CFG	=	0xfa70
                           00FA71   740 _DMA_LCM_CR	=	0xfa71
                           00FA72   741 _DMA_LCM_STA	=	0xfa72
                           00FA73   742 _DMA_LCM_AMT	=	0xfa73
                           00FA74   743 _DMA_LCM_DONE	=	0xfa74
                           00FA75   744 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   745 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   746 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   747 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   748 _MD3	=	0xfcf0
                           00FCF1   749 _MD2	=	0xfcf1
                           00FCF2   750 _MD1	=	0xfcf2
                           00FCF3   751 _MD0	=	0xfcf3
                           00FCF4   752 _MD5	=	0xfcf4
                           00FCF5   753 _MD4	=	0xfcf5
                           00FCF6   754 _ARCON	=	0xfcf6
                           00FCF7   755 _OPCON	=	0xfcf7
                           00FE08   756 _SPFUNC	=	0xfe08
                           00FE09   757 _RSTFLAG	=	0xfe09
                           00FEB0   758 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   759 _PWMA_ENO	=	0xfeb1
                           00FEB2   760 _PWMA_PS	=	0xfeb2
                           00FEB3   761 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   762 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   763 _PWMB_ENO	=	0xfeb5
                           00FEB6   764 _PWMB_PS	=	0xfeb6
                           00FEB7   765 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   766 _PWMA_CR1	=	0xfec0
                           00FEC1   767 _PWMA_CR2	=	0xfec1
                           00FEC2   768 _PWMA_SMCR	=	0xfec2
                           00FEC3   769 _PWMA_ETR	=	0xfec3
                           00FEC4   770 _PWMA_IER	=	0xfec4
                           00FEC5   771 _PWMA_SR1	=	0xfec5
                           00FEC6   772 _PWMA_SR2	=	0xfec6
                           00FEC7   773 _PWMA_EGR	=	0xfec7
                           00FEC8   774 _PWMA_CCMR1	=	0xfec8
                           00FEC9   775 _PWMA_CCMR2	=	0xfec9
                           00FECA   776 _PWMA_CCMR3	=	0xfeca
                           00FECB   777 _PWMA_CCMR4	=	0xfecb
                           00FECC   778 _PWMA_CCER1	=	0xfecc
                           00FECD   779 _PWMA_CCER2	=	0xfecd
                           00FECE   780 _PWMA_CNTRH	=	0xfece
                           00FECF   781 _PWMA_CNTRL	=	0xfecf
                           00FED0   782 _PWMA_PSCRH	=	0xfed0
                           00FED1   783 _PWMA_PSCRL	=	0xfed1
                           00FED2   784 _PWMA_ARRH	=	0xfed2
                           00FED3   785 _PWMA_ARRL	=	0xfed3
                           00FED4   786 _PWMA_RCR	=	0xfed4
                           00FED5   787 _PWMA_CCR1H	=	0xfed5
                           00FED6   788 _PWMA_CCR1L	=	0xfed6
                           00FED7   789 _PWMA_CCR2H	=	0xfed7
                           00FED8   790 _PWMA_CCR2L	=	0xfed8
                           00FED9   791 _PWMA_CCR3H	=	0xfed9
                           00FEDA   792 _PWMA_CCR3L	=	0xfeda
                           00FEDB   793 _PWMA_CCR4H	=	0xfedb
                           00FEDC   794 _PWMA_CCR4L	=	0xfedc
                           00FEDD   795 _PWMA_BKR	=	0xfedd
                           00FEDE   796 _PWMA_DTR	=	0xfede
                           00FEDF   797 _PWMA_OISR	=	0xfedf
                           00FEE0   798 _PWMB_CR1	=	0xfee0
                           00FEE1   799 _PWMB_CR2	=	0xfee1
                           00FEE2   800 _PWMB_SMCR	=	0xfee2
                           00FEE3   801 _PWMB_ETR	=	0xfee3
                           00FEE4   802 _PWMB_IER	=	0xfee4
                           00FEE5   803 _PWMB_SR1	=	0xfee5
                           00FEE6   804 _PWMB_SR2	=	0xfee6
                           00FEE7   805 _PWMB_EGR	=	0xfee7
                           00FEE8   806 _PWMB_CCMR1	=	0xfee8
                           00FEE9   807 _PWMB_CCMR2	=	0xfee9
                           00FEEA   808 _PWMB_CCMR3	=	0xfeea
                           00FEEB   809 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   810 _PWMB_CCER1	=	0xfeec
                           00FEED   811 _PWMB_CCER2	=	0xfeed
                           00FEEE   812 _PWMB_CNTRH	=	0xfeee
                           00FEEF   813 _PWMB_CNTRL	=	0xfeef
                           00FEF0   814 _PWMB_PSCRH	=	0xfef0
                           00FEF1   815 _PWMB_PSCRL	=	0xfef1
                           00FEF2   816 _PWMB_ARRH	=	0xfef2
                           00FEF3   817 _PWMB_ARRL	=	0xfef3
                           00FEF4   818 _PWMB_RCR	=	0xfef4
                           00FEF5   819 _PWMB_CCR1H	=	0xfef5
                           00FEF6   820 _PWMB_CCR1L	=	0xfef6
                           00FEF7   821 _PWMB_CCR2H	=	0xfef7
                           00FEF8   822 _PWMB_CCR2L	=	0xfef8
                           00FEF9   823 _PWMB_CCR3H	=	0xfef9
                           00FEFA   824 _PWMB_CCR3L	=	0xfefa
                           00FEFB   825 _PWMB_CCR4H	=	0xfefb
                           00FEFC   826 _PWMB_CCR4L	=	0xfefc
                           00FEFD   827 _PWMB_BKR	=	0xfefd
                           00FEFE   828 _PWMB_DTR	=	0xfefe
                           00FEFF   829 _PWMB_OISR	=	0xfeff
                           00FE60   830 _RTCCR	=	0xfe60
                           00FE61   831 _RTCCFG	=	0xfe61
                           00FE62   832 _RTCIEN	=	0xfe62
                           00FE63   833 _RTCIF	=	0xfe63
                           00FE64   834 _ALAHOUR	=	0xfe64
                           00FE65   835 _ALAMIN	=	0xfe65
                           00FE66   836 _ALASEC	=	0xfe66
                           00FE67   837 _ALASSEC	=	0xfe67
                           00FE68   838 _INIYEAR	=	0xfe68
                           00FE69   839 _INIMONTH	=	0xfe69
                           00FE6A   840 _INIDAY	=	0xfe6a
                           00FE6B   841 _INIHOUR	=	0xfe6b
                           00FE6C   842 _INIMIN	=	0xfe6c
                           00FE6D   843 _INISEC	=	0xfe6d
                           00FE6E   844 _INISSEC	=	0xfe6e
                           00FE70   845 _YEAR	=	0xfe70
                           00FE71   846 _MONTH	=	0xfe71
                           00FE72   847 _DAY	=	0xfe72
                           00FE73   848 _HOUR	=	0xfe73
                           00FE74   849 _MIN	=	0xfe74
                           00FE75   850 _SEC	=	0xfe75
                           00FE76   851 _SSEC	=	0xfe76
                           00FA20   852 _DMA_SPI_CFG	=	0xfa20
                           00FA21   853 _DMA_SPI_CR	=	0xfa21
                           00FA22   854 _DMA_SPI_STA	=	0xfa22
                           00FA23   855 _DMA_SPI_AMT	=	0xfa23
                           00FA24   856 _DMA_SPI_DONE	=	0xfa24
                           00FA25   857 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   858 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   859 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   860 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   861 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   862 _CLKDIV	=	0xfe01
                           00FE02   863 _HIRCCR	=	0xfe02
                           00FE03   864 _XOSCCR	=	0xfe03
                           00FE08   865 _X32KCR	=	0xfe08
                           00FE04   866 _IRC32KCR	=	0xfe04
                           00FE00   867 _CKSEL	=	0xfe00
                           00FE05   868 _MCLKOCR	=	0xfe05
                           00FE06   869 _IRCDB	=	0xfe06
                           00FE07   870 _IRC48MCR	=	0xfe07
                           00FEA2   871 _TM2PS	=	0xfea2
                           00FEA3   872 _TM3PS	=	0xfea3
                           00FEA4   873 _TM4PS	=	0xfea4
                           00FA30   874 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   875 _DMA_UR1T_CR	=	0xfa31
                           00FA32   876 _DMA_UR1T_STA	=	0xfa32
                           00FA33   877 _DMA_URTX_AMT	=	0xfa33
                           00FA34   878 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   879 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   880 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   881 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   882 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   883 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   884 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   885 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   886 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   887 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   888 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   889 _DMA_UR2T_CR	=	0xfa31
                           00FA32   890 _DMA_UR2T_STA	=	0xfa32
                           00FA33   891 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   892 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   893 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   894 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   895 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   896 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   897 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   898 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   899 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   900 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   901 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   902 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   903 _DMA_UR3T_CR	=	0xfa31
                           00FA32   904 _DMA_UR3T_STA	=	0xfa32
                           00FA33   905 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   906 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   907 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   908 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   909 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   910 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   911 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   912 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   913 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   914 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   915 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   916 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   917 _DMA_UR4T_CR	=	0xfa31
                           00FA32   918 _DMA_UR4T_STA	=	0xfa32
                           00FA33   919 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   920 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   921 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   922 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   923 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   924 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   925 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   926 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   927 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   928 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   929 _DMA_UR4R_TXAL	=	0xfa3e
      000000                        930 _uartGetCharacter_result_65536_69:
      000000                        931 	.ds 1
      000001                        932 __gpio_setBits_PARM_2:
      000001                        933 	.ds 1
      000002                        934 __gpio_setBits_PARM_3:
      000002                        935 	.ds 3
      000005                        936 __gpio_setBits_portValue_65536_131:
      000005                        937 	.ds 1
      000006                        938 __isOutput_gpioConfig_65536_133:
      000006                        939 	.ds 3
      000009                        940 __isInput_gpioConfig_65536_135:
      000009                        941 	.ds 3
      00000C                        942 _gpioConfigure_gpioConfig_65536_137:
      00000C                        943 	.ds 3
      00000F                        944 _gpioConfigure_mask_65536_138:
      00000F                        945 	.ds 1
      000010                        946 _gpioConfigure_pm1_65537_141:
      000010                        947 	.ds 1
      000011                        948 _gpioConfigure_pm0_65537_141:
      000011                        949 	.ds 1
      000012                        950 _gpioConfigure_pncs_65537_141:
      000012                        951 	.ds 1
      000013                        952 _gpioConfigure_ppu_65537_141:
      000013                        953 	.ds 1
      000014                        954 _gpioConfigure_pdr_65537_141:
      000014                        955 	.ds 1
      000015                        956 _gpioConfigure_psr_65537_141:
      000015                        957 	.ds 1
      000016                        958 _gpioConfigure_pie_65537_141:
      000016                        959 	.ds 1
      000017                        960 _gpioConfigure_pim1_65537_141:
      000017                        961 	.ds 1
      000018                        962 _gpioConfigure_pim0_65537_141:
      000018                        963 	.ds 1
      000019                        964 _gpioConfigure_pintf_65537_141:
      000019                        965 	.ds 1
      00001A                        966 _gpioConfigure_pinte_65537_141:
      00001A                        967 	.ds 1
      00001B                        968 _gpioConfigure_pwkue_65537_141:
      00001B                        969 	.ds 1
      00001C                        970 __getPort_port_65536_146:
      00001C                        971 	.ds 1
      00001D                        972 __getPort_value_65536_147:
      00001D                        973 	.ds 1
      00001E                        974 _gpioRead_gpioConfig_65536_149:
      00001E                        975 	.ds 3
      000021                        976 _gpioWrite_PARM_2:
      000021                        977 	.ds 1
      000022                        978 _gpioWrite_gpioConfig_65536_151:
      000022                        979 	.ds 3
                                    980 ;--------------------------------------------------------
                                    981 ; absolute external ram data
                                    982 ;--------------------------------------------------------
                                    983 	.area XABS    (ABS,XDATA)
                                    984 ;--------------------------------------------------------
                                    985 ; external initialized ram data
                                    986 ;--------------------------------------------------------
                                    987 	.area XISEG   (XDATA)
                                    988 	.area HOME    (CODE)
                                    989 	.area GSINIT0 (CODE)
                                    990 	.area GSINIT1 (CODE)
                                    991 	.area GSINIT2 (CODE)
                                    992 	.area GSINIT3 (CODE)
                                    993 	.area GSINIT4 (CODE)
                                    994 	.area GSINIT5 (CODE)
                                    995 	.area GSINIT  (CODE)
                                    996 	.area GSFINAL (CODE)
                                    997 	.area CSEG    (CODE)
                                    998 ;--------------------------------------------------------
                                    999 ; global & static initialisations
                                   1000 ;--------------------------------------------------------
                                   1001 	.area HOME    (CODE)
                                   1002 	.area GSINIT  (CODE)
                                   1003 	.area GSFINAL (CODE)
                                   1004 	.area GSINIT  (CODE)
                                   1005 ;--------------------------------------------------------
                                   1006 ; Home
                                   1007 ;--------------------------------------------------------
                                   1008 	.area HOME    (CODE)
                                   1009 	.area HOME    (CODE)
                                   1010 ;--------------------------------------------------------
                                   1011 ; code
                                   1012 ;--------------------------------------------------------
                                   1013 	.area CSEG    (CODE)
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function '_gpio_setBits'
                                   1016 ;------------------------------------------------------------
                                   1017 ;cfgValue                  Allocated with name '__gpio_setBits_PARM_2'
                                   1018 ;gpioConfig                Allocated with name '__gpio_setBits_PARM_3'
                                   1019 ;portValue                 Allocated with name '__gpio_setBits_portValue_65536_131'
                                   1020 ;------------------------------------------------------------
                                   1021 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:39: static uint8_t _gpio_setBits(uint8_t portValue, uint8_t cfgValue, GpioConfig *gpioConfig) {
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function _gpio_setBits
                                   1024 ;	-----------------------------------------
      0000AC                       1025 __gpio_setBits:
                           000007  1026 	ar7 = 0x07
                           000006  1027 	ar6 = 0x06
                           000005  1028 	ar5 = 0x05
                           000004  1029 	ar4 = 0x04
                           000003  1030 	ar3 = 0x03
                           000002  1031 	ar2 = 0x02
                           000001  1032 	ar1 = 0x01
                           000000  1033 	ar0 = 0x00
      0000AC E5 82            [12] 1034 	mov	a,dpl
      0000AE 90 00 05         [24] 1035 	mov	dptr,#__gpio_setBits_portValue_65536_131
      0000B1 F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:40: return cfgValue ? (portValue | gpioConfig->__setMask) : (portValue & gpioConfig->__clearMask);
      0000B2 90 00 01         [24] 1038 	mov	dptr,#__gpio_setBits_PARM_2
      0000B5 E0               [24] 1039 	movx	a,@dptr
      0000B6 60 24            [24] 1040 	jz	00103$
      0000B8 90 00 02         [24] 1041 	mov	dptr,#__gpio_setBits_PARM_3
      0000BB E0               [24] 1042 	movx	a,@dptr
      0000BC FD               [12] 1043 	mov	r5,a
      0000BD A3               [24] 1044 	inc	dptr
      0000BE E0               [24] 1045 	movx	a,@dptr
      0000BF FE               [12] 1046 	mov	r6,a
      0000C0 A3               [24] 1047 	inc	dptr
      0000C1 E0               [24] 1048 	movx	a,@dptr
      0000C2 FF               [12] 1049 	mov	r7,a
      0000C3 74 0B            [12] 1050 	mov	a,#0x0b
      0000C5 2D               [12] 1051 	add	a,r5
      0000C6 FD               [12] 1052 	mov	r5,a
      0000C7 E4               [12] 1053 	clr	a
      0000C8 3E               [12] 1054 	addc	a,r6
      0000C9 FE               [12] 1055 	mov	r6,a
      0000CA 8D 82            [24] 1056 	mov	dpl,r5
      0000CC 8E 83            [24] 1057 	mov	dph,r6
      0000CE 8F F0            [24] 1058 	mov	b,r7
      0000D0 12 4A 06         [24] 1059 	lcall	__gptrget
      0000D3 FD               [12] 1060 	mov	r5,a
      0000D4 90 00 05         [24] 1061 	mov	dptr,#__gpio_setBits_portValue_65536_131
      0000D7 E0               [24] 1062 	movx	a,@dptr
      0000D8 4D               [12] 1063 	orl	a,r5
      0000D9 FF               [12] 1064 	mov	r7,a
      0000DA 80 22            [24] 1065 	sjmp	00104$
      0000DC                       1066 00103$:
      0000DC 90 00 02         [24] 1067 	mov	dptr,#__gpio_setBits_PARM_3
      0000DF E0               [24] 1068 	movx	a,@dptr
      0000E0 FC               [12] 1069 	mov	r4,a
      0000E1 A3               [24] 1070 	inc	dptr
      0000E2 E0               [24] 1071 	movx	a,@dptr
      0000E3 FD               [12] 1072 	mov	r5,a
      0000E4 A3               [24] 1073 	inc	dptr
      0000E5 E0               [24] 1074 	movx	a,@dptr
      0000E6 FE               [12] 1075 	mov	r6,a
      0000E7 74 0C            [12] 1076 	mov	a,#0x0c
      0000E9 2C               [12] 1077 	add	a,r4
      0000EA FC               [12] 1078 	mov	r4,a
      0000EB E4               [12] 1079 	clr	a
      0000EC 3D               [12] 1080 	addc	a,r5
      0000ED FD               [12] 1081 	mov	r5,a
      0000EE 8C 82            [24] 1082 	mov	dpl,r4
      0000F0 8D 83            [24] 1083 	mov	dph,r5
      0000F2 8E F0            [24] 1084 	mov	b,r6
      0000F4 12 4A 06         [24] 1085 	lcall	__gptrget
      0000F7 FC               [12] 1086 	mov	r4,a
      0000F8 90 00 05         [24] 1087 	mov	dptr,#__gpio_setBits_portValue_65536_131
      0000FB E0               [24] 1088 	movx	a,@dptr
      0000FC 5C               [12] 1089 	anl	a,r4
      0000FD FF               [12] 1090 	mov	r7,a
      0000FE                       1091 00104$:
      0000FE 8F 82            [24] 1092 	mov	dpl,r7
                                   1093 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:41: }
      000100 22               [24] 1094 	ret
                                   1095 ;------------------------------------------------------------
                                   1096 ;Allocation info for local variables in function '_isOutput'
                                   1097 ;------------------------------------------------------------
                                   1098 ;gpioConfig                Allocated with name '__isOutput_gpioConfig_65536_133'
                                   1099 ;------------------------------------------------------------
                                   1100 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:43: static uint8_t _isOutput(GpioConfig *gpioConfig) {
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function _isOutput
                                   1103 ;	-----------------------------------------
      000101                       1104 __isOutput:
      000101 AF F0            [24] 1105 	mov	r7,b
      000103 AE 83            [24] 1106 	mov	r6,dph
      000105 E5 82            [12] 1107 	mov	a,dpl
      000107 90 00 06         [24] 1108 	mov	dptr,#__isOutput_gpioConfig_65536_133
      00010A F0               [24] 1109 	movx	@dptr,a
      00010B EE               [12] 1110 	mov	a,r6
      00010C A3               [24] 1111 	inc	dptr
      00010D F0               [24] 1112 	movx	@dptr,a
      00010E EF               [12] 1113 	mov	a,r7
      00010F A3               [24] 1114 	inc	dptr
      000110 F0               [24] 1115 	movx	@dptr,a
                                   1116 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:44: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_PUSH_PULL_MODE || gpioConfig->pinMode == GPIO_OPEN_DRAIN_MODE;
      000111 90 00 06         [24] 1117 	mov	dptr,#__isOutput_gpioConfig_65536_133
      000114 E0               [24] 1118 	movx	a,@dptr
      000115 FD               [12] 1119 	mov	r5,a
      000116 A3               [24] 1120 	inc	dptr
      000117 E0               [24] 1121 	movx	a,@dptr
      000118 FE               [12] 1122 	mov	r6,a
      000119 A3               [24] 1123 	inc	dptr
      00011A E0               [24] 1124 	movx	a,@dptr
      00011B FF               [12] 1125 	mov	r7,a
      00011C 74 03            [12] 1126 	mov	a,#0x03
      00011E 2D               [12] 1127 	add	a,r5
      00011F FD               [12] 1128 	mov	r5,a
      000120 E4               [12] 1129 	clr	a
      000121 3E               [12] 1130 	addc	a,r6
      000122 FE               [12] 1131 	mov	r6,a
      000123 8D 82            [24] 1132 	mov	dpl,r5
      000125 8E 83            [24] 1133 	mov	dph,r6
      000127 8F F0            [24] 1134 	mov	b,r7
      000129 12 4A 06         [24] 1135 	lcall	__gptrget
      00012C FF               [12] 1136 	mov	r7,a
      00012D 60 0E            [24] 1137 	jz	00104$
      00012F BF 01 02         [24] 1138 	cjne	r7,#0x01,00122$
      000132 80 09            [24] 1139 	sjmp	00104$
      000134                       1140 00122$:
      000134 BF 03 02         [24] 1141 	cjne	r7,#0x03,00123$
      000137 80 04            [24] 1142 	sjmp	00104$
      000139                       1143 00123$:
      000139 7F 00            [12] 1144 	mov	r7,#0x00
      00013B 80 02            [24] 1145 	sjmp	00105$
      00013D                       1146 00104$:
      00013D 7F 01            [12] 1147 	mov	r7,#0x01
      00013F                       1148 00105$:
      00013F 8F 82            [24] 1149 	mov	dpl,r7
                                   1150 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:45: }
      000141 22               [24] 1151 	ret
                                   1152 ;------------------------------------------------------------
                                   1153 ;Allocation info for local variables in function '_isInput'
                                   1154 ;------------------------------------------------------------
                                   1155 ;gpioConfig                Allocated with name '__isInput_gpioConfig_65536_135'
                                   1156 ;------------------------------------------------------------
                                   1157 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:47: static uint8_t _isInput(GpioConfig *gpioConfig) {
                                   1158 ;	-----------------------------------------
                                   1159 ;	 function _isInput
                                   1160 ;	-----------------------------------------
      000142                       1161 __isInput:
      000142 AF F0            [24] 1162 	mov	r7,b
      000144 AE 83            [24] 1163 	mov	r6,dph
      000146 E5 82            [12] 1164 	mov	a,dpl
      000148 90 00 09         [24] 1165 	mov	dptr,#__isInput_gpioConfig_65536_135
      00014B F0               [24] 1166 	movx	@dptr,a
      00014C EE               [12] 1167 	mov	a,r6
      00014D A3               [24] 1168 	inc	dptr
      00014E F0               [24] 1169 	movx	@dptr,a
      00014F EF               [12] 1170 	mov	a,r7
      000150 A3               [24] 1171 	inc	dptr
      000151 F0               [24] 1172 	movx	@dptr,a
                                   1173 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:48: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_HIGH_IMPEDANCE_MODE;
      000152 90 00 09         [24] 1174 	mov	dptr,#__isInput_gpioConfig_65536_135
      000155 E0               [24] 1175 	movx	a,@dptr
      000156 FD               [12] 1176 	mov	r5,a
      000157 A3               [24] 1177 	inc	dptr
      000158 E0               [24] 1178 	movx	a,@dptr
      000159 FE               [12] 1179 	mov	r6,a
      00015A A3               [24] 1180 	inc	dptr
      00015B E0               [24] 1181 	movx	a,@dptr
      00015C FF               [12] 1182 	mov	r7,a
      00015D 74 03            [12] 1183 	mov	a,#0x03
      00015F 2D               [12] 1184 	add	a,r5
      000160 FD               [12] 1185 	mov	r5,a
      000161 E4               [12] 1186 	clr	a
      000162 3E               [12] 1187 	addc	a,r6
      000163 FE               [12] 1188 	mov	r6,a
      000164 8D 82            [24] 1189 	mov	dpl,r5
      000166 8E 83            [24] 1190 	mov	dph,r6
      000168 8F F0            [24] 1191 	mov	b,r7
      00016A 12 4A 06         [24] 1192 	lcall	__gptrget
      00016D FF               [12] 1193 	mov	r7,a
      00016E 60 09            [24] 1194 	jz	00104$
      000170 BF 02 02         [24] 1195 	cjne	r7,#0x02,00115$
      000173 80 04            [24] 1196 	sjmp	00104$
      000175                       1197 00115$:
      000175 7F 00            [12] 1198 	mov	r7,#0x00
      000177 80 02            [24] 1199 	sjmp	00105$
      000179                       1200 00104$:
      000179 7F 01            [12] 1201 	mov	r7,#0x01
      00017B                       1202 00105$:
      00017B 8F 82            [24] 1203 	mov	dpl,r7
                                   1204 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:49: }
      00017D 22               [24] 1205 	ret
                                   1206 ;------------------------------------------------------------
                                   1207 ;Allocation info for local variables in function 'gpioConfigure'
                                   1208 ;------------------------------------------------------------
                                   1209 ;sloc0                     Allocated with name '_gpioConfigure_sloc0_1_0'
                                   1210 ;gpioConfig                Allocated with name '_gpioConfigure_gpioConfig_65536_137'
                                   1211 ;mask                      Allocated with name '_gpioConfigure_mask_65536_138'
                                   1212 ;n                         Allocated with name '_gpioConfigure_n_131072_139'
                                   1213 ;pm1                       Allocated with name '_gpioConfigure_pm1_65537_141'
                                   1214 ;pm0                       Allocated with name '_gpioConfigure_pm0_65537_141'
                                   1215 ;pncs                      Allocated with name '_gpioConfigure_pncs_65537_141'
                                   1216 ;ppu                       Allocated with name '_gpioConfigure_ppu_65537_141'
                                   1217 ;pdr                       Allocated with name '_gpioConfigure_pdr_65537_141'
                                   1218 ;psr                       Allocated with name '_gpioConfigure_psr_65537_141'
                                   1219 ;pie                       Allocated with name '_gpioConfigure_pie_65537_141'
                                   1220 ;pim1                      Allocated with name '_gpioConfigure_pim1_65537_141'
                                   1221 ;pim0                      Allocated with name '_gpioConfigure_pim0_65537_141'
                                   1222 ;pintf                     Allocated with name '_gpioConfigure_pintf_65537_141'
                                   1223 ;pinte                     Allocated with name '_gpioConfigure_pinte_65537_141'
                                   1224 ;pwkue                     Allocated with name '_gpioConfigure_pwkue_65537_141'
                                   1225 ;------------------------------------------------------------
                                   1226 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:51: void gpioConfigure(GpioConfig *gpioConfig) {
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function gpioConfigure
                                   1229 ;	-----------------------------------------
      00017E                       1230 _gpioConfigure:
      00017E AF F0            [24] 1231 	mov	r7,b
      000180 AE 83            [24] 1232 	mov	r6,dph
      000182 E5 82            [12] 1233 	mov	a,dpl
      000184 90 00 0C         [24] 1234 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000187 F0               [24] 1235 	movx	@dptr,a
      000188 EE               [12] 1236 	mov	a,r6
      000189 A3               [24] 1237 	inc	dptr
      00018A F0               [24] 1238 	movx	@dptr,a
      00018B EF               [12] 1239 	mov	a,r7
      00018C A3               [24] 1240 	inc	dptr
      00018D F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:53: uint8_t mask = 0;
      00018E 90 00 0F         [24] 1243 	mov	dptr,#_gpioConfigure_mask_65536_138
      000191 E4               [12] 1244 	clr	a
      000192 F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      000193 90 00 0C         [24] 1247 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000196 E0               [24] 1248 	movx	a,@dptr
      000197 FD               [12] 1249 	mov	r5,a
      000198 A3               [24] 1250 	inc	dptr
      000199 E0               [24] 1251 	movx	a,@dptr
      00019A FE               [12] 1252 	mov	r6,a
      00019B A3               [24] 1253 	inc	dptr
      00019C E0               [24] 1254 	movx	a,@dptr
      00019D FF               [12] 1255 	mov	r7,a
      00019E 74 02            [12] 1256 	mov	a,#0x02
      0001A0 2D               [12] 1257 	add	a,r5
      0001A1 FA               [12] 1258 	mov	r2,a
      0001A2 E4               [12] 1259 	clr	a
      0001A3 3E               [12] 1260 	addc	a,r6
      0001A4 FB               [12] 1261 	mov	r3,a
      0001A5 8F 04            [24] 1262 	mov	ar4,r7
      0001A7 8A 82            [24] 1263 	mov	dpl,r2
      0001A9 8B 83            [24] 1264 	mov	dph,r3
      0001AB 8C F0            [24] 1265 	mov	b,r4
      0001AD 12 4A 06         [24] 1266 	lcall	__gptrget
      0001B0 FC               [12] 1267 	mov	r4,a
      0001B1                       1268 00117$:
      0001B1 EC               [12] 1269 	mov	a,r4
      0001B2 60 10            [24] 1270 	jz	00101$
                                   1271 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:56: mask = mask << 1;
      0001B4 90 00 0F         [24] 1272 	mov	dptr,#_gpioConfigure_mask_65536_138
      0001B7 E0               [24] 1273 	movx	a,@dptr
      0001B8 25 E0            [12] 1274 	add	a,acc
      0001BA FB               [12] 1275 	mov	r3,a
      0001BB F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:57: mask |= 1;
      0001BC E0               [24] 1278 	movx	a,@dptr
      0001BD 43 E0 01         [24] 1279 	orl	acc,#0x01
      0001C0 F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      0001C1 1C               [12] 1282 	dec	r4
      0001C2 80 ED            [24] 1283 	sjmp	00117$
      0001C4                       1284 00101$:
                                   1285 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:60: gpioConfig->__setMask = mask << gpioConfig->pin;
      0001C4 74 0B            [12] 1286 	mov	a,#0x0b
      0001C6 2D               [12] 1287 	add	a,r5
      0001C7 F5 08            [12] 1288 	mov	_gpioConfigure_sloc0_1_0,a
      0001C9 E4               [12] 1289 	clr	a
      0001CA 3E               [12] 1290 	addc	a,r6
      0001CB F5 09            [12] 1291 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0001CD 8F 0A            [24] 1292 	mov	(_gpioConfigure_sloc0_1_0 + 2),r7
      0001CF 74 01            [12] 1293 	mov	a,#0x01
      0001D1 2D               [12] 1294 	add	a,r5
      0001D2 F8               [12] 1295 	mov	r0,a
      0001D3 E4               [12] 1296 	clr	a
      0001D4 3E               [12] 1297 	addc	a,r6
      0001D5 F9               [12] 1298 	mov	r1,a
      0001D6 8F 04            [24] 1299 	mov	ar4,r7
      0001D8 88 82            [24] 1300 	mov	dpl,r0
      0001DA 89 83            [24] 1301 	mov	dph,r1
      0001DC 8C F0            [24] 1302 	mov	b,r4
      0001DE 12 4A 06         [24] 1303 	lcall	__gptrget
      0001E1 F8               [12] 1304 	mov	r0,a
      0001E2 90 00 0F         [24] 1305 	mov	dptr,#_gpioConfigure_mask_65536_138
      0001E5 E0               [24] 1306 	movx	a,@dptr
      0001E6 88 F0            [24] 1307 	mov	b,r0
      0001E8 05 F0            [12] 1308 	inc	b
      0001EA 80 02            [24] 1309 	sjmp	00175$
      0001EC                       1310 00173$:
      0001EC 25 E0            [12] 1311 	add	a,acc
      0001EE                       1312 00175$:
      0001EE D5 F0 FB         [24] 1313 	djnz	b,00173$
      0001F1 F8               [12] 1314 	mov	r0,a
      0001F2 85 08 82         [24] 1315 	mov	dpl,_gpioConfigure_sloc0_1_0
      0001F5 85 09 83         [24] 1316 	mov	dph,(_gpioConfigure_sloc0_1_0 + 1)
      0001F8 85 0A F0         [24] 1317 	mov	b,(_gpioConfigure_sloc0_1_0 + 2)
      0001FB 12 3D DF         [24] 1318 	lcall	__gptrput
                                   1319 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:61: gpioConfig->__clearMask = ~gpioConfig->__setMask;
      0001FE 74 0C            [12] 1320 	mov	a,#0x0c
      000200 2D               [12] 1321 	add	a,r5
      000201 FA               [12] 1322 	mov	r2,a
      000202 E4               [12] 1323 	clr	a
      000203 3E               [12] 1324 	addc	a,r6
      000204 FB               [12] 1325 	mov	r3,a
      000205 8F 04            [24] 1326 	mov	ar4,r7
      000207 E8               [12] 1327 	mov	a,r0
      000208 F4               [12] 1328 	cpl	a
      000209 F8               [12] 1329 	mov	r0,a
      00020A 8A 82            [24] 1330 	mov	dpl,r2
      00020C 8B 83            [24] 1331 	mov	dph,r3
      00020E 8C F0            [24] 1332 	mov	b,r4
      000210 12 3D DF         [24] 1333 	lcall	__gptrput
                                   1334 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:63: uint8_t pm1 = 0;
      000213 90 00 10         [24] 1335 	mov	dptr,#_gpioConfigure_pm1_65537_141
      000216 E4               [12] 1336 	clr	a
      000217 F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:64: uint8_t pm0 = 0;
      000218 90 00 11         [24] 1339 	mov	dptr,#_gpioConfigure_pm0_65537_141
      00021B F0               [24] 1340 	movx	@dptr,a
                                   1341 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:67: uint8_t pncs = 0;
      00021C 90 00 12         [24] 1342 	mov	dptr,#_gpioConfigure_pncs_65537_141
      00021F F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:68: uint8_t ppu = 0;
      000220 90 00 13         [24] 1345 	mov	dptr,#_gpioConfigure_ppu_65537_141
      000223 F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:72: uint8_t pdr = 0;
      000224 90 00 14         [24] 1348 	mov	dptr,#_gpioConfigure_pdr_65537_141
      000227 F0               [24] 1349 	movx	@dptr,a
                                   1350 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:73: uint8_t psr = 0;
      000228 90 00 15         [24] 1351 	mov	dptr,#_gpioConfigure_psr_65537_141
      00022B F0               [24] 1352 	movx	@dptr,a
                                   1353 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:74: uint8_t pie = 0;
      00022C 90 00 16         [24] 1354 	mov	dptr,#_gpioConfigure_pie_65537_141
      00022F F0               [24] 1355 	movx	@dptr,a
                                   1356 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:78: uint8_t pim1 = 0;
      000230 90 00 17         [24] 1357 	mov	dptr,#_gpioConfigure_pim1_65537_141
      000233 F0               [24] 1358 	movx	@dptr,a
                                   1359 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:79: uint8_t pim0 = 0;
      000234 90 00 18         [24] 1360 	mov	dptr,#_gpioConfigure_pim0_65537_141
      000237 F0               [24] 1361 	movx	@dptr,a
                                   1362 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:80: uint8_t pintf = 0;
      000238 90 00 19         [24] 1363 	mov	dptr,#_gpioConfigure_pintf_65537_141
      00023B F0               [24] 1364 	movx	@dptr,a
                                   1365 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:81: uint8_t pinte = 0;
      00023C 90 00 1A         [24] 1366 	mov	dptr,#_gpioConfigure_pinte_65537_141
      00023F F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:82: uint8_t pwkue = 0;
      000240 90 00 1B         [24] 1369 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      000243 F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:85: switch (gpioConfig->port) {
      000244 8D 82            [24] 1372 	mov	dpl,r5
      000246 8E 83            [24] 1373 	mov	dph,r6
      000248 8F F0            [24] 1374 	mov	b,r7
      00024A 12 4A 06         [24] 1375 	lcall	__gptrget
      00024D FF               [12] 1376 	mov	r7,a
      00024E BF 01 02         [24] 1377 	cjne	r7,#0x01,00176$
      000251 80 14            [24] 1378 	sjmp	00102$
      000253                       1379 00176$:
      000253 BF 02 02         [24] 1380 	cjne	r7,#0x02,00177$
      000256 80 6E            [24] 1381 	sjmp	00103$
      000258                       1382 00177$:
      000258 BF 03 03         [24] 1383 	cjne	r7,#0x03,00178$
      00025B 02 03 25         [24] 1384 	ljmp	00104$
      00025E                       1385 00178$:
      00025E BF 05 03         [24] 1386 	cjne	r7,#0x05,00179$
      000261 02 03 83         [24] 1387 	ljmp	00105$
      000264                       1388 00179$:
      000264 02 03 DF         [24] 1389 	ljmp	00106$
                                   1390 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:117: case GPIO_PORT1:
      000267                       1391 00102$:
                                   1392 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:118: pm1 = P1M1;
      000267 90 00 10         [24] 1393 	mov	dptr,#_gpioConfigure_pm1_65537_141
      00026A E5 91            [12] 1394 	mov	a,_P1M1
      00026C F0               [24] 1395 	movx	@dptr,a
                                   1396 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:119: pm0 = P1M0;
      00026D 90 00 11         [24] 1397 	mov	dptr,#_gpioConfigure_pm0_65537_141
      000270 E5 92            [12] 1398 	mov	a,_P1M0
      000272 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:122: pncs = P1NCS;
      000273 90 FE 19         [24] 1401 	mov	dptr,#_P1NCS
      000276 E0               [24] 1402 	movx	a,@dptr
      000277 90 00 12         [24] 1403 	mov	dptr,#_gpioConfigure_pncs_65537_141
      00027A F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:123: ppu = P1PU;
      00027B 90 FE 11         [24] 1406 	mov	dptr,#_P1PU
      00027E E0               [24] 1407 	movx	a,@dptr
      00027F 90 00 13         [24] 1408 	mov	dptr,#_gpioConfigure_ppu_65537_141
      000282 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:127: pdr = P1DR;
      000283 90 FE 29         [24] 1411 	mov	dptr,#_P1DR
      000286 E0               [24] 1412 	movx	a,@dptr
      000287 90 00 14         [24] 1413 	mov	dptr,#_gpioConfigure_pdr_65537_141
      00028A F0               [24] 1414 	movx	@dptr,a
                                   1415 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:128: psr = P1SR;
      00028B 90 FE 21         [24] 1416 	mov	dptr,#_P1SR
      00028E E0               [24] 1417 	movx	a,@dptr
      00028F 90 00 15         [24] 1418 	mov	dptr,#_gpioConfigure_psr_65537_141
      000292 F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:129: pie = P1IE;
      000293 90 FE 31         [24] 1421 	mov	dptr,#_P1IE
      000296 E0               [24] 1422 	movx	a,@dptr
      000297 90 00 16         [24] 1423 	mov	dptr,#_gpioConfigure_pie_65537_141
      00029A F0               [24] 1424 	movx	@dptr,a
                                   1425 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:133: pim1 = P1IM1;
      00029B 90 FD 31         [24] 1426 	mov	dptr,#_P1IM1
      00029E E0               [24] 1427 	movx	a,@dptr
      00029F 90 00 17         [24] 1428 	mov	dptr,#_gpioConfigure_pim1_65537_141
      0002A2 F0               [24] 1429 	movx	@dptr,a
                                   1430 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:134: pim0 = P1IM0;
      0002A3 90 FD 21         [24] 1431 	mov	dptr,#_P1IM0
      0002A6 E0               [24] 1432 	movx	a,@dptr
      0002A7 90 00 18         [24] 1433 	mov	dptr,#_gpioConfigure_pim0_65537_141
      0002AA F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:135: pintf = P1INTF;
      0002AB 90 FD 11         [24] 1436 	mov	dptr,#_P1INTF
      0002AE E0               [24] 1437 	movx	a,@dptr
      0002AF 90 00 19         [24] 1438 	mov	dptr,#_gpioConfigure_pintf_65537_141
      0002B2 F0               [24] 1439 	movx	@dptr,a
                                   1440 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:136: pinte = P1INTE;
      0002B3 90 FD 01         [24] 1441 	mov	dptr,#_P1INTE
      0002B6 E0               [24] 1442 	movx	a,@dptr
      0002B7 90 00 1A         [24] 1443 	mov	dptr,#_gpioConfigure_pinte_65537_141
      0002BA F0               [24] 1444 	movx	@dptr,a
                                   1445 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:137: pwkue = P1WKUE;
      0002BB 90 FD 41         [24] 1446 	mov	dptr,#_P1WKUE
      0002BE E0               [24] 1447 	movx	a,@dptr
      0002BF 90 00 1B         [24] 1448 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      0002C2 F0               [24] 1449 	movx	@dptr,a
                                   1450 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:139: break;
      0002C3 02 03 DF         [24] 1451 	ljmp	00106$
                                   1452 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:145: case GPIO_PORT2:
      0002C6                       1453 00103$:
                                   1454 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:146: pm1 = P2M1;
      0002C6 90 00 10         [24] 1455 	mov	dptr,#_gpioConfigure_pm1_65537_141
      0002C9 E5 95            [12] 1456 	mov	a,_P2M1
      0002CB F0               [24] 1457 	movx	@dptr,a
                                   1458 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:147: pm0 = P2M0;
      0002CC 90 00 11         [24] 1459 	mov	dptr,#_gpioConfigure_pm0_65537_141
      0002CF E5 96            [12] 1460 	mov	a,_P2M0
      0002D1 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:150: pncs = P2NCS;
      0002D2 90 FE 1A         [24] 1463 	mov	dptr,#_P2NCS
      0002D5 E0               [24] 1464 	movx	a,@dptr
      0002D6 90 00 12         [24] 1465 	mov	dptr,#_gpioConfigure_pncs_65537_141
      0002D9 F0               [24] 1466 	movx	@dptr,a
                                   1467 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:151: ppu = P2PU;
      0002DA 90 FE 12         [24] 1468 	mov	dptr,#_P2PU
      0002DD E0               [24] 1469 	movx	a,@dptr
      0002DE 90 00 13         [24] 1470 	mov	dptr,#_gpioConfigure_ppu_65537_141
      0002E1 F0               [24] 1471 	movx	@dptr,a
                                   1472 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:155: pdr = P2DR;
      0002E2 90 FE 2A         [24] 1473 	mov	dptr,#_P2DR
      0002E5 E0               [24] 1474 	movx	a,@dptr
      0002E6 90 00 14         [24] 1475 	mov	dptr,#_gpioConfigure_pdr_65537_141
      0002E9 F0               [24] 1476 	movx	@dptr,a
                                   1477 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:156: psr = P2SR;
      0002EA 90 FE 22         [24] 1478 	mov	dptr,#_P2SR
      0002ED E0               [24] 1479 	movx	a,@dptr
      0002EE 90 00 15         [24] 1480 	mov	dptr,#_gpioConfigure_psr_65537_141
      0002F1 F0               [24] 1481 	movx	@dptr,a
                                   1482 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:157: pie = P2IE;
      0002F2 90 FE 32         [24] 1483 	mov	dptr,#_P2IE
      0002F5 E0               [24] 1484 	movx	a,@dptr
      0002F6 90 00 16         [24] 1485 	mov	dptr,#_gpioConfigure_pie_65537_141
      0002F9 F0               [24] 1486 	movx	@dptr,a
                                   1487 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:161: pim1 = P2IM1;
      0002FA 90 FD 32         [24] 1488 	mov	dptr,#_P2IM1
      0002FD E0               [24] 1489 	movx	a,@dptr
      0002FE 90 00 17         [24] 1490 	mov	dptr,#_gpioConfigure_pim1_65537_141
      000301 F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:162: pim0 = P2IM0;
      000302 90 FD 22         [24] 1493 	mov	dptr,#_P2IM0
      000305 E0               [24] 1494 	movx	a,@dptr
      000306 90 00 18         [24] 1495 	mov	dptr,#_gpioConfigure_pim0_65537_141
      000309 F0               [24] 1496 	movx	@dptr,a
                                   1497 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:163: pintf = P2INTF;
      00030A 90 FD 12         [24] 1498 	mov	dptr,#_P2INTF
      00030D E0               [24] 1499 	movx	a,@dptr
      00030E 90 00 19         [24] 1500 	mov	dptr,#_gpioConfigure_pintf_65537_141
      000311 F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:164: pinte = P2INTE;
      000312 90 FD 02         [24] 1503 	mov	dptr,#_P2INTE
      000315 E0               [24] 1504 	movx	a,@dptr
      000316 90 00 1A         [24] 1505 	mov	dptr,#_gpioConfigure_pinte_65537_141
      000319 F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:165: pwkue = P2WKUE;
      00031A 90 FD 42         [24] 1508 	mov	dptr,#_P2WKUE
      00031D E0               [24] 1509 	movx	a,@dptr
      00031E 90 00 1B         [24] 1510 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      000321 F0               [24] 1511 	movx	@dptr,a
                                   1512 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:167: break;
      000322 02 03 DF         [24] 1513 	ljmp	00106$
                                   1514 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:172: case GPIO_PORT3:
      000325                       1515 00104$:
                                   1516 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:173: pm1 = P3M1;
      000325 90 00 10         [24] 1517 	mov	dptr,#_gpioConfigure_pm1_65537_141
      000328 E5 B1            [12] 1518 	mov	a,_P3M1
      00032A F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:174: pm0 = P3M0;
      00032B 90 00 11         [24] 1521 	mov	dptr,#_gpioConfigure_pm0_65537_141
      00032E E5 B2            [12] 1522 	mov	a,_P3M0
      000330 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:177: pncs = P3NCS;
      000331 90 FE 1B         [24] 1525 	mov	dptr,#_P3NCS
      000334 E0               [24] 1526 	movx	a,@dptr
      000335 90 00 12         [24] 1527 	mov	dptr,#_gpioConfigure_pncs_65537_141
      000338 F0               [24] 1528 	movx	@dptr,a
                                   1529 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:178: ppu = P3PU;
      000339 90 FE 13         [24] 1530 	mov	dptr,#_P3PU
      00033C E0               [24] 1531 	movx	a,@dptr
      00033D 90 00 13         [24] 1532 	mov	dptr,#_gpioConfigure_ppu_65537_141
      000340 F0               [24] 1533 	movx	@dptr,a
                                   1534 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:182: pdr = P3DR;
      000341 90 FE 2B         [24] 1535 	mov	dptr,#_P3DR
      000344 E0               [24] 1536 	movx	a,@dptr
      000345 90 00 14         [24] 1537 	mov	dptr,#_gpioConfigure_pdr_65537_141
      000348 F0               [24] 1538 	movx	@dptr,a
                                   1539 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:183: psr = P3SR;
      000349 90 FE 23         [24] 1540 	mov	dptr,#_P3SR
      00034C E0               [24] 1541 	movx	a,@dptr
      00034D 90 00 15         [24] 1542 	mov	dptr,#_gpioConfigure_psr_65537_141
      000350 F0               [24] 1543 	movx	@dptr,a
                                   1544 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:184: pie = P3IE;
      000351 90 FE 33         [24] 1545 	mov	dptr,#_P3IE
      000354 E0               [24] 1546 	movx	a,@dptr
      000355 90 00 16         [24] 1547 	mov	dptr,#_gpioConfigure_pie_65537_141
      000358 F0               [24] 1548 	movx	@dptr,a
                                   1549 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:188: pim1 = P3IM1;
      000359 90 FD 33         [24] 1550 	mov	dptr,#_P3IM1
      00035C E0               [24] 1551 	movx	a,@dptr
      00035D 90 00 17         [24] 1552 	mov	dptr,#_gpioConfigure_pim1_65537_141
      000360 F0               [24] 1553 	movx	@dptr,a
                                   1554 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:189: pim0 = P3IM0;
      000361 90 FD 23         [24] 1555 	mov	dptr,#_P3IM0
      000364 E0               [24] 1556 	movx	a,@dptr
      000365 90 00 18         [24] 1557 	mov	dptr,#_gpioConfigure_pim0_65537_141
      000368 F0               [24] 1558 	movx	@dptr,a
                                   1559 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:190: pintf = P3INTF;
      000369 90 FD 13         [24] 1560 	mov	dptr,#_P3INTF
      00036C E0               [24] 1561 	movx	a,@dptr
      00036D 90 00 19         [24] 1562 	mov	dptr,#_gpioConfigure_pintf_65537_141
      000370 F0               [24] 1563 	movx	@dptr,a
                                   1564 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:191: pinte = P3INTE;
      000371 90 FD 03         [24] 1565 	mov	dptr,#_P3INTE
      000374 E0               [24] 1566 	movx	a,@dptr
      000375 90 00 1A         [24] 1567 	mov	dptr,#_gpioConfigure_pinte_65537_141
      000378 F0               [24] 1568 	movx	@dptr,a
                                   1569 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:192: pwkue = P3WKUE;
      000379 90 FD 43         [24] 1570 	mov	dptr,#_P3WKUE
      00037C E0               [24] 1571 	movx	a,@dptr
      00037D 90 00 1B         [24] 1572 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      000380 F0               [24] 1573 	movx	@dptr,a
                                   1574 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:194: break;
                                   1575 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:227: case GPIO_PORT5:
      000381 80 5C            [24] 1576 	sjmp	00106$
      000383                       1577 00105$:
                                   1578 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:228: pm1 = P5M1;
      000383 90 00 10         [24] 1579 	mov	dptr,#_gpioConfigure_pm1_65537_141
      000386 E5 C9            [12] 1580 	mov	a,_P5M1
      000388 F0               [24] 1581 	movx	@dptr,a
                                   1582 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:229: pm0 = P5M0;
      000389 90 00 11         [24] 1583 	mov	dptr,#_gpioConfigure_pm0_65537_141
      00038C E5 CA            [12] 1584 	mov	a,_P5M0
      00038E F0               [24] 1585 	movx	@dptr,a
                                   1586 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:232: pncs = P5NCS;
      00038F 90 FE 1D         [24] 1587 	mov	dptr,#_P5NCS
      000392 E0               [24] 1588 	movx	a,@dptr
      000393 90 00 12         [24] 1589 	mov	dptr,#_gpioConfigure_pncs_65537_141
      000396 F0               [24] 1590 	movx	@dptr,a
                                   1591 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:233: ppu = P5PU;
      000397 90 FE 15         [24] 1592 	mov	dptr,#_P5PU
      00039A E0               [24] 1593 	movx	a,@dptr
      00039B 90 00 13         [24] 1594 	mov	dptr,#_gpioConfigure_ppu_65537_141
      00039E F0               [24] 1595 	movx	@dptr,a
                                   1596 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:237: pdr = P5DR;
      00039F 90 FE 2D         [24] 1597 	mov	dptr,#_P5DR
      0003A2 E0               [24] 1598 	movx	a,@dptr
      0003A3 90 00 14         [24] 1599 	mov	dptr,#_gpioConfigure_pdr_65537_141
      0003A6 F0               [24] 1600 	movx	@dptr,a
                                   1601 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:238: psr = P5SR;
      0003A7 90 FE 25         [24] 1602 	mov	dptr,#_P5SR
      0003AA E0               [24] 1603 	movx	a,@dptr
      0003AB 90 00 15         [24] 1604 	mov	dptr,#_gpioConfigure_psr_65537_141
      0003AE F0               [24] 1605 	movx	@dptr,a
                                   1606 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:239: pie = P5IE;
      0003AF 90 FE 35         [24] 1607 	mov	dptr,#_P5IE
      0003B2 E0               [24] 1608 	movx	a,@dptr
      0003B3 90 00 16         [24] 1609 	mov	dptr,#_gpioConfigure_pie_65537_141
      0003B6 F0               [24] 1610 	movx	@dptr,a
                                   1611 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:243: pim1 = P5IM1;
      0003B7 90 FD 35         [24] 1612 	mov	dptr,#_P5IM1
      0003BA E0               [24] 1613 	movx	a,@dptr
      0003BB 90 00 17         [24] 1614 	mov	dptr,#_gpioConfigure_pim1_65537_141
      0003BE F0               [24] 1615 	movx	@dptr,a
                                   1616 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:244: pim0 = P5IM0;
      0003BF 90 FD 25         [24] 1617 	mov	dptr,#_P5IM0
      0003C2 E0               [24] 1618 	movx	a,@dptr
      0003C3 90 00 18         [24] 1619 	mov	dptr,#_gpioConfigure_pim0_65537_141
      0003C6 F0               [24] 1620 	movx	@dptr,a
                                   1621 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:245: pintf = P5INTF;
      0003C7 90 FD 15         [24] 1622 	mov	dptr,#_P5INTF
      0003CA E0               [24] 1623 	movx	a,@dptr
      0003CB 90 00 19         [24] 1624 	mov	dptr,#_gpioConfigure_pintf_65537_141
      0003CE F0               [24] 1625 	movx	@dptr,a
                                   1626 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:246: pinte = P5INTE;
      0003CF 90 FD 05         [24] 1627 	mov	dptr,#_P5INTE
      0003D2 E0               [24] 1628 	movx	a,@dptr
      0003D3 90 00 1A         [24] 1629 	mov	dptr,#_gpioConfigure_pinte_65537_141
      0003D6 F0               [24] 1630 	movx	@dptr,a
                                   1631 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:247: pwkue = P5WKUE;
      0003D7 90 FD 45         [24] 1632 	mov	dptr,#_P5WKUE
      0003DA E0               [24] 1633 	movx	a,@dptr
      0003DB 90 00 1B         [24] 1634 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      0003DE F0               [24] 1635 	movx	@dptr,a
                                   1636 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:307: }
      0003DF                       1637 00106$:
                                   1638 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:309: pm1 = _gpio_setBits(pm1, gpioConfig->pinMode & 2, gpioConfig);
      0003DF 90 00 10         [24] 1639 	mov	dptr,#_gpioConfigure_pm1_65537_141
      0003E2 E0               [24] 1640 	movx	a,@dptr
      0003E3 FF               [12] 1641 	mov	r7,a
      0003E4 90 00 0C         [24] 1642 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      0003E7 E0               [24] 1643 	movx	a,@dptr
      0003E8 FC               [12] 1644 	mov	r4,a
      0003E9 A3               [24] 1645 	inc	dptr
      0003EA E0               [24] 1646 	movx	a,@dptr
      0003EB FD               [12] 1647 	mov	r5,a
      0003EC A3               [24] 1648 	inc	dptr
      0003ED E0               [24] 1649 	movx	a,@dptr
      0003EE FE               [12] 1650 	mov	r6,a
      0003EF 74 03            [12] 1651 	mov	a,#0x03
      0003F1 2C               [12] 1652 	add	a,r4
      0003F2 F9               [12] 1653 	mov	r1,a
      0003F3 E4               [12] 1654 	clr	a
      0003F4 3D               [12] 1655 	addc	a,r5
      0003F5 FA               [12] 1656 	mov	r2,a
      0003F6 8E 03            [24] 1657 	mov	ar3,r6
      0003F8 89 82            [24] 1658 	mov	dpl,r1
      0003FA 8A 83            [24] 1659 	mov	dph,r2
      0003FC 8B F0            [24] 1660 	mov	b,r3
      0003FE 12 4A 06         [24] 1661 	lcall	__gptrget
      000401 F9               [12] 1662 	mov	r1,a
      000402 90 00 01         [24] 1663 	mov	dptr,#__gpio_setBits_PARM_2
      000405 74 02            [12] 1664 	mov	a,#0x02
      000407 59               [12] 1665 	anl	a,r1
      000408 F0               [24] 1666 	movx	@dptr,a
      000409 90 00 02         [24] 1667 	mov	dptr,#__gpio_setBits_PARM_3
      00040C EC               [12] 1668 	mov	a,r4
      00040D F0               [24] 1669 	movx	@dptr,a
      00040E ED               [12] 1670 	mov	a,r5
      00040F A3               [24] 1671 	inc	dptr
      000410 F0               [24] 1672 	movx	@dptr,a
      000411 EE               [12] 1673 	mov	a,r6
      000412 A3               [24] 1674 	inc	dptr
      000413 F0               [24] 1675 	movx	@dptr,a
      000414 8F 82            [24] 1676 	mov	dpl,r7
      000416 12 00 AC         [24] 1677 	lcall	__gpio_setBits
      000419 AF 82            [24] 1678 	mov	r7,dpl
                                   1679 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:310: pm0 = _gpio_setBits(pm0, gpioConfig->pinMode & 1, gpioConfig);
      00041B 90 00 11         [24] 1680 	mov	dptr,#_gpioConfigure_pm0_65537_141
      00041E E0               [24] 1681 	movx	a,@dptr
      00041F FE               [12] 1682 	mov	r6,a
      000420 90 00 0C         [24] 1683 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000423 E0               [24] 1684 	movx	a,@dptr
      000424 FB               [12] 1685 	mov	r3,a
      000425 A3               [24] 1686 	inc	dptr
      000426 E0               [24] 1687 	movx	a,@dptr
      000427 FC               [12] 1688 	mov	r4,a
      000428 A3               [24] 1689 	inc	dptr
      000429 E0               [24] 1690 	movx	a,@dptr
      00042A FD               [12] 1691 	mov	r5,a
      00042B 74 03            [12] 1692 	mov	a,#0x03
      00042D 2B               [12] 1693 	add	a,r3
      00042E F8               [12] 1694 	mov	r0,a
      00042F E4               [12] 1695 	clr	a
      000430 3C               [12] 1696 	addc	a,r4
      000431 F9               [12] 1697 	mov	r1,a
      000432 8D 02            [24] 1698 	mov	ar2,r5
      000434 88 82            [24] 1699 	mov	dpl,r0
      000436 89 83            [24] 1700 	mov	dph,r1
      000438 8A F0            [24] 1701 	mov	b,r2
      00043A 12 4A 06         [24] 1702 	lcall	__gptrget
      00043D F8               [12] 1703 	mov	r0,a
      00043E 90 00 01         [24] 1704 	mov	dptr,#__gpio_setBits_PARM_2
      000441 74 01            [12] 1705 	mov	a,#0x01
      000443 58               [12] 1706 	anl	a,r0
      000444 F0               [24] 1707 	movx	@dptr,a
      000445 90 00 02         [24] 1708 	mov	dptr,#__gpio_setBits_PARM_3
      000448 EB               [12] 1709 	mov	a,r3
      000449 F0               [24] 1710 	movx	@dptr,a
      00044A EC               [12] 1711 	mov	a,r4
      00044B A3               [24] 1712 	inc	dptr
      00044C F0               [24] 1713 	movx	@dptr,a
      00044D ED               [12] 1714 	mov	a,r5
      00044E A3               [24] 1715 	inc	dptr
      00044F F0               [24] 1716 	movx	@dptr,a
      000450 8E 82            [24] 1717 	mov	dpl,r6
      000452 C0 07            [24] 1718 	push	ar7
      000454 12 00 AC         [24] 1719 	lcall	__gpio_setBits
      000457 AE 82            [24] 1720 	mov	r6,dpl
                                   1721 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:313: if (_isInput(gpioConfig)) {
      000459 90 00 0C         [24] 1722 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      00045C E0               [24] 1723 	movx	a,@dptr
      00045D FB               [12] 1724 	mov	r3,a
      00045E A3               [24] 1725 	inc	dptr
      00045F E0               [24] 1726 	movx	a,@dptr
      000460 FC               [12] 1727 	mov	r4,a
      000461 A3               [24] 1728 	inc	dptr
      000462 E0               [24] 1729 	movx	a,@dptr
      000463 FD               [12] 1730 	mov	r5,a
      000464 8B 82            [24] 1731 	mov	dpl,r3
      000466 8C 83            [24] 1732 	mov	dph,r4
      000468 8D F0            [24] 1733 	mov	b,r5
      00046A C0 06            [24] 1734 	push	ar6
      00046C 12 01 42         [24] 1735 	lcall	__isInput
      00046F E5 82            [12] 1736 	mov	a,dpl
      000471 D0 06            [24] 1737 	pop	ar6
      000473 D0 07            [24] 1738 	pop	ar7
      000475 70 03            [24] 1739 	jnz	00180$
      000477 02 06 63         [24] 1740 	ljmp	00108$
      00047A                       1741 00180$:
                                   1742 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:315: pncs = _gpio_setBits(pncs, gpioConfig->schmidtTrigger, gpioConfig);
      00047A C0 06            [24] 1743 	push	ar6
      00047C 90 00 12         [24] 1744 	mov	dptr,#_gpioConfigure_pncs_65537_141
      00047F E0               [24] 1745 	movx	a,@dptr
      000480 FD               [12] 1746 	mov	r5,a
      000481 90 00 0C         [24] 1747 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000484 E0               [24] 1748 	movx	a,@dptr
      000485 FA               [12] 1749 	mov	r2,a
      000486 A3               [24] 1750 	inc	dptr
      000487 E0               [24] 1751 	movx	a,@dptr
      000488 FB               [12] 1752 	mov	r3,a
      000489 A3               [24] 1753 	inc	dptr
      00048A E0               [24] 1754 	movx	a,@dptr
      00048B FC               [12] 1755 	mov	r4,a
      00048C 74 04            [12] 1756 	mov	a,#0x04
      00048E 2A               [12] 1757 	add	a,r2
      00048F F8               [12] 1758 	mov	r0,a
      000490 E4               [12] 1759 	clr	a
      000491 3B               [12] 1760 	addc	a,r3
      000492 F9               [12] 1761 	mov	r1,a
      000493 8C 06            [24] 1762 	mov	ar6,r4
      000495 88 82            [24] 1763 	mov	dpl,r0
      000497 89 83            [24] 1764 	mov	dph,r1
      000499 8E F0            [24] 1765 	mov	b,r6
      00049B 12 4A 06         [24] 1766 	lcall	__gptrget
      00049E 90 00 01         [24] 1767 	mov	dptr,#__gpio_setBits_PARM_2
      0004A1 F0               [24] 1768 	movx	@dptr,a
      0004A2 90 00 02         [24] 1769 	mov	dptr,#__gpio_setBits_PARM_3
      0004A5 EA               [12] 1770 	mov	a,r2
      0004A6 F0               [24] 1771 	movx	@dptr,a
      0004A7 EB               [12] 1772 	mov	a,r3
      0004A8 A3               [24] 1773 	inc	dptr
      0004A9 F0               [24] 1774 	movx	@dptr,a
      0004AA EC               [12] 1775 	mov	a,r4
      0004AB A3               [24] 1776 	inc	dptr
      0004AC F0               [24] 1777 	movx	@dptr,a
      0004AD 8D 82            [24] 1778 	mov	dpl,r5
      0004AF C0 07            [24] 1779 	push	ar7
      0004B1 C0 06            [24] 1780 	push	ar6
      0004B3 12 00 AC         [24] 1781 	lcall	__gpio_setBits
      0004B6 E5 82            [12] 1782 	mov	a,dpl
      0004B8 D0 06            [24] 1783 	pop	ar6
      0004BA 90 00 12         [24] 1784 	mov	dptr,#_gpioConfigure_pncs_65537_141
      0004BD F0               [24] 1785 	movx	@dptr,a
                                   1786 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:316: ppu = _gpio_setBits(ppu, gpioConfig->internalPullUp, gpioConfig);
      0004BE 90 00 13         [24] 1787 	mov	dptr,#_gpioConfigure_ppu_65537_141
      0004C1 E0               [24] 1788 	movx	a,@dptr
      0004C2 FE               [12] 1789 	mov	r6,a
      0004C3 90 00 0C         [24] 1790 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      0004C6 E0               [24] 1791 	movx	a,@dptr
      0004C7 FB               [12] 1792 	mov	r3,a
      0004C8 A3               [24] 1793 	inc	dptr
      0004C9 E0               [24] 1794 	movx	a,@dptr
      0004CA FC               [12] 1795 	mov	r4,a
      0004CB A3               [24] 1796 	inc	dptr
      0004CC E0               [24] 1797 	movx	a,@dptr
      0004CD FD               [12] 1798 	mov	r5,a
      0004CE 74 05            [12] 1799 	mov	a,#0x05
      0004D0 2B               [12] 1800 	add	a,r3
      0004D1 F8               [12] 1801 	mov	r0,a
      0004D2 E4               [12] 1802 	clr	a
      0004D3 3C               [12] 1803 	addc	a,r4
      0004D4 F9               [12] 1804 	mov	r1,a
      0004D5 8D 02            [24] 1805 	mov	ar2,r5
      0004D7 88 82            [24] 1806 	mov	dpl,r0
      0004D9 89 83            [24] 1807 	mov	dph,r1
      0004DB 8A F0            [24] 1808 	mov	b,r2
      0004DD 12 4A 06         [24] 1809 	lcall	__gptrget
      0004E0 90 00 01         [24] 1810 	mov	dptr,#__gpio_setBits_PARM_2
      0004E3 F0               [24] 1811 	movx	@dptr,a
      0004E4 90 00 02         [24] 1812 	mov	dptr,#__gpio_setBits_PARM_3
      0004E7 EB               [12] 1813 	mov	a,r3
      0004E8 F0               [24] 1814 	movx	@dptr,a
      0004E9 EC               [12] 1815 	mov	a,r4
      0004EA A3               [24] 1816 	inc	dptr
      0004EB F0               [24] 1817 	movx	@dptr,a
      0004EC ED               [12] 1818 	mov	a,r5
      0004ED A3               [24] 1819 	inc	dptr
      0004EE F0               [24] 1820 	movx	@dptr,a
      0004EF 8E 82            [24] 1821 	mov	dpl,r6
      0004F1 C0 06            [24] 1822 	push	ar6
      0004F3 12 00 AC         [24] 1823 	lcall	__gpio_setBits
      0004F6 E5 82            [12] 1824 	mov	a,dpl
      0004F8 D0 06            [24] 1825 	pop	ar6
      0004FA 90 00 13         [24] 1826 	mov	dptr,#_gpioConfigure_ppu_65537_141
      0004FD F0               [24] 1827 	movx	@dptr,a
                                   1828 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:320: pie = _gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      0004FE 90 00 16         [24] 1829 	mov	dptr,#_gpioConfigure_pie_65537_141
      000501 E0               [24] 1830 	movx	a,@dptr
      000502 FE               [12] 1831 	mov	r6,a
      000503 90 00 0C         [24] 1832 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000506 E0               [24] 1833 	movx	a,@dptr
      000507 FB               [12] 1834 	mov	r3,a
      000508 A3               [24] 1835 	inc	dptr
      000509 E0               [24] 1836 	movx	a,@dptr
      00050A FC               [12] 1837 	mov	r4,a
      00050B A3               [24] 1838 	inc	dptr
      00050C E0               [24] 1839 	movx	a,@dptr
      00050D FD               [12] 1840 	mov	r5,a
      00050E 74 07            [12] 1841 	mov	a,#0x07
      000510 2B               [12] 1842 	add	a,r3
      000511 F8               [12] 1843 	mov	r0,a
      000512 E4               [12] 1844 	clr	a
      000513 3C               [12] 1845 	addc	a,r4
      000514 F9               [12] 1846 	mov	r1,a
      000515 8D 02            [24] 1847 	mov	ar2,r5
      000517 88 82            [24] 1848 	mov	dpl,r0
      000519 89 83            [24] 1849 	mov	dph,r1
      00051B 8A F0            [24] 1850 	mov	b,r2
      00051D 12 4A 06         [24] 1851 	lcall	__gptrget
      000520 90 00 01         [24] 1852 	mov	dptr,#__gpio_setBits_PARM_2
      000523 F0               [24] 1853 	movx	@dptr,a
      000524 90 00 02         [24] 1854 	mov	dptr,#__gpio_setBits_PARM_3
      000527 EB               [12] 1855 	mov	a,r3
      000528 F0               [24] 1856 	movx	@dptr,a
      000529 EC               [12] 1857 	mov	a,r4
      00052A A3               [24] 1858 	inc	dptr
      00052B F0               [24] 1859 	movx	@dptr,a
      00052C ED               [12] 1860 	mov	a,r5
      00052D A3               [24] 1861 	inc	dptr
      00052E F0               [24] 1862 	movx	@dptr,a
      00052F 8E 82            [24] 1863 	mov	dpl,r6
      000531 C0 06            [24] 1864 	push	ar6
      000533 12 00 AC         [24] 1865 	lcall	__gpio_setBits
      000536 E5 82            [12] 1866 	mov	a,dpl
      000538 D0 06            [24] 1867 	pop	ar6
      00053A 90 00 16         [24] 1868 	mov	dptr,#_gpioConfigure_pie_65537_141
      00053D F0               [24] 1869 	movx	@dptr,a
                                   1870 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:324: pim1 = _gpio_setBits(pim1, gpioConfig->interruptTrigger & 2, gpioConfig);
      00053E 90 00 17         [24] 1871 	mov	dptr,#_gpioConfigure_pim1_65537_141
      000541 E0               [24] 1872 	movx	a,@dptr
      000542 FE               [12] 1873 	mov	r6,a
      000543 90 00 0C         [24] 1874 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000546 E0               [24] 1875 	movx	a,@dptr
      000547 FB               [12] 1876 	mov	r3,a
      000548 A3               [24] 1877 	inc	dptr
      000549 E0               [24] 1878 	movx	a,@dptr
      00054A FC               [12] 1879 	mov	r4,a
      00054B A3               [24] 1880 	inc	dptr
      00054C E0               [24] 1881 	movx	a,@dptr
      00054D FD               [12] 1882 	mov	r5,a
      00054E 74 09            [12] 1883 	mov	a,#0x09
      000550 2B               [12] 1884 	add	a,r3
      000551 F8               [12] 1885 	mov	r0,a
      000552 E4               [12] 1886 	clr	a
      000553 3C               [12] 1887 	addc	a,r4
      000554 F9               [12] 1888 	mov	r1,a
      000555 8D 02            [24] 1889 	mov	ar2,r5
      000557 88 82            [24] 1890 	mov	dpl,r0
      000559 89 83            [24] 1891 	mov	dph,r1
      00055B 8A F0            [24] 1892 	mov	b,r2
      00055D 12 4A 06         [24] 1893 	lcall	__gptrget
      000560 F8               [12] 1894 	mov	r0,a
      000561 90 00 01         [24] 1895 	mov	dptr,#__gpio_setBits_PARM_2
      000564 74 02            [12] 1896 	mov	a,#0x02
      000566 58               [12] 1897 	anl	a,r0
      000567 F0               [24] 1898 	movx	@dptr,a
      000568 90 00 02         [24] 1899 	mov	dptr,#__gpio_setBits_PARM_3
      00056B EB               [12] 1900 	mov	a,r3
      00056C F0               [24] 1901 	movx	@dptr,a
      00056D EC               [12] 1902 	mov	a,r4
      00056E A3               [24] 1903 	inc	dptr
      00056F F0               [24] 1904 	movx	@dptr,a
      000570 ED               [12] 1905 	mov	a,r5
      000571 A3               [24] 1906 	inc	dptr
      000572 F0               [24] 1907 	movx	@dptr,a
      000573 8E 82            [24] 1908 	mov	dpl,r6
      000575 C0 06            [24] 1909 	push	ar6
      000577 12 00 AC         [24] 1910 	lcall	__gpio_setBits
      00057A E5 82            [12] 1911 	mov	a,dpl
      00057C D0 06            [24] 1912 	pop	ar6
      00057E 90 00 17         [24] 1913 	mov	dptr,#_gpioConfigure_pim1_65537_141
      000581 F0               [24] 1914 	movx	@dptr,a
                                   1915 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:325: pim0 = _gpio_setBits(pim0, gpioConfig->interruptTrigger & 1, gpioConfig);
      000582 90 00 18         [24] 1916 	mov	dptr,#_gpioConfigure_pim0_65537_141
      000585 E0               [24] 1917 	movx	a,@dptr
      000586 FE               [12] 1918 	mov	r6,a
      000587 90 00 0C         [24] 1919 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      00058A E0               [24] 1920 	movx	a,@dptr
      00058B FB               [12] 1921 	mov	r3,a
      00058C A3               [24] 1922 	inc	dptr
      00058D E0               [24] 1923 	movx	a,@dptr
      00058E FC               [12] 1924 	mov	r4,a
      00058F A3               [24] 1925 	inc	dptr
      000590 E0               [24] 1926 	movx	a,@dptr
      000591 FD               [12] 1927 	mov	r5,a
      000592 74 09            [12] 1928 	mov	a,#0x09
      000594 2B               [12] 1929 	add	a,r3
      000595 F8               [12] 1930 	mov	r0,a
      000596 E4               [12] 1931 	clr	a
      000597 3C               [12] 1932 	addc	a,r4
      000598 F9               [12] 1933 	mov	r1,a
      000599 8D 02            [24] 1934 	mov	ar2,r5
      00059B 88 82            [24] 1935 	mov	dpl,r0
      00059D 89 83            [24] 1936 	mov	dph,r1
      00059F 8A F0            [24] 1937 	mov	b,r2
      0005A1 12 4A 06         [24] 1938 	lcall	__gptrget
      0005A4 F8               [12] 1939 	mov	r0,a
      0005A5 90 00 01         [24] 1940 	mov	dptr,#__gpio_setBits_PARM_2
      0005A8 74 01            [12] 1941 	mov	a,#0x01
      0005AA 58               [12] 1942 	anl	a,r0
      0005AB F0               [24] 1943 	movx	@dptr,a
      0005AC 90 00 02         [24] 1944 	mov	dptr,#__gpio_setBits_PARM_3
      0005AF EB               [12] 1945 	mov	a,r3
      0005B0 F0               [24] 1946 	movx	@dptr,a
      0005B1 EC               [12] 1947 	mov	a,r4
      0005B2 A3               [24] 1948 	inc	dptr
      0005B3 F0               [24] 1949 	movx	@dptr,a
      0005B4 ED               [12] 1950 	mov	a,r5
      0005B5 A3               [24] 1951 	inc	dptr
      0005B6 F0               [24] 1952 	movx	@dptr,a
      0005B7 8E 82            [24] 1953 	mov	dpl,r6
      0005B9 C0 06            [24] 1954 	push	ar6
      0005BB 12 00 AC         [24] 1955 	lcall	__gpio_setBits
      0005BE E5 82            [12] 1956 	mov	a,dpl
      0005C0 D0 06            [24] 1957 	pop	ar6
      0005C2 90 00 18         [24] 1958 	mov	dptr,#_gpioConfigure_pim0_65537_141
      0005C5 F0               [24] 1959 	movx	@dptr,a
                                   1960 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:326: pintf &= gpioConfig->__clearMask;
      0005C6 90 00 0C         [24] 1961 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      0005C9 E0               [24] 1962 	movx	a,@dptr
      0005CA FC               [12] 1963 	mov	r4,a
      0005CB A3               [24] 1964 	inc	dptr
      0005CC E0               [24] 1965 	movx	a,@dptr
      0005CD FD               [12] 1966 	mov	r5,a
      0005CE A3               [24] 1967 	inc	dptr
      0005CF E0               [24] 1968 	movx	a,@dptr
      0005D0 FE               [12] 1969 	mov	r6,a
      0005D1 74 0C            [12] 1970 	mov	a,#0x0c
      0005D3 2C               [12] 1971 	add	a,r4
      0005D4 F9               [12] 1972 	mov	r1,a
      0005D5 E4               [12] 1973 	clr	a
      0005D6 3D               [12] 1974 	addc	a,r5
      0005D7 FA               [12] 1975 	mov	r2,a
      0005D8 8E 03            [24] 1976 	mov	ar3,r6
      0005DA 89 82            [24] 1977 	mov	dpl,r1
      0005DC 8A 83            [24] 1978 	mov	dph,r2
      0005DE 8B F0            [24] 1979 	mov	b,r3
      0005E0 12 4A 06         [24] 1980 	lcall	__gptrget
      0005E3 F9               [12] 1981 	mov	r1,a
      0005E4 90 00 19         [24] 1982 	mov	dptr,#_gpioConfigure_pintf_65537_141
      0005E7 E0               [24] 1983 	movx	a,@dptr
      0005E8 59               [12] 1984 	anl	a,r1
      0005E9 F0               [24] 1985 	movx	@dptr,a
                                   1986 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:327: pinte = _gpio_setBits(pinte, gpioConfig->pinInterrupt, gpioConfig);
      0005EA 90 00 1A         [24] 1987 	mov	dptr,#_gpioConfigure_pinte_65537_141
      0005ED E0               [24] 1988 	movx	a,@dptr
      0005EE FB               [12] 1989 	mov	r3,a
      0005EF 74 08            [12] 1990 	mov	a,#0x08
      0005F1 2C               [12] 1991 	add	a,r4
      0005F2 F8               [12] 1992 	mov	r0,a
      0005F3 E4               [12] 1993 	clr	a
      0005F4 3D               [12] 1994 	addc	a,r5
      0005F5 F9               [12] 1995 	mov	r1,a
      0005F6 8E 02            [24] 1996 	mov	ar2,r6
      0005F8 88 82            [24] 1997 	mov	dpl,r0
      0005FA 89 83            [24] 1998 	mov	dph,r1
      0005FC 8A F0            [24] 1999 	mov	b,r2
      0005FE 12 4A 06         [24] 2000 	lcall	__gptrget
      000601 90 00 01         [24] 2001 	mov	dptr,#__gpio_setBits_PARM_2
      000604 F0               [24] 2002 	movx	@dptr,a
      000605 90 00 02         [24] 2003 	mov	dptr,#__gpio_setBits_PARM_3
      000608 EC               [12] 2004 	mov	a,r4
      000609 F0               [24] 2005 	movx	@dptr,a
      00060A ED               [12] 2006 	mov	a,r5
      00060B A3               [24] 2007 	inc	dptr
      00060C F0               [24] 2008 	movx	@dptr,a
      00060D EE               [12] 2009 	mov	a,r6
      00060E A3               [24] 2010 	inc	dptr
      00060F F0               [24] 2011 	movx	@dptr,a
      000610 8B 82            [24] 2012 	mov	dpl,r3
      000612 C0 06            [24] 2013 	push	ar6
      000614 12 00 AC         [24] 2014 	lcall	__gpio_setBits
      000617 E5 82            [12] 2015 	mov	a,dpl
      000619 D0 06            [24] 2016 	pop	ar6
      00061B 90 00 1A         [24] 2017 	mov	dptr,#_gpioConfigure_pinte_65537_141
      00061E F0               [24] 2018 	movx	@dptr,a
                                   2019 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:328: pwkue = _gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
      00061F 90 00 1B         [24] 2020 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      000622 E0               [24] 2021 	movx	a,@dptr
      000623 FE               [12] 2022 	mov	r6,a
      000624 90 00 0C         [24] 2023 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000627 E0               [24] 2024 	movx	a,@dptr
      000628 FB               [12] 2025 	mov	r3,a
      000629 A3               [24] 2026 	inc	dptr
      00062A E0               [24] 2027 	movx	a,@dptr
      00062B FC               [12] 2028 	mov	r4,a
      00062C A3               [24] 2029 	inc	dptr
      00062D E0               [24] 2030 	movx	a,@dptr
      00062E FD               [12] 2031 	mov	r5,a
      00062F 74 0A            [12] 2032 	mov	a,#0x0a
      000631 2B               [12] 2033 	add	a,r3
      000632 F8               [12] 2034 	mov	r0,a
      000633 E4               [12] 2035 	clr	a
      000634 3C               [12] 2036 	addc	a,r4
      000635 F9               [12] 2037 	mov	r1,a
      000636 8D 02            [24] 2038 	mov	ar2,r5
      000638 88 82            [24] 2039 	mov	dpl,r0
      00063A 89 83            [24] 2040 	mov	dph,r1
      00063C 8A F0            [24] 2041 	mov	b,r2
      00063E 12 4A 06         [24] 2042 	lcall	__gptrget
      000641 90 00 01         [24] 2043 	mov	dptr,#__gpio_setBits_PARM_2
      000644 F0               [24] 2044 	movx	@dptr,a
      000645 90 00 02         [24] 2045 	mov	dptr,#__gpio_setBits_PARM_3
      000648 EB               [12] 2046 	mov	a,r3
      000649 F0               [24] 2047 	movx	@dptr,a
      00064A EC               [12] 2048 	mov	a,r4
      00064B A3               [24] 2049 	inc	dptr
      00064C F0               [24] 2050 	movx	@dptr,a
      00064D ED               [12] 2051 	mov	a,r5
      00064E A3               [24] 2052 	inc	dptr
      00064F F0               [24] 2053 	movx	@dptr,a
      000650 8E 82            [24] 2054 	mov	dpl,r6
      000652 C0 06            [24] 2055 	push	ar6
      000654 12 00 AC         [24] 2056 	lcall	__gpio_setBits
      000657 E5 82            [12] 2057 	mov	a,dpl
      000659 D0 06            [24] 2058 	pop	ar6
      00065B D0 07            [24] 2059 	pop	ar7
      00065D 90 00 1B         [24] 2060 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      000660 F0               [24] 2061 	movx	@dptr,a
                                   2062 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:562: }
      000661 D0 06            [24] 2063 	pop	ar6
                                   2064 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:328: pwkue = _gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
      000663                       2065 00108$:
                                   2066 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:334: if (_isOutput(gpioConfig)) {
      000663 90 00 0C         [24] 2067 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000666 E0               [24] 2068 	movx	a,@dptr
      000667 FB               [12] 2069 	mov	r3,a
      000668 A3               [24] 2070 	inc	dptr
      000669 E0               [24] 2071 	movx	a,@dptr
      00066A FC               [12] 2072 	mov	r4,a
      00066B A3               [24] 2073 	inc	dptr
      00066C E0               [24] 2074 	movx	a,@dptr
      00066D FD               [12] 2075 	mov	r5,a
      00066E 8B 82            [24] 2076 	mov	dpl,r3
      000670 8C 83            [24] 2077 	mov	dph,r4
      000672 8D F0            [24] 2078 	mov	b,r5
      000674 C0 07            [24] 2079 	push	ar7
      000676 C0 06            [24] 2080 	push	ar6
      000678 12 01 01         [24] 2081 	lcall	__isOutput
      00067B E5 82            [12] 2082 	mov	a,dpl
      00067D D0 06            [24] 2083 	pop	ar6
      00067F D0 07            [24] 2084 	pop	ar7
      000681 70 03            [24] 2085 	jnz	00181$
      000683 02 07 16         [24] 2086 	ljmp	00110$
      000686                       2087 00181$:
                                   2088 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:335: pdr = _gpio_setBits(pdr, gpioConfig->speed & 1, gpioConfig);
      000686 C0 06            [24] 2089 	push	ar6
      000688 90 00 14         [24] 2090 	mov	dptr,#_gpioConfigure_pdr_65537_141
      00068B E0               [24] 2091 	movx	a,@dptr
      00068C FD               [12] 2092 	mov	r5,a
      00068D 90 00 0C         [24] 2093 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000690 E0               [24] 2094 	movx	a,@dptr
      000691 FA               [12] 2095 	mov	r2,a
      000692 A3               [24] 2096 	inc	dptr
      000693 E0               [24] 2097 	movx	a,@dptr
      000694 FB               [12] 2098 	mov	r3,a
      000695 A3               [24] 2099 	inc	dptr
      000696 E0               [24] 2100 	movx	a,@dptr
      000697 FC               [12] 2101 	mov	r4,a
      000698 74 06            [12] 2102 	mov	a,#0x06
      00069A 2A               [12] 2103 	add	a,r2
      00069B F8               [12] 2104 	mov	r0,a
      00069C E4               [12] 2105 	clr	a
      00069D 3B               [12] 2106 	addc	a,r3
      00069E F9               [12] 2107 	mov	r1,a
      00069F 8C 06            [24] 2108 	mov	ar6,r4
      0006A1 88 82            [24] 2109 	mov	dpl,r0
      0006A3 89 83            [24] 2110 	mov	dph,r1
      0006A5 8E F0            [24] 2111 	mov	b,r6
      0006A7 12 4A 06         [24] 2112 	lcall	__gptrget
      0006AA F8               [12] 2113 	mov	r0,a
      0006AB 90 00 01         [24] 2114 	mov	dptr,#__gpio_setBits_PARM_2
      0006AE 74 01            [12] 2115 	mov	a,#0x01
      0006B0 58               [12] 2116 	anl	a,r0
      0006B1 F0               [24] 2117 	movx	@dptr,a
      0006B2 90 00 02         [24] 2118 	mov	dptr,#__gpio_setBits_PARM_3
      0006B5 EA               [12] 2119 	mov	a,r2
      0006B6 F0               [24] 2120 	movx	@dptr,a
      0006B7 EB               [12] 2121 	mov	a,r3
      0006B8 A3               [24] 2122 	inc	dptr
      0006B9 F0               [24] 2123 	movx	@dptr,a
      0006BA EC               [12] 2124 	mov	a,r4
      0006BB A3               [24] 2125 	inc	dptr
      0006BC F0               [24] 2126 	movx	@dptr,a
      0006BD 8D 82            [24] 2127 	mov	dpl,r5
      0006BF C0 07            [24] 2128 	push	ar7
      0006C1 C0 06            [24] 2129 	push	ar6
      0006C3 12 00 AC         [24] 2130 	lcall	__gpio_setBits
      0006C6 E5 82            [12] 2131 	mov	a,dpl
      0006C8 D0 06            [24] 2132 	pop	ar6
      0006CA 90 00 14         [24] 2133 	mov	dptr,#_gpioConfigure_pdr_65537_141
      0006CD F0               [24] 2134 	movx	@dptr,a
                                   2135 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:336: psr = _gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      0006CE 90 00 15         [24] 2136 	mov	dptr,#_gpioConfigure_psr_65537_141
      0006D1 E0               [24] 2137 	movx	a,@dptr
      0006D2 FE               [12] 2138 	mov	r6,a
      0006D3 90 00 0C         [24] 2139 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      0006D6 E0               [24] 2140 	movx	a,@dptr
      0006D7 FB               [12] 2141 	mov	r3,a
      0006D8 A3               [24] 2142 	inc	dptr
      0006D9 E0               [24] 2143 	movx	a,@dptr
      0006DA FC               [12] 2144 	mov	r4,a
      0006DB A3               [24] 2145 	inc	dptr
      0006DC E0               [24] 2146 	movx	a,@dptr
      0006DD FD               [12] 2147 	mov	r5,a
      0006DE 74 06            [12] 2148 	mov	a,#0x06
      0006E0 2B               [12] 2149 	add	a,r3
      0006E1 F8               [12] 2150 	mov	r0,a
      0006E2 E4               [12] 2151 	clr	a
      0006E3 3C               [12] 2152 	addc	a,r4
      0006E4 F9               [12] 2153 	mov	r1,a
      0006E5 8D 02            [24] 2154 	mov	ar2,r5
      0006E7 88 82            [24] 2155 	mov	dpl,r0
      0006E9 89 83            [24] 2156 	mov	dph,r1
      0006EB 8A F0            [24] 2157 	mov	b,r2
      0006ED 12 4A 06         [24] 2158 	lcall	__gptrget
      0006F0 F8               [12] 2159 	mov	r0,a
      0006F1 90 00 01         [24] 2160 	mov	dptr,#__gpio_setBits_PARM_2
      0006F4 74 02            [12] 2161 	mov	a,#0x02
      0006F6 58               [12] 2162 	anl	a,r0
      0006F7 F0               [24] 2163 	movx	@dptr,a
      0006F8 90 00 02         [24] 2164 	mov	dptr,#__gpio_setBits_PARM_3
      0006FB EB               [12] 2165 	mov	a,r3
      0006FC F0               [24] 2166 	movx	@dptr,a
      0006FD EC               [12] 2167 	mov	a,r4
      0006FE A3               [24] 2168 	inc	dptr
      0006FF F0               [24] 2169 	movx	@dptr,a
      000700 ED               [12] 2170 	mov	a,r5
      000701 A3               [24] 2171 	inc	dptr
      000702 F0               [24] 2172 	movx	@dptr,a
      000703 8E 82            [24] 2173 	mov	dpl,r6
      000705 C0 06            [24] 2174 	push	ar6
      000707 12 00 AC         [24] 2175 	lcall	__gpio_setBits
      00070A E5 82            [12] 2176 	mov	a,dpl
      00070C D0 06            [24] 2177 	pop	ar6
      00070E D0 07            [24] 2178 	pop	ar7
      000710 90 00 15         [24] 2179 	mov	dptr,#_gpioConfigure_psr_65537_141
      000713 F0               [24] 2180 	movx	@dptr,a
                                   2181 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:562: }
      000714 D0 06            [24] 2182 	pop	ar6
                                   2183 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:336: psr = _gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      000716                       2184 00110$:
                                   2185 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:340: switch (gpioConfig->port) {
      000716 90 00 0C         [24] 2186 	mov	dptr,#_gpioConfigure_gpioConfig_65536_137
      000719 E0               [24] 2187 	movx	a,@dptr
      00071A FB               [12] 2188 	mov	r3,a
      00071B A3               [24] 2189 	inc	dptr
      00071C E0               [24] 2190 	movx	a,@dptr
      00071D FC               [12] 2191 	mov	r4,a
      00071E A3               [24] 2192 	inc	dptr
      00071F E0               [24] 2193 	movx	a,@dptr
      000720 FD               [12] 2194 	mov	r5,a
      000721 8B 82            [24] 2195 	mov	dpl,r3
      000723 8C 83            [24] 2196 	mov	dph,r4
      000725 8D F0            [24] 2197 	mov	b,r5
      000727 12 4A 06         [24] 2198 	lcall	__gptrget
      00072A FD               [12] 2199 	mov	r5,a
      00072B BD 01 02         [24] 2200 	cjne	r5,#0x01,00182$
      00072E 80 12            [24] 2201 	sjmp	00111$
      000730                       2202 00182$:
      000730 BD 02 02         [24] 2203 	cjne	r5,#0x02,00183$
      000733 80 62            [24] 2204 	sjmp	00112$
      000735                       2205 00183$:
      000735 BD 03 03         [24] 2206 	cjne	r5,#0x03,00184$
      000738 02 07 EC         [24] 2207 	ljmp	00113$
      00073B                       2208 00184$:
      00073B BD 05 03         [24] 2209 	cjne	r5,#0x05,00185$
      00073E 02 08 41         [24] 2210 	ljmp	00114$
      000741                       2211 00185$:
      000741 22               [24] 2212 	ret
                                   2213 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:372: case GPIO_PORT1:
      000742                       2214 00111$:
                                   2215 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:373: P1M1 = pm1;
      000742 8F 91            [24] 2216 	mov	_P1M1,r7
                                   2217 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:374: P1M0 = pm0;
      000744 8E 92            [24] 2218 	mov	_P1M0,r6
                                   2219 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:377: P1NCS = pncs;
      000746 90 00 12         [24] 2220 	mov	dptr,#_gpioConfigure_pncs_65537_141
      000749 E0               [24] 2221 	movx	a,@dptr
      00074A 90 FE 19         [24] 2222 	mov	dptr,#_P1NCS
      00074D F0               [24] 2223 	movx	@dptr,a
                                   2224 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:378: P1PU = ppu;
      00074E 90 00 13         [24] 2225 	mov	dptr,#_gpioConfigure_ppu_65537_141
      000751 E0               [24] 2226 	movx	a,@dptr
      000752 90 FE 11         [24] 2227 	mov	dptr,#_P1PU
      000755 F0               [24] 2228 	movx	@dptr,a
                                   2229 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:382: P1DR = pdr;
      000756 90 00 14         [24] 2230 	mov	dptr,#_gpioConfigure_pdr_65537_141
      000759 E0               [24] 2231 	movx	a,@dptr
      00075A 90 FE 29         [24] 2232 	mov	dptr,#_P1DR
      00075D F0               [24] 2233 	movx	@dptr,a
                                   2234 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:383: P1SR = psr;
      00075E 90 00 15         [24] 2235 	mov	dptr,#_gpioConfigure_psr_65537_141
      000761 E0               [24] 2236 	movx	a,@dptr
      000762 90 FE 21         [24] 2237 	mov	dptr,#_P1SR
      000765 F0               [24] 2238 	movx	@dptr,a
                                   2239 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:384: P1IE = pie;
      000766 90 00 16         [24] 2240 	mov	dptr,#_gpioConfigure_pie_65537_141
      000769 E0               [24] 2241 	movx	a,@dptr
      00076A 90 FE 31         [24] 2242 	mov	dptr,#_P1IE
      00076D F0               [24] 2243 	movx	@dptr,a
                                   2244 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:388: P1IM1 = pim1;
      00076E 90 00 17         [24] 2245 	mov	dptr,#_gpioConfigure_pim1_65537_141
      000771 E0               [24] 2246 	movx	a,@dptr
      000772 90 FD 31         [24] 2247 	mov	dptr,#_P1IM1
      000775 F0               [24] 2248 	movx	@dptr,a
                                   2249 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:389: P1IM0 = pim0;
      000776 90 00 18         [24] 2250 	mov	dptr,#_gpioConfigure_pim0_65537_141
      000779 E0               [24] 2251 	movx	a,@dptr
      00077A 90 FD 21         [24] 2252 	mov	dptr,#_P1IM0
      00077D F0               [24] 2253 	movx	@dptr,a
                                   2254 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:390: P1INTF = pintf;
      00077E 90 00 19         [24] 2255 	mov	dptr,#_gpioConfigure_pintf_65537_141
      000781 E0               [24] 2256 	movx	a,@dptr
      000782 90 FD 11         [24] 2257 	mov	dptr,#_P1INTF
      000785 F0               [24] 2258 	movx	@dptr,a
                                   2259 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:391: P1INTE = pinte;
      000786 90 00 1A         [24] 2260 	mov	dptr,#_gpioConfigure_pinte_65537_141
      000789 E0               [24] 2261 	movx	a,@dptr
      00078A 90 FD 01         [24] 2262 	mov	dptr,#_P1INTE
      00078D F0               [24] 2263 	movx	@dptr,a
                                   2264 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:392: P1WKUE = pwkue;
      00078E 90 00 1B         [24] 2265 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      000791 E0               [24] 2266 	movx	a,@dptr
      000792 90 FD 41         [24] 2267 	mov	dptr,#_P1WKUE
      000795 F0               [24] 2268 	movx	@dptr,a
                                   2269 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:394: break;
      000796 22               [24] 2270 	ret
                                   2271 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:400: case GPIO_PORT2:
      000797                       2272 00112$:
                                   2273 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:401: P2M1 = pm1;
      000797 8F 95            [24] 2274 	mov	_P2M1,r7
                                   2275 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:402: P2M0 = pm0;
      000799 8E 96            [24] 2276 	mov	_P2M0,r6
                                   2277 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:405: P2NCS = pncs;
      00079B 90 00 12         [24] 2278 	mov	dptr,#_gpioConfigure_pncs_65537_141
      00079E E0               [24] 2279 	movx	a,@dptr
      00079F 90 FE 1A         [24] 2280 	mov	dptr,#_P2NCS
      0007A2 F0               [24] 2281 	movx	@dptr,a
                                   2282 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:406: P2PU = ppu;
      0007A3 90 00 13         [24] 2283 	mov	dptr,#_gpioConfigure_ppu_65537_141
      0007A6 E0               [24] 2284 	movx	a,@dptr
      0007A7 90 FE 12         [24] 2285 	mov	dptr,#_P2PU
      0007AA F0               [24] 2286 	movx	@dptr,a
                                   2287 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:410: P2DR = pdr;
      0007AB 90 00 14         [24] 2288 	mov	dptr,#_gpioConfigure_pdr_65537_141
      0007AE E0               [24] 2289 	movx	a,@dptr
      0007AF 90 FE 2A         [24] 2290 	mov	dptr,#_P2DR
      0007B2 F0               [24] 2291 	movx	@dptr,a
                                   2292 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:411: P2SR = psr;
      0007B3 90 00 15         [24] 2293 	mov	dptr,#_gpioConfigure_psr_65537_141
      0007B6 E0               [24] 2294 	movx	a,@dptr
      0007B7 90 FE 22         [24] 2295 	mov	dptr,#_P2SR
      0007BA F0               [24] 2296 	movx	@dptr,a
                                   2297 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:412: P2IE = pie;
      0007BB 90 00 16         [24] 2298 	mov	dptr,#_gpioConfigure_pie_65537_141
      0007BE E0               [24] 2299 	movx	a,@dptr
      0007BF 90 FE 32         [24] 2300 	mov	dptr,#_P2IE
      0007C2 F0               [24] 2301 	movx	@dptr,a
                                   2302 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:416: P2IM1 = pim1;
      0007C3 90 00 17         [24] 2303 	mov	dptr,#_gpioConfigure_pim1_65537_141
      0007C6 E0               [24] 2304 	movx	a,@dptr
      0007C7 90 FD 32         [24] 2305 	mov	dptr,#_P2IM1
      0007CA F0               [24] 2306 	movx	@dptr,a
                                   2307 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:417: P2IM0 = pim0;
      0007CB 90 00 18         [24] 2308 	mov	dptr,#_gpioConfigure_pim0_65537_141
      0007CE E0               [24] 2309 	movx	a,@dptr
      0007CF 90 FD 22         [24] 2310 	mov	dptr,#_P2IM0
      0007D2 F0               [24] 2311 	movx	@dptr,a
                                   2312 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:418: P2INTF = pintf;
      0007D3 90 00 19         [24] 2313 	mov	dptr,#_gpioConfigure_pintf_65537_141
      0007D6 E0               [24] 2314 	movx	a,@dptr
      0007D7 90 FD 12         [24] 2315 	mov	dptr,#_P2INTF
      0007DA F0               [24] 2316 	movx	@dptr,a
                                   2317 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:419: P2INTE = pinte;
      0007DB 90 00 1A         [24] 2318 	mov	dptr,#_gpioConfigure_pinte_65537_141
      0007DE E0               [24] 2319 	movx	a,@dptr
      0007DF 90 FD 02         [24] 2320 	mov	dptr,#_P2INTE
      0007E2 F0               [24] 2321 	movx	@dptr,a
                                   2322 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:420: P2WKUE = pwkue;
      0007E3 90 00 1B         [24] 2323 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      0007E6 E0               [24] 2324 	movx	a,@dptr
      0007E7 90 FD 42         [24] 2325 	mov	dptr,#_P2WKUE
      0007EA F0               [24] 2326 	movx	@dptr,a
                                   2327 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:422: break;
      0007EB 22               [24] 2328 	ret
                                   2329 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:427: case GPIO_PORT3:
      0007EC                       2330 00113$:
                                   2331 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:428: P3M1 = pm1;
      0007EC 8F B1            [24] 2332 	mov	_P3M1,r7
                                   2333 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:429: P3M0 = pm0;
      0007EE 8E B2            [24] 2334 	mov	_P3M0,r6
                                   2335 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:432: P3NCS = pncs;
      0007F0 90 00 12         [24] 2336 	mov	dptr,#_gpioConfigure_pncs_65537_141
      0007F3 E0               [24] 2337 	movx	a,@dptr
      0007F4 90 FE 1B         [24] 2338 	mov	dptr,#_P3NCS
      0007F7 F0               [24] 2339 	movx	@dptr,a
                                   2340 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:433: P3PU = ppu;
      0007F8 90 00 13         [24] 2341 	mov	dptr,#_gpioConfigure_ppu_65537_141
      0007FB E0               [24] 2342 	movx	a,@dptr
      0007FC 90 FE 13         [24] 2343 	mov	dptr,#_P3PU
      0007FF F0               [24] 2344 	movx	@dptr,a
                                   2345 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:437: P3DR = pdr;
      000800 90 00 14         [24] 2346 	mov	dptr,#_gpioConfigure_pdr_65537_141
      000803 E0               [24] 2347 	movx	a,@dptr
      000804 90 FE 2B         [24] 2348 	mov	dptr,#_P3DR
      000807 F0               [24] 2349 	movx	@dptr,a
                                   2350 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:438: P3SR = psr;
      000808 90 00 15         [24] 2351 	mov	dptr,#_gpioConfigure_psr_65537_141
      00080B E0               [24] 2352 	movx	a,@dptr
      00080C 90 FE 23         [24] 2353 	mov	dptr,#_P3SR
      00080F F0               [24] 2354 	movx	@dptr,a
                                   2355 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:439: P3IE = pie;
      000810 90 00 16         [24] 2356 	mov	dptr,#_gpioConfigure_pie_65537_141
      000813 E0               [24] 2357 	movx	a,@dptr
      000814 90 FE 33         [24] 2358 	mov	dptr,#_P3IE
      000817 F0               [24] 2359 	movx	@dptr,a
                                   2360 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:443: P3IM1 = pim1;
      000818 90 00 17         [24] 2361 	mov	dptr,#_gpioConfigure_pim1_65537_141
      00081B E0               [24] 2362 	movx	a,@dptr
      00081C 90 FD 33         [24] 2363 	mov	dptr,#_P3IM1
      00081F F0               [24] 2364 	movx	@dptr,a
                                   2365 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:444: P3IM0 = pim0;
      000820 90 00 18         [24] 2366 	mov	dptr,#_gpioConfigure_pim0_65537_141
      000823 E0               [24] 2367 	movx	a,@dptr
      000824 90 FD 23         [24] 2368 	mov	dptr,#_P3IM0
      000827 F0               [24] 2369 	movx	@dptr,a
                                   2370 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:445: P3INTF = pintf;
      000828 90 00 19         [24] 2371 	mov	dptr,#_gpioConfigure_pintf_65537_141
      00082B E0               [24] 2372 	movx	a,@dptr
      00082C 90 FD 13         [24] 2373 	mov	dptr,#_P3INTF
      00082F F0               [24] 2374 	movx	@dptr,a
                                   2375 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:446: P3INTE = pinte;
      000830 90 00 1A         [24] 2376 	mov	dptr,#_gpioConfigure_pinte_65537_141
      000833 E0               [24] 2377 	movx	a,@dptr
      000834 90 FD 03         [24] 2378 	mov	dptr,#_P3INTE
      000837 F0               [24] 2379 	movx	@dptr,a
                                   2380 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:447: P3WKUE = pwkue;
      000838 90 00 1B         [24] 2381 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      00083B E0               [24] 2382 	movx	a,@dptr
      00083C 90 FD 43         [24] 2383 	mov	dptr,#_P3WKUE
      00083F F0               [24] 2384 	movx	@dptr,a
                                   2385 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:449: break;
                                   2386 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:482: case GPIO_PORT5:
      000840 22               [24] 2387 	ret
      000841                       2388 00114$:
                                   2389 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:483: P5M1 = pm1;
      000841 8F C9            [24] 2390 	mov	_P5M1,r7
                                   2391 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:484: P5M0 = pm0;
      000843 8E CA            [24] 2392 	mov	_P5M0,r6
                                   2393 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:487: P5NCS = pncs;
      000845 90 00 12         [24] 2394 	mov	dptr,#_gpioConfigure_pncs_65537_141
      000848 E0               [24] 2395 	movx	a,@dptr
      000849 90 FE 1D         [24] 2396 	mov	dptr,#_P5NCS
      00084C F0               [24] 2397 	movx	@dptr,a
                                   2398 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:488: P5PU = ppu;
      00084D 90 00 13         [24] 2399 	mov	dptr,#_gpioConfigure_ppu_65537_141
      000850 E0               [24] 2400 	movx	a,@dptr
      000851 90 FE 15         [24] 2401 	mov	dptr,#_P5PU
      000854 F0               [24] 2402 	movx	@dptr,a
                                   2403 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:492: P5DR = pdr;
      000855 90 00 14         [24] 2404 	mov	dptr,#_gpioConfigure_pdr_65537_141
      000858 E0               [24] 2405 	movx	a,@dptr
      000859 90 FE 2D         [24] 2406 	mov	dptr,#_P5DR
      00085C F0               [24] 2407 	movx	@dptr,a
                                   2408 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:493: P5SR = psr;
      00085D 90 00 15         [24] 2409 	mov	dptr,#_gpioConfigure_psr_65537_141
      000860 E0               [24] 2410 	movx	a,@dptr
      000861 90 FE 25         [24] 2411 	mov	dptr,#_P5SR
      000864 F0               [24] 2412 	movx	@dptr,a
                                   2413 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:494: P5IE = pie;
      000865 90 00 16         [24] 2414 	mov	dptr,#_gpioConfigure_pie_65537_141
      000868 E0               [24] 2415 	movx	a,@dptr
      000869 90 FE 35         [24] 2416 	mov	dptr,#_P5IE
      00086C F0               [24] 2417 	movx	@dptr,a
                                   2418 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:498: P5IM1 = pim1;
      00086D 90 00 17         [24] 2419 	mov	dptr,#_gpioConfigure_pim1_65537_141
      000870 E0               [24] 2420 	movx	a,@dptr
      000871 90 FD 35         [24] 2421 	mov	dptr,#_P5IM1
      000874 F0               [24] 2422 	movx	@dptr,a
                                   2423 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:499: P5IM0 = pim0;
      000875 90 00 18         [24] 2424 	mov	dptr,#_gpioConfigure_pim0_65537_141
      000878 E0               [24] 2425 	movx	a,@dptr
      000879 90 FD 25         [24] 2426 	mov	dptr,#_P5IM0
      00087C F0               [24] 2427 	movx	@dptr,a
                                   2428 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:500: P5INTF = pintf;
      00087D 90 00 19         [24] 2429 	mov	dptr,#_gpioConfigure_pintf_65537_141
      000880 E0               [24] 2430 	movx	a,@dptr
      000881 90 FD 15         [24] 2431 	mov	dptr,#_P5INTF
      000884 F0               [24] 2432 	movx	@dptr,a
                                   2433 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:501: P5INTE = pinte;
      000885 90 00 1A         [24] 2434 	mov	dptr,#_gpioConfigure_pinte_65537_141
      000888 E0               [24] 2435 	movx	a,@dptr
      000889 90 FD 05         [24] 2436 	mov	dptr,#_P5INTE
      00088C F0               [24] 2437 	movx	@dptr,a
                                   2438 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:502: P5WKUE = pwkue;
      00088D 90 00 1B         [24] 2439 	mov	dptr,#_gpioConfigure_pwkue_65537_141
      000890 E0               [24] 2440 	movx	a,@dptr
      000891 90 FD 45         [24] 2441 	mov	dptr,#_P5WKUE
      000894 F0               [24] 2442 	movx	@dptr,a
                                   2443 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:562: }
                                   2444 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:563: }
      000895 22               [24] 2445 	ret
                                   2446 ;------------------------------------------------------------
                                   2447 ;Allocation info for local variables in function '_getPort'
                                   2448 ;------------------------------------------------------------
                                   2449 ;port                      Allocated with name '__getPort_port_65536_146'
                                   2450 ;value                     Allocated with name '__getPort_value_65536_147'
                                   2451 ;------------------------------------------------------------
                                   2452 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:565: static uint8_t _getPort(GpioPort port) {
                                   2453 ;	-----------------------------------------
                                   2454 ;	 function _getPort
                                   2455 ;	-----------------------------------------
      000896                       2456 __getPort:
      000896 E5 82            [12] 2457 	mov	a,dpl
      000898 90 00 1C         [24] 2458 	mov	dptr,#__getPort_port_65536_146
      00089B F0               [24] 2459 	movx	@dptr,a
                                   2460 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:566: uint8_t value = 0;
      00089C 90 00 1D         [24] 2461 	mov	dptr,#__getPort_value_65536_147
      00089F E4               [12] 2462 	clr	a
      0008A0 F0               [24] 2463 	movx	@dptr,a
                                   2464 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:568: switch (port) {
      0008A1 90 00 1C         [24] 2465 	mov	dptr,#__getPort_port_65536_146
      0008A4 E0               [24] 2466 	movx	a,@dptr
      0008A5 FF               [12] 2467 	mov	r7,a
      0008A6 BF 01 02         [24] 2468 	cjne	r7,#0x01,00124$
      0008A9 80 0F            [24] 2469 	sjmp	00101$
      0008AB                       2470 00124$:
      0008AB BF 02 02         [24] 2471 	cjne	r7,#0x02,00125$
      0008AE 80 12            [24] 2472 	sjmp	00102$
      0008B0                       2473 00125$:
      0008B0 BF 03 02         [24] 2474 	cjne	r7,#0x03,00126$
      0008B3 80 15            [24] 2475 	sjmp	00103$
      0008B5                       2476 00126$:
                                   2477 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:578: case GPIO_PORT1:
      0008B5 BF 05 20         [24] 2478 	cjne	r7,#0x05,00105$
      0008B8 80 18            [24] 2479 	sjmp	00104$
      0008BA                       2480 00101$:
                                   2481 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:579: value = P1;
      0008BA 90 00 1D         [24] 2482 	mov	dptr,#__getPort_value_65536_147
      0008BD E5 90            [12] 2483 	mov	a,_P1
      0008BF F0               [24] 2484 	movx	@dptr,a
                                   2485 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:580: break;
                                   2486 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:585: case GPIO_PORT2:
      0008C0 80 16            [24] 2487 	sjmp	00105$
      0008C2                       2488 00102$:
                                   2489 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:586: value = P2;
      0008C2 90 00 1D         [24] 2490 	mov	dptr,#__getPort_value_65536_147
      0008C5 E5 A0            [12] 2491 	mov	a,_P2
      0008C7 F0               [24] 2492 	movx	@dptr,a
                                   2493 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:587: break;
                                   2494 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:591: case GPIO_PORT3:
      0008C8 80 0E            [24] 2495 	sjmp	00105$
      0008CA                       2496 00103$:
                                   2497 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:592: value = P3;
      0008CA 90 00 1D         [24] 2498 	mov	dptr,#__getPort_value_65536_147
      0008CD E5 B0            [12] 2499 	mov	a,_P3
      0008CF F0               [24] 2500 	movx	@dptr,a
                                   2501 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:593: break;
                                   2502 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:604: case GPIO_PORT5:
      0008D0 80 06            [24] 2503 	sjmp	00105$
      0008D2                       2504 00104$:
                                   2505 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:605: value = P5;
      0008D2 90 00 1D         [24] 2506 	mov	dptr,#__getPort_value_65536_147
      0008D5 E5 C8            [12] 2507 	mov	a,_P5
      0008D7 F0               [24] 2508 	movx	@dptr,a
                                   2509 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:623: }
      0008D8                       2510 00105$:
                                   2511 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:625: return value;
      0008D8 90 00 1D         [24] 2512 	mov	dptr,#__getPort_value_65536_147
      0008DB E0               [24] 2513 	movx	a,@dptr
                                   2514 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:626: }
      0008DC F5 82            [12] 2515 	mov	dpl,a
      0008DE 22               [24] 2516 	ret
                                   2517 ;------------------------------------------------------------
                                   2518 ;Allocation info for local variables in function 'gpioRead'
                                   2519 ;------------------------------------------------------------
                                   2520 ;gpioConfig                Allocated with name '_gpioRead_gpioConfig_65536_149'
                                   2521 ;------------------------------------------------------------
                                   2522 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:628: uint8_t gpioRead(GpioConfig *gpioConfig) {
                                   2523 ;	-----------------------------------------
                                   2524 ;	 function gpioRead
                                   2525 ;	-----------------------------------------
      0008DF                       2526 _gpioRead:
      0008DF AF F0            [24] 2527 	mov	r7,b
      0008E1 AE 83            [24] 2528 	mov	r6,dph
      0008E3 E5 82            [12] 2529 	mov	a,dpl
      0008E5 90 00 1E         [24] 2530 	mov	dptr,#_gpioRead_gpioConfig_65536_149
      0008E8 F0               [24] 2531 	movx	@dptr,a
      0008E9 EE               [12] 2532 	mov	a,r6
      0008EA A3               [24] 2533 	inc	dptr
      0008EB F0               [24] 2534 	movx	@dptr,a
      0008EC EF               [12] 2535 	mov	a,r7
      0008ED A3               [24] 2536 	inc	dptr
      0008EE F0               [24] 2537 	movx	@dptr,a
                                   2538 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:629: return (_getPort(gpioConfig->port) & gpioConfig->__setMask) >> gpioConfig->pin;
      0008EF 90 00 1E         [24] 2539 	mov	dptr,#_gpioRead_gpioConfig_65536_149
      0008F2 E0               [24] 2540 	movx	a,@dptr
      0008F3 FD               [12] 2541 	mov	r5,a
      0008F4 A3               [24] 2542 	inc	dptr
      0008F5 E0               [24] 2543 	movx	a,@dptr
      0008F6 FE               [12] 2544 	mov	r6,a
      0008F7 A3               [24] 2545 	inc	dptr
      0008F8 E0               [24] 2546 	movx	a,@dptr
      0008F9 FF               [12] 2547 	mov	r7,a
      0008FA 8D 82            [24] 2548 	mov	dpl,r5
      0008FC 8E 83            [24] 2549 	mov	dph,r6
      0008FE 8F F0            [24] 2550 	mov	b,r7
      000900 12 4A 06         [24] 2551 	lcall	__gptrget
      000903 F5 82            [12] 2552 	mov	dpl,a
      000905 C0 07            [24] 2553 	push	ar7
      000907 C0 06            [24] 2554 	push	ar6
      000909 C0 05            [24] 2555 	push	ar5
      00090B 12 08 96         [24] 2556 	lcall	__getPort
      00090E AC 82            [24] 2557 	mov	r4,dpl
      000910 D0 05            [24] 2558 	pop	ar5
      000912 D0 06            [24] 2559 	pop	ar6
      000914 D0 07            [24] 2560 	pop	ar7
      000916 74 0B            [12] 2561 	mov	a,#0x0b
      000918 2D               [12] 2562 	add	a,r5
      000919 F9               [12] 2563 	mov	r1,a
      00091A E4               [12] 2564 	clr	a
      00091B 3E               [12] 2565 	addc	a,r6
      00091C FA               [12] 2566 	mov	r2,a
      00091D 8F 03            [24] 2567 	mov	ar3,r7
      00091F 89 82            [24] 2568 	mov	dpl,r1
      000921 8A 83            [24] 2569 	mov	dph,r2
      000923 8B F0            [24] 2570 	mov	b,r3
      000925 12 4A 06         [24] 2571 	lcall	__gptrget
      000928 52 04            [12] 2572 	anl	ar4,a
      00092A 0D               [12] 2573 	inc	r5
      00092B BD 00 01         [24] 2574 	cjne	r5,#0x00,00103$
      00092E 0E               [12] 2575 	inc	r6
      00092F                       2576 00103$:
      00092F 8D 82            [24] 2577 	mov	dpl,r5
      000931 8E 83            [24] 2578 	mov	dph,r6
      000933 8F F0            [24] 2579 	mov	b,r7
      000935 12 4A 06         [24] 2580 	lcall	__gptrget
      000938 FD               [12] 2581 	mov	r5,a
      000939 8D F0            [24] 2582 	mov	b,r5
      00093B 05 F0            [12] 2583 	inc	b
      00093D EC               [12] 2584 	mov	a,r4
      00093E 80 02            [24] 2585 	sjmp	00105$
      000940                       2586 00104$:
      000940 C3               [12] 2587 	clr	c
      000941 13               [12] 2588 	rrc	a
      000942                       2589 00105$:
      000942 D5 F0 FB         [24] 2590 	djnz	b,00104$
                                   2591 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:630: }
      000945 F5 82            [12] 2592 	mov	dpl,a
      000947 22               [24] 2593 	ret
                                   2594 ;------------------------------------------------------------
                                   2595 ;Allocation info for local variables in function 'gpioWrite'
                                   2596 ;------------------------------------------------------------
                                   2597 ;value                     Allocated with name '_gpioWrite_PARM_2'
                                   2598 ;gpioConfig                Allocated with name '_gpioWrite_gpioConfig_65536_151'
                                   2599 ;------------------------------------------------------------
                                   2600 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:632: void gpioWrite(GpioConfig *gpioConfig, uint8_t value) {
                                   2601 ;	-----------------------------------------
                                   2602 ;	 function gpioWrite
                                   2603 ;	-----------------------------------------
      000948                       2604 _gpioWrite:
      000948 AF F0            [24] 2605 	mov	r7,b
      00094A AE 83            [24] 2606 	mov	r6,dph
      00094C E5 82            [12] 2607 	mov	a,dpl
      00094E 90 00 22         [24] 2608 	mov	dptr,#_gpioWrite_gpioConfig_65536_151
      000951 F0               [24] 2609 	movx	@dptr,a
      000952 EE               [12] 2610 	mov	a,r6
      000953 A3               [24] 2611 	inc	dptr
      000954 F0               [24] 2612 	movx	@dptr,a
      000955 EF               [12] 2613 	mov	a,r7
      000956 A3               [24] 2614 	inc	dptr
      000957 F0               [24] 2615 	movx	@dptr,a
                                   2616 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:633: if (gpioConfig->count == 1) {
      000958 90 00 22         [24] 2617 	mov	dptr,#_gpioWrite_gpioConfig_65536_151
      00095B E0               [24] 2618 	movx	a,@dptr
      00095C FD               [12] 2619 	mov	r5,a
      00095D A3               [24] 2620 	inc	dptr
      00095E E0               [24] 2621 	movx	a,@dptr
      00095F FE               [12] 2622 	mov	r6,a
      000960 A3               [24] 2623 	inc	dptr
      000961 E0               [24] 2624 	movx	a,@dptr
      000962 FF               [12] 2625 	mov	r7,a
      000963 74 02            [12] 2626 	mov	a,#0x02
      000965 2D               [12] 2627 	add	a,r5
      000966 FA               [12] 2628 	mov	r2,a
      000967 E4               [12] 2629 	clr	a
      000968 3E               [12] 2630 	addc	a,r6
      000969 FB               [12] 2631 	mov	r3,a
      00096A 8F 04            [24] 2632 	mov	ar4,r7
      00096C 8A 82            [24] 2633 	mov	dpl,r2
      00096E 8B 83            [24] 2634 	mov	dph,r3
      000970 8C F0            [24] 2635 	mov	b,r4
      000972 12 4A 06         [24] 2636 	lcall	__gptrget
      000975 FA               [12] 2637 	mov	r2,a
      000976 BA 01 15         [24] 2638 	cjne	r2,#0x01,00102$
                                   2639 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:637: value = value ? 1 : 0;
      000979 90 00 21         [24] 2640 	mov	dptr,#_gpioWrite_PARM_2
      00097C E0               [24] 2641 	movx	a,@dptr
      00097D 60 06            [24] 2642 	jz	00110$
      00097F 7B 01            [12] 2643 	mov	r3,#0x01
      000981 7C 00            [12] 2644 	mov	r4,#0x00
      000983 80 04            [24] 2645 	sjmp	00111$
      000985                       2646 00110$:
      000985 7B 00            [12] 2647 	mov	r3,#0x00
      000987 7C 00            [12] 2648 	mov	r4,#0x00
      000989                       2649 00111$:
      000989 90 00 21         [24] 2650 	mov	dptr,#_gpioWrite_PARM_2
      00098C EB               [12] 2651 	mov	a,r3
      00098D F0               [24] 2652 	movx	@dptr,a
      00098E                       2653 00102$:
                                   2654 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:640: value = (value << gpioConfig->pin) & gpioConfig->__setMask;
      00098E 74 01            [12] 2655 	mov	a,#0x01
      000990 2D               [12] 2656 	add	a,r5
      000991 FA               [12] 2657 	mov	r2,a
      000992 E4               [12] 2658 	clr	a
      000993 3E               [12] 2659 	addc	a,r6
      000994 FB               [12] 2660 	mov	r3,a
      000995 8F 04            [24] 2661 	mov	ar4,r7
      000997 8A 82            [24] 2662 	mov	dpl,r2
      000999 8B 83            [24] 2663 	mov	dph,r3
      00099B 8C F0            [24] 2664 	mov	b,r4
      00099D 12 4A 06         [24] 2665 	lcall	__gptrget
      0009A0 FA               [12] 2666 	mov	r2,a
      0009A1 90 00 21         [24] 2667 	mov	dptr,#_gpioWrite_PARM_2
      0009A4 E0               [24] 2668 	movx	a,@dptr
      0009A5 8A F0            [24] 2669 	mov	b,r2
      0009A7 05 F0            [12] 2670 	inc	b
      0009A9 80 02            [24] 2671 	sjmp	00141$
      0009AB                       2672 00139$:
      0009AB 25 E0            [12] 2673 	add	a,acc
      0009AD                       2674 00141$:
      0009AD D5 F0 FB         [24] 2675 	djnz	b,00139$
      0009B0 FA               [12] 2676 	mov	r2,a
      0009B1 74 0B            [12] 2677 	mov	a,#0x0b
      0009B3 2D               [12] 2678 	add	a,r5
      0009B4 F9               [12] 2679 	mov	r1,a
      0009B5 E4               [12] 2680 	clr	a
      0009B6 3E               [12] 2681 	addc	a,r6
      0009B7 FB               [12] 2682 	mov	r3,a
      0009B8 8F 04            [24] 2683 	mov	ar4,r7
      0009BA 89 82            [24] 2684 	mov	dpl,r1
      0009BC 8B 83            [24] 2685 	mov	dph,r3
      0009BE 8C F0            [24] 2686 	mov	b,r4
      0009C0 12 4A 06         [24] 2687 	lcall	__gptrget
      0009C3 90 00 21         [24] 2688 	mov	dptr,#_gpioWrite_PARM_2
      0009C6 5A               [12] 2689 	anl	a,r2
      0009C7 F0               [24] 2690 	movx	@dptr,a
                                   2691 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:641: value |= _getPort(gpioConfig->port) & gpioConfig->__clearMask;
      0009C8 8D 82            [24] 2692 	mov	dpl,r5
      0009CA 8E 83            [24] 2693 	mov	dph,r6
      0009CC 8F F0            [24] 2694 	mov	b,r7
      0009CE 12 4A 06         [24] 2695 	lcall	__gptrget
      0009D1 F5 82            [12] 2696 	mov	dpl,a
      0009D3 C0 07            [24] 2697 	push	ar7
      0009D5 C0 06            [24] 2698 	push	ar6
      0009D7 C0 05            [24] 2699 	push	ar5
      0009D9 12 08 96         [24] 2700 	lcall	__getPort
      0009DC AC 82            [24] 2701 	mov	r4,dpl
      0009DE D0 05            [24] 2702 	pop	ar5
      0009E0 D0 06            [24] 2703 	pop	ar6
      0009E2 D0 07            [24] 2704 	pop	ar7
      0009E4 74 0C            [12] 2705 	mov	a,#0x0c
      0009E6 2D               [12] 2706 	add	a,r5
      0009E7 F9               [12] 2707 	mov	r1,a
      0009E8 E4               [12] 2708 	clr	a
      0009E9 3E               [12] 2709 	addc	a,r6
      0009EA FA               [12] 2710 	mov	r2,a
      0009EB 8F 03            [24] 2711 	mov	ar3,r7
      0009ED 89 82            [24] 2712 	mov	dpl,r1
      0009EF 8A 83            [24] 2713 	mov	dph,r2
      0009F1 8B F0            [24] 2714 	mov	b,r3
      0009F3 12 4A 06         [24] 2715 	lcall	__gptrget
      0009F6 F9               [12] 2716 	mov	r1,a
      0009F7 52 04            [12] 2717 	anl	ar4,a
      0009F9 90 00 21         [24] 2718 	mov	dptr,#_gpioWrite_PARM_2
      0009FC E0               [24] 2719 	movx	a,@dptr
      0009FD 4C               [12] 2720 	orl	a,r4
      0009FE F0               [24] 2721 	movx	@dptr,a
                                   2722 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:643: switch (gpioConfig->port) {
      0009FF 8D 82            [24] 2723 	mov	dpl,r5
      000A01 8E 83            [24] 2724 	mov	dph,r6
      000A03 8F F0            [24] 2725 	mov	b,r7
      000A05 12 4A 06         [24] 2726 	lcall	__gptrget
      000A08 FF               [12] 2727 	mov	r7,a
      000A09 BF 01 02         [24] 2728 	cjne	r7,#0x01,00142$
      000A0C 80 0F            [24] 2729 	sjmp	00103$
      000A0E                       2730 00142$:
      000A0E BF 02 02         [24] 2731 	cjne	r7,#0x02,00143$
      000A11 80 11            [24] 2732 	sjmp	00104$
      000A13                       2733 00143$:
      000A13 BF 03 02         [24] 2734 	cjne	r7,#0x03,00144$
      000A16 80 13            [24] 2735 	sjmp	00105$
      000A18                       2736 00144$:
                                   2737 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:653: case GPIO_PORT1:
      000A18 BF 05 1D         [24] 2738 	cjne	r7,#0x05,00108$
      000A1B 80 15            [24] 2739 	sjmp	00106$
      000A1D                       2740 00103$:
                                   2741 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:654: P1 = value;
      000A1D 90 00 21         [24] 2742 	mov	dptr,#_gpioWrite_PARM_2
      000A20 E0               [24] 2743 	movx	a,@dptr
      000A21 F5 90            [12] 2744 	mov	_P1,a
                                   2745 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:655: break;
                                   2746 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:660: case GPIO_PORT2:
      000A23 22               [24] 2747 	ret
      000A24                       2748 00104$:
                                   2749 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:661: P2 = value;
      000A24 90 00 21         [24] 2750 	mov	dptr,#_gpioWrite_PARM_2
      000A27 E0               [24] 2751 	movx	a,@dptr
      000A28 F5 A0            [12] 2752 	mov	_P2,a
                                   2753 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:662: break;
                                   2754 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:666: case GPIO_PORT3:
      000A2A 22               [24] 2755 	ret
      000A2B                       2756 00105$:
                                   2757 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:667: P3 = value;
      000A2B 90 00 21         [24] 2758 	mov	dptr,#_gpioWrite_PARM_2
      000A2E E0               [24] 2759 	movx	a,@dptr
      000A2F F5 B0            [12] 2760 	mov	_P3,a
                                   2761 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:668: break;
                                   2762 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:679: case GPIO_PORT5:
      000A31 22               [24] 2763 	ret
      000A32                       2764 00106$:
                                   2765 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:680: P5 = value;
      000A32 90 00 21         [24] 2766 	mov	dptr,#_gpioWrite_PARM_2
      000A35 E0               [24] 2767 	movx	a,@dptr
      000A36 F5 C8            [12] 2768 	mov	_P5,a
                                   2769 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:697: }
      000A38                       2770 00108$:
                                   2771 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:698: }
      000A38 22               [24] 2772 	ret
                                   2773 	.area CSEG    (CODE)
                                   2774 	.area CONST   (CODE)
                                   2775 	.area XINIT   (CODE)
                                   2776 	.area CABS    (ABS,CODE)
