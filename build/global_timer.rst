                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module global_timer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0_isr
                                     12 	.globl _startTimer
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
                                    158 	.globl _DMA_UR4R_TXAL
                                    159 	.globl _DMA_UR4R_TXAH
                                    160 	.globl _DMA_UR4R_DONE
                                    161 	.globl _DMA_UR4R_AMT
                                    162 	.globl _DMA_UR4R_STA
                                    163 	.globl _DMA_UR4R_CR
                                    164 	.globl _DMA_UR4R_CFG
                                    165 	.globl _DMA_UR4T_TXAL
                                    166 	.globl _DMA_UR4T_TXAH
                                    167 	.globl _DMA_UR4T_DONE
                                    168 	.globl _DMA_UR4T_AMT
                                    169 	.globl _DMA_UR4T_STA
                                    170 	.globl _DMA_UR4T_CR
                                    171 	.globl _DMA_UR4T_CFG
                                    172 	.globl _DMA_UR3R_TXAL
                                    173 	.globl _DMA_UR3R_TXAH
                                    174 	.globl _DMA_UR3R_DONE
                                    175 	.globl _DMA_UR3R_AMT
                                    176 	.globl _DMA_UR3R_STA
                                    177 	.globl _DMA_UR3R_CR
                                    178 	.globl _DMA_UR3R_CFG
                                    179 	.globl _DMA_UR3T_TXAL
                                    180 	.globl _DMA_UR3T_TXAH
                                    181 	.globl _DMA_UR3T_DONE
                                    182 	.globl _DMA_UR3T_AMT
                                    183 	.globl _DMA_UR3T_STA
                                    184 	.globl _DMA_UR3T_CR
                                    185 	.globl _DMA_UR3T_CFG
                                    186 	.globl _DMA_UR2R_TXAL
                                    187 	.globl _DMA_UR2R_TXAH
                                    188 	.globl _DMA_UR2R_DONE
                                    189 	.globl _DMA_UR2R_AMT
                                    190 	.globl _DMA_UR2R_STA
                                    191 	.globl _DMA_UR2R_CR
                                    192 	.globl _DMA_UR2R_CFG
                                    193 	.globl _DMA_UR2T_TXAL
                                    194 	.globl _DMA_UR2T_TXAH
                                    195 	.globl _DMA_UR2T_DONE
                                    196 	.globl _DMA_UR2T_AMT
                                    197 	.globl _DMA_UR2T_STA
                                    198 	.globl _DMA_UR2T_CR
                                    199 	.globl _DMA_UR2T_CFG
                                    200 	.globl _DMA_UR1R_TXAL
                                    201 	.globl _DMA_UR1R_TXAH
                                    202 	.globl _DMA_UR1R_DONE
                                    203 	.globl _DMA_UR1R_AMT
                                    204 	.globl _DMA_UR1R_STA
                                    205 	.globl _DMA_UR1R_CR
                                    206 	.globl _DMA_UR1R_CFG
                                    207 	.globl _DMA_UR1T_TXAL
                                    208 	.globl _DMA_UR1T_TXAH
                                    209 	.globl _DMA_UR1T_DONE
                                    210 	.globl _DMA_URTX_AMT
                                    211 	.globl _DMA_UR1T_STA
                                    212 	.globl _DMA_UR1T_CR
                                    213 	.globl _DMA_UR1T_CFG
                                    214 	.globl _TM4PS
                                    215 	.globl _TM3PS
                                    216 	.globl _TM2PS
                                    217 	.globl _IRC48MCR
                                    218 	.globl _IRCDB
                                    219 	.globl _MCLKOCR
                                    220 	.globl _CKSEL
                                    221 	.globl _IRC32KCR
                                    222 	.globl _X32KCR
                                    223 	.globl _XOSCCR
                                    224 	.globl _HIRCCR
                                    225 	.globl _CLKDIV
                                    226 	.globl _DMA_SPI_CFG2
                                    227 	.globl _DMA_SPI_RXAL
                                    228 	.globl _DMA_SPI_RXAH
                                    229 	.globl _DMA_SPI_TXAL
                                    230 	.globl _DMA_SPI_TXAH
                                    231 	.globl _DMA_SPI_DONE
                                    232 	.globl _DMA_SPI_AMT
                                    233 	.globl _DMA_SPI_STA
                                    234 	.globl _DMA_SPI_CR
                                    235 	.globl _DMA_SPI_CFG
                                    236 	.globl _SSEC
                                    237 	.globl _SEC
                                    238 	.globl _MIN
                                    239 	.globl _HOUR
                                    240 	.globl _DAY
                                    241 	.globl _MONTH
                                    242 	.globl _YEAR
                                    243 	.globl _INISSEC
                                    244 	.globl _INISEC
                                    245 	.globl _INIMIN
                                    246 	.globl _INIHOUR
                                    247 	.globl _INIDAY
                                    248 	.globl _INIMONTH
                                    249 	.globl _INIYEAR
                                    250 	.globl _ALASSEC
                                    251 	.globl _ALASEC
                                    252 	.globl _ALAMIN
                                    253 	.globl _ALAHOUR
                                    254 	.globl _RTCIF
                                    255 	.globl _RTCIEN
                                    256 	.globl _RTCCFG
                                    257 	.globl _RTCCR
                                    258 	.globl _PWMB_OISR
                                    259 	.globl _PWMB_DTR
                                    260 	.globl _PWMB_BKR
                                    261 	.globl _PWMB_CCR4L
                                    262 	.globl _PWMB_CCR4H
                                    263 	.globl _PWMB_CCR3L
                                    264 	.globl _PWMB_CCR3H
                                    265 	.globl _PWMB_CCR2L
                                    266 	.globl _PWMB_CCR2H
                                    267 	.globl _PWMB_CCR1L
                                    268 	.globl _PWMB_CCR1H
                                    269 	.globl _PWMB_RCR
                                    270 	.globl _PWMB_ARRL
                                    271 	.globl _PWMB_ARRH
                                    272 	.globl _PWMB_PSCRL
                                    273 	.globl _PWMB_PSCRH
                                    274 	.globl _PWMB_CNTRL
                                    275 	.globl _PWMB_CNTRH
                                    276 	.globl _PWMB_CCER2
                                    277 	.globl _PWMB_CCER1
                                    278 	.globl _PWMB_CCMR4
                                    279 	.globl _PWMB_CCMR3
                                    280 	.globl _PWMB_CCMR2
                                    281 	.globl _PWMB_CCMR1
                                    282 	.globl _PWMB_EGR
                                    283 	.globl _PWMB_SR2
                                    284 	.globl _PWMB_SR1
                                    285 	.globl _PWMB_IER
                                    286 	.globl _PWMB_ETR
                                    287 	.globl _PWMB_SMCR
                                    288 	.globl _PWMB_CR2
                                    289 	.globl _PWMB_CR1
                                    290 	.globl _PWMA_OISR
                                    291 	.globl _PWMA_DTR
                                    292 	.globl _PWMA_BKR
                                    293 	.globl _PWMA_CCR4L
                                    294 	.globl _PWMA_CCR4H
                                    295 	.globl _PWMA_CCR3L
                                    296 	.globl _PWMA_CCR3H
                                    297 	.globl _PWMA_CCR2L
                                    298 	.globl _PWMA_CCR2H
                                    299 	.globl _PWMA_CCR1L
                                    300 	.globl _PWMA_CCR1H
                                    301 	.globl _PWMA_RCR
                                    302 	.globl _PWMA_ARRL
                                    303 	.globl _PWMA_ARRH
                                    304 	.globl _PWMA_PSCRL
                                    305 	.globl _PWMA_PSCRH
                                    306 	.globl _PWMA_CNTRL
                                    307 	.globl _PWMA_CNTRH
                                    308 	.globl _PWMA_CCER2
                                    309 	.globl _PWMA_CCER1
                                    310 	.globl _PWMA_CCMR4
                                    311 	.globl _PWMA_CCMR3
                                    312 	.globl _PWMA_CCMR2
                                    313 	.globl _PWMA_CCMR1
                                    314 	.globl _PWMA_EGR
                                    315 	.globl _PWMA_SR2
                                    316 	.globl _PWMA_SR1
                                    317 	.globl _PWMA_IER
                                    318 	.globl _PWMA_ETR
                                    319 	.globl _PWMA_SMCR
                                    320 	.globl _PWMA_CR2
                                    321 	.globl _PWMA_CR1
                                    322 	.globl _PWMB_IOAUX
                                    323 	.globl _PWMB_PS
                                    324 	.globl _PWMB_ENO
                                    325 	.globl _PWMB_ETRPS
                                    326 	.globl _PWMA_IOAUX
                                    327 	.globl _PWMA_PS
                                    328 	.globl _PWMA_ENO
                                    329 	.globl _PWMA_ETRPS
                                    330 	.globl _RSTFLAG
                                    331 	.globl _SPFUNC
                                    332 	.globl _OPCON
                                    333 	.globl _ARCON
                                    334 	.globl _MD4
                                    335 	.globl _MD5
                                    336 	.globl _MD0
                                    337 	.globl _MD1
                                    338 	.globl _MD2
                                    339 	.globl _MD3
                                    340 	.globl _DMA_LCM_RXAL
                                    341 	.globl _DMA_LCM_RXAH
                                    342 	.globl _DMA_LCM_TXAL
                                    343 	.globl _DMA_LCM_TXAH
                                    344 	.globl _DMA_LCM_DONE
                                    345 	.globl _DMA_LCM_AMT
                                    346 	.globl _DMA_LCM_STA
                                    347 	.globl _DMA_LCM_CR
                                    348 	.globl _DMA_LCM_CFG
                                    349 	.globl _LCMIDDAT
                                    350 	.globl _LCMIDDATH
                                    351 	.globl _LCMIDDATL
                                    352 	.globl _LCMSTA
                                    353 	.globl _LCMCR
                                    354 	.globl _LCMCFG2
                                    355 	.globl _LCMCFG
                                    356 	.globl _I2CMSAUX
                                    357 	.globl _I2CRXD
                                    358 	.globl _I2CTXD
                                    359 	.globl _I2CSLADR
                                    360 	.globl _I2CSLST
                                    361 	.globl _I2CSLCR
                                    362 	.globl _I2CMSST
                                    363 	.globl _I2CMSCR
                                    364 	.globl _I2CCFG
                                    365 	.globl _PINIPH
                                    366 	.globl _PINIPL
                                    367 	.globl _P5IE
                                    368 	.globl _P5DR
                                    369 	.globl _P5SR
                                    370 	.globl _P5NCS
                                    371 	.globl _P5PU
                                    372 	.globl _P5WKUE
                                    373 	.globl _P5IM1
                                    374 	.globl _P5IM0
                                    375 	.globl _P5INTF
                                    376 	.globl _P5INTE
                                    377 	.globl _P3IE
                                    378 	.globl _P3DR
                                    379 	.globl _P3SR
                                    380 	.globl _P3NCS
                                    381 	.globl _P3PU
                                    382 	.globl _P3WKUE
                                    383 	.globl _P3IM1
                                    384 	.globl _P3IM0
                                    385 	.globl _P3INTF
                                    386 	.globl _P3INTE
                                    387 	.globl _P2IE
                                    388 	.globl _P2DR
                                    389 	.globl _P2SR
                                    390 	.globl _P2NCS
                                    391 	.globl _P2PU
                                    392 	.globl _P2WKUE
                                    393 	.globl _P2IM1
                                    394 	.globl _P2IM0
                                    395 	.globl _P2INTF
                                    396 	.globl _P2INTE
                                    397 	.globl _P1IE
                                    398 	.globl _P1DR
                                    399 	.globl _P1SR
                                    400 	.globl _P1NCS
                                    401 	.globl _P1PU
                                    402 	.globl _P1WKUE
                                    403 	.globl _P1IM1
                                    404 	.globl _P1IM0
                                    405 	.globl _P1INTF
                                    406 	.globl _P1INTE
                                    407 	.globl _DMA_M2M_RXAL
                                    408 	.globl _DMA_M2M_RXAH
                                    409 	.globl _DMA_M2M_TXAL
                                    410 	.globl _DMA_M2M_TXAH
                                    411 	.globl _DMA_M2M_DONE
                                    412 	.globl _DMA_M2M_AMT
                                    413 	.globl _DMA_M2M_STA
                                    414 	.globl _DMA_M2M_CR
                                    415 	.globl _DMA_M2M_CFG
                                    416 	.globl _CMPEXCFG
                                    417 	.globl _CHIP_PACKAGE_TYPE
                                    418 	.globl _CHIP_TEST_DAY_BCD
                                    419 	.globl _CHIP_TEST_MONTH_BCD
                                    420 	.globl _CHIP_TEST_YEAR_BCD
                                    421 	.globl _PROGRAM_AREA_SIZE
                                    422 	.globl _VRTRIM_44MHz
                                    423 	.globl _VRTRIM_27MHz
                                    424 	.globl _VRTRIM_10MHz
                                    425 	.globl _VRTRIM_6MHz
                                    426 	.globl _IRTRIM_48MHz
                                    427 	.globl _IRTRIM_44_2368MHz
                                    428 	.globl _IRTRIM_40MHz
                                    429 	.globl _IRTRIM_36_864MHz
                                    430 	.globl _IRTRIM_35MHz
                                    431 	.globl _IRTRIM_33_1776MHz
                                    432 	.globl _IRTRIM_30MHz
                                    433 	.globl _IRTRIM_27MHz
                                    434 	.globl _IRTRIM_24MHz
                                    435 	.globl _IRTRIM_22_1184MHz
                                    436 	.globl ___OTHER_INFO
                                    437 	.globl _CHIP_GUID
                                    438 	.globl _DMA_ADC_CHSW1
                                    439 	.globl _DMA_ADC_CHSW0
                                    440 	.globl _DMA_ADC_CFG2
                                    441 	.globl _DMA_ADC_RXAL
                                    442 	.globl _DMA_ADC_RXAH
                                    443 	.globl _DMA_ADC_STA
                                    444 	.globl _DMA_ADC_CR
                                    445 	.globl _DMA_ADC_CFG
                                    446 	.globl _ADCEXCFG
                                    447 	.globl _ADCTIM
                                    448 	.globl _global_timer_init
                                    449 	.globl _get_current_time
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
                                    614 ;--------------------------------------------------------
                                    615 ; overlayable items in internal ram 
                                    616 ;--------------------------------------------------------
                                    617 ;--------------------------------------------------------
                                    618 ; indirectly addressable internal ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area ISEG    (DATA)
                                    621 ;--------------------------------------------------------
                                    622 ; absolute internal ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area IABS    (ABS,DATA)
                                    625 	.area IABS    (ABS,DATA)
                                    626 ;--------------------------------------------------------
                                    627 ; bit data
                                    628 ;--------------------------------------------------------
                                    629 	.area BSEG    (BIT)
                                    630 ;--------------------------------------------------------
                                    631 ; paged external ram data
                                    632 ;--------------------------------------------------------
                                    633 	.area PSEG    (PAG,XDATA)
                                    634 ;--------------------------------------------------------
                                    635 ; external ram data
                                    636 ;--------------------------------------------------------
                                    637 	.area XSEG    (XDATA)
                           00FEA8   638 _ADCTIM	=	0xfea8
                           00FEAD   639 _ADCEXCFG	=	0xfead
                           00FA10   640 _DMA_ADC_CFG	=	0xfa10
                           00FA11   641 _DMA_ADC_CR	=	0xfa11
                           00FA12   642 _DMA_ADC_STA	=	0xfa12
                           00FA17   643 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   644 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   645 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   646 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   647 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   648 _CHIP_GUID	=	0xfde0
                           00FDE7   649 ___OTHER_INFO	=	0xfde7
                           00FDEB   650 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   651 _IRTRIM_24MHz	=	0xfdec
                           00FDED   652 _IRTRIM_27MHz	=	0xfded
                           00FDEE   653 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   654 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   655 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   656 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   657 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   658 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   659 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   660 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   661 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   662 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   663 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   664 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   665 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   666 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   667 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   668 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   669 _CMPEXCFG	=	0xfeae
                           00FA00   670 _DMA_M2M_CFG	=	0xfa00
                           00FA01   671 _DMA_M2M_CR	=	0xfa01
                           00FA02   672 _DMA_M2M_STA	=	0xfa02
                           00FA03   673 _DMA_M2M_AMT	=	0xfa03
                           00FA04   674 _DMA_M2M_DONE	=	0xfa04
                           00FA05   675 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   676 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   677 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   678 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   679 _P1INTE	=	0xfd01
                           00FD11   680 _P1INTF	=	0xfd11
                           00FD21   681 _P1IM0	=	0xfd21
                           00FD31   682 _P1IM1	=	0xfd31
                           00FD41   683 _P1WKUE	=	0xfd41
                           00FE11   684 _P1PU	=	0xfe11
                           00FE19   685 _P1NCS	=	0xfe19
                           00FE21   686 _P1SR	=	0xfe21
                           00FE29   687 _P1DR	=	0xfe29
                           00FE31   688 _P1IE	=	0xfe31
                           00FD02   689 _P2INTE	=	0xfd02
                           00FD12   690 _P2INTF	=	0xfd12
                           00FD22   691 _P2IM0	=	0xfd22
                           00FD32   692 _P2IM1	=	0xfd32
                           00FD42   693 _P2WKUE	=	0xfd42
                           00FE12   694 _P2PU	=	0xfe12
                           00FE1A   695 _P2NCS	=	0xfe1a
                           00FE22   696 _P2SR	=	0xfe22
                           00FE2A   697 _P2DR	=	0xfe2a
                           00FE32   698 _P2IE	=	0xfe32
                           00FD03   699 _P3INTE	=	0xfd03
                           00FD13   700 _P3INTF	=	0xfd13
                           00FD23   701 _P3IM0	=	0xfd23
                           00FD33   702 _P3IM1	=	0xfd33
                           00FD43   703 _P3WKUE	=	0xfd43
                           00FE13   704 _P3PU	=	0xfe13
                           00FE1B   705 _P3NCS	=	0xfe1b
                           00FE23   706 _P3SR	=	0xfe23
                           00FE2B   707 _P3DR	=	0xfe2b
                           00FE33   708 _P3IE	=	0xfe33
                           00FD05   709 _P5INTE	=	0xfd05
                           00FD15   710 _P5INTF	=	0xfd15
                           00FD25   711 _P5IM0	=	0xfd25
                           00FD35   712 _P5IM1	=	0xfd35
                           00FD45   713 _P5WKUE	=	0xfd45
                           00FE15   714 _P5PU	=	0xfe15
                           00FE1D   715 _P5NCS	=	0xfe1d
                           00FE25   716 _P5SR	=	0xfe25
                           00FE2D   717 _P5DR	=	0xfe2d
                           00FE35   718 _P5IE	=	0xfe35
                           00FD60   719 _PINIPL	=	0xfd60
                           00FD61   720 _PINIPH	=	0xfd61
                           00FE80   721 _I2CCFG	=	0xfe80
                           00FE81   722 _I2CMSCR	=	0xfe81
                           00FE82   723 _I2CMSST	=	0xfe82
                           00FE83   724 _I2CSLCR	=	0xfe83
                           00FE84   725 _I2CSLST	=	0xfe84
                           00FE85   726 _I2CSLADR	=	0xfe85
                           00FE86   727 _I2CTXD	=	0xfe86
                           00FE87   728 _I2CRXD	=	0xfe87
                           00FE88   729 _I2CMSAUX	=	0xfe88
                           00FE50   730 _LCMCFG	=	0xfe50
                           00FE51   731 _LCMCFG2	=	0xfe51
                           00FE52   732 _LCMCR	=	0xfe52
                           00FE53   733 _LCMSTA	=	0xfe53
                           00FE54   734 _LCMIDDATL	=	0xfe54
                           00FE55   735 _LCMIDDATH	=	0xfe55
                           00FE54   736 _LCMIDDAT	=	0xfe54
                           00FA70   737 _DMA_LCM_CFG	=	0xfa70
                           00FA71   738 _DMA_LCM_CR	=	0xfa71
                           00FA72   739 _DMA_LCM_STA	=	0xfa72
                           00FA73   740 _DMA_LCM_AMT	=	0xfa73
                           00FA74   741 _DMA_LCM_DONE	=	0xfa74
                           00FA75   742 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   743 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   744 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   745 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   746 _MD3	=	0xfcf0
                           00FCF1   747 _MD2	=	0xfcf1
                           00FCF2   748 _MD1	=	0xfcf2
                           00FCF3   749 _MD0	=	0xfcf3
                           00FCF4   750 _MD5	=	0xfcf4
                           00FCF5   751 _MD4	=	0xfcf5
                           00FCF6   752 _ARCON	=	0xfcf6
                           00FCF7   753 _OPCON	=	0xfcf7
                           00FE08   754 _SPFUNC	=	0xfe08
                           00FE09   755 _RSTFLAG	=	0xfe09
                           00FEB0   756 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   757 _PWMA_ENO	=	0xfeb1
                           00FEB2   758 _PWMA_PS	=	0xfeb2
                           00FEB3   759 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   760 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   761 _PWMB_ENO	=	0xfeb5
                           00FEB6   762 _PWMB_PS	=	0xfeb6
                           00FEB7   763 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   764 _PWMA_CR1	=	0xfec0
                           00FEC1   765 _PWMA_CR2	=	0xfec1
                           00FEC2   766 _PWMA_SMCR	=	0xfec2
                           00FEC3   767 _PWMA_ETR	=	0xfec3
                           00FEC4   768 _PWMA_IER	=	0xfec4
                           00FEC5   769 _PWMA_SR1	=	0xfec5
                           00FEC6   770 _PWMA_SR2	=	0xfec6
                           00FEC7   771 _PWMA_EGR	=	0xfec7
                           00FEC8   772 _PWMA_CCMR1	=	0xfec8
                           00FEC9   773 _PWMA_CCMR2	=	0xfec9
                           00FECA   774 _PWMA_CCMR3	=	0xfeca
                           00FECB   775 _PWMA_CCMR4	=	0xfecb
                           00FECC   776 _PWMA_CCER1	=	0xfecc
                           00FECD   777 _PWMA_CCER2	=	0xfecd
                           00FECE   778 _PWMA_CNTRH	=	0xfece
                           00FECF   779 _PWMA_CNTRL	=	0xfecf
                           00FED0   780 _PWMA_PSCRH	=	0xfed0
                           00FED1   781 _PWMA_PSCRL	=	0xfed1
                           00FED2   782 _PWMA_ARRH	=	0xfed2
                           00FED3   783 _PWMA_ARRL	=	0xfed3
                           00FED4   784 _PWMA_RCR	=	0xfed4
                           00FED5   785 _PWMA_CCR1H	=	0xfed5
                           00FED6   786 _PWMA_CCR1L	=	0xfed6
                           00FED7   787 _PWMA_CCR2H	=	0xfed7
                           00FED8   788 _PWMA_CCR2L	=	0xfed8
                           00FED9   789 _PWMA_CCR3H	=	0xfed9
                           00FEDA   790 _PWMA_CCR3L	=	0xfeda
                           00FEDB   791 _PWMA_CCR4H	=	0xfedb
                           00FEDC   792 _PWMA_CCR4L	=	0xfedc
                           00FEDD   793 _PWMA_BKR	=	0xfedd
                           00FEDE   794 _PWMA_DTR	=	0xfede
                           00FEDF   795 _PWMA_OISR	=	0xfedf
                           00FEE0   796 _PWMB_CR1	=	0xfee0
                           00FEE1   797 _PWMB_CR2	=	0xfee1
                           00FEE2   798 _PWMB_SMCR	=	0xfee2
                           00FEE3   799 _PWMB_ETR	=	0xfee3
                           00FEE4   800 _PWMB_IER	=	0xfee4
                           00FEE5   801 _PWMB_SR1	=	0xfee5
                           00FEE6   802 _PWMB_SR2	=	0xfee6
                           00FEE7   803 _PWMB_EGR	=	0xfee7
                           00FEE8   804 _PWMB_CCMR1	=	0xfee8
                           00FEE9   805 _PWMB_CCMR2	=	0xfee9
                           00FEEA   806 _PWMB_CCMR3	=	0xfeea
                           00FEEB   807 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   808 _PWMB_CCER1	=	0xfeec
                           00FEED   809 _PWMB_CCER2	=	0xfeed
                           00FEEE   810 _PWMB_CNTRH	=	0xfeee
                           00FEEF   811 _PWMB_CNTRL	=	0xfeef
                           00FEF0   812 _PWMB_PSCRH	=	0xfef0
                           00FEF1   813 _PWMB_PSCRL	=	0xfef1
                           00FEF2   814 _PWMB_ARRH	=	0xfef2
                           00FEF3   815 _PWMB_ARRL	=	0xfef3
                           00FEF4   816 _PWMB_RCR	=	0xfef4
                           00FEF5   817 _PWMB_CCR1H	=	0xfef5
                           00FEF6   818 _PWMB_CCR1L	=	0xfef6
                           00FEF7   819 _PWMB_CCR2H	=	0xfef7
                           00FEF8   820 _PWMB_CCR2L	=	0xfef8
                           00FEF9   821 _PWMB_CCR3H	=	0xfef9
                           00FEFA   822 _PWMB_CCR3L	=	0xfefa
                           00FEFB   823 _PWMB_CCR4H	=	0xfefb
                           00FEFC   824 _PWMB_CCR4L	=	0xfefc
                           00FEFD   825 _PWMB_BKR	=	0xfefd
                           00FEFE   826 _PWMB_DTR	=	0xfefe
                           00FEFF   827 _PWMB_OISR	=	0xfeff
                           00FE60   828 _RTCCR	=	0xfe60
                           00FE61   829 _RTCCFG	=	0xfe61
                           00FE62   830 _RTCIEN	=	0xfe62
                           00FE63   831 _RTCIF	=	0xfe63
                           00FE64   832 _ALAHOUR	=	0xfe64
                           00FE65   833 _ALAMIN	=	0xfe65
                           00FE66   834 _ALASEC	=	0xfe66
                           00FE67   835 _ALASSEC	=	0xfe67
                           00FE68   836 _INIYEAR	=	0xfe68
                           00FE69   837 _INIMONTH	=	0xfe69
                           00FE6A   838 _INIDAY	=	0xfe6a
                           00FE6B   839 _INIHOUR	=	0xfe6b
                           00FE6C   840 _INIMIN	=	0xfe6c
                           00FE6D   841 _INISEC	=	0xfe6d
                           00FE6E   842 _INISSEC	=	0xfe6e
                           00FE70   843 _YEAR	=	0xfe70
                           00FE71   844 _MONTH	=	0xfe71
                           00FE72   845 _DAY	=	0xfe72
                           00FE73   846 _HOUR	=	0xfe73
                           00FE74   847 _MIN	=	0xfe74
                           00FE75   848 _SEC	=	0xfe75
                           00FE76   849 _SSEC	=	0xfe76
                           00FA20   850 _DMA_SPI_CFG	=	0xfa20
                           00FA21   851 _DMA_SPI_CR	=	0xfa21
                           00FA22   852 _DMA_SPI_STA	=	0xfa22
                           00FA23   853 _DMA_SPI_AMT	=	0xfa23
                           00FA24   854 _DMA_SPI_DONE	=	0xfa24
                           00FA25   855 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   856 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   857 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   858 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   859 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   860 _CLKDIV	=	0xfe01
                           00FE02   861 _HIRCCR	=	0xfe02
                           00FE03   862 _XOSCCR	=	0xfe03
                           00FE08   863 _X32KCR	=	0xfe08
                           00FE04   864 _IRC32KCR	=	0xfe04
                           00FE00   865 _CKSEL	=	0xfe00
                           00FE05   866 _MCLKOCR	=	0xfe05
                           00FE06   867 _IRCDB	=	0xfe06
                           00FE07   868 _IRC48MCR	=	0xfe07
                           00FEA2   869 _TM2PS	=	0xfea2
                           00FEA3   870 _TM3PS	=	0xfea3
                           00FEA4   871 _TM4PS	=	0xfea4
                           00FA30   872 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   873 _DMA_UR1T_CR	=	0xfa31
                           00FA32   874 _DMA_UR1T_STA	=	0xfa32
                           00FA33   875 _DMA_URTX_AMT	=	0xfa33
                           00FA34   876 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   877 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   878 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   879 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   880 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   881 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   882 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   883 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   884 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   885 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   886 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   887 _DMA_UR2T_CR	=	0xfa31
                           00FA32   888 _DMA_UR2T_STA	=	0xfa32
                           00FA33   889 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   890 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   891 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   892 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   893 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   894 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   895 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   896 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   897 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   898 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   899 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   900 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   901 _DMA_UR3T_CR	=	0xfa31
                           00FA32   902 _DMA_UR3T_STA	=	0xfa32
                           00FA33   903 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   904 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   905 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   906 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   907 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   908 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   909 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   910 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   911 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   912 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   913 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   914 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   915 _DMA_UR4T_CR	=	0xfa31
                           00FA32   916 _DMA_UR4T_STA	=	0xfa32
                           00FA33   917 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   918 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   919 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   920 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   921 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   922 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   923 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   924 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   925 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   926 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   927 _DMA_UR4R_TXAL	=	0xfa3e
      0002BC                        928 _uartGetCharacter_result_65536_69:
      0002BC                        929 	.ds 1
      0002BD                        930 _global_timer_counter:
      0002BD                        931 	.ds 4
                                    932 ;--------------------------------------------------------
                                    933 ; absolute external ram data
                                    934 ;--------------------------------------------------------
                                    935 	.area XABS    (ABS,XDATA)
                                    936 ;--------------------------------------------------------
                                    937 ; external initialized ram data
                                    938 ;--------------------------------------------------------
                                    939 	.area XISEG   (XDATA)
                                    940 	.area HOME    (CODE)
                                    941 	.area GSINIT0 (CODE)
                                    942 	.area GSINIT1 (CODE)
                                    943 	.area GSINIT2 (CODE)
                                    944 	.area GSINIT3 (CODE)
                                    945 	.area GSINIT4 (CODE)
                                    946 	.area GSINIT5 (CODE)
                                    947 	.area GSINIT  (CODE)
                                    948 	.area GSFINAL (CODE)
                                    949 	.area CSEG    (CODE)
                                    950 ;--------------------------------------------------------
                                    951 ; global & static initialisations
                                    952 ;--------------------------------------------------------
                                    953 	.area HOME    (CODE)
                                    954 	.area GSINIT  (CODE)
                                    955 	.area GSFINAL (CODE)
                                    956 	.area GSINIT  (CODE)
                                    957 ;--------------------------------------------------------
                                    958 ; Home
                                    959 ;--------------------------------------------------------
                                    960 	.area HOME    (CODE)
                                    961 	.area HOME    (CODE)
                                    962 ;--------------------------------------------------------
                                    963 ; code
                                    964 ;--------------------------------------------------------
                                    965 	.area CSEG    (CODE)
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'global_timer_init'
                                    968 ;------------------------------------------------------------
                                    969 ;	global_timer.c:5: void global_timer_init(void) {
                                    970 ;	-----------------------------------------
                                    971 ;	 function global_timer_init
                                    972 ;	-----------------------------------------
      0038CF                        973 _global_timer_init:
                           000007   974 	ar7 = 0x07
                           000006   975 	ar6 = 0x06
                           000005   976 	ar5 = 0x05
                           000004   977 	ar4 = 0x04
                           000003   978 	ar3 = 0x03
                           000002   979 	ar2 = 0x02
                           000001   980 	ar1 = 0x01
                           000000   981 	ar0 = 0x00
                                    982 ;	global_timer.c:11: FREE_RUNNING
      0038CF 90 00 87         [24]  983 	mov	dptr,#_startTimer_PARM_2
      0038D2 74 B8            [12]  984 	mov	a,#0xb8
      0038D4 F0               [24]  985 	movx	@dptr,a
      0038D5 74 88            [12]  986 	mov	a,#0x88
      0038D7 A3               [24]  987 	inc	dptr
      0038D8 F0               [24]  988 	movx	@dptr,a
      0038D9 E4               [12]  989 	clr	a
      0038DA A3               [24]  990 	inc	dptr
      0038DB F0               [24]  991 	movx	@dptr,a
      0038DC A3               [24]  992 	inc	dptr
      0038DD F0               [24]  993 	movx	@dptr,a
      0038DE 90 00 8B         [24]  994 	mov	dptr,#_startTimer_PARM_3
      0038E1 F0               [24]  995 	movx	@dptr,a
      0038E2 90 00 8C         [24]  996 	mov	dptr,#_startTimer_PARM_4
      0038E5 04               [12]  997 	inc	a
      0038E6 F0               [24]  998 	movx	@dptr,a
      0038E7 90 00 8D         [24]  999 	mov	dptr,#_startTimer_PARM_5
      0038EA E4               [12] 1000 	clr	a
      0038EB F0               [24] 1001 	movx	@dptr,a
      0038EC 75 82 00         [24] 1002 	mov	dpl,#0x00
                                   1003 ;	global_timer.c:13: }
      0038EF 02 15 23         [24] 1004 	ljmp	_startTimer
                                   1005 ;------------------------------------------------------------
                                   1006 ;Allocation info for local variables in function 'get_current_time'
                                   1007 ;------------------------------------------------------------
                                   1008 ;	global_timer.c:15: uint32_t get_current_time(void) { return global_timer_counter; }
                                   1009 ;	-----------------------------------------
                                   1010 ;	 function get_current_time
                                   1011 ;	-----------------------------------------
      0038F2                       1012 _get_current_time:
      0038F2 90 02 BD         [24] 1013 	mov	dptr,#_global_timer_counter
      0038F5 E0               [24] 1014 	movx	a,@dptr
      0038F6 FC               [12] 1015 	mov	r4,a
      0038F7 A3               [24] 1016 	inc	dptr
      0038F8 E0               [24] 1017 	movx	a,@dptr
      0038F9 FD               [12] 1018 	mov	r5,a
      0038FA A3               [24] 1019 	inc	dptr
      0038FB E0               [24] 1020 	movx	a,@dptr
      0038FC FE               [12] 1021 	mov	r6,a
      0038FD A3               [24] 1022 	inc	dptr
      0038FE E0               [24] 1023 	movx	a,@dptr
      0038FF 8C 82            [24] 1024 	mov	dpl,r4
      003901 8D 83            [24] 1025 	mov	dph,r5
      003903 8E F0            [24] 1026 	mov	b,r6
      003905 22               [24] 1027 	ret
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'timer0_isr'
                                   1030 ;------------------------------------------------------------
                                   1031 ;	global_timer.c:18: INTERRUPT(GLOBAL_TIMER_ISR, GLOBAL_TIMER_INTERRUPT) {
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function timer0_isr
                                   1034 ;	-----------------------------------------
      003906                       1035 _timer0_isr:
      003906 C0 E0            [24] 1036 	push	acc
      003908 C0 82            [24] 1037 	push	dpl
      00390A C0 83            [24] 1038 	push	dph
      00390C C0 07            [24] 1039 	push	ar7
      00390E C0 06            [24] 1040 	push	ar6
      003910 C0 05            [24] 1041 	push	ar5
      003912 C0 04            [24] 1042 	push	ar4
      003914 C0 D0            [24] 1043 	push	psw
      003916 75 D0 00         [24] 1044 	mov	psw,#0x00
                                   1045 ;	global_timer.c:20: global_timer_counter++;
      003919 90 02 BD         [24] 1046 	mov	dptr,#_global_timer_counter
      00391C E0               [24] 1047 	movx	a,@dptr
      00391D FC               [12] 1048 	mov	r4,a
      00391E A3               [24] 1049 	inc	dptr
      00391F E0               [24] 1050 	movx	a,@dptr
      003920 FD               [12] 1051 	mov	r5,a
      003921 A3               [24] 1052 	inc	dptr
      003922 E0               [24] 1053 	movx	a,@dptr
      003923 FE               [12] 1054 	mov	r6,a
      003924 A3               [24] 1055 	inc	dptr
      003925 E0               [24] 1056 	movx	a,@dptr
      003926 FF               [12] 1057 	mov	r7,a
      003927 90 02 BD         [24] 1058 	mov	dptr,#_global_timer_counter
      00392A 74 01            [12] 1059 	mov	a,#0x01
      00392C 2C               [12] 1060 	add	a,r4
      00392D F0               [24] 1061 	movx	@dptr,a
      00392E E4               [12] 1062 	clr	a
      00392F 3D               [12] 1063 	addc	a,r5
      003930 A3               [24] 1064 	inc	dptr
      003931 F0               [24] 1065 	movx	@dptr,a
      003932 E4               [12] 1066 	clr	a
      003933 3E               [12] 1067 	addc	a,r6
      003934 A3               [24] 1068 	inc	dptr
      003935 F0               [24] 1069 	movx	@dptr,a
      003936 E4               [12] 1070 	clr	a
      003937 3F               [12] 1071 	addc	a,r7
      003938 A3               [24] 1072 	inc	dptr
      003939 F0               [24] 1073 	movx	@dptr,a
                                   1074 ;	global_timer.c:22: }
      00393A D0 D0            [24] 1075 	pop	psw
      00393C D0 04            [24] 1076 	pop	ar4
      00393E D0 05            [24] 1077 	pop	ar5
      003940 D0 06            [24] 1078 	pop	ar6
      003942 D0 07            [24] 1079 	pop	ar7
      003944 D0 83            [24] 1080 	pop	dph
      003946 D0 82            [24] 1081 	pop	dpl
      003948 D0 E0            [24] 1082 	pop	acc
      00394A 32               [24] 1083 	reti
                                   1084 ;	eliminated unneeded push/pop b
                                   1085 	.area CSEG    (CODE)
                                   1086 	.area CONST   (CODE)
                                   1087 	.area XINIT   (CODE)
                                   1088 	.area CABS    (ABS,CODE)
