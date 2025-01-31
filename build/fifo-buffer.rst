                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fifo_buffer
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
                                    156 	.globl _DMA_UR4R_TXAL
                                    157 	.globl _DMA_UR4R_TXAH
                                    158 	.globl _DMA_UR4R_DONE
                                    159 	.globl _DMA_UR4R_AMT
                                    160 	.globl _DMA_UR4R_STA
                                    161 	.globl _DMA_UR4R_CR
                                    162 	.globl _DMA_UR4R_CFG
                                    163 	.globl _DMA_UR4T_TXAL
                                    164 	.globl _DMA_UR4T_TXAH
                                    165 	.globl _DMA_UR4T_DONE
                                    166 	.globl _DMA_UR4T_AMT
                                    167 	.globl _DMA_UR4T_STA
                                    168 	.globl _DMA_UR4T_CR
                                    169 	.globl _DMA_UR4T_CFG
                                    170 	.globl _DMA_UR3R_TXAL
                                    171 	.globl _DMA_UR3R_TXAH
                                    172 	.globl _DMA_UR3R_DONE
                                    173 	.globl _DMA_UR3R_AMT
                                    174 	.globl _DMA_UR3R_STA
                                    175 	.globl _DMA_UR3R_CR
                                    176 	.globl _DMA_UR3R_CFG
                                    177 	.globl _DMA_UR3T_TXAL
                                    178 	.globl _DMA_UR3T_TXAH
                                    179 	.globl _DMA_UR3T_DONE
                                    180 	.globl _DMA_UR3T_AMT
                                    181 	.globl _DMA_UR3T_STA
                                    182 	.globl _DMA_UR3T_CR
                                    183 	.globl _DMA_UR3T_CFG
                                    184 	.globl _DMA_UR2R_TXAL
                                    185 	.globl _DMA_UR2R_TXAH
                                    186 	.globl _DMA_UR2R_DONE
                                    187 	.globl _DMA_UR2R_AMT
                                    188 	.globl _DMA_UR2R_STA
                                    189 	.globl _DMA_UR2R_CR
                                    190 	.globl _DMA_UR2R_CFG
                                    191 	.globl _DMA_UR2T_TXAL
                                    192 	.globl _DMA_UR2T_TXAH
                                    193 	.globl _DMA_UR2T_DONE
                                    194 	.globl _DMA_UR2T_AMT
                                    195 	.globl _DMA_UR2T_STA
                                    196 	.globl _DMA_UR2T_CR
                                    197 	.globl _DMA_UR2T_CFG
                                    198 	.globl _DMA_UR1R_TXAL
                                    199 	.globl _DMA_UR1R_TXAH
                                    200 	.globl _DMA_UR1R_DONE
                                    201 	.globl _DMA_UR1R_AMT
                                    202 	.globl _DMA_UR1R_STA
                                    203 	.globl _DMA_UR1R_CR
                                    204 	.globl _DMA_UR1R_CFG
                                    205 	.globl _DMA_UR1T_TXAL
                                    206 	.globl _DMA_UR1T_TXAH
                                    207 	.globl _DMA_UR1T_DONE
                                    208 	.globl _DMA_URTX_AMT
                                    209 	.globl _DMA_UR1T_STA
                                    210 	.globl _DMA_UR1T_CR
                                    211 	.globl _DMA_UR1T_CFG
                                    212 	.globl _TM4PS
                                    213 	.globl _TM3PS
                                    214 	.globl _TM2PS
                                    215 	.globl _IRC48MCR
                                    216 	.globl _IRCDB
                                    217 	.globl _MCLKOCR
                                    218 	.globl _CKSEL
                                    219 	.globl _IRC32KCR
                                    220 	.globl _X32KCR
                                    221 	.globl _XOSCCR
                                    222 	.globl _HIRCCR
                                    223 	.globl _CLKDIV
                                    224 	.globl _DMA_SPI_CFG2
                                    225 	.globl _DMA_SPI_RXAL
                                    226 	.globl _DMA_SPI_RXAH
                                    227 	.globl _DMA_SPI_TXAL
                                    228 	.globl _DMA_SPI_TXAH
                                    229 	.globl _DMA_SPI_DONE
                                    230 	.globl _DMA_SPI_AMT
                                    231 	.globl _DMA_SPI_STA
                                    232 	.globl _DMA_SPI_CR
                                    233 	.globl _DMA_SPI_CFG
                                    234 	.globl _SSEC
                                    235 	.globl _SEC
                                    236 	.globl _MIN
                                    237 	.globl _HOUR
                                    238 	.globl _DAY
                                    239 	.globl _MONTH
                                    240 	.globl _YEAR
                                    241 	.globl _INISSEC
                                    242 	.globl _INISEC
                                    243 	.globl _INIMIN
                                    244 	.globl _INIHOUR
                                    245 	.globl _INIDAY
                                    246 	.globl _INIMONTH
                                    247 	.globl _INIYEAR
                                    248 	.globl _ALASSEC
                                    249 	.globl _ALASEC
                                    250 	.globl _ALAMIN
                                    251 	.globl _ALAHOUR
                                    252 	.globl _RTCIF
                                    253 	.globl _RTCIEN
                                    254 	.globl _RTCCFG
                                    255 	.globl _RTCCR
                                    256 	.globl _PWMB_OISR
                                    257 	.globl _PWMB_DTR
                                    258 	.globl _PWMB_BKR
                                    259 	.globl _PWMB_CCR4L
                                    260 	.globl _PWMB_CCR4H
                                    261 	.globl _PWMB_CCR3L
                                    262 	.globl _PWMB_CCR3H
                                    263 	.globl _PWMB_CCR2L
                                    264 	.globl _PWMB_CCR2H
                                    265 	.globl _PWMB_CCR1L
                                    266 	.globl _PWMB_CCR1H
                                    267 	.globl _PWMB_RCR
                                    268 	.globl _PWMB_ARRL
                                    269 	.globl _PWMB_ARRH
                                    270 	.globl _PWMB_PSCRL
                                    271 	.globl _PWMB_PSCRH
                                    272 	.globl _PWMB_CNTRL
                                    273 	.globl _PWMB_CNTRH
                                    274 	.globl _PWMB_CCER2
                                    275 	.globl _PWMB_CCER1
                                    276 	.globl _PWMB_CCMR4
                                    277 	.globl _PWMB_CCMR3
                                    278 	.globl _PWMB_CCMR2
                                    279 	.globl _PWMB_CCMR1
                                    280 	.globl _PWMB_EGR
                                    281 	.globl _PWMB_SR2
                                    282 	.globl _PWMB_SR1
                                    283 	.globl _PWMB_IER
                                    284 	.globl _PWMB_ETR
                                    285 	.globl _PWMB_SMCR
                                    286 	.globl _PWMB_CR2
                                    287 	.globl _PWMB_CR1
                                    288 	.globl _PWMA_OISR
                                    289 	.globl _PWMA_DTR
                                    290 	.globl _PWMA_BKR
                                    291 	.globl _PWMA_CCR4L
                                    292 	.globl _PWMA_CCR4H
                                    293 	.globl _PWMA_CCR3L
                                    294 	.globl _PWMA_CCR3H
                                    295 	.globl _PWMA_CCR2L
                                    296 	.globl _PWMA_CCR2H
                                    297 	.globl _PWMA_CCR1L
                                    298 	.globl _PWMA_CCR1H
                                    299 	.globl _PWMA_RCR
                                    300 	.globl _PWMA_ARRL
                                    301 	.globl _PWMA_ARRH
                                    302 	.globl _PWMA_PSCRL
                                    303 	.globl _PWMA_PSCRH
                                    304 	.globl _PWMA_CNTRL
                                    305 	.globl _PWMA_CNTRH
                                    306 	.globl _PWMA_CCER2
                                    307 	.globl _PWMA_CCER1
                                    308 	.globl _PWMA_CCMR4
                                    309 	.globl _PWMA_CCMR3
                                    310 	.globl _PWMA_CCMR2
                                    311 	.globl _PWMA_CCMR1
                                    312 	.globl _PWMA_EGR
                                    313 	.globl _PWMA_SR2
                                    314 	.globl _PWMA_SR1
                                    315 	.globl _PWMA_IER
                                    316 	.globl _PWMA_ETR
                                    317 	.globl _PWMA_SMCR
                                    318 	.globl _PWMA_CR2
                                    319 	.globl _PWMA_CR1
                                    320 	.globl _PWMB_IOAUX
                                    321 	.globl _PWMB_PS
                                    322 	.globl _PWMB_ENO
                                    323 	.globl _PWMB_ETRPS
                                    324 	.globl _PWMA_IOAUX
                                    325 	.globl _PWMA_PS
                                    326 	.globl _PWMA_ENO
                                    327 	.globl _PWMA_ETRPS
                                    328 	.globl _RSTFLAG
                                    329 	.globl _SPFUNC
                                    330 	.globl _OPCON
                                    331 	.globl _ARCON
                                    332 	.globl _MD4
                                    333 	.globl _MD5
                                    334 	.globl _MD0
                                    335 	.globl _MD1
                                    336 	.globl _MD2
                                    337 	.globl _MD3
                                    338 	.globl _DMA_LCM_RXAL
                                    339 	.globl _DMA_LCM_RXAH
                                    340 	.globl _DMA_LCM_TXAL
                                    341 	.globl _DMA_LCM_TXAH
                                    342 	.globl _DMA_LCM_DONE
                                    343 	.globl _DMA_LCM_AMT
                                    344 	.globl _DMA_LCM_STA
                                    345 	.globl _DMA_LCM_CR
                                    346 	.globl _DMA_LCM_CFG
                                    347 	.globl _LCMIDDAT
                                    348 	.globl _LCMIDDATH
                                    349 	.globl _LCMIDDATL
                                    350 	.globl _LCMSTA
                                    351 	.globl _LCMCR
                                    352 	.globl _LCMCFG2
                                    353 	.globl _LCMCFG
                                    354 	.globl _I2CMSAUX
                                    355 	.globl _I2CRXD
                                    356 	.globl _I2CTXD
                                    357 	.globl _I2CSLADR
                                    358 	.globl _I2CSLST
                                    359 	.globl _I2CSLCR
                                    360 	.globl _I2CMSST
                                    361 	.globl _I2CMSCR
                                    362 	.globl _I2CCFG
                                    363 	.globl _PINIPH
                                    364 	.globl _PINIPL
                                    365 	.globl _P5IE
                                    366 	.globl _P5DR
                                    367 	.globl _P5SR
                                    368 	.globl _P5NCS
                                    369 	.globl _P5PU
                                    370 	.globl _P5WKUE
                                    371 	.globl _P5IM1
                                    372 	.globl _P5IM0
                                    373 	.globl _P5INTF
                                    374 	.globl _P5INTE
                                    375 	.globl _P3IE
                                    376 	.globl _P3DR
                                    377 	.globl _P3SR
                                    378 	.globl _P3NCS
                                    379 	.globl _P3PU
                                    380 	.globl _P3WKUE
                                    381 	.globl _P3IM1
                                    382 	.globl _P3IM0
                                    383 	.globl _P3INTF
                                    384 	.globl _P3INTE
                                    385 	.globl _P2IE
                                    386 	.globl _P2DR
                                    387 	.globl _P2SR
                                    388 	.globl _P2NCS
                                    389 	.globl _P2PU
                                    390 	.globl _P2WKUE
                                    391 	.globl _P2IM1
                                    392 	.globl _P2IM0
                                    393 	.globl _P2INTF
                                    394 	.globl _P2INTE
                                    395 	.globl _P1IE
                                    396 	.globl _P1DR
                                    397 	.globl _P1SR
                                    398 	.globl _P1NCS
                                    399 	.globl _P1PU
                                    400 	.globl _P1WKUE
                                    401 	.globl _P1IM1
                                    402 	.globl _P1IM0
                                    403 	.globl _P1INTF
                                    404 	.globl _P1INTE
                                    405 	.globl _DMA_M2M_RXAL
                                    406 	.globl _DMA_M2M_RXAH
                                    407 	.globl _DMA_M2M_TXAL
                                    408 	.globl _DMA_M2M_TXAH
                                    409 	.globl _DMA_M2M_DONE
                                    410 	.globl _DMA_M2M_AMT
                                    411 	.globl _DMA_M2M_STA
                                    412 	.globl _DMA_M2M_CR
                                    413 	.globl _DMA_M2M_CFG
                                    414 	.globl _CMPEXCFG
                                    415 	.globl _CHIP_PACKAGE_TYPE
                                    416 	.globl _CHIP_TEST_DAY_BCD
                                    417 	.globl _CHIP_TEST_MONTH_BCD
                                    418 	.globl _CHIP_TEST_YEAR_BCD
                                    419 	.globl _PROGRAM_AREA_SIZE
                                    420 	.globl _VRTRIM_44MHz
                                    421 	.globl _VRTRIM_27MHz
                                    422 	.globl _VRTRIM_10MHz
                                    423 	.globl _VRTRIM_6MHz
                                    424 	.globl _IRTRIM_48MHz
                                    425 	.globl _IRTRIM_44_2368MHz
                                    426 	.globl _IRTRIM_40MHz
                                    427 	.globl _IRTRIM_36_864MHz
                                    428 	.globl _IRTRIM_35MHz
                                    429 	.globl _IRTRIM_33_1776MHz
                                    430 	.globl _IRTRIM_30MHz
                                    431 	.globl _IRTRIM_27MHz
                                    432 	.globl _IRTRIM_24MHz
                                    433 	.globl _IRTRIM_22_1184MHz
                                    434 	.globl ___OTHER_INFO
                                    435 	.globl _CHIP_GUID
                                    436 	.globl _DMA_ADC_CHSW1
                                    437 	.globl _DMA_ADC_CHSW0
                                    438 	.globl _DMA_ADC_CFG2
                                    439 	.globl _DMA_ADC_RXAL
                                    440 	.globl _DMA_ADC_RXAH
                                    441 	.globl _DMA_ADC_STA
                                    442 	.globl _DMA_ADC_CR
                                    443 	.globl _DMA_ADC_CFG
                                    444 	.globl _ADCEXCFG
                                    445 	.globl _ADCTIM
                                    446 	.globl _fifoClear
                                    447 	.globl _fifoIsFull
                                    448 	.globl _fifoBytesFree
                                    449 	.globl _fifoWrite
                                    450 	.globl _fifoRead
                                    451 ;--------------------------------------------------------
                                    452 ; special function registers
                                    453 ;--------------------------------------------------------
                                    454 	.area RSEG    (ABS,DATA)
      000000                        455 	.org 0x0000
                           0000BC   456 _ADC_CONTR	=	0x00bc
                           0000BD   457 _ADC_RESH	=	0x00bd
                           0000BE   458 _ADC_RESL	=	0x00be
                           00BDBE   459 _ADC_RES	=	0xbdbe
                           0000DE   460 _ADCCFG	=	0x00de
                           0000FA   461 _DMA_ADC_AMT	=	0x00fa
                           0000E6   462 _CMPCR1	=	0x00e6
                           0000E7   463 _CMPCR2	=	0x00e7
                           000082   464 _DPL	=	0x0082
                           000083   465 _DPH	=	0x0083
                           008382   466 _DP	=	0x8382
                           0000E3   467 _DPS	=	0x00e3
                           0000E4   468 _DPL1	=	0x00e4
                           0000E5   469 _DPH1	=	0x00e5
                           0000AE   470 _TA	=	0x00ae
                           000090   471 _P1	=	0x0090
                           000091   472 _P1M1	=	0x0091
                           000092   473 _P1M0	=	0x0092
                           0000A0   474 _P2	=	0x00a0
                           000095   475 _P2M1	=	0x0095
                           000096   476 _P2M0	=	0x0096
                           0000B0   477 _P3	=	0x00b0
                           0000B1   478 _P3M1	=	0x00b1
                           0000B2   479 _P3M0	=	0x00b2
                           0000C8   480 _P5	=	0x00c8
                           0000C9   481 _P5M1	=	0x00c9
                           0000CA   482 _P5M0	=	0x00ca
                           0000C2   483 _IAP_DATA	=	0x00c2
                           0000C3   484 _IAP_ADDRH	=	0x00c3
                           0000C4   485 _IAP_ADDRL	=	0x00c4
                           00C3C4   486 _IAP_ADDR	=	0xc3c4
                           0000C5   487 _IAP_CMD	=	0x00c5
                           0000C6   488 _IAP_TRIG	=	0x00c6
                           0000C7   489 _IAP_CONTR	=	0x00c7
                           0000F5   490 _IAP_TPS	=	0x00f5
                           00008F   491 _INT_CLKO	=	0x008f
                           0000A8   492 _IE1	=	0x00a8
                           0000B8   493 _IP1L	=	0x00b8
                           0000B7   494 _IP1H	=	0x00b7
                           0000AF   495 _IE2	=	0x00af
                           0000B5   496 _IP2L	=	0x00b5
                           0000B6   497 _IP2H	=	0x00b6
                           0000DF   498 _IP3L	=	0x00df
                           0000EE   499 _IP3H	=	0x00ee
                           000081   500 _SP	=	0x0081
                           0000D0   501 _PSW	=	0x00d0
                           0000E0   502 _ACC	=	0x00e0
                           0000F0   503 _B	=	0x00f0
                           000087   504 _PCON	=	0x0087
                           0000FF   505 _RSTCFG	=	0x00ff
                           0000A2   506 _P_SW1	=	0x00a2
                           0000BA   507 _P_SW2	=	0x00ba
                           0000A1   508 _BUS_SPEED	=	0x00a1
                           0000AA   509 _WKTCL	=	0x00aa
                           0000AB   510 _WKTCH	=	0x00ab
                           00ABAA   511 _WKTC	=	0xabaa
                           0000CD   512 _SPSTAT	=	0x00cd
                           0000CE   513 _SPCTL	=	0x00ce
                           0000CF   514 _SPDAT	=	0x00cf
                           00009D   515 _IRCBAND	=	0x009d
                           00009E   516 _LIRTRIM	=	0x009e
                           00009F   517 _IRTRIM	=	0x009f
                           000088   518 _TCON	=	0x0088
                           000089   519 _TMOD	=	0x0089
                           00008A   520 _T0L	=	0x008a
                           00008C   521 _T0H	=	0x008c
                           008C8A   522 _T0	=	0x8c8a
                           00008B   523 _T1L	=	0x008b
                           00008D   524 _T1H	=	0x008d
                           008D8B   525 _T1	=	0x8d8b
                           0000D7   526 _T2L	=	0x00d7
                           0000D6   527 _T2H	=	0x00d6
                           00D6D7   528 _T2	=	0xd6d7
                           00008E   529 _AUXR	=	0x008e
                           0000C1   530 _WDT_CONTR	=	0x00c1
                           0000D1   531 _T4T3M	=	0x00d1
                           0000D2   532 _T4H	=	0x00d2
                           0000D3   533 _T4L	=	0x00d3
                           00D2D3   534 _T4	=	0xd2d3
                           0000D4   535 _T3H	=	0x00d4
                           0000D5   536 _T3L	=	0x00d5
                           00D4D5   537 _T3	=	0xd4d5
                           0000EF   538 _AUXINTIF	=	0x00ef
                           0000A9   539 _SADDR	=	0x00a9
                           0000B9   540 _SADEN	=	0x00b9
                           000098   541 _S1CON	=	0x0098
                           000099   542 _S1BUF	=	0x0099
                           00009A   543 _S2CON	=	0x009a
                           00009B   544 _S2BUF	=	0x009b
                           0000AC   545 _S3CON	=	0x00ac
                           0000AD   546 _S3BUF	=	0x00ad
                           000084   547 _S4CON	=	0x0084
                           000085   548 _S4BUF	=	0x0085
                           0000DC   549 _USBCLK	=	0x00dc
                           0000EC   550 _USBDAT	=	0x00ec
                           0000F4   551 _USBCON	=	0x00f4
                           0000FC   552 _USBADR	=	0x00fc
                                    553 ;--------------------------------------------------------
                                    554 ; special function bits
                                    555 ;--------------------------------------------------------
                                    556 	.area RSEG    (ABS,DATA)
      000000                        557 	.org 0x0000
                           000090   558 _P1_0	=	0x0090
                           000091   559 _P1_1	=	0x0091
                           000092   560 _P1_2	=	0x0092
                           000093   561 _P1_3	=	0x0093
                           000094   562 _P1_4	=	0x0094
                           000095   563 _P1_5	=	0x0095
                           000096   564 _P1_6	=	0x0096
                           000097   565 _P1_7	=	0x0097
                           0000A0   566 _P2_0	=	0x00a0
                           0000A1   567 _P2_1	=	0x00a1
                           0000A2   568 _P2_2	=	0x00a2
                           0000A3   569 _P2_3	=	0x00a3
                           0000A4   570 _P2_4	=	0x00a4
                           0000A5   571 _P2_5	=	0x00a5
                           0000A6   572 _P2_6	=	0x00a6
                           0000A7   573 _P2_7	=	0x00a7
                           0000B0   574 _P3_0	=	0x00b0
                           0000B1   575 _P3_1	=	0x00b1
                           0000B2   576 _P3_2	=	0x00b2
                           0000B3   577 _P3_3	=	0x00b3
                           0000B4   578 _P3_4	=	0x00b4
                           0000B5   579 _P3_5	=	0x00b5
                           0000B6   580 _P3_6	=	0x00b6
                           0000B7   581 _P3_7	=	0x00b7
                           0000C8   582 _P5_0	=	0x00c8
                           0000C9   583 _P5_1	=	0x00c9
                           0000CA   584 _P5_2	=	0x00ca
                           0000CB   585 _P5_3	=	0x00cb
                           0000CC   586 _P5_4	=	0x00cc
                           0000CD   587 _P5_5	=	0x00cd
                           000088   588 _INT0TR	=	0x0088
                           00008A   589 _INT1TR	=	0x008a
                           0000A8   590 _INT0IE	=	0x00a8
                           0000AA   591 _INT1IE	=	0x00aa
                           0000AF   592 _EA	=	0x00af
                           0000D0   593 _P	=	0x00d0
                           0000D1   594 _F1	=	0x00d1
                           0000D2   595 _OV	=	0x00d2
                           0000D3   596 _RS0	=	0x00d3
                           0000D4   597 _RS1	=	0x00d4
                           0000D5   598 _F0	=	0x00d5
                           0000D6   599 _AC	=	0x00d6
                           0000D7   600 _CY	=	0x00d7
                           00008C   601 _T0RUN	=	0x008c
                           00008E   602 _T1RUN	=	0x008e
                           0000A9   603 _T0IE	=	0x00a9
                           0000AB   604 _T1IE	=	0x00ab
                           00009F   605 _S1SM0_FE	=	0x009f
                                    606 ;--------------------------------------------------------
                                    607 ; overlayable register banks
                                    608 ;--------------------------------------------------------
                                    609 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        610 	.ds 8
                                    611 ;--------------------------------------------------------
                                    612 ; overlayable bit register bank
                                    613 ;--------------------------------------------------------
                                    614 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        615 bits:
      000020                        616 	.ds 1
                           008000   617 	b0 = bits[0]
                           008100   618 	b1 = bits[1]
                           008200   619 	b2 = bits[2]
                           008300   620 	b3 = bits[3]
                           008400   621 	b4 = bits[4]
                           008500   622 	b5 = bits[5]
                           008600   623 	b6 = bits[6]
                           008700   624 	b7 = bits[7]
                                    625 ;--------------------------------------------------------
                                    626 ; internal ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area DSEG    (DATA)
                                    629 ;--------------------------------------------------------
                                    630 ; overlayable items in internal ram 
                                    631 ;--------------------------------------------------------
                                    632 ;--------------------------------------------------------
                                    633 ; indirectly addressable internal ram data
                                    634 ;--------------------------------------------------------
                                    635 	.area ISEG    (DATA)
                                    636 ;--------------------------------------------------------
                                    637 ; absolute internal ram data
                                    638 ;--------------------------------------------------------
                                    639 	.area IABS    (ABS,DATA)
                                    640 	.area IABS    (ABS,DATA)
                                    641 ;--------------------------------------------------------
                                    642 ; bit data
                                    643 ;--------------------------------------------------------
                                    644 	.area BSEG    (BIT)
                                    645 ;--------------------------------------------------------
                                    646 ; paged external ram data
                                    647 ;--------------------------------------------------------
                                    648 	.area PSEG    (PAG,XDATA)
                                    649 ;--------------------------------------------------------
                                    650 ; external ram data
                                    651 ;--------------------------------------------------------
                                    652 	.area XSEG    (XDATA)
                           00FEA8   653 _ADCTIM	=	0xfea8
                           00FEAD   654 _ADCEXCFG	=	0xfead
                           00FA10   655 _DMA_ADC_CFG	=	0xfa10
                           00FA11   656 _DMA_ADC_CR	=	0xfa11
                           00FA12   657 _DMA_ADC_STA	=	0xfa12
                           00FA17   658 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   659 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   660 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   661 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   662 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   663 _CHIP_GUID	=	0xfde0
                           00FDE7   664 ___OTHER_INFO	=	0xfde7
                           00FDEB   665 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   666 _IRTRIM_24MHz	=	0xfdec
                           00FDED   667 _IRTRIM_27MHz	=	0xfded
                           00FDEE   668 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   669 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   670 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   671 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   672 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   673 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   674 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   675 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   676 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   677 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   678 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   679 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   680 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   681 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   682 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   683 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   684 _CMPEXCFG	=	0xfeae
                           00FA00   685 _DMA_M2M_CFG	=	0xfa00
                           00FA01   686 _DMA_M2M_CR	=	0xfa01
                           00FA02   687 _DMA_M2M_STA	=	0xfa02
                           00FA03   688 _DMA_M2M_AMT	=	0xfa03
                           00FA04   689 _DMA_M2M_DONE	=	0xfa04
                           00FA05   690 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   691 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   692 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   693 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   694 _P1INTE	=	0xfd01
                           00FD11   695 _P1INTF	=	0xfd11
                           00FD21   696 _P1IM0	=	0xfd21
                           00FD31   697 _P1IM1	=	0xfd31
                           00FD41   698 _P1WKUE	=	0xfd41
                           00FE11   699 _P1PU	=	0xfe11
                           00FE19   700 _P1NCS	=	0xfe19
                           00FE21   701 _P1SR	=	0xfe21
                           00FE29   702 _P1DR	=	0xfe29
                           00FE31   703 _P1IE	=	0xfe31
                           00FD02   704 _P2INTE	=	0xfd02
                           00FD12   705 _P2INTF	=	0xfd12
                           00FD22   706 _P2IM0	=	0xfd22
                           00FD32   707 _P2IM1	=	0xfd32
                           00FD42   708 _P2WKUE	=	0xfd42
                           00FE12   709 _P2PU	=	0xfe12
                           00FE1A   710 _P2NCS	=	0xfe1a
                           00FE22   711 _P2SR	=	0xfe22
                           00FE2A   712 _P2DR	=	0xfe2a
                           00FE32   713 _P2IE	=	0xfe32
                           00FD03   714 _P3INTE	=	0xfd03
                           00FD13   715 _P3INTF	=	0xfd13
                           00FD23   716 _P3IM0	=	0xfd23
                           00FD33   717 _P3IM1	=	0xfd33
                           00FD43   718 _P3WKUE	=	0xfd43
                           00FE13   719 _P3PU	=	0xfe13
                           00FE1B   720 _P3NCS	=	0xfe1b
                           00FE23   721 _P3SR	=	0xfe23
                           00FE2B   722 _P3DR	=	0xfe2b
                           00FE33   723 _P3IE	=	0xfe33
                           00FD05   724 _P5INTE	=	0xfd05
                           00FD15   725 _P5INTF	=	0xfd15
                           00FD25   726 _P5IM0	=	0xfd25
                           00FD35   727 _P5IM1	=	0xfd35
                           00FD45   728 _P5WKUE	=	0xfd45
                           00FE15   729 _P5PU	=	0xfe15
                           00FE1D   730 _P5NCS	=	0xfe1d
                           00FE25   731 _P5SR	=	0xfe25
                           00FE2D   732 _P5DR	=	0xfe2d
                           00FE35   733 _P5IE	=	0xfe35
                           00FD60   734 _PINIPL	=	0xfd60
                           00FD61   735 _PINIPH	=	0xfd61
                           00FE80   736 _I2CCFG	=	0xfe80
                           00FE81   737 _I2CMSCR	=	0xfe81
                           00FE82   738 _I2CMSST	=	0xfe82
                           00FE83   739 _I2CSLCR	=	0xfe83
                           00FE84   740 _I2CSLST	=	0xfe84
                           00FE85   741 _I2CSLADR	=	0xfe85
                           00FE86   742 _I2CTXD	=	0xfe86
                           00FE87   743 _I2CRXD	=	0xfe87
                           00FE88   744 _I2CMSAUX	=	0xfe88
                           00FE50   745 _LCMCFG	=	0xfe50
                           00FE51   746 _LCMCFG2	=	0xfe51
                           00FE52   747 _LCMCR	=	0xfe52
                           00FE53   748 _LCMSTA	=	0xfe53
                           00FE54   749 _LCMIDDATL	=	0xfe54
                           00FE55   750 _LCMIDDATH	=	0xfe55
                           00FE54   751 _LCMIDDAT	=	0xfe54
                           00FA70   752 _DMA_LCM_CFG	=	0xfa70
                           00FA71   753 _DMA_LCM_CR	=	0xfa71
                           00FA72   754 _DMA_LCM_STA	=	0xfa72
                           00FA73   755 _DMA_LCM_AMT	=	0xfa73
                           00FA74   756 _DMA_LCM_DONE	=	0xfa74
                           00FA75   757 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   758 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   759 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   760 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   761 _MD3	=	0xfcf0
                           00FCF1   762 _MD2	=	0xfcf1
                           00FCF2   763 _MD1	=	0xfcf2
                           00FCF3   764 _MD0	=	0xfcf3
                           00FCF4   765 _MD5	=	0xfcf4
                           00FCF5   766 _MD4	=	0xfcf5
                           00FCF6   767 _ARCON	=	0xfcf6
                           00FCF7   768 _OPCON	=	0xfcf7
                           00FE08   769 _SPFUNC	=	0xfe08
                           00FE09   770 _RSTFLAG	=	0xfe09
                           00FEB0   771 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   772 _PWMA_ENO	=	0xfeb1
                           00FEB2   773 _PWMA_PS	=	0xfeb2
                           00FEB3   774 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   775 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   776 _PWMB_ENO	=	0xfeb5
                           00FEB6   777 _PWMB_PS	=	0xfeb6
                           00FEB7   778 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   779 _PWMA_CR1	=	0xfec0
                           00FEC1   780 _PWMA_CR2	=	0xfec1
                           00FEC2   781 _PWMA_SMCR	=	0xfec2
                           00FEC3   782 _PWMA_ETR	=	0xfec3
                           00FEC4   783 _PWMA_IER	=	0xfec4
                           00FEC5   784 _PWMA_SR1	=	0xfec5
                           00FEC6   785 _PWMA_SR2	=	0xfec6
                           00FEC7   786 _PWMA_EGR	=	0xfec7
                           00FEC8   787 _PWMA_CCMR1	=	0xfec8
                           00FEC9   788 _PWMA_CCMR2	=	0xfec9
                           00FECA   789 _PWMA_CCMR3	=	0xfeca
                           00FECB   790 _PWMA_CCMR4	=	0xfecb
                           00FECC   791 _PWMA_CCER1	=	0xfecc
                           00FECD   792 _PWMA_CCER2	=	0xfecd
                           00FECE   793 _PWMA_CNTRH	=	0xfece
                           00FECF   794 _PWMA_CNTRL	=	0xfecf
                           00FED0   795 _PWMA_PSCRH	=	0xfed0
                           00FED1   796 _PWMA_PSCRL	=	0xfed1
                           00FED2   797 _PWMA_ARRH	=	0xfed2
                           00FED3   798 _PWMA_ARRL	=	0xfed3
                           00FED4   799 _PWMA_RCR	=	0xfed4
                           00FED5   800 _PWMA_CCR1H	=	0xfed5
                           00FED6   801 _PWMA_CCR1L	=	0xfed6
                           00FED7   802 _PWMA_CCR2H	=	0xfed7
                           00FED8   803 _PWMA_CCR2L	=	0xfed8
                           00FED9   804 _PWMA_CCR3H	=	0xfed9
                           00FEDA   805 _PWMA_CCR3L	=	0xfeda
                           00FEDB   806 _PWMA_CCR4H	=	0xfedb
                           00FEDC   807 _PWMA_CCR4L	=	0xfedc
                           00FEDD   808 _PWMA_BKR	=	0xfedd
                           00FEDE   809 _PWMA_DTR	=	0xfede
                           00FEDF   810 _PWMA_OISR	=	0xfedf
                           00FEE0   811 _PWMB_CR1	=	0xfee0
                           00FEE1   812 _PWMB_CR2	=	0xfee1
                           00FEE2   813 _PWMB_SMCR	=	0xfee2
                           00FEE3   814 _PWMB_ETR	=	0xfee3
                           00FEE4   815 _PWMB_IER	=	0xfee4
                           00FEE5   816 _PWMB_SR1	=	0xfee5
                           00FEE6   817 _PWMB_SR2	=	0xfee6
                           00FEE7   818 _PWMB_EGR	=	0xfee7
                           00FEE8   819 _PWMB_CCMR1	=	0xfee8
                           00FEE9   820 _PWMB_CCMR2	=	0xfee9
                           00FEEA   821 _PWMB_CCMR3	=	0xfeea
                           00FEEB   822 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   823 _PWMB_CCER1	=	0xfeec
                           00FEED   824 _PWMB_CCER2	=	0xfeed
                           00FEEE   825 _PWMB_CNTRH	=	0xfeee
                           00FEEF   826 _PWMB_CNTRL	=	0xfeef
                           00FEF0   827 _PWMB_PSCRH	=	0xfef0
                           00FEF1   828 _PWMB_PSCRL	=	0xfef1
                           00FEF2   829 _PWMB_ARRH	=	0xfef2
                           00FEF3   830 _PWMB_ARRL	=	0xfef3
                           00FEF4   831 _PWMB_RCR	=	0xfef4
                           00FEF5   832 _PWMB_CCR1H	=	0xfef5
                           00FEF6   833 _PWMB_CCR1L	=	0xfef6
                           00FEF7   834 _PWMB_CCR2H	=	0xfef7
                           00FEF8   835 _PWMB_CCR2L	=	0xfef8
                           00FEF9   836 _PWMB_CCR3H	=	0xfef9
                           00FEFA   837 _PWMB_CCR3L	=	0xfefa
                           00FEFB   838 _PWMB_CCR4H	=	0xfefb
                           00FEFC   839 _PWMB_CCR4L	=	0xfefc
                           00FEFD   840 _PWMB_BKR	=	0xfefd
                           00FEFE   841 _PWMB_DTR	=	0xfefe
                           00FEFF   842 _PWMB_OISR	=	0xfeff
                           00FE60   843 _RTCCR	=	0xfe60
                           00FE61   844 _RTCCFG	=	0xfe61
                           00FE62   845 _RTCIEN	=	0xfe62
                           00FE63   846 _RTCIF	=	0xfe63
                           00FE64   847 _ALAHOUR	=	0xfe64
                           00FE65   848 _ALAMIN	=	0xfe65
                           00FE66   849 _ALASEC	=	0xfe66
                           00FE67   850 _ALASSEC	=	0xfe67
                           00FE68   851 _INIYEAR	=	0xfe68
                           00FE69   852 _INIMONTH	=	0xfe69
                           00FE6A   853 _INIDAY	=	0xfe6a
                           00FE6B   854 _INIHOUR	=	0xfe6b
                           00FE6C   855 _INIMIN	=	0xfe6c
                           00FE6D   856 _INISEC	=	0xfe6d
                           00FE6E   857 _INISSEC	=	0xfe6e
                           00FE70   858 _YEAR	=	0xfe70
                           00FE71   859 _MONTH	=	0xfe71
                           00FE72   860 _DAY	=	0xfe72
                           00FE73   861 _HOUR	=	0xfe73
                           00FE74   862 _MIN	=	0xfe74
                           00FE75   863 _SEC	=	0xfe75
                           00FE76   864 _SSEC	=	0xfe76
                           00FA20   865 _DMA_SPI_CFG	=	0xfa20
                           00FA21   866 _DMA_SPI_CR	=	0xfa21
                           00FA22   867 _DMA_SPI_STA	=	0xfa22
                           00FA23   868 _DMA_SPI_AMT	=	0xfa23
                           00FA24   869 _DMA_SPI_DONE	=	0xfa24
                           00FA25   870 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   871 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   872 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   873 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   874 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   875 _CLKDIV	=	0xfe01
                           00FE02   876 _HIRCCR	=	0xfe02
                           00FE03   877 _XOSCCR	=	0xfe03
                           00FE08   878 _X32KCR	=	0xfe08
                           00FE04   879 _IRC32KCR	=	0xfe04
                           00FE00   880 _CKSEL	=	0xfe00
                           00FE05   881 _MCLKOCR	=	0xfe05
                           00FE06   882 _IRCDB	=	0xfe06
                           00FE07   883 _IRC48MCR	=	0xfe07
                           00FEA2   884 _TM2PS	=	0xfea2
                           00FEA3   885 _TM3PS	=	0xfea3
                           00FEA4   886 _TM4PS	=	0xfea4
                           00FA30   887 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   888 _DMA_UR1T_CR	=	0xfa31
                           00FA32   889 _DMA_UR1T_STA	=	0xfa32
                           00FA33   890 _DMA_URTX_AMT	=	0xfa33
                           00FA34   891 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   892 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   893 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   894 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   895 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   896 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   897 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   898 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   899 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   900 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   901 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   902 _DMA_UR2T_CR	=	0xfa31
                           00FA32   903 _DMA_UR2T_STA	=	0xfa32
                           00FA33   904 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   905 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   906 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   907 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   908 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   909 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   910 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   911 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   912 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   913 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   914 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   915 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   916 _DMA_UR3T_CR	=	0xfa31
                           00FA32   917 _DMA_UR3T_STA	=	0xfa32
                           00FA33   918 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   919 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   920 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   921 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   922 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   923 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   924 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   925 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   926 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   927 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   928 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   929 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   930 _DMA_UR4T_CR	=	0xfa31
                           00FA32   931 _DMA_UR4T_STA	=	0xfa32
                           00FA33   932 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   933 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   934 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   935 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   936 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   937 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   938 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   939 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   940 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   941 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   942 _DMA_UR4R_TXAL	=	0xfa3e
      000040                        943 _uartGetCharacter_result_65536_69:
      000040                        944 	.ds 1
      000041                        945 _fifoClear_buffer_65536_131:
      000041                        946 	.ds 3
      000044                        947 _fifoIsFull_fifo_65536_133:
      000044                        948 	.ds 3
      000047                        949 _fifoBytesFree_fifo_65536_138:
      000047                        950 	.ds 3
                                    951 ;--------------------------------------------------------
                                    952 ; absolute external ram data
                                    953 ;--------------------------------------------------------
                                    954 	.area XABS    (ABS,XDATA)
                                    955 ;--------------------------------------------------------
                                    956 ; external initialized ram data
                                    957 ;--------------------------------------------------------
                                    958 	.area XISEG   (XDATA)
                                    959 	.area HOME    (CODE)
                                    960 	.area GSINIT0 (CODE)
                                    961 	.area GSINIT1 (CODE)
                                    962 	.area GSINIT2 (CODE)
                                    963 	.area GSINIT3 (CODE)
                                    964 	.area GSINIT4 (CODE)
                                    965 	.area GSINIT5 (CODE)
                                    966 	.area GSINIT  (CODE)
                                    967 	.area GSFINAL (CODE)
                                    968 	.area CSEG    (CODE)
                                    969 ;--------------------------------------------------------
                                    970 ; global & static initialisations
                                    971 ;--------------------------------------------------------
                                    972 	.area HOME    (CODE)
                                    973 	.area GSINIT  (CODE)
                                    974 	.area GSFINAL (CODE)
                                    975 	.area GSINIT  (CODE)
                                    976 ;--------------------------------------------------------
                                    977 ; Home
                                    978 ;--------------------------------------------------------
                                    979 	.area HOME    (CODE)
                                    980 	.area HOME    (CODE)
                                    981 ;--------------------------------------------------------
                                    982 ; code
                                    983 ;--------------------------------------------------------
                                    984 	.area CSEG    (CODE)
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'fifoClear'
                                    987 ;------------------------------------------------------------
                                    988 ;buffer                    Allocated with name '_fifoClear_buffer_65536_131'
                                    989 ;------------------------------------------------------------
                                    990 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:39: void fifoClear(FifoState *buffer) {
                                    991 ;	-----------------------------------------
                                    992 ;	 function fifoClear
                                    993 ;	-----------------------------------------
      000C73                        994 _fifoClear:
                           000007   995 	ar7 = 0x07
                           000006   996 	ar6 = 0x06
                           000005   997 	ar5 = 0x05
                           000004   998 	ar4 = 0x04
                           000003   999 	ar3 = 0x03
                           000002  1000 	ar2 = 0x02
                           000001  1001 	ar1 = 0x01
                           000000  1002 	ar0 = 0x00
      000C73 AF F0            [24] 1003 	mov	r7,b
      000C75 AE 83            [24] 1004 	mov	r6,dph
      000C77 E5 82            [12] 1005 	mov	a,dpl
      000C79 90 00 41         [24] 1006 	mov	dptr,#_fifoClear_buffer_65536_131
      000C7C F0               [24] 1007 	movx	@dptr,a
      000C7D EE               [12] 1008 	mov	a,r6
      000C7E A3               [24] 1009 	inc	dptr
      000C7F F0               [24] 1010 	movx	@dptr,a
      000C80 EF               [12] 1011 	mov	a,r7
      000C81 A3               [24] 1012 	inc	dptr
      000C82 F0               [24] 1013 	movx	@dptr,a
                                   1014 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:40: buffer->length = 0;
      000C83 90 00 41         [24] 1015 	mov	dptr,#_fifoClear_buffer_65536_131
      000C86 E0               [24] 1016 	movx	a,@dptr
      000C87 FD               [12] 1017 	mov	r5,a
      000C88 A3               [24] 1018 	inc	dptr
      000C89 E0               [24] 1019 	movx	a,@dptr
      000C8A FE               [12] 1020 	mov	r6,a
      000C8B A3               [24] 1021 	inc	dptr
      000C8C E0               [24] 1022 	movx	a,@dptr
      000C8D FF               [12] 1023 	mov	r7,a
      000C8E 74 01            [12] 1024 	mov	a,#0x01
      000C90 2D               [12] 1025 	add	a,r5
      000C91 FA               [12] 1026 	mov	r2,a
      000C92 E4               [12] 1027 	clr	a
      000C93 3E               [12] 1028 	addc	a,r6
      000C94 FB               [12] 1029 	mov	r3,a
      000C95 8F 04            [24] 1030 	mov	ar4,r7
      000C97 8A 82            [24] 1031 	mov	dpl,r2
      000C99 8B 83            [24] 1032 	mov	dph,r3
      000C9B 8C F0            [24] 1033 	mov	b,r4
      000C9D E4               [12] 1034 	clr	a
      000C9E 12 3D DF         [24] 1035 	lcall	__gptrput
                                   1036 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:41: buffer->rIndex = 0;
      000CA1 74 02            [12] 1037 	mov	a,#0x02
      000CA3 2D               [12] 1038 	add	a,r5
      000CA4 FA               [12] 1039 	mov	r2,a
      000CA5 E4               [12] 1040 	clr	a
      000CA6 3E               [12] 1041 	addc	a,r6
      000CA7 FB               [12] 1042 	mov	r3,a
      000CA8 8F 04            [24] 1043 	mov	ar4,r7
      000CAA 8A 82            [24] 1044 	mov	dpl,r2
      000CAC 8B 83            [24] 1045 	mov	dph,r3
      000CAE 8C F0            [24] 1046 	mov	b,r4
      000CB0 E4               [12] 1047 	clr	a
      000CB1 12 3D DF         [24] 1048 	lcall	__gptrput
                                   1049 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:42: buffer->wIndex = 0;
      000CB4 74 03            [12] 1050 	mov	a,#0x03
      000CB6 2D               [12] 1051 	add	a,r5
      000CB7 FA               [12] 1052 	mov	r2,a
      000CB8 E4               [12] 1053 	clr	a
      000CB9 3E               [12] 1054 	addc	a,r6
      000CBA FB               [12] 1055 	mov	r3,a
      000CBB 8F 04            [24] 1056 	mov	ar4,r7
      000CBD 8A 82            [24] 1057 	mov	dpl,r2
      000CBF 8B 83            [24] 1058 	mov	dph,r3
      000CC1 8C F0            [24] 1059 	mov	b,r4
      000CC3 E4               [12] 1060 	clr	a
      000CC4 12 3D DF         [24] 1061 	lcall	__gptrput
                                   1062 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:43: buffer->status = 0;
      000CC7 74 04            [12] 1063 	mov	a,#0x04
      000CC9 2D               [12] 1064 	add	a,r5
      000CCA FD               [12] 1065 	mov	r5,a
      000CCB E4               [12] 1066 	clr	a
      000CCC 3E               [12] 1067 	addc	a,r6
      000CCD FE               [12] 1068 	mov	r6,a
      000CCE 8D 82            [24] 1069 	mov	dpl,r5
      000CD0 8E 83            [24] 1070 	mov	dph,r6
      000CD2 8F F0            [24] 1071 	mov	b,r7
      000CD4 E4               [12] 1072 	clr	a
                                   1073 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:44: }
      000CD5 02 3D DF         [24] 1074 	ljmp	__gptrput
                                   1075 ;------------------------------------------------------------
                                   1076 ;Allocation info for local variables in function 'fifoIsFull'
                                   1077 ;------------------------------------------------------------
                                   1078 ;fifo                      Allocated with name '_fifoIsFull_fifo_65536_133'
                                   1079 ;__1310720008              Allocated with name '_fifoIsFull___1310720008_131072_134'
                                   1080 ;__1310720009              Allocated with name '_fifoIsFull___1310720009_131072_135'
                                   1081 ;buffer                    Allocated with name '_fifoIsFull_buffer_196608_136'
                                   1082 ;------------------------------------------------------------
                                   1083 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:46: bool fifoIsFull(FifoState *fifo) {
                                   1084 ;	-----------------------------------------
                                   1085 ;	 function fifoIsFull
                                   1086 ;	-----------------------------------------
      000CD8                       1087 _fifoIsFull:
      000CD8 AF F0            [24] 1088 	mov	r7,b
      000CDA AE 83            [24] 1089 	mov	r6,dph
      000CDC E5 82            [12] 1090 	mov	a,dpl
      000CDE 90 00 44         [24] 1091 	mov	dptr,#_fifoIsFull_fifo_65536_133
      000CE1 F0               [24] 1092 	movx	@dptr,a
      000CE2 EE               [12] 1093 	mov	a,r6
      000CE3 A3               [24] 1094 	inc	dptr
      000CE4 F0               [24] 1095 	movx	@dptr,a
      000CE5 EF               [12] 1096 	mov	a,r7
      000CE6 A3               [24] 1097 	inc	dptr
      000CE7 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      000CE8 90 00 44         [24] 1100 	mov	dptr,#_fifoIsFull_fifo_65536_133
      000CEB E0               [24] 1101 	movx	a,@dptr
      000CEC FD               [12] 1102 	mov	r5,a
      000CED A3               [24] 1103 	inc	dptr
      000CEE E0               [24] 1104 	movx	a,@dptr
      000CEF FE               [12] 1105 	mov	r6,a
      000CF0 A3               [24] 1106 	inc	dptr
      000CF1 E0               [24] 1107 	movx	a,@dptr
      000CF2 FF               [12] 1108 	mov	r7,a
                                   1109 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      000CF3 74 01            [12] 1110 	mov	a,#0x01
      000CF5 2D               [12] 1111 	add	a,r5
      000CF6 FA               [12] 1112 	mov	r2,a
      000CF7 E4               [12] 1113 	clr	a
      000CF8 3E               [12] 1114 	addc	a,r6
      000CF9 FB               [12] 1115 	mov	r3,a
      000CFA 8F 04            [24] 1116 	mov	ar4,r7
      000CFC 8A 82            [24] 1117 	mov	dpl,r2
      000CFE 8B 83            [24] 1118 	mov	dph,r3
      000D00 8C F0            [24] 1119 	mov	b,r4
      000D02 12 4A 06         [24] 1120 	lcall	__gptrget
      000D05 FA               [12] 1121 	mov	r2,a
                                   1122 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      000D06 8D 82            [24] 1123 	mov	dpl,r5
      000D08 8E 83            [24] 1124 	mov	dph,r6
      000D0A 8F F0            [24] 1125 	mov	b,r7
      000D0C 12 4A 06         [24] 1126 	lcall	__gptrget
      000D0F FD               [12] 1127 	mov	r5,a
      000D10 EA               [12] 1128 	mov	a,r2
      000D11 B5 05 04         [24] 1129 	cjne	a,ar5,00104$
      000D14 74 01            [12] 1130 	mov	a,#0x01
      000D16 80 01            [24] 1131 	sjmp	00105$
      000D18                       1132 00104$:
      000D18 E4               [12] 1133 	clr	a
      000D19                       1134 00105$:
                                   1135 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:48: }
      000D19 F5 82            [12] 1136 	mov	dpl,a
      000D1B 22               [24] 1137 	ret
                                   1138 ;------------------------------------------------------------
                                   1139 ;Allocation info for local variables in function 'fifoBytesFree'
                                   1140 ;------------------------------------------------------------
                                   1141 ;fifo                      Allocated with name '_fifoBytesFree_fifo_65536_138'
                                   1142 ;__1310720011              Allocated with name '_fifoBytesFree___1310720011_131072_139'
                                   1143 ;__1310720012              Allocated with name '_fifoBytesFree___1310720012_131072_140'
                                   1144 ;buffer                    Allocated with name '_fifoBytesFree_buffer_196608_141'
                                   1145 ;------------------------------------------------------------
                                   1146 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:50: uint8_t fifoBytesFree(FifoState *fifo) {
                                   1147 ;	-----------------------------------------
                                   1148 ;	 function fifoBytesFree
                                   1149 ;	-----------------------------------------
      000D1C                       1150 _fifoBytesFree:
      000D1C AF F0            [24] 1151 	mov	r7,b
      000D1E AE 83            [24] 1152 	mov	r6,dph
      000D20 E5 82            [12] 1153 	mov	a,dpl
      000D22 90 00 47         [24] 1154 	mov	dptr,#_fifoBytesFree_fifo_65536_138
      000D25 F0               [24] 1155 	movx	@dptr,a
      000D26 EE               [12] 1156 	mov	a,r6
      000D27 A3               [24] 1157 	inc	dptr
      000D28 F0               [24] 1158 	movx	@dptr,a
      000D29 EF               [12] 1159 	mov	a,r7
      000D2A A3               [24] 1160 	inc	dptr
      000D2B F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      000D2C 90 00 47         [24] 1163 	mov	dptr,#_fifoBytesFree_fifo_65536_138
      000D2F E0               [24] 1164 	movx	a,@dptr
      000D30 FD               [12] 1165 	mov	r5,a
      000D31 A3               [24] 1166 	inc	dptr
      000D32 E0               [24] 1167 	movx	a,@dptr
      000D33 FE               [12] 1168 	mov	r6,a
      000D34 A3               [24] 1169 	inc	dptr
      000D35 E0               [24] 1170 	movx	a,@dptr
      000D36 FF               [12] 1171 	mov	r7,a
      000D37 8D 82            [24] 1172 	mov	dpl,r5
      000D39 8E 83            [24] 1173 	mov	dph,r6
      000D3B 8F F0            [24] 1174 	mov	b,r7
      000D3D 12 4A 06         [24] 1175 	lcall	__gptrget
      000D40 FC               [12] 1176 	mov	r4,a
                                   1177 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      000D41 0D               [12] 1178 	inc	r5
      000D42 BD 00 01         [24] 1179 	cjne	r5,#0x00,00104$
      000D45 0E               [12] 1180 	inc	r6
      000D46                       1181 00104$:
      000D46 8D 82            [24] 1182 	mov	dpl,r5
      000D48 8E 83            [24] 1183 	mov	dph,r6
      000D4A 8F F0            [24] 1184 	mov	b,r7
      000D4C 12 4A 06         [24] 1185 	lcall	__gptrget
      000D4F FD               [12] 1186 	mov	r5,a
                                   1187 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      000D50 EC               [12] 1188 	mov	a,r4
      000D51 C3               [12] 1189 	clr	c
      000D52 9D               [12] 1190 	subb	a,r5
                                   1191 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:52: }
      000D53 F5 82            [12] 1192 	mov	dpl,a
      000D55 22               [24] 1193 	ret
                                   1194 ;------------------------------------------------------------
                                   1195 ;Allocation info for local variables in function 'fifoWrite'
                                   1196 ;------------------------------------------------------------
                                   1197 ;data                      Allocated to stack - _bp -5
                                   1198 ;count                     Allocated to stack - _bp -6
                                   1199 ;buffer                    Allocated to stack - _bp +1
                                   1200 ;rc                        Allocated to registers r4 
                                   1201 ;wIndex                    Allocated to stack - _bp +10
                                   1202 ;n                         Allocated to stack - _bp +11
                                   1203 ;sloc0                     Allocated to stack - _bp +4
                                   1204 ;sloc1                     Allocated to stack - _bp +7
                                   1205 ;------------------------------------------------------------
                                   1206 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:64: bool fifoWrite(FifoState *buffer, const void *data, uint8_t count) REENTRANT {
                                   1207 ;	-----------------------------------------
                                   1208 ;	 function fifoWrite
                                   1209 ;	-----------------------------------------
      000D56                       1210 _fifoWrite:
      000D56 C0 19            [24] 1211 	push	_bp
      000D58 85 81 19         [24] 1212 	mov	_bp,sp
      000D5B C0 82            [24] 1213 	push	dpl
      000D5D C0 83            [24] 1214 	push	dph
      000D5F C0 F0            [24] 1215 	push	b
      000D61 E5 81            [12] 1216 	mov	a,sp
      000D63 24 08            [12] 1217 	add	a,#0x08
      000D65 F5 81            [12] 1218 	mov	sp,a
                                   1219 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:65: bool rc = fifoBytesFree(buffer) >= count;
      000D67 A8 19            [24] 1220 	mov	r0,_bp
      000D69 08               [12] 1221 	inc	r0
      000D6A 86 82            [24] 1222 	mov	dpl,@r0
      000D6C 08               [12] 1223 	inc	r0
      000D6D 86 83            [24] 1224 	mov	dph,@r0
      000D6F 08               [12] 1225 	inc	r0
      000D70 86 F0            [24] 1226 	mov	b,@r0
      000D72 12 0D 1C         [24] 1227 	lcall	_fifoBytesFree
      000D75 AC 82            [24] 1228 	mov	r4,dpl
      000D77 E5 19            [12] 1229 	mov	a,_bp
      000D79 24 FA            [12] 1230 	add	a,#0xfa
      000D7B F8               [12] 1231 	mov	r0,a
      000D7C C3               [12] 1232 	clr	c
      000D7D EC               [12] 1233 	mov	a,r4
      000D7E 96               [12] 1234 	subb	a,@r0
      000D7F B3               [12] 1235 	cpl	c
      000D80 92 00            [24] 1236 	mov	b0,c
      000D82 E4               [12] 1237 	clr	a
      000D83 33               [12] 1238 	rlc	a
      000D84 FC               [12] 1239 	mov	r4,a
                                   1240 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:67: if (rc) {
      000D85 20 00 03         [24] 1241 	jb	b0,00128$
      000D88 02 0E B0         [24] 1242 	ljmp	00105$
      000D8B                       1243 00128$:
                                   1244 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:68: uint8_t wIndex = buffer->wIndex;
      000D8B A8 19            [24] 1245 	mov	r0,_bp
      000D8D 08               [12] 1246 	inc	r0
      000D8E E5 19            [12] 1247 	mov	a,_bp
      000D90 24 04            [12] 1248 	add	a,#0x04
      000D92 F9               [12] 1249 	mov	r1,a
      000D93 74 03            [12] 1250 	mov	a,#0x03
      000D95 26               [12] 1251 	add	a,@r0
      000D96 F7               [12] 1252 	mov	@r1,a
      000D97 E4               [12] 1253 	clr	a
      000D98 08               [12] 1254 	inc	r0
      000D99 36               [12] 1255 	addc	a,@r0
      000D9A 09               [12] 1256 	inc	r1
      000D9B F7               [12] 1257 	mov	@r1,a
      000D9C 08               [12] 1258 	inc	r0
      000D9D 09               [12] 1259 	inc	r1
      000D9E E6               [12] 1260 	mov	a,@r0
      000D9F F7               [12] 1261 	mov	@r1,a
      000DA0 E5 19            [12] 1262 	mov	a,_bp
      000DA2 24 04            [12] 1263 	add	a,#0x04
      000DA4 F8               [12] 1264 	mov	r0,a
      000DA5 86 82            [24] 1265 	mov	dpl,@r0
      000DA7 08               [12] 1266 	inc	r0
      000DA8 86 83            [24] 1267 	mov	dph,@r0
      000DAA 08               [12] 1268 	inc	r0
      000DAB 86 F0            [24] 1269 	mov	b,@r0
      000DAD E5 19            [12] 1270 	mov	a,_bp
      000DAF 24 0A            [12] 1271 	add	a,#0x0a
      000DB1 F9               [12] 1272 	mov	r1,a
      000DB2 12 4A 06         [24] 1273 	lcall	__gptrget
      000DB5 F7               [12] 1274 	mov	@r1,a
                                   1275 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      000DB6 A8 19            [24] 1276 	mov	r0,_bp
      000DB8 08               [12] 1277 	inc	r0
      000DB9 E5 19            [12] 1278 	mov	a,_bp
      000DBB 24 07            [12] 1279 	add	a,#0x07
      000DBD F9               [12] 1280 	mov	r1,a
      000DBE 74 05            [12] 1281 	mov	a,#0x05
      000DC0 26               [12] 1282 	add	a,@r0
      000DC1 F7               [12] 1283 	mov	@r1,a
      000DC2 E4               [12] 1284 	clr	a
      000DC3 08               [12] 1285 	inc	r0
      000DC4 36               [12] 1286 	addc	a,@r0
      000DC5 09               [12] 1287 	inc	r1
      000DC6 F7               [12] 1288 	mov	@r1,a
      000DC7 08               [12] 1289 	inc	r0
      000DC8 09               [12] 1290 	inc	r1
      000DC9 E6               [12] 1291 	mov	a,@r0
      000DCA F7               [12] 1292 	mov	@r1,a
      000DCB E5 19            [12] 1293 	mov	a,_bp
      000DCD 24 0B            [12] 1294 	add	a,#0x0b
      000DCF F8               [12] 1295 	mov	r0,a
      000DD0 76 00            [12] 1296 	mov	@r0,#0x00
      000DD2                       1297 00107$:
      000DD2 E5 19            [12] 1298 	mov	a,_bp
      000DD4 24 0B            [12] 1299 	add	a,#0x0b
      000DD6 F8               [12] 1300 	mov	r0,a
      000DD7 E5 19            [12] 1301 	mov	a,_bp
      000DD9 24 FA            [12] 1302 	add	a,#0xfa
      000DDB F9               [12] 1303 	mov	r1,a
      000DDC C3               [12] 1304 	clr	c
      000DDD E6               [12] 1305 	mov	a,@r0
      000DDE 97               [12] 1306 	subb	a,@r1
      000DDF 40 03            [24] 1307 	jc	00129$
      000DE1 02 0E 71         [24] 1308 	ljmp	00103$
      000DE4                       1309 00129$:
                                   1310 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:71: if (wIndex == buffer->size) {
      000DE4 C0 04            [24] 1311 	push	ar4
      000DE6 A8 19            [24] 1312 	mov	r0,_bp
      000DE8 08               [12] 1313 	inc	r0
      000DE9 86 82            [24] 1314 	mov	dpl,@r0
      000DEB 08               [12] 1315 	inc	r0
      000DEC 86 83            [24] 1316 	mov	dph,@r0
      000DEE 08               [12] 1317 	inc	r0
      000DEF 86 F0            [24] 1318 	mov	b,@r0
      000DF1 12 4A 06         [24] 1319 	lcall	__gptrget
      000DF4 FC               [12] 1320 	mov	r4,a
      000DF5 E5 19            [12] 1321 	mov	a,_bp
      000DF7 24 0A            [12] 1322 	add	a,#0x0a
      000DF9 F8               [12] 1323 	mov	r0,a
      000DFA E6               [12] 1324 	mov	a,@r0
      000DFB B5 04 02         [24] 1325 	cjne	a,ar4,00130$
      000DFE 80 04            [24] 1326 	sjmp	00131$
      000E00                       1327 00130$:
      000E00 D0 04            [24] 1328 	pop	ar4
      000E02 80 09            [24] 1329 	sjmp	00102$
      000E04                       1330 00131$:
      000E04 D0 04            [24] 1331 	pop	ar4
                                   1332 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:72: wIndex = 0;
      000E06 E5 19            [12] 1333 	mov	a,_bp
      000E08 24 0A            [12] 1334 	add	a,#0x0a
      000E0A F8               [12] 1335 	mov	r0,a
      000E0B 76 00            [12] 1336 	mov	@r0,#0x00
      000E0D                       1337 00102$:
                                   1338 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:75: buffer->data[wIndex] = ((const uint8_t *) data)[n];
      000E0D C0 04            [24] 1339 	push	ar4
      000E0F E5 19            [12] 1340 	mov	a,_bp
      000E11 24 07            [12] 1341 	add	a,#0x07
      000E13 F8               [12] 1342 	mov	r0,a
      000E14 86 82            [24] 1343 	mov	dpl,@r0
      000E16 08               [12] 1344 	inc	r0
      000E17 86 83            [24] 1345 	mov	dph,@r0
      000E19 08               [12] 1346 	inc	r0
      000E1A 86 F0            [24] 1347 	mov	b,@r0
      000E1C 12 4A 06         [24] 1348 	lcall	__gptrget
      000E1F FA               [12] 1349 	mov	r2,a
      000E20 A3               [24] 1350 	inc	dptr
      000E21 12 4A 06         [24] 1351 	lcall	__gptrget
      000E24 FB               [12] 1352 	mov	r3,a
      000E25 A3               [24] 1353 	inc	dptr
      000E26 12 4A 06         [24] 1354 	lcall	__gptrget
      000E29 FC               [12] 1355 	mov	r4,a
      000E2A E5 19            [12] 1356 	mov	a,_bp
      000E2C 24 0A            [12] 1357 	add	a,#0x0a
      000E2E F8               [12] 1358 	mov	r0,a
      000E2F E6               [12] 1359 	mov	a,@r0
      000E30 2A               [12] 1360 	add	a,r2
      000E31 FA               [12] 1361 	mov	r2,a
      000E32 E4               [12] 1362 	clr	a
      000E33 3B               [12] 1363 	addc	a,r3
      000E34 FB               [12] 1364 	mov	r3,a
      000E35 E5 19            [12] 1365 	mov	a,_bp
      000E37 24 FB            [12] 1366 	add	a,#0xfb
      000E39 F8               [12] 1367 	mov	r0,a
      000E3A 86 05            [24] 1368 	mov	ar5,@r0
      000E3C 08               [12] 1369 	inc	r0
      000E3D 86 06            [24] 1370 	mov	ar6,@r0
      000E3F 08               [12] 1371 	inc	r0
      000E40 86 07            [24] 1372 	mov	ar7,@r0
      000E42 E5 19            [12] 1373 	mov	a,_bp
      000E44 24 0B            [12] 1374 	add	a,#0x0b
      000E46 F8               [12] 1375 	mov	r0,a
      000E47 E6               [12] 1376 	mov	a,@r0
      000E48 2D               [12] 1377 	add	a,r5
      000E49 FD               [12] 1378 	mov	r5,a
      000E4A E4               [12] 1379 	clr	a
      000E4B 3E               [12] 1380 	addc	a,r6
      000E4C FE               [12] 1381 	mov	r6,a
      000E4D 8D 82            [24] 1382 	mov	dpl,r5
      000E4F 8E 83            [24] 1383 	mov	dph,r6
      000E51 8F F0            [24] 1384 	mov	b,r7
      000E53 12 4A 06         [24] 1385 	lcall	__gptrget
      000E56 FD               [12] 1386 	mov	r5,a
      000E57 8A 82            [24] 1387 	mov	dpl,r2
      000E59 8B 83            [24] 1388 	mov	dph,r3
      000E5B 8C F0            [24] 1389 	mov	b,r4
      000E5D 12 3D DF         [24] 1390 	lcall	__gptrput
                                   1391 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:76: wIndex++;
      000E60 E5 19            [12] 1392 	mov	a,_bp
      000E62 24 0A            [12] 1393 	add	a,#0x0a
      000E64 F8               [12] 1394 	mov	r0,a
      000E65 06               [12] 1395 	inc	@r0
                                   1396 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      000E66 E5 19            [12] 1397 	mov	a,_bp
      000E68 24 0B            [12] 1398 	add	a,#0x0b
      000E6A F8               [12] 1399 	mov	r0,a
      000E6B 06               [12] 1400 	inc	@r0
      000E6C D0 04            [24] 1401 	pop	ar4
      000E6E 02 0D D2         [24] 1402 	ljmp	00107$
      000E71                       1403 00103$:
                                   1404 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:79: buffer->wIndex = wIndex;
      000E71 E5 19            [12] 1405 	mov	a,_bp
      000E73 24 04            [12] 1406 	add	a,#0x04
      000E75 F8               [12] 1407 	mov	r0,a
      000E76 86 82            [24] 1408 	mov	dpl,@r0
      000E78 08               [12] 1409 	inc	r0
      000E79 86 83            [24] 1410 	mov	dph,@r0
      000E7B 08               [12] 1411 	inc	r0
      000E7C 86 F0            [24] 1412 	mov	b,@r0
      000E7E E5 19            [12] 1413 	mov	a,_bp
      000E80 24 0A            [12] 1414 	add	a,#0x0a
      000E82 F9               [12] 1415 	mov	r1,a
      000E83 E7               [12] 1416 	mov	a,@r1
      000E84 12 3D DF         [24] 1417 	lcall	__gptrput
                                   1418 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:80: buffer->length += count;
      000E87 A8 19            [24] 1419 	mov	r0,_bp
      000E89 08               [12] 1420 	inc	r0
      000E8A 74 01            [12] 1421 	mov	a,#0x01
      000E8C 26               [12] 1422 	add	a,@r0
      000E8D FD               [12] 1423 	mov	r5,a
      000E8E E4               [12] 1424 	clr	a
      000E8F 08               [12] 1425 	inc	r0
      000E90 36               [12] 1426 	addc	a,@r0
      000E91 FE               [12] 1427 	mov	r6,a
      000E92 08               [12] 1428 	inc	r0
      000E93 86 07            [24] 1429 	mov	ar7,@r0
      000E95 8D 82            [24] 1430 	mov	dpl,r5
      000E97 8E 83            [24] 1431 	mov	dph,r6
      000E99 8F F0            [24] 1432 	mov	b,r7
      000E9B 12 4A 06         [24] 1433 	lcall	__gptrget
      000E9E FB               [12] 1434 	mov	r3,a
      000E9F E5 19            [12] 1435 	mov	a,_bp
      000EA1 24 FA            [12] 1436 	add	a,#0xfa
      000EA3 F8               [12] 1437 	mov	r0,a
      000EA4 E6               [12] 1438 	mov	a,@r0
      000EA5 2B               [12] 1439 	add	a,r3
      000EA6 FB               [12] 1440 	mov	r3,a
      000EA7 8D 82            [24] 1441 	mov	dpl,r5
      000EA9 8E 83            [24] 1442 	mov	dph,r6
      000EAB 8F F0            [24] 1443 	mov	b,r7
      000EAD 12 3D DF         [24] 1444 	lcall	__gptrput
      000EB0                       1445 00105$:
                                   1446 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:83: return rc;
      000EB0 8C 82            [24] 1447 	mov	dpl,r4
                                   1448 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:84: }
      000EB2 85 19 81         [24] 1449 	mov	sp,_bp
      000EB5 D0 19            [24] 1450 	pop	_bp
      000EB7 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'fifoRead'
                                   1454 ;------------------------------------------------------------
                                   1455 ;data                      Allocated to stack - _bp -5
                                   1456 ;count                     Allocated to stack - _bp -6
                                   1457 ;buffer                    Allocated to stack - _bp +1
                                   1458 ;__1310720014              Allocated to registers r7 
                                   1459 ;rc                        Allocated to stack - _bp +4
                                   1460 ;__1310720015              Allocated to registers 
                                   1461 ;buffer                    Allocated to registers 
                                   1462 ;rIndex                    Allocated to stack - _bp +11
                                   1463 ;n                         Allocated to stack - _bp +12
                                   1464 ;sloc0                     Allocated to stack - _bp +4
                                   1465 ;sloc1                     Allocated to stack - _bp +5
                                   1466 ;sloc2                     Allocated to stack - _bp +8
                                   1467 ;------------------------------------------------------------
                                   1468 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:86: bool fifoRead(FifoState *buffer, void *data, uint8_t count) REENTRANT {
                                   1469 ;	-----------------------------------------
                                   1470 ;	 function fifoRead
                                   1471 ;	-----------------------------------------
      000EB8                       1472 _fifoRead:
      000EB8 C0 19            [24] 1473 	push	_bp
      000EBA 85 81 19         [24] 1474 	mov	_bp,sp
      000EBD C0 82            [24] 1475 	push	dpl
      000EBF C0 83            [24] 1476 	push	dph
      000EC1 C0 F0            [24] 1477 	push	b
      000EC3 E5 81            [12] 1478 	mov	a,sp
      000EC5 24 09            [12] 1479 	add	a,#0x09
      000EC7 F5 81            [12] 1480 	mov	sp,a
                                   1481 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:87: bool rc = fifoLength(buffer) >= count;
      000EC9 A8 19            [24] 1482 	mov	r0,_bp
      000ECB 08               [12] 1483 	inc	r0
      000ECC 74 01            [12] 1484 	mov	a,#0x01
      000ECE 26               [12] 1485 	add	a,@r0
      000ECF FA               [12] 1486 	mov	r2,a
      000ED0 E4               [12] 1487 	clr	a
      000ED1 08               [12] 1488 	inc	r0
      000ED2 36               [12] 1489 	addc	a,@r0
      000ED3 FB               [12] 1490 	mov	r3,a
      000ED4 08               [12] 1491 	inc	r0
      000ED5 86 04            [24] 1492 	mov	ar4,@r0
      000ED7 8A 82            [24] 1493 	mov	dpl,r2
      000ED9 8B 83            [24] 1494 	mov	dph,r3
      000EDB 8C F0            [24] 1495 	mov	b,r4
      000EDD 12 4A 06         [24] 1496 	lcall	__gptrget
      000EE0 FF               [12] 1497 	mov	r7,a
      000EE1 E5 19            [12] 1498 	mov	a,_bp
      000EE3 24 FA            [12] 1499 	add	a,#0xfa
      000EE5 F8               [12] 1500 	mov	r0,a
      000EE6 C3               [12] 1501 	clr	c
      000EE7 EF               [12] 1502 	mov	a,r7
      000EE8 96               [12] 1503 	subb	a,@r0
      000EE9 B3               [12] 1504 	cpl	c
      000EEA 92 00            [24] 1505 	mov	b0,c
      000EEC E5 19            [12] 1506 	mov	a,_bp
      000EEE 24 04            [12] 1507 	add	a,#0x04
      000EF0 F8               [12] 1508 	mov	r0,a
      000EF1 A2 00            [12] 1509 	mov	c,b0
      000EF3 E4               [12] 1510 	clr	a
      000EF4 33               [12] 1511 	rlc	a
      000EF5 F6               [12] 1512 	mov	@r0,a
                                   1513 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:89: if (rc) {
      000EF6 20 00 03         [24] 1514 	jb	b0,00129$
      000EF9 02 10 11         [24] 1515 	ljmp	00105$
      000EFC                       1516 00129$:
                                   1517 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:90: uint8_t rIndex = buffer->rIndex;
      000EFC A8 19            [24] 1518 	mov	r0,_bp
      000EFE 08               [12] 1519 	inc	r0
      000EFF E5 19            [12] 1520 	mov	a,_bp
      000F01 24 05            [12] 1521 	add	a,#0x05
      000F03 F9               [12] 1522 	mov	r1,a
      000F04 74 02            [12] 1523 	mov	a,#0x02
      000F06 26               [12] 1524 	add	a,@r0
      000F07 F7               [12] 1525 	mov	@r1,a
      000F08 E4               [12] 1526 	clr	a
      000F09 08               [12] 1527 	inc	r0
      000F0A 36               [12] 1528 	addc	a,@r0
      000F0B 09               [12] 1529 	inc	r1
      000F0C F7               [12] 1530 	mov	@r1,a
      000F0D 08               [12] 1531 	inc	r0
      000F0E 09               [12] 1532 	inc	r1
      000F0F E6               [12] 1533 	mov	a,@r0
      000F10 F7               [12] 1534 	mov	@r1,a
      000F11 E5 19            [12] 1535 	mov	a,_bp
      000F13 24 05            [12] 1536 	add	a,#0x05
      000F15 F8               [12] 1537 	mov	r0,a
      000F16 86 82            [24] 1538 	mov	dpl,@r0
      000F18 08               [12] 1539 	inc	r0
      000F19 86 83            [24] 1540 	mov	dph,@r0
      000F1B 08               [12] 1541 	inc	r0
      000F1C 86 F0            [24] 1542 	mov	b,@r0
      000F1E E5 19            [12] 1543 	mov	a,_bp
      000F20 24 0B            [12] 1544 	add	a,#0x0b
      000F22 F9               [12] 1545 	mov	r1,a
      000F23 12 4A 06         [24] 1546 	lcall	__gptrget
      000F26 F7               [12] 1547 	mov	@r1,a
                                   1548 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      000F27 A8 19            [24] 1549 	mov	r0,_bp
      000F29 08               [12] 1550 	inc	r0
      000F2A E5 19            [12] 1551 	mov	a,_bp
      000F2C 24 08            [12] 1552 	add	a,#0x08
      000F2E F9               [12] 1553 	mov	r1,a
      000F2F 74 05            [12] 1554 	mov	a,#0x05
      000F31 26               [12] 1555 	add	a,@r0
      000F32 F7               [12] 1556 	mov	@r1,a
      000F33 E4               [12] 1557 	clr	a
      000F34 08               [12] 1558 	inc	r0
      000F35 36               [12] 1559 	addc	a,@r0
      000F36 09               [12] 1560 	inc	r1
      000F37 F7               [12] 1561 	mov	@r1,a
      000F38 08               [12] 1562 	inc	r0
      000F39 09               [12] 1563 	inc	r1
      000F3A E6               [12] 1564 	mov	a,@r0
      000F3B F7               [12] 1565 	mov	@r1,a
      000F3C E5 19            [12] 1566 	mov	a,_bp
      000F3E 24 0C            [12] 1567 	add	a,#0x0c
      000F40 F8               [12] 1568 	mov	r0,a
      000F41 76 00            [12] 1569 	mov	@r0,#0x00
      000F43                       1570 00108$:
      000F43 E5 19            [12] 1571 	mov	a,_bp
      000F45 24 0C            [12] 1572 	add	a,#0x0c
      000F47 F8               [12] 1573 	mov	r0,a
      000F48 E5 19            [12] 1574 	mov	a,_bp
      000F4A 24 FA            [12] 1575 	add	a,#0xfa
      000F4C F9               [12] 1576 	mov	r1,a
      000F4D C3               [12] 1577 	clr	c
      000F4E E6               [12] 1578 	mov	a,@r0
      000F4F 97               [12] 1579 	subb	a,@r1
      000F50 40 03            [24] 1580 	jc	00130$
      000F52 02 0F DF         [24] 1581 	ljmp	00103$
      000F55                       1582 00130$:
                                   1583 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:93: if (rIndex == buffer->size) {
      000F55 A8 19            [24] 1584 	mov	r0,_bp
      000F57 08               [12] 1585 	inc	r0
      000F58 86 82            [24] 1586 	mov	dpl,@r0
      000F5A 08               [12] 1587 	inc	r0
      000F5B 86 83            [24] 1588 	mov	dph,@r0
      000F5D 08               [12] 1589 	inc	r0
      000F5E 86 F0            [24] 1590 	mov	b,@r0
      000F60 12 4A 06         [24] 1591 	lcall	__gptrget
      000F63 FD               [12] 1592 	mov	r5,a
      000F64 E5 19            [12] 1593 	mov	a,_bp
      000F66 24 0B            [12] 1594 	add	a,#0x0b
      000F68 F8               [12] 1595 	mov	r0,a
      000F69 E6               [12] 1596 	mov	a,@r0
      000F6A B5 05 07         [24] 1597 	cjne	a,ar5,00102$
                                   1598 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:94: rIndex = 0;
      000F6D E5 19            [12] 1599 	mov	a,_bp
      000F6F 24 0B            [12] 1600 	add	a,#0x0b
      000F71 F8               [12] 1601 	mov	r0,a
      000F72 76 00            [12] 1602 	mov	@r0,#0x00
      000F74                       1603 00102$:
                                   1604 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:98: ((uint8_t *) data)[n] = buffer->data[rIndex];
      000F74 C0 02            [24] 1605 	push	ar2
      000F76 C0 03            [24] 1606 	push	ar3
      000F78 C0 04            [24] 1607 	push	ar4
      000F7A E5 19            [12] 1608 	mov	a,_bp
      000F7C 24 FB            [12] 1609 	add	a,#0xfb
      000F7E F8               [12] 1610 	mov	r0,a
      000F7F 86 03            [24] 1611 	mov	ar3,@r0
      000F81 08               [12] 1612 	inc	r0
      000F82 86 04            [24] 1613 	mov	ar4,@r0
      000F84 08               [12] 1614 	inc	r0
      000F85 86 05            [24] 1615 	mov	ar5,@r0
      000F87 E5 19            [12] 1616 	mov	a,_bp
      000F89 24 0C            [12] 1617 	add	a,#0x0c
      000F8B F8               [12] 1618 	mov	r0,a
      000F8C E6               [12] 1619 	mov	a,@r0
      000F8D 2B               [12] 1620 	add	a,r3
      000F8E FB               [12] 1621 	mov	r3,a
      000F8F E4               [12] 1622 	clr	a
      000F90 3C               [12] 1623 	addc	a,r4
      000F91 FC               [12] 1624 	mov	r4,a
      000F92 E5 19            [12] 1625 	mov	a,_bp
      000F94 24 08            [12] 1626 	add	a,#0x08
      000F96 F8               [12] 1627 	mov	r0,a
      000F97 86 82            [24] 1628 	mov	dpl,@r0
      000F99 08               [12] 1629 	inc	r0
      000F9A 86 83            [24] 1630 	mov	dph,@r0
      000F9C 08               [12] 1631 	inc	r0
      000F9D 86 F0            [24] 1632 	mov	b,@r0
      000F9F 12 4A 06         [24] 1633 	lcall	__gptrget
      000FA2 FA               [12] 1634 	mov	r2,a
      000FA3 A3               [24] 1635 	inc	dptr
      000FA4 12 4A 06         [24] 1636 	lcall	__gptrget
      000FA7 FE               [12] 1637 	mov	r6,a
      000FA8 A3               [24] 1638 	inc	dptr
      000FA9 12 4A 06         [24] 1639 	lcall	__gptrget
      000FAC FF               [12] 1640 	mov	r7,a
      000FAD E5 19            [12] 1641 	mov	a,_bp
      000FAF 24 0B            [12] 1642 	add	a,#0x0b
      000FB1 F8               [12] 1643 	mov	r0,a
      000FB2 E6               [12] 1644 	mov	a,@r0
      000FB3 2A               [12] 1645 	add	a,r2
      000FB4 FA               [12] 1646 	mov	r2,a
      000FB5 E4               [12] 1647 	clr	a
      000FB6 3E               [12] 1648 	addc	a,r6
      000FB7 FE               [12] 1649 	mov	r6,a
      000FB8 8A 82            [24] 1650 	mov	dpl,r2
      000FBA 8E 83            [24] 1651 	mov	dph,r6
      000FBC 8F F0            [24] 1652 	mov	b,r7
      000FBE 12 4A 06         [24] 1653 	lcall	__gptrget
      000FC1 8B 82            [24] 1654 	mov	dpl,r3
      000FC3 8C 83            [24] 1655 	mov	dph,r4
      000FC5 8D F0            [24] 1656 	mov	b,r5
      000FC7 12 3D DF         [24] 1657 	lcall	__gptrput
                                   1658 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:99: rIndex++;
      000FCA E5 19            [12] 1659 	mov	a,_bp
      000FCC 24 0B            [12] 1660 	add	a,#0x0b
      000FCE F8               [12] 1661 	mov	r0,a
      000FCF 06               [12] 1662 	inc	@r0
                                   1663 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      000FD0 E5 19            [12] 1664 	mov	a,_bp
      000FD2 24 0C            [12] 1665 	add	a,#0x0c
      000FD4 F8               [12] 1666 	mov	r0,a
      000FD5 06               [12] 1667 	inc	@r0
      000FD6 D0 04            [24] 1668 	pop	ar4
      000FD8 D0 03            [24] 1669 	pop	ar3
      000FDA D0 02            [24] 1670 	pop	ar2
      000FDC 02 0F 43         [24] 1671 	ljmp	00108$
      000FDF                       1672 00103$:
                                   1673 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:102: buffer->rIndex = rIndex;
      000FDF E5 19            [12] 1674 	mov	a,_bp
      000FE1 24 05            [12] 1675 	add	a,#0x05
      000FE3 F8               [12] 1676 	mov	r0,a
      000FE4 86 82            [24] 1677 	mov	dpl,@r0
      000FE6 08               [12] 1678 	inc	r0
      000FE7 86 83            [24] 1679 	mov	dph,@r0
      000FE9 08               [12] 1680 	inc	r0
      000FEA 86 F0            [24] 1681 	mov	b,@r0
      000FEC E5 19            [12] 1682 	mov	a,_bp
      000FEE 24 0B            [12] 1683 	add	a,#0x0b
      000FF0 F9               [12] 1684 	mov	r1,a
      000FF1 E7               [12] 1685 	mov	a,@r1
      000FF2 12 3D DF         [24] 1686 	lcall	__gptrput
                                   1687 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:103: buffer->length -= count;
      000FF5 8A 82            [24] 1688 	mov	dpl,r2
      000FF7 8B 83            [24] 1689 	mov	dph,r3
      000FF9 8C F0            [24] 1690 	mov	b,r4
      000FFB 12 4A 06         [24] 1691 	lcall	__gptrget
      000FFE FF               [12] 1692 	mov	r7,a
      000FFF E5 19            [12] 1693 	mov	a,_bp
      001001 24 FA            [12] 1694 	add	a,#0xfa
      001003 F8               [12] 1695 	mov	r0,a
      001004 EF               [12] 1696 	mov	a,r7
      001005 C3               [12] 1697 	clr	c
      001006 96               [12] 1698 	subb	a,@r0
      001007 FF               [12] 1699 	mov	r7,a
      001008 8A 82            [24] 1700 	mov	dpl,r2
      00100A 8B 83            [24] 1701 	mov	dph,r3
      00100C 8C F0            [24] 1702 	mov	b,r4
      00100E 12 3D DF         [24] 1703 	lcall	__gptrput
      001011                       1704 00105$:
                                   1705 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:106: return rc;
      001011 E5 19            [12] 1706 	mov	a,_bp
      001013 24 04            [12] 1707 	add	a,#0x04
      001015 F8               [12] 1708 	mov	r0,a
      001016 86 82            [24] 1709 	mov	dpl,@r0
                                   1710 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:107: }
      001018 85 19 81         [24] 1711 	mov	sp,_bp
      00101B D0 19            [24] 1712 	pop	_bp
      00101D 22               [24] 1713 	ret
                                   1714 	.area CSEG    (CODE)
                                   1715 	.area CONST   (CODE)
                                   1716 	.area XINIT   (CODE)
                                   1717 	.area CABS    (ABS,CODE)
