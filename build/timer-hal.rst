                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer_hal
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
                                    156 	.globl _startTimer_PARM_5
                                    157 	.globl _startTimer_PARM_4
                                    158 	.globl _startTimer_PARM_3
                                    159 	.globl _startTimer_PARM_2
                                    160 	.globl _DMA_UR4R_TXAL
                                    161 	.globl _DMA_UR4R_TXAH
                                    162 	.globl _DMA_UR4R_DONE
                                    163 	.globl _DMA_UR4R_AMT
                                    164 	.globl _DMA_UR4R_STA
                                    165 	.globl _DMA_UR4R_CR
                                    166 	.globl _DMA_UR4R_CFG
                                    167 	.globl _DMA_UR4T_TXAL
                                    168 	.globl _DMA_UR4T_TXAH
                                    169 	.globl _DMA_UR4T_DONE
                                    170 	.globl _DMA_UR4T_AMT
                                    171 	.globl _DMA_UR4T_STA
                                    172 	.globl _DMA_UR4T_CR
                                    173 	.globl _DMA_UR4T_CFG
                                    174 	.globl _DMA_UR3R_TXAL
                                    175 	.globl _DMA_UR3R_TXAH
                                    176 	.globl _DMA_UR3R_DONE
                                    177 	.globl _DMA_UR3R_AMT
                                    178 	.globl _DMA_UR3R_STA
                                    179 	.globl _DMA_UR3R_CR
                                    180 	.globl _DMA_UR3R_CFG
                                    181 	.globl _DMA_UR3T_TXAL
                                    182 	.globl _DMA_UR3T_TXAH
                                    183 	.globl _DMA_UR3T_DONE
                                    184 	.globl _DMA_UR3T_AMT
                                    185 	.globl _DMA_UR3T_STA
                                    186 	.globl _DMA_UR3T_CR
                                    187 	.globl _DMA_UR3T_CFG
                                    188 	.globl _DMA_UR2R_TXAL
                                    189 	.globl _DMA_UR2R_TXAH
                                    190 	.globl _DMA_UR2R_DONE
                                    191 	.globl _DMA_UR2R_AMT
                                    192 	.globl _DMA_UR2R_STA
                                    193 	.globl _DMA_UR2R_CR
                                    194 	.globl _DMA_UR2R_CFG
                                    195 	.globl _DMA_UR2T_TXAL
                                    196 	.globl _DMA_UR2T_TXAH
                                    197 	.globl _DMA_UR2T_DONE
                                    198 	.globl _DMA_UR2T_AMT
                                    199 	.globl _DMA_UR2T_STA
                                    200 	.globl _DMA_UR2T_CR
                                    201 	.globl _DMA_UR2T_CFG
                                    202 	.globl _DMA_UR1R_TXAL
                                    203 	.globl _DMA_UR1R_TXAH
                                    204 	.globl _DMA_UR1R_DONE
                                    205 	.globl _DMA_UR1R_AMT
                                    206 	.globl _DMA_UR1R_STA
                                    207 	.globl _DMA_UR1R_CR
                                    208 	.globl _DMA_UR1R_CFG
                                    209 	.globl _DMA_UR1T_TXAL
                                    210 	.globl _DMA_UR1T_TXAH
                                    211 	.globl _DMA_UR1T_DONE
                                    212 	.globl _DMA_URTX_AMT
                                    213 	.globl _DMA_UR1T_STA
                                    214 	.globl _DMA_UR1T_CR
                                    215 	.globl _DMA_UR1T_CFG
                                    216 	.globl _TM4PS
                                    217 	.globl _TM3PS
                                    218 	.globl _TM2PS
                                    219 	.globl _IRC48MCR
                                    220 	.globl _IRCDB
                                    221 	.globl _MCLKOCR
                                    222 	.globl _CKSEL
                                    223 	.globl _IRC32KCR
                                    224 	.globl _X32KCR
                                    225 	.globl _XOSCCR
                                    226 	.globl _HIRCCR
                                    227 	.globl _CLKDIV
                                    228 	.globl _DMA_SPI_CFG2
                                    229 	.globl _DMA_SPI_RXAL
                                    230 	.globl _DMA_SPI_RXAH
                                    231 	.globl _DMA_SPI_TXAL
                                    232 	.globl _DMA_SPI_TXAH
                                    233 	.globl _DMA_SPI_DONE
                                    234 	.globl _DMA_SPI_AMT
                                    235 	.globl _DMA_SPI_STA
                                    236 	.globl _DMA_SPI_CR
                                    237 	.globl _DMA_SPI_CFG
                                    238 	.globl _SSEC
                                    239 	.globl _SEC
                                    240 	.globl _MIN
                                    241 	.globl _HOUR
                                    242 	.globl _DAY
                                    243 	.globl _MONTH
                                    244 	.globl _YEAR
                                    245 	.globl _INISSEC
                                    246 	.globl _INISEC
                                    247 	.globl _INIMIN
                                    248 	.globl _INIHOUR
                                    249 	.globl _INIDAY
                                    250 	.globl _INIMONTH
                                    251 	.globl _INIYEAR
                                    252 	.globl _ALASSEC
                                    253 	.globl _ALASEC
                                    254 	.globl _ALAMIN
                                    255 	.globl _ALAHOUR
                                    256 	.globl _RTCIF
                                    257 	.globl _RTCIEN
                                    258 	.globl _RTCCFG
                                    259 	.globl _RTCCR
                                    260 	.globl _PWMB_OISR
                                    261 	.globl _PWMB_DTR
                                    262 	.globl _PWMB_BKR
                                    263 	.globl _PWMB_CCR4L
                                    264 	.globl _PWMB_CCR4H
                                    265 	.globl _PWMB_CCR3L
                                    266 	.globl _PWMB_CCR3H
                                    267 	.globl _PWMB_CCR2L
                                    268 	.globl _PWMB_CCR2H
                                    269 	.globl _PWMB_CCR1L
                                    270 	.globl _PWMB_CCR1H
                                    271 	.globl _PWMB_RCR
                                    272 	.globl _PWMB_ARRL
                                    273 	.globl _PWMB_ARRH
                                    274 	.globl _PWMB_PSCRL
                                    275 	.globl _PWMB_PSCRH
                                    276 	.globl _PWMB_CNTRL
                                    277 	.globl _PWMB_CNTRH
                                    278 	.globl _PWMB_CCER2
                                    279 	.globl _PWMB_CCER1
                                    280 	.globl _PWMB_CCMR4
                                    281 	.globl _PWMB_CCMR3
                                    282 	.globl _PWMB_CCMR2
                                    283 	.globl _PWMB_CCMR1
                                    284 	.globl _PWMB_EGR
                                    285 	.globl _PWMB_SR2
                                    286 	.globl _PWMB_SR1
                                    287 	.globl _PWMB_IER
                                    288 	.globl _PWMB_ETR
                                    289 	.globl _PWMB_SMCR
                                    290 	.globl _PWMB_CR2
                                    291 	.globl _PWMB_CR1
                                    292 	.globl _PWMA_OISR
                                    293 	.globl _PWMA_DTR
                                    294 	.globl _PWMA_BKR
                                    295 	.globl _PWMA_CCR4L
                                    296 	.globl _PWMA_CCR4H
                                    297 	.globl _PWMA_CCR3L
                                    298 	.globl _PWMA_CCR3H
                                    299 	.globl _PWMA_CCR2L
                                    300 	.globl _PWMA_CCR2H
                                    301 	.globl _PWMA_CCR1L
                                    302 	.globl _PWMA_CCR1H
                                    303 	.globl _PWMA_RCR
                                    304 	.globl _PWMA_ARRL
                                    305 	.globl _PWMA_ARRH
                                    306 	.globl _PWMA_PSCRL
                                    307 	.globl _PWMA_PSCRH
                                    308 	.globl _PWMA_CNTRL
                                    309 	.globl _PWMA_CNTRH
                                    310 	.globl _PWMA_CCER2
                                    311 	.globl _PWMA_CCER1
                                    312 	.globl _PWMA_CCMR4
                                    313 	.globl _PWMA_CCMR3
                                    314 	.globl _PWMA_CCMR2
                                    315 	.globl _PWMA_CCMR1
                                    316 	.globl _PWMA_EGR
                                    317 	.globl _PWMA_SR2
                                    318 	.globl _PWMA_SR1
                                    319 	.globl _PWMA_IER
                                    320 	.globl _PWMA_ETR
                                    321 	.globl _PWMA_SMCR
                                    322 	.globl _PWMA_CR2
                                    323 	.globl _PWMA_CR1
                                    324 	.globl _PWMB_IOAUX
                                    325 	.globl _PWMB_PS
                                    326 	.globl _PWMB_ENO
                                    327 	.globl _PWMB_ETRPS
                                    328 	.globl _PWMA_IOAUX
                                    329 	.globl _PWMA_PS
                                    330 	.globl _PWMA_ENO
                                    331 	.globl _PWMA_ETRPS
                                    332 	.globl _RSTFLAG
                                    333 	.globl _SPFUNC
                                    334 	.globl _OPCON
                                    335 	.globl _ARCON
                                    336 	.globl _MD4
                                    337 	.globl _MD5
                                    338 	.globl _MD0
                                    339 	.globl _MD1
                                    340 	.globl _MD2
                                    341 	.globl _MD3
                                    342 	.globl _DMA_LCM_RXAL
                                    343 	.globl _DMA_LCM_RXAH
                                    344 	.globl _DMA_LCM_TXAL
                                    345 	.globl _DMA_LCM_TXAH
                                    346 	.globl _DMA_LCM_DONE
                                    347 	.globl _DMA_LCM_AMT
                                    348 	.globl _DMA_LCM_STA
                                    349 	.globl _DMA_LCM_CR
                                    350 	.globl _DMA_LCM_CFG
                                    351 	.globl _LCMIDDAT
                                    352 	.globl _LCMIDDATH
                                    353 	.globl _LCMIDDATL
                                    354 	.globl _LCMSTA
                                    355 	.globl _LCMCR
                                    356 	.globl _LCMCFG2
                                    357 	.globl _LCMCFG
                                    358 	.globl _I2CMSAUX
                                    359 	.globl _I2CRXD
                                    360 	.globl _I2CTXD
                                    361 	.globl _I2CSLADR
                                    362 	.globl _I2CSLST
                                    363 	.globl _I2CSLCR
                                    364 	.globl _I2CMSST
                                    365 	.globl _I2CMSCR
                                    366 	.globl _I2CCFG
                                    367 	.globl _PINIPH
                                    368 	.globl _PINIPL
                                    369 	.globl _P5IE
                                    370 	.globl _P5DR
                                    371 	.globl _P5SR
                                    372 	.globl _P5NCS
                                    373 	.globl _P5PU
                                    374 	.globl _P5WKUE
                                    375 	.globl _P5IM1
                                    376 	.globl _P5IM0
                                    377 	.globl _P5INTF
                                    378 	.globl _P5INTE
                                    379 	.globl _P3IE
                                    380 	.globl _P3DR
                                    381 	.globl _P3SR
                                    382 	.globl _P3NCS
                                    383 	.globl _P3PU
                                    384 	.globl _P3WKUE
                                    385 	.globl _P3IM1
                                    386 	.globl _P3IM0
                                    387 	.globl _P3INTF
                                    388 	.globl _P3INTE
                                    389 	.globl _P2IE
                                    390 	.globl _P2DR
                                    391 	.globl _P2SR
                                    392 	.globl _P2NCS
                                    393 	.globl _P2PU
                                    394 	.globl _P2WKUE
                                    395 	.globl _P2IM1
                                    396 	.globl _P2IM0
                                    397 	.globl _P2INTF
                                    398 	.globl _P2INTE
                                    399 	.globl _P1IE
                                    400 	.globl _P1DR
                                    401 	.globl _P1SR
                                    402 	.globl _P1NCS
                                    403 	.globl _P1PU
                                    404 	.globl _P1WKUE
                                    405 	.globl _P1IM1
                                    406 	.globl _P1IM0
                                    407 	.globl _P1INTF
                                    408 	.globl _P1INTE
                                    409 	.globl _DMA_M2M_RXAL
                                    410 	.globl _DMA_M2M_RXAH
                                    411 	.globl _DMA_M2M_TXAL
                                    412 	.globl _DMA_M2M_TXAH
                                    413 	.globl _DMA_M2M_DONE
                                    414 	.globl _DMA_M2M_AMT
                                    415 	.globl _DMA_M2M_STA
                                    416 	.globl _DMA_M2M_CR
                                    417 	.globl _DMA_M2M_CFG
                                    418 	.globl _CMPEXCFG
                                    419 	.globl _CHIP_PACKAGE_TYPE
                                    420 	.globl _CHIP_TEST_DAY_BCD
                                    421 	.globl _CHIP_TEST_MONTH_BCD
                                    422 	.globl _CHIP_TEST_YEAR_BCD
                                    423 	.globl _PROGRAM_AREA_SIZE
                                    424 	.globl _VRTRIM_44MHz
                                    425 	.globl _VRTRIM_27MHz
                                    426 	.globl _VRTRIM_10MHz
                                    427 	.globl _VRTRIM_6MHz
                                    428 	.globl _IRTRIM_48MHz
                                    429 	.globl _IRTRIM_44_2368MHz
                                    430 	.globl _IRTRIM_40MHz
                                    431 	.globl _IRTRIM_36_864MHz
                                    432 	.globl _IRTRIM_35MHz
                                    433 	.globl _IRTRIM_33_1776MHz
                                    434 	.globl _IRTRIM_30MHz
                                    435 	.globl _IRTRIM_27MHz
                                    436 	.globl _IRTRIM_24MHz
                                    437 	.globl _IRTRIM_22_1184MHz
                                    438 	.globl ___OTHER_INFO
                                    439 	.globl _CHIP_GUID
                                    440 	.globl _DMA_ADC_CHSW1
                                    441 	.globl _DMA_ADC_CHSW0
                                    442 	.globl _DMA_ADC_CFG2
                                    443 	.globl _DMA_ADC_RXAL
                                    444 	.globl _DMA_ADC_RXAH
                                    445 	.globl _DMA_ADC_STA
                                    446 	.globl _DMA_ADC_CR
                                    447 	.globl _DMA_ADC_CFG
                                    448 	.globl _ADCEXCFG
                                    449 	.globl _ADCTIM
                                    450 	.globl _startTimer
                                    451 	.globl _stopTimer
                                    452 ;--------------------------------------------------------
                                    453 ; special function registers
                                    454 ;--------------------------------------------------------
                                    455 	.area RSEG    (ABS,DATA)
      000000                        456 	.org 0x0000
                           0000BC   457 _ADC_CONTR	=	0x00bc
                           0000BD   458 _ADC_RESH	=	0x00bd
                           0000BE   459 _ADC_RESL	=	0x00be
                           00BDBE   460 _ADC_RES	=	0xbdbe
                           0000DE   461 _ADCCFG	=	0x00de
                           0000FA   462 _DMA_ADC_AMT	=	0x00fa
                           0000E6   463 _CMPCR1	=	0x00e6
                           0000E7   464 _CMPCR2	=	0x00e7
                           000082   465 _DPL	=	0x0082
                           000083   466 _DPH	=	0x0083
                           008382   467 _DP	=	0x8382
                           0000E3   468 _DPS	=	0x00e3
                           0000E4   469 _DPL1	=	0x00e4
                           0000E5   470 _DPH1	=	0x00e5
                           0000AE   471 _TA	=	0x00ae
                           000090   472 _P1	=	0x0090
                           000091   473 _P1M1	=	0x0091
                           000092   474 _P1M0	=	0x0092
                           0000A0   475 _P2	=	0x00a0
                           000095   476 _P2M1	=	0x0095
                           000096   477 _P2M0	=	0x0096
                           0000B0   478 _P3	=	0x00b0
                           0000B1   479 _P3M1	=	0x00b1
                           0000B2   480 _P3M0	=	0x00b2
                           0000C8   481 _P5	=	0x00c8
                           0000C9   482 _P5M1	=	0x00c9
                           0000CA   483 _P5M0	=	0x00ca
                           0000C2   484 _IAP_DATA	=	0x00c2
                           0000C3   485 _IAP_ADDRH	=	0x00c3
                           0000C4   486 _IAP_ADDRL	=	0x00c4
                           00C3C4   487 _IAP_ADDR	=	0xc3c4
                           0000C5   488 _IAP_CMD	=	0x00c5
                           0000C6   489 _IAP_TRIG	=	0x00c6
                           0000C7   490 _IAP_CONTR	=	0x00c7
                           0000F5   491 _IAP_TPS	=	0x00f5
                           00008F   492 _INT_CLKO	=	0x008f
                           0000A8   493 _IE1	=	0x00a8
                           0000B8   494 _IP1L	=	0x00b8
                           0000B7   495 _IP1H	=	0x00b7
                           0000AF   496 _IE2	=	0x00af
                           0000B5   497 _IP2L	=	0x00b5
                           0000B6   498 _IP2H	=	0x00b6
                           0000DF   499 _IP3L	=	0x00df
                           0000EE   500 _IP3H	=	0x00ee
                           000081   501 _SP	=	0x0081
                           0000D0   502 _PSW	=	0x00d0
                           0000E0   503 _ACC	=	0x00e0
                           0000F0   504 _B	=	0x00f0
                           000087   505 _PCON	=	0x0087
                           0000FF   506 _RSTCFG	=	0x00ff
                           0000A2   507 _P_SW1	=	0x00a2
                           0000BA   508 _P_SW2	=	0x00ba
                           0000A1   509 _BUS_SPEED	=	0x00a1
                           0000AA   510 _WKTCL	=	0x00aa
                           0000AB   511 _WKTCH	=	0x00ab
                           00ABAA   512 _WKTC	=	0xabaa
                           0000CD   513 _SPSTAT	=	0x00cd
                           0000CE   514 _SPCTL	=	0x00ce
                           0000CF   515 _SPDAT	=	0x00cf
                           00009D   516 _IRCBAND	=	0x009d
                           00009E   517 _LIRTRIM	=	0x009e
                           00009F   518 _IRTRIM	=	0x009f
                           000088   519 _TCON	=	0x0088
                           000089   520 _TMOD	=	0x0089
                           00008A   521 _T0L	=	0x008a
                           00008C   522 _T0H	=	0x008c
                           008C8A   523 _T0	=	0x8c8a
                           00008B   524 _T1L	=	0x008b
                           00008D   525 _T1H	=	0x008d
                           008D8B   526 _T1	=	0x8d8b
                           0000D7   527 _T2L	=	0x00d7
                           0000D6   528 _T2H	=	0x00d6
                           00D6D7   529 _T2	=	0xd6d7
                           00008E   530 _AUXR	=	0x008e
                           0000C1   531 _WDT_CONTR	=	0x00c1
                           0000D1   532 _T4T3M	=	0x00d1
                           0000D2   533 _T4H	=	0x00d2
                           0000D3   534 _T4L	=	0x00d3
                           00D2D3   535 _T4	=	0xd2d3
                           0000D4   536 _T3H	=	0x00d4
                           0000D5   537 _T3L	=	0x00d5
                           00D4D5   538 _T3	=	0xd4d5
                           0000EF   539 _AUXINTIF	=	0x00ef
                           0000A9   540 _SADDR	=	0x00a9
                           0000B9   541 _SADEN	=	0x00b9
                           000098   542 _S1CON	=	0x0098
                           000099   543 _S1BUF	=	0x0099
                           00009A   544 _S2CON	=	0x009a
                           00009B   545 _S2BUF	=	0x009b
                           0000AC   546 _S3CON	=	0x00ac
                           0000AD   547 _S3BUF	=	0x00ad
                           000084   548 _S4CON	=	0x0084
                           000085   549 _S4BUF	=	0x0085
                           0000DC   550 _USBCLK	=	0x00dc
                           0000EC   551 _USBDAT	=	0x00ec
                           0000F4   552 _USBCON	=	0x00f4
                           0000FC   553 _USBADR	=	0x00fc
                                    554 ;--------------------------------------------------------
                                    555 ; special function bits
                                    556 ;--------------------------------------------------------
                                    557 	.area RSEG    (ABS,DATA)
      000000                        558 	.org 0x0000
                           000090   559 _P1_0	=	0x0090
                           000091   560 _P1_1	=	0x0091
                           000092   561 _P1_2	=	0x0092
                           000093   562 _P1_3	=	0x0093
                           000094   563 _P1_4	=	0x0094
                           000095   564 _P1_5	=	0x0095
                           000096   565 _P1_6	=	0x0096
                           000097   566 _P1_7	=	0x0097
                           0000A0   567 _P2_0	=	0x00a0
                           0000A1   568 _P2_1	=	0x00a1
                           0000A2   569 _P2_2	=	0x00a2
                           0000A3   570 _P2_3	=	0x00a3
                           0000A4   571 _P2_4	=	0x00a4
                           0000A5   572 _P2_5	=	0x00a5
                           0000A6   573 _P2_6	=	0x00a6
                           0000A7   574 _P2_7	=	0x00a7
                           0000B0   575 _P3_0	=	0x00b0
                           0000B1   576 _P3_1	=	0x00b1
                           0000B2   577 _P3_2	=	0x00b2
                           0000B3   578 _P3_3	=	0x00b3
                           0000B4   579 _P3_4	=	0x00b4
                           0000B5   580 _P3_5	=	0x00b5
                           0000B6   581 _P3_6	=	0x00b6
                           0000B7   582 _P3_7	=	0x00b7
                           0000C8   583 _P5_0	=	0x00c8
                           0000C9   584 _P5_1	=	0x00c9
                           0000CA   585 _P5_2	=	0x00ca
                           0000CB   586 _P5_3	=	0x00cb
                           0000CC   587 _P5_4	=	0x00cc
                           0000CD   588 _P5_5	=	0x00cd
                           000088   589 _INT0TR	=	0x0088
                           00008A   590 _INT1TR	=	0x008a
                           0000A8   591 _INT0IE	=	0x00a8
                           0000AA   592 _INT1IE	=	0x00aa
                           0000AF   593 _EA	=	0x00af
                           0000D0   594 _P	=	0x00d0
                           0000D1   595 _F1	=	0x00d1
                           0000D2   596 _OV	=	0x00d2
                           0000D3   597 _RS0	=	0x00d3
                           0000D4   598 _RS1	=	0x00d4
                           0000D5   599 _F0	=	0x00d5
                           0000D6   600 _AC	=	0x00d6
                           0000D7   601 _CY	=	0x00d7
                           00008C   602 _T0RUN	=	0x008c
                           00008E   603 _T1RUN	=	0x008e
                           0000A9   604 _T0IE	=	0x00a9
                           0000AB   605 _T1IE	=	0x00ab
                           00009F   606 _S1SM0_FE	=	0x009f
                                    607 ;--------------------------------------------------------
                                    608 ; overlayable register banks
                                    609 ;--------------------------------------------------------
                                    610 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        611 	.ds 8
                                    612 ;--------------------------------------------------------
                                    613 ; internal ram data
                                    614 ;--------------------------------------------------------
                                    615 	.area DSEG    (DATA)
      00000B                        616 _startTimer_sloc0_1_0:
      00000B                        617 	.ds 2
                                    618 ;--------------------------------------------------------
                                    619 ; overlayable items in internal ram 
                                    620 ;--------------------------------------------------------
                                    621 ;--------------------------------------------------------
                                    622 ; indirectly addressable internal ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area ISEG    (DATA)
                                    625 ;--------------------------------------------------------
                                    626 ; absolute internal ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area IABS    (ABS,DATA)
                                    629 	.area IABS    (ABS,DATA)
                                    630 ;--------------------------------------------------------
                                    631 ; bit data
                                    632 ;--------------------------------------------------------
                                    633 	.area BSEG    (BIT)
                                    634 ;--------------------------------------------------------
                                    635 ; paged external ram data
                                    636 ;--------------------------------------------------------
                                    637 	.area PSEG    (PAG,XDATA)
                                    638 ;--------------------------------------------------------
                                    639 ; external ram data
                                    640 ;--------------------------------------------------------
                                    641 	.area XSEG    (XDATA)
                           00FEA8   642 _ADCTIM	=	0xfea8
                           00FEAD   643 _ADCEXCFG	=	0xfead
                           00FA10   644 _DMA_ADC_CFG	=	0xfa10
                           00FA11   645 _DMA_ADC_CR	=	0xfa11
                           00FA12   646 _DMA_ADC_STA	=	0xfa12
                           00FA17   647 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   648 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   649 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   650 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   651 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   652 _CHIP_GUID	=	0xfde0
                           00FDE7   653 ___OTHER_INFO	=	0xfde7
                           00FDEB   654 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   655 _IRTRIM_24MHz	=	0xfdec
                           00FDED   656 _IRTRIM_27MHz	=	0xfded
                           00FDEE   657 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   658 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   659 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   660 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   661 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   662 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   663 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   664 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   665 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   666 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   667 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   668 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   669 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   670 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   671 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   672 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   673 _CMPEXCFG	=	0xfeae
                           00FA00   674 _DMA_M2M_CFG	=	0xfa00
                           00FA01   675 _DMA_M2M_CR	=	0xfa01
                           00FA02   676 _DMA_M2M_STA	=	0xfa02
                           00FA03   677 _DMA_M2M_AMT	=	0xfa03
                           00FA04   678 _DMA_M2M_DONE	=	0xfa04
                           00FA05   679 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   680 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   681 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   682 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   683 _P1INTE	=	0xfd01
                           00FD11   684 _P1INTF	=	0xfd11
                           00FD21   685 _P1IM0	=	0xfd21
                           00FD31   686 _P1IM1	=	0xfd31
                           00FD41   687 _P1WKUE	=	0xfd41
                           00FE11   688 _P1PU	=	0xfe11
                           00FE19   689 _P1NCS	=	0xfe19
                           00FE21   690 _P1SR	=	0xfe21
                           00FE29   691 _P1DR	=	0xfe29
                           00FE31   692 _P1IE	=	0xfe31
                           00FD02   693 _P2INTE	=	0xfd02
                           00FD12   694 _P2INTF	=	0xfd12
                           00FD22   695 _P2IM0	=	0xfd22
                           00FD32   696 _P2IM1	=	0xfd32
                           00FD42   697 _P2WKUE	=	0xfd42
                           00FE12   698 _P2PU	=	0xfe12
                           00FE1A   699 _P2NCS	=	0xfe1a
                           00FE22   700 _P2SR	=	0xfe22
                           00FE2A   701 _P2DR	=	0xfe2a
                           00FE32   702 _P2IE	=	0xfe32
                           00FD03   703 _P3INTE	=	0xfd03
                           00FD13   704 _P3INTF	=	0xfd13
                           00FD23   705 _P3IM0	=	0xfd23
                           00FD33   706 _P3IM1	=	0xfd33
                           00FD43   707 _P3WKUE	=	0xfd43
                           00FE13   708 _P3PU	=	0xfe13
                           00FE1B   709 _P3NCS	=	0xfe1b
                           00FE23   710 _P3SR	=	0xfe23
                           00FE2B   711 _P3DR	=	0xfe2b
                           00FE33   712 _P3IE	=	0xfe33
                           00FD05   713 _P5INTE	=	0xfd05
                           00FD15   714 _P5INTF	=	0xfd15
                           00FD25   715 _P5IM0	=	0xfd25
                           00FD35   716 _P5IM1	=	0xfd35
                           00FD45   717 _P5WKUE	=	0xfd45
                           00FE15   718 _P5PU	=	0xfe15
                           00FE1D   719 _P5NCS	=	0xfe1d
                           00FE25   720 _P5SR	=	0xfe25
                           00FE2D   721 _P5DR	=	0xfe2d
                           00FE35   722 _P5IE	=	0xfe35
                           00FD60   723 _PINIPL	=	0xfd60
                           00FD61   724 _PINIPH	=	0xfd61
                           00FE80   725 _I2CCFG	=	0xfe80
                           00FE81   726 _I2CMSCR	=	0xfe81
                           00FE82   727 _I2CMSST	=	0xfe82
                           00FE83   728 _I2CSLCR	=	0xfe83
                           00FE84   729 _I2CSLST	=	0xfe84
                           00FE85   730 _I2CSLADR	=	0xfe85
                           00FE86   731 _I2CTXD	=	0xfe86
                           00FE87   732 _I2CRXD	=	0xfe87
                           00FE88   733 _I2CMSAUX	=	0xfe88
                           00FE50   734 _LCMCFG	=	0xfe50
                           00FE51   735 _LCMCFG2	=	0xfe51
                           00FE52   736 _LCMCR	=	0xfe52
                           00FE53   737 _LCMSTA	=	0xfe53
                           00FE54   738 _LCMIDDATL	=	0xfe54
                           00FE55   739 _LCMIDDATH	=	0xfe55
                           00FE54   740 _LCMIDDAT	=	0xfe54
                           00FA70   741 _DMA_LCM_CFG	=	0xfa70
                           00FA71   742 _DMA_LCM_CR	=	0xfa71
                           00FA72   743 _DMA_LCM_STA	=	0xfa72
                           00FA73   744 _DMA_LCM_AMT	=	0xfa73
                           00FA74   745 _DMA_LCM_DONE	=	0xfa74
                           00FA75   746 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   747 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   748 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   749 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   750 _MD3	=	0xfcf0
                           00FCF1   751 _MD2	=	0xfcf1
                           00FCF2   752 _MD1	=	0xfcf2
                           00FCF3   753 _MD0	=	0xfcf3
                           00FCF4   754 _MD5	=	0xfcf4
                           00FCF5   755 _MD4	=	0xfcf5
                           00FCF6   756 _ARCON	=	0xfcf6
                           00FCF7   757 _OPCON	=	0xfcf7
                           00FE08   758 _SPFUNC	=	0xfe08
                           00FE09   759 _RSTFLAG	=	0xfe09
                           00FEB0   760 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   761 _PWMA_ENO	=	0xfeb1
                           00FEB2   762 _PWMA_PS	=	0xfeb2
                           00FEB3   763 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   764 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   765 _PWMB_ENO	=	0xfeb5
                           00FEB6   766 _PWMB_PS	=	0xfeb6
                           00FEB7   767 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   768 _PWMA_CR1	=	0xfec0
                           00FEC1   769 _PWMA_CR2	=	0xfec1
                           00FEC2   770 _PWMA_SMCR	=	0xfec2
                           00FEC3   771 _PWMA_ETR	=	0xfec3
                           00FEC4   772 _PWMA_IER	=	0xfec4
                           00FEC5   773 _PWMA_SR1	=	0xfec5
                           00FEC6   774 _PWMA_SR2	=	0xfec6
                           00FEC7   775 _PWMA_EGR	=	0xfec7
                           00FEC8   776 _PWMA_CCMR1	=	0xfec8
                           00FEC9   777 _PWMA_CCMR2	=	0xfec9
                           00FECA   778 _PWMA_CCMR3	=	0xfeca
                           00FECB   779 _PWMA_CCMR4	=	0xfecb
                           00FECC   780 _PWMA_CCER1	=	0xfecc
                           00FECD   781 _PWMA_CCER2	=	0xfecd
                           00FECE   782 _PWMA_CNTRH	=	0xfece
                           00FECF   783 _PWMA_CNTRL	=	0xfecf
                           00FED0   784 _PWMA_PSCRH	=	0xfed0
                           00FED1   785 _PWMA_PSCRL	=	0xfed1
                           00FED2   786 _PWMA_ARRH	=	0xfed2
                           00FED3   787 _PWMA_ARRL	=	0xfed3
                           00FED4   788 _PWMA_RCR	=	0xfed4
                           00FED5   789 _PWMA_CCR1H	=	0xfed5
                           00FED6   790 _PWMA_CCR1L	=	0xfed6
                           00FED7   791 _PWMA_CCR2H	=	0xfed7
                           00FED8   792 _PWMA_CCR2L	=	0xfed8
                           00FED9   793 _PWMA_CCR3H	=	0xfed9
                           00FEDA   794 _PWMA_CCR3L	=	0xfeda
                           00FEDB   795 _PWMA_CCR4H	=	0xfedb
                           00FEDC   796 _PWMA_CCR4L	=	0xfedc
                           00FEDD   797 _PWMA_BKR	=	0xfedd
                           00FEDE   798 _PWMA_DTR	=	0xfede
                           00FEDF   799 _PWMA_OISR	=	0xfedf
                           00FEE0   800 _PWMB_CR1	=	0xfee0
                           00FEE1   801 _PWMB_CR2	=	0xfee1
                           00FEE2   802 _PWMB_SMCR	=	0xfee2
                           00FEE3   803 _PWMB_ETR	=	0xfee3
                           00FEE4   804 _PWMB_IER	=	0xfee4
                           00FEE5   805 _PWMB_SR1	=	0xfee5
                           00FEE6   806 _PWMB_SR2	=	0xfee6
                           00FEE7   807 _PWMB_EGR	=	0xfee7
                           00FEE8   808 _PWMB_CCMR1	=	0xfee8
                           00FEE9   809 _PWMB_CCMR2	=	0xfee9
                           00FEEA   810 _PWMB_CCMR3	=	0xfeea
                           00FEEB   811 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   812 _PWMB_CCER1	=	0xfeec
                           00FEED   813 _PWMB_CCER2	=	0xfeed
                           00FEEE   814 _PWMB_CNTRH	=	0xfeee
                           00FEEF   815 _PWMB_CNTRL	=	0xfeef
                           00FEF0   816 _PWMB_PSCRH	=	0xfef0
                           00FEF1   817 _PWMB_PSCRL	=	0xfef1
                           00FEF2   818 _PWMB_ARRH	=	0xfef2
                           00FEF3   819 _PWMB_ARRL	=	0xfef3
                           00FEF4   820 _PWMB_RCR	=	0xfef4
                           00FEF5   821 _PWMB_CCR1H	=	0xfef5
                           00FEF6   822 _PWMB_CCR1L	=	0xfef6
                           00FEF7   823 _PWMB_CCR2H	=	0xfef7
                           00FEF8   824 _PWMB_CCR2L	=	0xfef8
                           00FEF9   825 _PWMB_CCR3H	=	0xfef9
                           00FEFA   826 _PWMB_CCR3L	=	0xfefa
                           00FEFB   827 _PWMB_CCR4H	=	0xfefb
                           00FEFC   828 _PWMB_CCR4L	=	0xfefc
                           00FEFD   829 _PWMB_BKR	=	0xfefd
                           00FEFE   830 _PWMB_DTR	=	0xfefe
                           00FEFF   831 _PWMB_OISR	=	0xfeff
                           00FE60   832 _RTCCR	=	0xfe60
                           00FE61   833 _RTCCFG	=	0xfe61
                           00FE62   834 _RTCIEN	=	0xfe62
                           00FE63   835 _RTCIF	=	0xfe63
                           00FE64   836 _ALAHOUR	=	0xfe64
                           00FE65   837 _ALAMIN	=	0xfe65
                           00FE66   838 _ALASEC	=	0xfe66
                           00FE67   839 _ALASSEC	=	0xfe67
                           00FE68   840 _INIYEAR	=	0xfe68
                           00FE69   841 _INIMONTH	=	0xfe69
                           00FE6A   842 _INIDAY	=	0xfe6a
                           00FE6B   843 _INIHOUR	=	0xfe6b
                           00FE6C   844 _INIMIN	=	0xfe6c
                           00FE6D   845 _INISEC	=	0xfe6d
                           00FE6E   846 _INISSEC	=	0xfe6e
                           00FE70   847 _YEAR	=	0xfe70
                           00FE71   848 _MONTH	=	0xfe71
                           00FE72   849 _DAY	=	0xfe72
                           00FE73   850 _HOUR	=	0xfe73
                           00FE74   851 _MIN	=	0xfe74
                           00FE75   852 _SEC	=	0xfe75
                           00FE76   853 _SSEC	=	0xfe76
                           00FA20   854 _DMA_SPI_CFG	=	0xfa20
                           00FA21   855 _DMA_SPI_CR	=	0xfa21
                           00FA22   856 _DMA_SPI_STA	=	0xfa22
                           00FA23   857 _DMA_SPI_AMT	=	0xfa23
                           00FA24   858 _DMA_SPI_DONE	=	0xfa24
                           00FA25   859 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   860 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   861 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   862 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   863 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   864 _CLKDIV	=	0xfe01
                           00FE02   865 _HIRCCR	=	0xfe02
                           00FE03   866 _XOSCCR	=	0xfe03
                           00FE08   867 _X32KCR	=	0xfe08
                           00FE04   868 _IRC32KCR	=	0xfe04
                           00FE00   869 _CKSEL	=	0xfe00
                           00FE05   870 _MCLKOCR	=	0xfe05
                           00FE06   871 _IRCDB	=	0xfe06
                           00FE07   872 _IRC48MCR	=	0xfe07
                           00FEA2   873 _TM2PS	=	0xfea2
                           00FEA3   874 _TM3PS	=	0xfea3
                           00FEA4   875 _TM4PS	=	0xfea4
                           00FA30   876 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   877 _DMA_UR1T_CR	=	0xfa31
                           00FA32   878 _DMA_UR1T_STA	=	0xfa32
                           00FA33   879 _DMA_URTX_AMT	=	0xfa33
                           00FA34   880 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   881 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   882 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   883 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   884 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   885 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   886 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   887 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   888 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   889 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   890 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   891 _DMA_UR2T_CR	=	0xfa31
                           00FA32   892 _DMA_UR2T_STA	=	0xfa32
                           00FA33   893 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   894 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   895 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   896 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   897 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   898 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   899 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   900 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   901 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   902 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   903 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   904 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   905 _DMA_UR3T_CR	=	0xfa31
                           00FA32   906 _DMA_UR3T_STA	=	0xfa32
                           00FA33   907 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   908 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   909 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   910 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   911 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   912 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   913 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   914 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   915 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   916 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   917 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   918 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   919 _DMA_UR4T_CR	=	0xfa31
                           00FA32   920 _DMA_UR4T_STA	=	0xfa32
                           00FA33   921 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   922 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   923 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   924 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   925 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   926 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   927 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   928 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   929 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   930 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   931 _DMA_UR4R_TXAL	=	0xfa3e
      000086                        932 _uartGetCharacter_result_65536_69:
      000086                        933 	.ds 1
      000087                        934 _startTimer_PARM_2:
      000087                        935 	.ds 4
      00008B                        936 _startTimer_PARM_3:
      00008B                        937 	.ds 1
      00008C                        938 _startTimer_PARM_4:
      00008C                        939 	.ds 1
      00008D                        940 _startTimer_PARM_5:
      00008D                        941 	.ds 1
      00008E                        942 _startTimer_timer_65536_131:
      00008E                        943 	.ds 1
      00008F                        944 _startTimer_rc_65536_132:
      00008F                        945 	.ds 1
      000090                        946 _startTimer_sysclkDiv12_65536_132:
      000090                        947 	.ds 1
      000091                        948 _startTimer_prescaler_131072_134:
      000091                        949 	.ds 2
      000093                        950 _stopTimer_timer_65536_179:
      000093                        951 	.ds 1
      000094                        952 _stopTimer_counterValue_65536_180:
      000094                        953 	.ds 2
                                    954 ;--------------------------------------------------------
                                    955 ; absolute external ram data
                                    956 ;--------------------------------------------------------
                                    957 	.area XABS    (ABS,XDATA)
                                    958 ;--------------------------------------------------------
                                    959 ; external initialized ram data
                                    960 ;--------------------------------------------------------
                                    961 	.area XISEG   (XDATA)
                                    962 	.area HOME    (CODE)
                                    963 	.area GSINIT0 (CODE)
                                    964 	.area GSINIT1 (CODE)
                                    965 	.area GSINIT2 (CODE)
                                    966 	.area GSINIT3 (CODE)
                                    967 	.area GSINIT4 (CODE)
                                    968 	.area GSINIT5 (CODE)
                                    969 	.area GSINIT  (CODE)
                                    970 	.area GSFINAL (CODE)
                                    971 	.area CSEG    (CODE)
                                    972 ;--------------------------------------------------------
                                    973 ; global & static initialisations
                                    974 ;--------------------------------------------------------
                                    975 	.area HOME    (CODE)
                                    976 	.area GSINIT  (CODE)
                                    977 	.area GSFINAL (CODE)
                                    978 	.area GSINIT  (CODE)
                                    979 ;--------------------------------------------------------
                                    980 ; Home
                                    981 ;--------------------------------------------------------
                                    982 	.area HOME    (CODE)
                                    983 	.area HOME    (CODE)
                                    984 ;--------------------------------------------------------
                                    985 ; code
                                    986 ;--------------------------------------------------------
                                    987 	.area CSEG    (CODE)
                                    988 ;------------------------------------------------------------
                                    989 ;Allocation info for local variables in function 'startTimer'
                                    990 ;------------------------------------------------------------
                                    991 ;sloc0                     Allocated with name '_startTimer_sloc0_1_0'
                                    992 ;sysclkDivisor             Allocated with name '_startTimer_PARM_2'
                                    993 ;enableOutput              Allocated with name '_startTimer_PARM_3'
                                    994 ;enableInterrupt           Allocated with name '_startTimer_PARM_4'
                                    995 ;timerControl              Allocated with name '_startTimer_PARM_5'
                                    996 ;timer                     Allocated with name '_startTimer_timer_65536_131'
                                    997 ;rc                        Allocated with name '_startTimer_rc_65536_132'
                                    998 ;sysclkDiv12               Allocated with name '_startTimer_sysclkDiv12_65536_132'
                                    999 ;prescaler                 Allocated with name '_startTimer_prescaler_131072_134'
                                   1000 ;reloadValue               Allocated with name '_startTimer_reloadValue_131072_143'
                                   1001 ;------------------------------------------------------------
                                   1002 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:54: TimerStatus startTimer(Timer timer, uint32_t sysclkDivisor, OutputEnable enableOutput, InterruptEnable enableInterrupt, CounterControl timerControl) {
                                   1003 ;	-----------------------------------------
                                   1004 ;	 function startTimer
                                   1005 ;	-----------------------------------------
      001523                       1006 _startTimer:
                           000007  1007 	ar7 = 0x07
                           000006  1008 	ar6 = 0x06
                           000005  1009 	ar5 = 0x05
                           000004  1010 	ar4 = 0x04
                           000003  1011 	ar3 = 0x03
                           000002  1012 	ar2 = 0x02
                           000001  1013 	ar1 = 0x01
                           000000  1014 	ar0 = 0x00
      001523 E5 82            [12] 1015 	mov	a,dpl
      001525 90 00 8E         [24] 1016 	mov	dptr,#_startTimer_timer_65536_131
      001528 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:55: TimerStatus rc = TIMER_FREQUENCY_OK;
      001529 90 00 8F         [24] 1019 	mov	dptr,#_startTimer_rc_65536_132
      00152C E4               [12] 1020 	clr	a
      00152D F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:56: bool sysclkDiv12 = false;
      00152E 90 00 90         [24] 1023 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      001531 F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:58: if (sysclkDivisor == 0) {
      001532 90 00 87         [24] 1026 	mov	dptr,#_startTimer_PARM_2
      001535 E0               [24] 1027 	movx	a,@dptr
      001536 FC               [12] 1028 	mov	r4,a
      001537 A3               [24] 1029 	inc	dptr
      001538 E0               [24] 1030 	movx	a,@dptr
      001539 FD               [12] 1031 	mov	r5,a
      00153A A3               [24] 1032 	inc	dptr
      00153B E0               [24] 1033 	movx	a,@dptr
      00153C FE               [12] 1034 	mov	r6,a
      00153D A3               [24] 1035 	inc	dptr
      00153E E0               [24] 1036 	movx	a,@dptr
      00153F FF               [12] 1037 	mov	r7,a
      001540 EC               [12] 1038 	mov	a,r4
      001541 4D               [12] 1039 	orl	a,r5
      001542 4E               [12] 1040 	orl	a,r6
      001543 4F               [12] 1041 	orl	a,r7
      001544 70 09            [24] 1042 	jnz	00121$
                                   1043 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:60: rc = TIMER_FREQUENCY_TOO_HIGH;
      001546 90 00 8F         [24] 1044 	mov	dptr,#_startTimer_rc_65536_132
      001549 74 01            [12] 1045 	mov	a,#0x01
      00154B F0               [24] 1046 	movx	@dptr,a
      00154C 02 17 1D         [24] 1047 	ljmp	00122$
      00154F                       1048 00121$:
                                   1049 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:63: uint16_t prescaler = 0;
      00154F 90 00 91         [24] 1050 	mov	dptr,#_startTimer_prescaler_131072_134
      001552 E4               [12] 1051 	clr	a
      001553 F0               [24] 1052 	movx	@dptr,a
      001554 A3               [24] 1053 	inc	dptr
      001555 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:65: switch (timer) {
      001556 90 00 8E         [24] 1056 	mov	dptr,#_startTimer_timer_65536_131
      001559 E0               [24] 1057 	movx	a,@dptr
      00155A FB               [12] 1058 	mov	r3,a
      00155B 60 03            [24] 1059 	jz	00102$
      00155D BB 01 59         [24] 1060 	cjne	r3,#0x01,00108$
                                   1061 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:68: case TIMER1:
      001560                       1062 00102$:
                                   1063 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:72: if (sysclkDivisor > COUNTER_MAX) {
      001560 C3               [12] 1064 	clr	c
      001561 E4               [12] 1065 	clr	a
      001562 9C               [12] 1066 	subb	a,r4
      001563 E4               [12] 1067 	clr	a
      001564 9D               [12] 1068 	subb	a,r5
      001565 74 01            [12] 1069 	mov	a,#0x01
      001567 9E               [12] 1070 	subb	a,r6
      001568 E4               [12] 1071 	clr	a
      001569 9F               [12] 1072 	subb	a,r7
      00156A 40 03            [24] 1073 	jc	00304$
      00156C 02 16 DE         [24] 1074 	ljmp	00115$
      00156F                       1075 00304$:
                                   1076 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:73: if (sysclkDivisor <= (COUNTER_MAX * 12UL)) {
      00156F C3               [12] 1077 	clr	c
      001570 E4               [12] 1078 	clr	a
      001571 9C               [12] 1079 	subb	a,r4
      001572 E4               [12] 1080 	clr	a
      001573 9D               [12] 1081 	subb	a,r5
      001574 74 0C            [12] 1082 	mov	a,#0x0c
      001576 9E               [12] 1083 	subb	a,r6
      001577 E4               [12] 1084 	clr	a
      001578 9F               [12] 1085 	subb	a,r7
      001579 40 35            [24] 1086 	jc	00104$
                                   1087 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:74: sysclkDiv12 = true;
      00157B 90 00 90         [24] 1088 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      00157E 74 01            [12] 1089 	mov	a,#0x01
      001580 F0               [24] 1090 	movx	@dptr,a
                                   1091 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:75: sysclkDivisor /= 12;
      001581 90 02 D1         [24] 1092 	mov	dptr,#__divulong_PARM_2
      001584 74 0C            [12] 1093 	mov	a,#0x0c
      001586 F0               [24] 1094 	movx	@dptr,a
      001587 E4               [12] 1095 	clr	a
      001588 A3               [24] 1096 	inc	dptr
      001589 F0               [24] 1097 	movx	@dptr,a
      00158A A3               [24] 1098 	inc	dptr
      00158B F0               [24] 1099 	movx	@dptr,a
      00158C A3               [24] 1100 	inc	dptr
      00158D F0               [24] 1101 	movx	@dptr,a
      00158E 8C 82            [24] 1102 	mov	dpl,r4
      001590 8D 83            [24] 1103 	mov	dph,r5
      001592 8E F0            [24] 1104 	mov	b,r6
      001594 EF               [12] 1105 	mov	a,r7
      001595 12 3B E9         [24] 1106 	lcall	__divulong
      001598 A8 82            [24] 1107 	mov	r0,dpl
      00159A A9 83            [24] 1108 	mov	r1,dph
      00159C AA F0            [24] 1109 	mov	r2,b
      00159E FB               [12] 1110 	mov	r3,a
      00159F 90 00 87         [24] 1111 	mov	dptr,#_startTimer_PARM_2
      0015A2 E8               [12] 1112 	mov	a,r0
      0015A3 F0               [24] 1113 	movx	@dptr,a
      0015A4 E9               [12] 1114 	mov	a,r1
      0015A5 A3               [24] 1115 	inc	dptr
      0015A6 F0               [24] 1116 	movx	@dptr,a
      0015A7 EA               [12] 1117 	mov	a,r2
      0015A8 A3               [24] 1118 	inc	dptr
      0015A9 F0               [24] 1119 	movx	@dptr,a
      0015AA EB               [12] 1120 	mov	a,r3
      0015AB A3               [24] 1121 	inc	dptr
      0015AC F0               [24] 1122 	movx	@dptr,a
      0015AD 02 16 DE         [24] 1123 	ljmp	00115$
      0015B0                       1124 00104$:
                                   1125 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:78: rc = TIMER_FREQUENCY_TOO_LOW;
      0015B0 90 00 8F         [24] 1126 	mov	dptr,#_startTimer_rc_65536_132
      0015B3 74 02            [12] 1127 	mov	a,#0x02
      0015B5 F0               [24] 1128 	movx	@dptr,a
                                   1129 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:83: break;
      0015B6 02 16 DE         [24] 1130 	ljmp	00115$
                                   1131 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:85: default:
      0015B9                       1132 00108$:
                                   1133 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:86: if (sysclkDivisor > COUNTER_MAX) {
      0015B9 C3               [12] 1134 	clr	c
      0015BA E4               [12] 1135 	clr	a
      0015BB 9C               [12] 1136 	subb	a,r4
      0015BC E4               [12] 1137 	clr	a
      0015BD 9D               [12] 1138 	subb	a,r5
      0015BE 74 01            [12] 1139 	mov	a,#0x01
      0015C0 9E               [12] 1140 	subb	a,r6
      0015C1 E4               [12] 1141 	clr	a
      0015C2 9F               [12] 1142 	subb	a,r7
      0015C3 40 03            [24] 1143 	jc	00306$
      0015C5 02 16 DE         [24] 1144 	ljmp	00115$
      0015C8                       1145 00306$:
                                   1146 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:87: prescaler = sysclkDivisor / COUNTER_MAX;
      0015C8 8E 00            [24] 1147 	mov	ar0,r6
      0015CA 8F 01            [24] 1148 	mov	ar1,r7
      0015CC 90 00 91         [24] 1149 	mov	dptr,#_startTimer_prescaler_131072_134
      0015CF E8               [12] 1150 	mov	a,r0
      0015D0 F0               [24] 1151 	movx	@dptr,a
      0015D1 E9               [12] 1152 	mov	a,r1
      0015D2 A3               [24] 1153 	inc	dptr
      0015D3 F0               [24] 1154 	movx	@dptr,a
                                   1155 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:89: if (prescaler > PRESCALER_MAX) {
      0015D4 C3               [12] 1156 	clr	c
      0015D5 E4               [12] 1157 	clr	a
      0015D6 98               [12] 1158 	subb	a,r0
      0015D7 74 01            [12] 1159 	mov	a,#0x01
      0015D9 99               [12] 1160 	subb	a,r1
      0015DA 50 5E            [24] 1161 	jnc	00110$
                                   1162 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:90: sysclkDiv12 = true;
      0015DC 90 00 90         [24] 1163 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      0015DF 74 01            [12] 1164 	mov	a,#0x01
      0015E1 F0               [24] 1165 	movx	@dptr,a
                                   1166 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:91: prescaler /= 12;
      0015E2 90 02 C1         [24] 1167 	mov	dptr,#__divuint_PARM_2
      0015E5 74 0C            [12] 1168 	mov	a,#0x0c
      0015E7 F0               [24] 1169 	movx	@dptr,a
      0015E8 E4               [12] 1170 	clr	a
      0015E9 A3               [24] 1171 	inc	dptr
      0015EA F0               [24] 1172 	movx	@dptr,a
      0015EB 88 82            [24] 1173 	mov	dpl,r0
      0015ED 89 83            [24] 1174 	mov	dph,r1
      0015EF C0 07            [24] 1175 	push	ar7
      0015F1 C0 06            [24] 1176 	push	ar6
      0015F3 C0 05            [24] 1177 	push	ar5
      0015F5 C0 04            [24] 1178 	push	ar4
      0015F7 12 39 4B         [24] 1179 	lcall	__divuint
      0015FA AA 82            [24] 1180 	mov	r2,dpl
      0015FC AB 83            [24] 1181 	mov	r3,dph
      0015FE D0 04            [24] 1182 	pop	ar4
      001600 D0 05            [24] 1183 	pop	ar5
      001602 D0 06            [24] 1184 	pop	ar6
      001604 D0 07            [24] 1185 	pop	ar7
      001606 90 00 91         [24] 1186 	mov	dptr,#_startTimer_prescaler_131072_134
      001609 EA               [12] 1187 	mov	a,r2
      00160A F0               [24] 1188 	movx	@dptr,a
      00160B EB               [12] 1189 	mov	a,r3
      00160C A3               [24] 1190 	inc	dptr
      00160D F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:92: sysclkDivisor /= 12;
      00160E 90 02 D1         [24] 1193 	mov	dptr,#__divulong_PARM_2
      001611 74 0C            [12] 1194 	mov	a,#0x0c
      001613 F0               [24] 1195 	movx	@dptr,a
      001614 E4               [12] 1196 	clr	a
      001615 A3               [24] 1197 	inc	dptr
      001616 F0               [24] 1198 	movx	@dptr,a
      001617 A3               [24] 1199 	inc	dptr
      001618 F0               [24] 1200 	movx	@dptr,a
      001619 A3               [24] 1201 	inc	dptr
      00161A F0               [24] 1202 	movx	@dptr,a
      00161B 8C 82            [24] 1203 	mov	dpl,r4
      00161D 8D 83            [24] 1204 	mov	dph,r5
      00161F 8E F0            [24] 1205 	mov	b,r6
      001621 EF               [12] 1206 	mov	a,r7
      001622 12 3B E9         [24] 1207 	lcall	__divulong
      001625 AC 82            [24] 1208 	mov	r4,dpl
      001627 AD 83            [24] 1209 	mov	r5,dph
      001629 AE F0            [24] 1210 	mov	r6,b
      00162B FF               [12] 1211 	mov	r7,a
      00162C 90 00 87         [24] 1212 	mov	dptr,#_startTimer_PARM_2
      00162F EC               [12] 1213 	mov	a,r4
      001630 F0               [24] 1214 	movx	@dptr,a
      001631 ED               [12] 1215 	mov	a,r5
      001632 A3               [24] 1216 	inc	dptr
      001633 F0               [24] 1217 	movx	@dptr,a
      001634 EE               [12] 1218 	mov	a,r6
      001635 A3               [24] 1219 	inc	dptr
      001636 F0               [24] 1220 	movx	@dptr,a
      001637 EF               [12] 1221 	mov	a,r7
      001638 A3               [24] 1222 	inc	dptr
      001639 F0               [24] 1223 	movx	@dptr,a
      00163A                       1224 00110$:
                                   1225 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:96: if (sysclkDivisor % prescaler) {
      00163A 90 00 91         [24] 1226 	mov	dptr,#_startTimer_prescaler_131072_134
      00163D E0               [24] 1227 	movx	a,@dptr
      00163E F5 0B            [12] 1228 	mov	_startTimer_sloc0_1_0,a
      001640 A3               [24] 1229 	inc	dptr
      001641 E0               [24] 1230 	movx	a,@dptr
      001642 F5 0C            [12] 1231 	mov	(_startTimer_sloc0_1_0 + 1),a
      001644 90 00 87         [24] 1232 	mov	dptr,#_startTimer_PARM_2
      001647 E0               [24] 1233 	movx	a,@dptr
      001648 FA               [12] 1234 	mov	r2,a
      001649 A3               [24] 1235 	inc	dptr
      00164A E0               [24] 1236 	movx	a,@dptr
      00164B FB               [12] 1237 	mov	r3,a
      00164C A3               [24] 1238 	inc	dptr
      00164D E0               [24] 1239 	movx	a,@dptr
      00164E FC               [12] 1240 	mov	r4,a
      00164F A3               [24] 1241 	inc	dptr
      001650 E0               [24] 1242 	movx	a,@dptr
      001651 FD               [12] 1243 	mov	r5,a
      001652 90 02 C8         [24] 1244 	mov	dptr,#__modulong_PARM_2
      001655 E5 0B            [12] 1245 	mov	a,_startTimer_sloc0_1_0
      001657 F0               [24] 1246 	movx	@dptr,a
      001658 E5 0C            [12] 1247 	mov	a,(_startTimer_sloc0_1_0 + 1)
      00165A A3               [24] 1248 	inc	dptr
      00165B F0               [24] 1249 	movx	@dptr,a
      00165C E4               [12] 1250 	clr	a
      00165D A3               [24] 1251 	inc	dptr
      00165E F0               [24] 1252 	movx	@dptr,a
      00165F A3               [24] 1253 	inc	dptr
      001660 F0               [24] 1254 	movx	@dptr,a
      001661 8A 82            [24] 1255 	mov	dpl,r2
      001663 8B 83            [24] 1256 	mov	dph,r3
      001665 8C F0            [24] 1257 	mov	b,r4
      001667 ED               [12] 1258 	mov	a,r5
      001668 C0 05            [24] 1259 	push	ar5
      00166A C0 04            [24] 1260 	push	ar4
      00166C C0 03            [24] 1261 	push	ar3
      00166E C0 02            [24] 1262 	push	ar2
      001670 12 39 D8         [24] 1263 	lcall	__modulong
      001673 A8 82            [24] 1264 	mov	r0,dpl
      001675 A9 83            [24] 1265 	mov	r1,dph
      001677 AE F0            [24] 1266 	mov	r6,b
      001679 FF               [12] 1267 	mov	r7,a
      00167A D0 02            [24] 1268 	pop	ar2
      00167C D0 03            [24] 1269 	pop	ar3
      00167E D0 04            [24] 1270 	pop	ar4
      001680 D0 05            [24] 1271 	pop	ar5
      001682 E8               [12] 1272 	mov	a,r0
      001683 49               [12] 1273 	orl	a,r1
      001684 4E               [12] 1274 	orl	a,r6
      001685 4F               [12] 1275 	orl	a,r7
      001686 60 0D            [24] 1276 	jz	00112$
                                   1277 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:97: prescaler++;
      001688 90 00 91         [24] 1278 	mov	dptr,#_startTimer_prescaler_131072_134
      00168B 74 01            [12] 1279 	mov	a,#0x01
      00168D 25 0B            [12] 1280 	add	a,_startTimer_sloc0_1_0
      00168F F0               [24] 1281 	movx	@dptr,a
      001690 E4               [12] 1282 	clr	a
      001691 35 0C            [12] 1283 	addc	a,(_startTimer_sloc0_1_0 + 1)
      001693 A3               [24] 1284 	inc	dptr
      001694 F0               [24] 1285 	movx	@dptr,a
      001695                       1286 00112$:
                                   1287 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:100: sysclkDivisor /= prescaler;
      001695 90 00 91         [24] 1288 	mov	dptr,#_startTimer_prescaler_131072_134
      001698 E0               [24] 1289 	movx	a,@dptr
      001699 FE               [12] 1290 	mov	r6,a
      00169A A3               [24] 1291 	inc	dptr
      00169B E0               [24] 1292 	movx	a,@dptr
      00169C FF               [12] 1293 	mov	r7,a
      00169D 90 02 D1         [24] 1294 	mov	dptr,#__divulong_PARM_2
      0016A0 EE               [12] 1295 	mov	a,r6
      0016A1 F0               [24] 1296 	movx	@dptr,a
      0016A2 EF               [12] 1297 	mov	a,r7
      0016A3 A3               [24] 1298 	inc	dptr
      0016A4 F0               [24] 1299 	movx	@dptr,a
      0016A5 E4               [12] 1300 	clr	a
      0016A6 A3               [24] 1301 	inc	dptr
      0016A7 F0               [24] 1302 	movx	@dptr,a
      0016A8 A3               [24] 1303 	inc	dptr
      0016A9 F0               [24] 1304 	movx	@dptr,a
      0016AA 8A 82            [24] 1305 	mov	dpl,r2
      0016AC 8B 83            [24] 1306 	mov	dph,r3
      0016AE 8C F0            [24] 1307 	mov	b,r4
      0016B0 ED               [12] 1308 	mov	a,r5
      0016B1 C0 07            [24] 1309 	push	ar7
      0016B3 C0 06            [24] 1310 	push	ar6
      0016B5 12 3B E9         [24] 1311 	lcall	__divulong
      0016B8 AA 82            [24] 1312 	mov	r2,dpl
      0016BA AB 83            [24] 1313 	mov	r3,dph
      0016BC AC F0            [24] 1314 	mov	r4,b
      0016BE FD               [12] 1315 	mov	r5,a
      0016BF D0 06            [24] 1316 	pop	ar6
      0016C1 D0 07            [24] 1317 	pop	ar7
      0016C3 90 00 87         [24] 1318 	mov	dptr,#_startTimer_PARM_2
      0016C6 EA               [12] 1319 	mov	a,r2
      0016C7 F0               [24] 1320 	movx	@dptr,a
      0016C8 EB               [12] 1321 	mov	a,r3
      0016C9 A3               [24] 1322 	inc	dptr
      0016CA F0               [24] 1323 	movx	@dptr,a
      0016CB EC               [12] 1324 	mov	a,r4
      0016CC A3               [24] 1325 	inc	dptr
      0016CD F0               [24] 1326 	movx	@dptr,a
      0016CE ED               [12] 1327 	mov	a,r5
      0016CF A3               [24] 1328 	inc	dptr
      0016D0 F0               [24] 1329 	movx	@dptr,a
                                   1330 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:103: prescaler--;
      0016D1 1E               [12] 1331 	dec	r6
      0016D2 BE FF 01         [24] 1332 	cjne	r6,#0xff,00309$
      0016D5 1F               [12] 1333 	dec	r7
      0016D6                       1334 00309$:
      0016D6 90 00 91         [24] 1335 	mov	dptr,#_startTimer_prescaler_131072_134
      0016D9 EE               [12] 1336 	mov	a,r6
      0016DA F0               [24] 1337 	movx	@dptr,a
      0016DB EF               [12] 1338 	mov	a,r7
      0016DC A3               [24] 1339 	inc	dptr
      0016DD F0               [24] 1340 	movx	@dptr,a
                                   1341 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:106: }
      0016DE                       1342 00115$:
                                   1343 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:108: switch (timer) {
      0016DE 90 00 8E         [24] 1344 	mov	dptr,#_startTimer_timer_65536_131
      0016E1 E0               [24] 1345 	movx	a,@dptr
      0016E2 FF               [12] 1346 	mov	r7,a
      0016E3 BF 02 02         [24] 1347 	cjne	r7,#0x02,00310$
      0016E6 80 0A            [24] 1348 	sjmp	00116$
      0016E8                       1349 00310$:
      0016E8 BF 03 02         [24] 1350 	cjne	r7,#0x03,00311$
      0016EB 80 14            [24] 1351 	sjmp	00117$
      0016ED                       1352 00311$:
                                   1353 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:110: case TIMER2:
      0016ED BF 04 2D         [24] 1354 	cjne	r7,#0x04,00122$
      0016F0 80 1E            [24] 1355 	sjmp	00118$
      0016F2                       1356 00116$:
                                   1357 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:111: TM2PS = prescaler;
      0016F2 90 00 91         [24] 1358 	mov	dptr,#_startTimer_prescaler_131072_134
      0016F5 E0               [24] 1359 	movx	a,@dptr
      0016F6 FE               [12] 1360 	mov	r6,a
      0016F7 A3               [24] 1361 	inc	dptr
      0016F8 E0               [24] 1362 	movx	a,@dptr
      0016F9 FF               [12] 1363 	mov	r7,a
      0016FA 90 FE A2         [24] 1364 	mov	dptr,#_TM2PS
      0016FD EE               [12] 1365 	mov	a,r6
      0016FE F0               [24] 1366 	movx	@dptr,a
                                   1367 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:112: break;
                                   1368 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:116: case TIMER3:
      0016FF 80 1C            [24] 1369 	sjmp	00122$
      001701                       1370 00117$:
                                   1371 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:117: TM3PS = prescaler;
      001701 90 00 91         [24] 1372 	mov	dptr,#_startTimer_prescaler_131072_134
      001704 E0               [24] 1373 	movx	a,@dptr
      001705 FE               [12] 1374 	mov	r6,a
      001706 A3               [24] 1375 	inc	dptr
      001707 E0               [24] 1376 	movx	a,@dptr
      001708 FF               [12] 1377 	mov	r7,a
      001709 90 FE A3         [24] 1378 	mov	dptr,#_TM3PS
      00170C EE               [12] 1379 	mov	a,r6
      00170D F0               [24] 1380 	movx	@dptr,a
                                   1381 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:118: break;
                                   1382 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:120: case TIMER4:
      00170E 80 0D            [24] 1383 	sjmp	00122$
      001710                       1384 00118$:
                                   1385 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:121: TM4PS = prescaler;
      001710 90 00 91         [24] 1386 	mov	dptr,#_startTimer_prescaler_131072_134
      001713 E0               [24] 1387 	movx	a,@dptr
      001714 FE               [12] 1388 	mov	r6,a
      001715 A3               [24] 1389 	inc	dptr
      001716 E0               [24] 1390 	movx	a,@dptr
      001717 FF               [12] 1391 	mov	r7,a
      001718 90 FE A4         [24] 1392 	mov	dptr,#_TM4PS
      00171B EE               [12] 1393 	mov	a,r6
      00171C F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:130: }
      00171D                       1396 00122$:
                                   1397 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:134: if (rc == TIMER_FREQUENCY_OK) {
      00171D 90 00 8F         [24] 1398 	mov	dptr,#_startTimer_rc_65536_132
      001720 E0               [24] 1399 	movx	a,@dptr
      001721 60 03            [24] 1400 	jz	00313$
      001723 02 18 85         [24] 1401 	ljmp	00181$
      001726                       1402 00313$:
                                   1403 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:135: uint16_t reloadValue = (uint16_t) (COUNTER_MAX - sysclkDivisor);
      001726 90 00 87         [24] 1404 	mov	dptr,#_startTimer_PARM_2
      001729 E0               [24] 1405 	movx	a,@dptr
      00172A FC               [12] 1406 	mov	r4,a
      00172B A3               [24] 1407 	inc	dptr
      00172C E0               [24] 1408 	movx	a,@dptr
      00172D FD               [12] 1409 	mov	r5,a
      00172E A3               [24] 1410 	inc	dptr
      00172F E0               [24] 1411 	movx	a,@dptr
      001730 A3               [24] 1412 	inc	dptr
      001731 E0               [24] 1413 	movx	a,@dptr
      001732 C3               [12] 1414 	clr	c
      001733 E4               [12] 1415 	clr	a
      001734 9C               [12] 1416 	subb	a,r4
      001735 FE               [12] 1417 	mov	r6,a
      001736 E4               [12] 1418 	clr	a
      001737 9D               [12] 1419 	subb	a,r5
      001738 FF               [12] 1420 	mov	r7,a
                                   1421 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:137: switch (timer) {
      001739 90 00 8E         [24] 1422 	mov	dptr,#_startTimer_timer_65536_131
      00173C E0               [24] 1423 	movx	a,@dptr
      00173D FD               [12] 1424 	mov  r5,a
      00173E 24 FB            [12] 1425 	add	a,#0xff - 0x04
      001740 50 03            [24] 1426 	jnc	00314$
      001742 02 18 85         [24] 1427 	ljmp	00181$
      001745                       1428 00314$:
      001745 ED               [12] 1429 	mov	a,r5
      001746 2D               [12] 1430 	add	a,r5
      001747 2D               [12] 1431 	add	a,r5
      001748 90 17 4C         [24] 1432 	mov	dptr,#00315$
      00174B 73               [24] 1433 	jmp	@a+dptr
      00174C                       1434 00315$:
      00174C 02 17 5B         [24] 1435 	ljmp	00123$
      00174F 02 17 A0         [24] 1436 	ljmp	00136$
      001752 02 17 E5         [24] 1437 	ljmp	00149$
      001755 02 18 1B         [24] 1438 	ljmp	00159$
      001758 02 18 51         [24] 1439 	ljmp	00169$
                                   1440 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:138: case TIMER0:
      00175B                       1441 00123$:
                                   1442 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:141: if (sysclkDiv12) {
      00175B 90 00 90         [24] 1443 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      00175E E0               [24] 1444 	movx	a,@dptr
      00175F 60 05            [24] 1445 	jz	00125$
                                   1446 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:142: AUXR &= ~M_T0x12;
      001761 53 8E 7F         [24] 1447 	anl	_AUXR,#0x7f
      001764 80 03            [24] 1448 	sjmp	00126$
      001766                       1449 00125$:
                                   1450 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:144: AUXR |= M_T0x12;
      001766 43 8E 80         [24] 1451 	orl	_AUXR,#0x80
      001769                       1452 00126$:
                                   1453 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:149: TMOD &= 0xf0;
      001769 53 89 F0         [24] 1454 	anl	_TMOD,#0xf0
                                   1455 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:152: if (timerControl == FREE_RUNNING) {
      00176C 90 00 8D         [24] 1456 	mov	dptr,#_startTimer_PARM_5
      00176F E0               [24] 1457 	movx	a,@dptr
      001770 70 05            [24] 1458 	jnz	00128$
                                   1459 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:153: TMOD &= ~M_T0_GATE;
      001772 53 89 F7         [24] 1460 	anl	_TMOD,#0xf7
      001775 80 03            [24] 1461 	sjmp	00129$
      001777                       1462 00128$:
                                   1463 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:155: TMOD |= M_T0_GATE;
      001777 43 89 08         [24] 1464 	orl	_TMOD,#0x08
      00177A                       1465 00129$:
                                   1466 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:170: if (enableOutput == DISABLE_OUTPUT) {
      00177A 90 00 8B         [24] 1467 	mov	dptr,#_startTimer_PARM_3
      00177D E0               [24] 1468 	movx	a,@dptr
      00177E 70 05            [24] 1469 	jnz	00131$
                                   1470 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:171: INT_CLKO &= ~M_T0CLKO;
      001780 53 8F FE         [24] 1471 	anl	_INT_CLKO,#0xfe
      001783 80 03            [24] 1472 	sjmp	00132$
      001785                       1473 00131$:
                                   1474 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:173: INT_CLKO |= M_T0CLKO;
      001785 43 8F 01         [24] 1475 	orl	_INT_CLKO,#0x01
      001788                       1476 00132$:
                                   1477 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:176: T0 = reloadValue;
      001788 8E 8A            [24] 1478 	mov	((_T0 >> 0) & 0xFF),r6
      00178A 8F 8C            [24] 1479 	mov	((_T0 >> 8) & 0xFF),r7
                                   1480 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:179: if (enableInterrupt == DISABLE_INTERRUPT) {
      00178C 90 00 8C         [24] 1481 	mov	dptr,#_startTimer_PARM_4
      00178F E0               [24] 1482 	movx	a,@dptr
      001790 70 05            [24] 1483 	jnz	00134$
                                   1484 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:180: IE1 &= ~M_T0IE;
      001792 53 A8 FD         [24] 1485 	anl	_IE1,#0xfd
      001795 80 03            [24] 1486 	sjmp	00135$
      001797                       1487 00134$:
                                   1488 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:182: IE1 |= M_T0IE;
      001797 43 A8 02         [24] 1489 	orl	_IE1,#0x02
      00179A                       1490 00135$:
                                   1491 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:186: TCON |= M_T0RUN;
      00179A 43 88 10         [24] 1492 	orl	_TCON,#0x10
                                   1493 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:187: break;
      00179D 02 18 85         [24] 1494 	ljmp	00181$
                                   1495 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:190: case TIMER1:
      0017A0                       1496 00136$:
                                   1497 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:205: TMOD &= 0x0f;
      0017A0 53 89 0F         [24] 1498 	anl	_TMOD,#0x0f
                                   1499 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:208: if (enableOutput == DISABLE_OUTPUT) {
      0017A3 90 00 8B         [24] 1500 	mov	dptr,#_startTimer_PARM_3
      0017A6 E0               [24] 1501 	movx	a,@dptr
      0017A7 70 05            [24] 1502 	jnz	00138$
                                   1503 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:209: INT_CLKO &= ~M_T1CLKO;
      0017A9 53 8F FD         [24] 1504 	anl	_INT_CLKO,#0xfd
      0017AC 80 03            [24] 1505 	sjmp	00139$
      0017AE                       1506 00138$:
                                   1507 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:211: INT_CLKO |= M_T1CLKO;
      0017AE 43 8F 02         [24] 1508 	orl	_INT_CLKO,#0x02
      0017B1                       1509 00139$:
                                   1510 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:216: T1 = reloadValue;
      0017B1 8E 8B            [24] 1511 	mov	((_T1 >> 0) & 0xFF),r6
      0017B3 8F 8D            [24] 1512 	mov	((_T1 >> 8) & 0xFF),r7
                                   1513 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:220: if (timerControl == FREE_RUNNING) {
      0017B5 90 00 8D         [24] 1514 	mov	dptr,#_startTimer_PARM_5
      0017B8 E0               [24] 1515 	movx	a,@dptr
      0017B9 70 05            [24] 1516 	jnz	00141$
                                   1517 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:221: TMOD &= ~M_T1_GATE;
      0017BB 53 89 7F         [24] 1518 	anl	_TMOD,#0x7f
      0017BE 80 03            [24] 1519 	sjmp	00142$
      0017C0                       1520 00141$:
                                   1521 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:223: TMOD |= M_T1_GATE;
      0017C0 43 89 80         [24] 1522 	orl	_TMOD,#0x80
      0017C3                       1523 00142$:
                                   1524 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:228: if (sysclkDiv12) {
      0017C3 90 00 90         [24] 1525 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      0017C6 E0               [24] 1526 	movx	a,@dptr
      0017C7 60 05            [24] 1527 	jz	00144$
                                   1528 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:229: AUXR &= ~M_T1x12;
      0017C9 53 8E BF         [24] 1529 	anl	_AUXR,#0xbf
      0017CC 80 03            [24] 1530 	sjmp	00145$
      0017CE                       1531 00144$:
                                   1532 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:231: AUXR |= M_T1x12;
      0017CE 43 8E 40         [24] 1533 	orl	_AUXR,#0x40
      0017D1                       1534 00145$:
                                   1535 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:235: if (enableInterrupt == DISABLE_INTERRUPT) {
      0017D1 90 00 8C         [24] 1536 	mov	dptr,#_startTimer_PARM_4
      0017D4 E0               [24] 1537 	movx	a,@dptr
      0017D5 70 05            [24] 1538 	jnz	00147$
                                   1539 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:236: IE1 &= ~M_T1IE;
      0017D7 53 A8 F7         [24] 1540 	anl	_IE1,#0xf7
      0017DA 80 03            [24] 1541 	sjmp	00148$
      0017DC                       1542 00147$:
                                   1543 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:238: IE1 |= M_T1IE;
      0017DC 43 A8 08         [24] 1544 	orl	_IE1,#0x08
      0017DF                       1545 00148$:
                                   1546 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:242: TCON |= M_T1RUN;
      0017DF 43 88 40         [24] 1547 	orl	_TCON,#0x40
                                   1548 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:243: break;
      0017E2 02 18 85         [24] 1549 	ljmp	00181$
                                   1550 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:247: case TIMER2:
      0017E5                       1551 00149$:
                                   1552 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:250: AUXR &= ~M_T2_C_T;
      0017E5 53 8E F7         [24] 1553 	anl	_AUXR,#0xf7
                                   1554 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:252: if (enableOutput == DISABLE_OUTPUT) {
      0017E8 90 00 8B         [24] 1555 	mov	dptr,#_startTimer_PARM_3
      0017EB E0               [24] 1556 	movx	a,@dptr
      0017EC 70 05            [24] 1557 	jnz	00151$
                                   1558 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:253: INT_CLKO &= ~M_T2CLKO;
      0017EE 53 8F FB         [24] 1559 	anl	_INT_CLKO,#0xfb
      0017F1 80 03            [24] 1560 	sjmp	00152$
      0017F3                       1561 00151$:
                                   1562 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:255: INT_CLKO |= M_T2CLKO;
      0017F3 43 8F 04         [24] 1563 	orl	_INT_CLKO,#0x04
      0017F6                       1564 00152$:
                                   1565 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:258: if (enableInterrupt == DISABLE_INTERRUPT) {
      0017F6 90 00 8C         [24] 1566 	mov	dptr,#_startTimer_PARM_4
      0017F9 E0               [24] 1567 	movx	a,@dptr
      0017FA 70 05            [24] 1568 	jnz	00154$
                                   1569 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:259: IE2 &= ~M_T2IE;
      0017FC 53 AF FB         [24] 1570 	anl	_IE2,#0xfb
      0017FF 80 03            [24] 1571 	sjmp	00155$
      001801                       1572 00154$:
                                   1573 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:261: IE2 |= M_T2IE;
      001801 43 AF 04         [24] 1574 	orl	_IE2,#0x04
      001804                       1575 00155$:
                                   1576 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:265: T2 = reloadValue;
      001804 8E D7            [24] 1577 	mov	((_T2 >> 0) & 0xFF),r6
      001806 8F D6            [24] 1578 	mov	((_T2 >> 8) & 0xFF),r7
                                   1579 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:280: if (sysclkDiv12) {
      001808 90 00 90         [24] 1580 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      00180B E0               [24] 1581 	movx	a,@dptr
      00180C 60 05            [24] 1582 	jz	00157$
                                   1583 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:281: AUXR &= ~M_T2x12;
      00180E 53 8E FB         [24] 1584 	anl	_AUXR,#0xfb
      001811 80 03            [24] 1585 	sjmp	00158$
      001813                       1586 00157$:
                                   1587 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:283: AUXR |= M_T2x12;
      001813 43 8E 04         [24] 1588 	orl	_AUXR,#0x04
      001816                       1589 00158$:
                                   1590 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:287: AUXR |= M_T2RUN;
      001816 43 8E 10         [24] 1591 	orl	_AUXR,#0x10
                                   1592 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:288: break;
                                   1593 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:292: case TIMER3:
      001819 80 6A            [24] 1594 	sjmp	00181$
      00181B                       1595 00159$:
                                   1596 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:294: T4T3M &= ~M_T3_C_T;
      00181B 53 D1 FB         [24] 1597 	anl	_T4T3M,#0xfb
                                   1598 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:296: if (enableOutput == DISABLE_OUTPUT) {
      00181E 90 00 8B         [24] 1599 	mov	dptr,#_startTimer_PARM_3
      001821 E0               [24] 1600 	movx	a,@dptr
      001822 70 05            [24] 1601 	jnz	00161$
                                   1602 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:297: T4T3M &= ~M_T3CLKO;
      001824 53 D1 FE         [24] 1603 	anl	_T4T3M,#0xfe
      001827 80 03            [24] 1604 	sjmp	00162$
      001829                       1605 00161$:
                                   1606 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:299: T4T3M |= M_T3CLKO;
      001829 43 D1 01         [24] 1607 	orl	_T4T3M,#0x01
      00182C                       1608 00162$:
                                   1609 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:302: if (enableInterrupt == DISABLE_INTERRUPT) {
      00182C 90 00 8C         [24] 1610 	mov	dptr,#_startTimer_PARM_4
      00182F E0               [24] 1611 	movx	a,@dptr
      001830 70 05            [24] 1612 	jnz	00164$
                                   1613 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:303: IE2 &= ~M_T3IE;
      001832 53 AF DF         [24] 1614 	anl	_IE2,#0xdf
      001835 80 03            [24] 1615 	sjmp	00165$
      001837                       1616 00164$:
                                   1617 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:305: IE2 |= M_T3IE;
      001837 43 AF 20         [24] 1618 	orl	_IE2,#0x20
      00183A                       1619 00165$:
                                   1620 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:309: if (sysclkDiv12) {
      00183A 90 00 90         [24] 1621 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      00183D E0               [24] 1622 	movx	a,@dptr
      00183E 60 05            [24] 1623 	jz	00167$
                                   1624 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:310: T4T3M &= ~M_T3x12;
      001840 53 D1 FD         [24] 1625 	anl	_T4T3M,#0xfd
      001843 80 03            [24] 1626 	sjmp	00168$
      001845                       1627 00167$:
                                   1628 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:312: T4T3M |= M_T3x12;
      001845 43 D1 02         [24] 1629 	orl	_T4T3M,#0x02
      001848                       1630 00168$:
                                   1631 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:316: T3 = reloadValue;
      001848 8E D5            [24] 1632 	mov	((_T3 >> 0) & 0xFF),r6
      00184A 8F D4            [24] 1633 	mov	((_T3 >> 8) & 0xFF),r7
                                   1634 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:319: T4T3M |= M_T3RUN;
      00184C 43 D1 08         [24] 1635 	orl	_T4T3M,#0x08
                                   1636 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:320: break;
                                   1637 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:322: case TIMER4:
      00184F 80 34            [24] 1638 	sjmp	00181$
      001851                       1639 00169$:
                                   1640 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:324: T4T3M &= ~M_T4_C_T;
      001851 53 D1 BF         [24] 1641 	anl	_T4T3M,#0xbf
                                   1642 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:326: if (enableOutput == DISABLE_OUTPUT) {
      001854 90 00 8B         [24] 1643 	mov	dptr,#_startTimer_PARM_3
      001857 E0               [24] 1644 	movx	a,@dptr
      001858 70 05            [24] 1645 	jnz	00171$
                                   1646 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:327: T4T3M &= ~M_T4CLKO;
      00185A 53 D1 EF         [24] 1647 	anl	_T4T3M,#0xef
      00185D 80 03            [24] 1648 	sjmp	00172$
      00185F                       1649 00171$:
                                   1650 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:329: T4T3M |= M_T4CLKO;
      00185F 43 D1 10         [24] 1651 	orl	_T4T3M,#0x10
      001862                       1652 00172$:
                                   1653 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:332: if (enableInterrupt == DISABLE_INTERRUPT) {
      001862 90 00 8C         [24] 1654 	mov	dptr,#_startTimer_PARM_4
      001865 E0               [24] 1655 	movx	a,@dptr
      001866 70 05            [24] 1656 	jnz	00174$
                                   1657 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:333: IE2 &= ~M_T4IE;
      001868 53 AF BF         [24] 1658 	anl	_IE2,#0xbf
      00186B 80 03            [24] 1659 	sjmp	00175$
      00186D                       1660 00174$:
                                   1661 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:335: IE2 |= M_T4IE;
      00186D 43 AF 40         [24] 1662 	orl	_IE2,#0x40
      001870                       1663 00175$:
                                   1664 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:339: if (sysclkDiv12) {
      001870 90 00 90         [24] 1665 	mov	dptr,#_startTimer_sysclkDiv12_65536_132
      001873 E0               [24] 1666 	movx	a,@dptr
      001874 60 05            [24] 1667 	jz	00177$
                                   1668 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:340: T4T3M &= ~M_T4x12;
      001876 53 D1 DF         [24] 1669 	anl	_T4T3M,#0xdf
      001879 80 03            [24] 1670 	sjmp	00178$
      00187B                       1671 00177$:
                                   1672 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:342: T4T3M |= M_T4x12;
      00187B 43 D1 20         [24] 1673 	orl	_T4T3M,#0x20
      00187E                       1674 00178$:
                                   1675 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:346: T4 = reloadValue;
      00187E 8E D3            [24] 1676 	mov	((_T4 >> 0) & 0xFF),r6
      001880 8F D2            [24] 1677 	mov	((_T4 >> 8) & 0xFF),r7
                                   1678 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:349: T4T3M |= M_T4RUN;
      001882 43 D1 80         [24] 1679 	orl	_T4T3M,#0x80
                                   1680 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:385: }
      001885                       1681 00181$:
                                   1682 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:388: return rc;
      001885 90 00 8F         [24] 1683 	mov	dptr,#_startTimer_rc_65536_132
      001888 E0               [24] 1684 	movx	a,@dptr
                                   1685 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:389: }
      001889 F5 82            [12] 1686 	mov	dpl,a
      00188B 22               [24] 1687 	ret
                                   1688 ;------------------------------------------------------------
                                   1689 ;Allocation info for local variables in function 'stopTimer'
                                   1690 ;------------------------------------------------------------
                                   1691 ;timer                     Allocated with name '_stopTimer_timer_65536_179'
                                   1692 ;counterValue              Allocated with name '_stopTimer_counterValue_65536_180'
                                   1693 ;------------------------------------------------------------
                                   1694 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:397: uint16_t stopTimer(Timer timer) {
                                   1695 ;	-----------------------------------------
                                   1696 ;	 function stopTimer
                                   1697 ;	-----------------------------------------
      00188C                       1698 _stopTimer:
      00188C E5 82            [12] 1699 	mov	a,dpl
      00188E 90 00 93         [24] 1700 	mov	dptr,#_stopTimer_timer_65536_179
      001891 F0               [24] 1701 	movx	@dptr,a
                                   1702 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:398: uint16_t counterValue = 0;
      001892 90 00 94         [24] 1703 	mov	dptr,#_stopTimer_counterValue_65536_180
      001895 E4               [12] 1704 	clr	a
      001896 F0               [24] 1705 	movx	@dptr,a
      001897 A3               [24] 1706 	inc	dptr
      001898 F0               [24] 1707 	movx	@dptr,a
                                   1708 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:400: switch (timer) {
      001899 90 00 93         [24] 1709 	mov	dptr,#_stopTimer_timer_65536_179
      00189C E0               [24] 1710 	movx	a,@dptr
      00189D FF               [12] 1711 	mov  r7,a
      00189E 24 FB            [12] 1712 	add	a,#0xff - 0x04
      0018A0 40 68            [24] 1713 	jc	00106$
      0018A2 EF               [12] 1714 	mov	a,r7
      0018A3 2F               [12] 1715 	add	a,r7
                                   1716 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:401: case TIMER0:
      0018A4 90 18 A8         [24] 1717 	mov	dptr,#00114$
      0018A7 73               [24] 1718 	jmp	@a+dptr
      0018A8                       1719 00114$:
      0018A8 80 08            [24] 1720 	sjmp	00101$
      0018AA 80 18            [24] 1721 	sjmp	00102$
      0018AC 80 28            [24] 1722 	sjmp	00103$
      0018AE 80 38            [24] 1723 	sjmp	00104$
      0018B0 80 48            [24] 1724 	sjmp	00105$
      0018B2                       1725 00101$:
                                   1726 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:403: TCON &= ~M_T0RUN;
      0018B2 53 88 EF         [24] 1727 	anl	_TCON,#0xef
                                   1728 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:408: counterValue = T0;
      0018B5 90 00 94         [24] 1729 	mov	dptr,#_stopTimer_counterValue_65536_180
      0018B8 E5 8A            [12] 1730 	mov	a,((_T0 >> 0) & 0xFF)
      0018BA F0               [24] 1731 	movx	@dptr,a
      0018BB E5 8C            [12] 1732 	mov	a,((_T0 >> 8) & 0xFF)
      0018BD A3               [24] 1733 	inc	dptr
      0018BE F0               [24] 1734 	movx	@dptr,a
                                   1735 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:414: INT_CLKO &= ~M_T0CLKO;
      0018BF 53 8F FE         [24] 1736 	anl	_INT_CLKO,#0xfe
                                   1737 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:416: break;
                                   1738 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:419: case TIMER1:
      0018C2 80 46            [24] 1739 	sjmp	00106$
      0018C4                       1740 00102$:
                                   1741 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:421: TCON &= ~M_T1RUN;
      0018C4 53 88 BF         [24] 1742 	anl	_TCON,#0xbf
                                   1743 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:426: counterValue = T1;
      0018C7 90 00 94         [24] 1744 	mov	dptr,#_stopTimer_counterValue_65536_180
      0018CA E5 8B            [12] 1745 	mov	a,((_T1 >> 0) & 0xFF)
      0018CC F0               [24] 1746 	movx	@dptr,a
      0018CD E5 8D            [12] 1747 	mov	a,((_T1 >> 8) & 0xFF)
      0018CF A3               [24] 1748 	inc	dptr
      0018D0 F0               [24] 1749 	movx	@dptr,a
                                   1750 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:432: INT_CLKO &= ~M_T1CLKO;
      0018D1 53 8F FD         [24] 1751 	anl	_INT_CLKO,#0xfd
                                   1752 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:434: break;
                                   1753 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:438: case TIMER2:
      0018D4 80 34            [24] 1754 	sjmp	00106$
      0018D6                       1755 00103$:
                                   1756 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:440: AUXR &= ~M_T2RUN;
      0018D6 53 8E EF         [24] 1757 	anl	_AUXR,#0xef
                                   1758 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:443: counterValue = T2;
      0018D9 90 00 94         [24] 1759 	mov	dptr,#_stopTimer_counterValue_65536_180
      0018DC E5 D7            [12] 1760 	mov	a,((_T2 >> 0) & 0xFF)
      0018DE F0               [24] 1761 	movx	@dptr,a
      0018DF E5 D6            [12] 1762 	mov	a,((_T2 >> 8) & 0xFF)
      0018E1 A3               [24] 1763 	inc	dptr
      0018E2 F0               [24] 1764 	movx	@dptr,a
                                   1765 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:450: INT_CLKO &= ~M_T2CLKO;
      0018E3 53 8F FB         [24] 1766 	anl	_INT_CLKO,#0xfb
                                   1767 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:455: break;
                                   1768 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:459: case TIMER3:
      0018E6 80 22            [24] 1769 	sjmp	00106$
      0018E8                       1770 00104$:
                                   1771 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:461: T4T3M &= ~M_T3RUN;
      0018E8 53 D1 F7         [24] 1772 	anl	_T4T3M,#0xf7
                                   1773 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:463: counterValue = T3;
      0018EB 90 00 94         [24] 1774 	mov	dptr,#_stopTimer_counterValue_65536_180
      0018EE E5 D5            [12] 1775 	mov	a,((_T3 >> 0) & 0xFF)
      0018F0 F0               [24] 1776 	movx	@dptr,a
      0018F1 E5 D4            [12] 1777 	mov	a,((_T3 >> 8) & 0xFF)
      0018F3 A3               [24] 1778 	inc	dptr
      0018F4 F0               [24] 1779 	movx	@dptr,a
                                   1780 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:465: T4T3M &= ~M_T3CLKO;
      0018F5 53 D1 FE         [24] 1781 	anl	_T4T3M,#0xfe
                                   1782 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:466: break;
                                   1783 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:468: case TIMER4:
      0018F8 80 10            [24] 1784 	sjmp	00106$
      0018FA                       1785 00105$:
                                   1786 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:470: T4T3M &= ~M_T4RUN;
      0018FA 53 D1 7F         [24] 1787 	anl	_T4T3M,#0x7f
                                   1788 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:472: counterValue = T4;
      0018FD 90 00 94         [24] 1789 	mov	dptr,#_stopTimer_counterValue_65536_180
      001900 E5 D3            [12] 1790 	mov	a,((_T4 >> 0) & 0xFF)
      001902 F0               [24] 1791 	movx	@dptr,a
      001903 E5 D2            [12] 1792 	mov	a,((_T4 >> 8) & 0xFF)
      001905 A3               [24] 1793 	inc	dptr
      001906 F0               [24] 1794 	movx	@dptr,a
                                   1795 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:474: T4T3M &= ~M_T4CLKO;
      001907 53 D1 EF         [24] 1796 	anl	_T4T3M,#0xef
                                   1797 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:488: }
      00190A                       1798 00106$:
                                   1799 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:490: return counterValue;
      00190A 90 00 94         [24] 1800 	mov	dptr,#_stopTimer_counterValue_65536_180
      00190D E0               [24] 1801 	movx	a,@dptr
      00190E FE               [12] 1802 	mov	r6,a
      00190F A3               [24] 1803 	inc	dptr
      001910 E0               [24] 1804 	movx	a,@dptr
                                   1805 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:491: }
      001911 8E 82            [24] 1806 	mov	dpl,r6
      001913 F5 83            [12] 1807 	mov	dph,a
      001915 22               [24] 1808 	ret
                                   1809 	.area CSEG    (CODE)
                                   1810 	.area CONST   (CODE)
                                   1811 	.area XINIT   (CODE)
                                   1812 	.area CABS    (ABS,CODE)
