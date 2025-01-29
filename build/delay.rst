                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
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
                                    446 	.globl _delay1ms
                                    447 	.globl _delay10us
                                    448 	.globl _delay1us
                                    449 ;--------------------------------------------------------
                                    450 ; special function registers
                                    451 ;--------------------------------------------------------
                                    452 	.area RSEG    (ABS,DATA)
      000000                        453 	.org 0x0000
                           0000BC   454 _ADC_CONTR	=	0x00bc
                           0000BD   455 _ADC_RESH	=	0x00bd
                           0000BE   456 _ADC_RESL	=	0x00be
                           00BDBE   457 _ADC_RES	=	0xbdbe
                           0000DE   458 _ADCCFG	=	0x00de
                           0000FA   459 _DMA_ADC_AMT	=	0x00fa
                           0000E6   460 _CMPCR1	=	0x00e6
                           0000E7   461 _CMPCR2	=	0x00e7
                           000082   462 _DPL	=	0x0082
                           000083   463 _DPH	=	0x0083
                           008382   464 _DP	=	0x8382
                           0000E3   465 _DPS	=	0x00e3
                           0000E4   466 _DPL1	=	0x00e4
                           0000E5   467 _DPH1	=	0x00e5
                           0000AE   468 _TA	=	0x00ae
                           000090   469 _P1	=	0x0090
                           000091   470 _P1M1	=	0x0091
                           000092   471 _P1M0	=	0x0092
                           0000A0   472 _P2	=	0x00a0
                           000095   473 _P2M1	=	0x0095
                           000096   474 _P2M0	=	0x0096
                           0000B0   475 _P3	=	0x00b0
                           0000B1   476 _P3M1	=	0x00b1
                           0000B2   477 _P3M0	=	0x00b2
                           0000C8   478 _P5	=	0x00c8
                           0000C9   479 _P5M1	=	0x00c9
                           0000CA   480 _P5M0	=	0x00ca
                           0000C2   481 _IAP_DATA	=	0x00c2
                           0000C3   482 _IAP_ADDRH	=	0x00c3
                           0000C4   483 _IAP_ADDRL	=	0x00c4
                           00C3C4   484 _IAP_ADDR	=	0xc3c4
                           0000C5   485 _IAP_CMD	=	0x00c5
                           0000C6   486 _IAP_TRIG	=	0x00c6
                           0000C7   487 _IAP_CONTR	=	0x00c7
                           0000F5   488 _IAP_TPS	=	0x00f5
                           00008F   489 _INT_CLKO	=	0x008f
                           0000A8   490 _IE1	=	0x00a8
                           0000B8   491 _IP1L	=	0x00b8
                           0000B7   492 _IP1H	=	0x00b7
                           0000AF   493 _IE2	=	0x00af
                           0000B5   494 _IP2L	=	0x00b5
                           0000B6   495 _IP2H	=	0x00b6
                           0000DF   496 _IP3L	=	0x00df
                           0000EE   497 _IP3H	=	0x00ee
                           000081   498 _SP	=	0x0081
                           0000D0   499 _PSW	=	0x00d0
                           0000E0   500 _ACC	=	0x00e0
                           0000F0   501 _B	=	0x00f0
                           000087   502 _PCON	=	0x0087
                           0000FF   503 _RSTCFG	=	0x00ff
                           0000A2   504 _P_SW1	=	0x00a2
                           0000BA   505 _P_SW2	=	0x00ba
                           0000A1   506 _BUS_SPEED	=	0x00a1
                           0000AA   507 _WKTCL	=	0x00aa
                           0000AB   508 _WKTCH	=	0x00ab
                           00ABAA   509 _WKTC	=	0xabaa
                           0000CD   510 _SPSTAT	=	0x00cd
                           0000CE   511 _SPCTL	=	0x00ce
                           0000CF   512 _SPDAT	=	0x00cf
                           00009D   513 _IRCBAND	=	0x009d
                           00009E   514 _LIRTRIM	=	0x009e
                           00009F   515 _IRTRIM	=	0x009f
                           000088   516 _TCON	=	0x0088
                           000089   517 _TMOD	=	0x0089
                           00008A   518 _T0L	=	0x008a
                           00008C   519 _T0H	=	0x008c
                           008C8A   520 _T0	=	0x8c8a
                           00008B   521 _T1L	=	0x008b
                           00008D   522 _T1H	=	0x008d
                           008D8B   523 _T1	=	0x8d8b
                           0000D7   524 _T2L	=	0x00d7
                           0000D6   525 _T2H	=	0x00d6
                           00D6D7   526 _T2	=	0xd6d7
                           00008E   527 _AUXR	=	0x008e
                           0000C1   528 _WDT_CONTR	=	0x00c1
                           0000D1   529 _T4T3M	=	0x00d1
                           0000D2   530 _T4H	=	0x00d2
                           0000D3   531 _T4L	=	0x00d3
                           00D2D3   532 _T4	=	0xd2d3
                           0000D4   533 _T3H	=	0x00d4
                           0000D5   534 _T3L	=	0x00d5
                           00D4D5   535 _T3	=	0xd4d5
                           0000EF   536 _AUXINTIF	=	0x00ef
                           0000A9   537 _SADDR	=	0x00a9
                           0000B9   538 _SADEN	=	0x00b9
                           000098   539 _S1CON	=	0x0098
                           000099   540 _S1BUF	=	0x0099
                           00009A   541 _S2CON	=	0x009a
                           00009B   542 _S2BUF	=	0x009b
                           0000AC   543 _S3CON	=	0x00ac
                           0000AD   544 _S3BUF	=	0x00ad
                           000084   545 _S4CON	=	0x0084
                           000085   546 _S4BUF	=	0x0085
                           0000DC   547 _USBCLK	=	0x00dc
                           0000EC   548 _USBDAT	=	0x00ec
                           0000F4   549 _USBCON	=	0x00f4
                           0000FC   550 _USBADR	=	0x00fc
                                    551 ;--------------------------------------------------------
                                    552 ; special function bits
                                    553 ;--------------------------------------------------------
                                    554 	.area RSEG    (ABS,DATA)
      000000                        555 	.org 0x0000
                           000090   556 _P1_0	=	0x0090
                           000091   557 _P1_1	=	0x0091
                           000092   558 _P1_2	=	0x0092
                           000093   559 _P1_3	=	0x0093
                           000094   560 _P1_4	=	0x0094
                           000095   561 _P1_5	=	0x0095
                           000096   562 _P1_6	=	0x0096
                           000097   563 _P1_7	=	0x0097
                           0000A0   564 _P2_0	=	0x00a0
                           0000A1   565 _P2_1	=	0x00a1
                           0000A2   566 _P2_2	=	0x00a2
                           0000A3   567 _P2_3	=	0x00a3
                           0000A4   568 _P2_4	=	0x00a4
                           0000A5   569 _P2_5	=	0x00a5
                           0000A6   570 _P2_6	=	0x00a6
                           0000A7   571 _P2_7	=	0x00a7
                           0000B0   572 _P3_0	=	0x00b0
                           0000B1   573 _P3_1	=	0x00b1
                           0000B2   574 _P3_2	=	0x00b2
                           0000B3   575 _P3_3	=	0x00b3
                           0000B4   576 _P3_4	=	0x00b4
                           0000B5   577 _P3_5	=	0x00b5
                           0000B6   578 _P3_6	=	0x00b6
                           0000B7   579 _P3_7	=	0x00b7
                           0000C8   580 _P5_0	=	0x00c8
                           0000C9   581 _P5_1	=	0x00c9
                           0000CA   582 _P5_2	=	0x00ca
                           0000CB   583 _P5_3	=	0x00cb
                           0000CC   584 _P5_4	=	0x00cc
                           0000CD   585 _P5_5	=	0x00cd
                           000088   586 _INT0TR	=	0x0088
                           00008A   587 _INT1TR	=	0x008a
                           0000A8   588 _INT0IE	=	0x00a8
                           0000AA   589 _INT1IE	=	0x00aa
                           0000AF   590 _EA	=	0x00af
                           0000D0   591 _P	=	0x00d0
                           0000D1   592 _F1	=	0x00d1
                           0000D2   593 _OV	=	0x00d2
                           0000D3   594 _RS0	=	0x00d3
                           0000D4   595 _RS1	=	0x00d4
                           0000D5   596 _F0	=	0x00d5
                           0000D6   597 _AC	=	0x00d6
                           0000D7   598 _CY	=	0x00d7
                           00008C   599 _T0RUN	=	0x008c
                           00008E   600 _T1RUN	=	0x008e
                           0000A9   601 _T0IE	=	0x00a9
                           0000AB   602 _T1IE	=	0x00ab
                           00009F   603 _S1SM0_FE	=	0x009f
                                    604 ;--------------------------------------------------------
                                    605 ; overlayable register banks
                                    606 ;--------------------------------------------------------
                                    607 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        608 	.ds 8
                                    609 ;--------------------------------------------------------
                                    610 ; internal ram data
                                    611 ;--------------------------------------------------------
                                    612 	.area DSEG    (DATA)
                                    613 ;--------------------------------------------------------
                                    614 ; overlayable items in internal ram 
                                    615 ;--------------------------------------------------------
                                    616 ;--------------------------------------------------------
                                    617 ; indirectly addressable internal ram data
                                    618 ;--------------------------------------------------------
                                    619 	.area ISEG    (DATA)
                                    620 ;--------------------------------------------------------
                                    621 ; absolute internal ram data
                                    622 ;--------------------------------------------------------
                                    623 	.area IABS    (ABS,DATA)
                                    624 	.area IABS    (ABS,DATA)
                                    625 ;--------------------------------------------------------
                                    626 ; bit data
                                    627 ;--------------------------------------------------------
                                    628 	.area BSEG    (BIT)
                                    629 ;--------------------------------------------------------
                                    630 ; paged external ram data
                                    631 ;--------------------------------------------------------
                                    632 	.area PSEG    (PAG,XDATA)
                                    633 ;--------------------------------------------------------
                                    634 ; external ram data
                                    635 ;--------------------------------------------------------
                                    636 	.area XSEG    (XDATA)
                           00FEA8   637 _ADCTIM	=	0xfea8
                           00FEAD   638 _ADCEXCFG	=	0xfead
                           00FA10   639 _DMA_ADC_CFG	=	0xfa10
                           00FA11   640 _DMA_ADC_CR	=	0xfa11
                           00FA12   641 _DMA_ADC_STA	=	0xfa12
                           00FA17   642 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   643 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   644 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   645 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   646 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   647 _CHIP_GUID	=	0xfde0
                           00FDE7   648 ___OTHER_INFO	=	0xfde7
                           00FDEB   649 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   650 _IRTRIM_24MHz	=	0xfdec
                           00FDED   651 _IRTRIM_27MHz	=	0xfded
                           00FDEE   652 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   653 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   654 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   655 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   656 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   657 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   658 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   659 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   660 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   661 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   662 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   663 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   664 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   665 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   666 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   667 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   668 _CMPEXCFG	=	0xfeae
                           00FA00   669 _DMA_M2M_CFG	=	0xfa00
                           00FA01   670 _DMA_M2M_CR	=	0xfa01
                           00FA02   671 _DMA_M2M_STA	=	0xfa02
                           00FA03   672 _DMA_M2M_AMT	=	0xfa03
                           00FA04   673 _DMA_M2M_DONE	=	0xfa04
                           00FA05   674 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   675 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   676 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   677 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   678 _P1INTE	=	0xfd01
                           00FD11   679 _P1INTF	=	0xfd11
                           00FD21   680 _P1IM0	=	0xfd21
                           00FD31   681 _P1IM1	=	0xfd31
                           00FD41   682 _P1WKUE	=	0xfd41
                           00FE11   683 _P1PU	=	0xfe11
                           00FE19   684 _P1NCS	=	0xfe19
                           00FE21   685 _P1SR	=	0xfe21
                           00FE29   686 _P1DR	=	0xfe29
                           00FE31   687 _P1IE	=	0xfe31
                           00FD02   688 _P2INTE	=	0xfd02
                           00FD12   689 _P2INTF	=	0xfd12
                           00FD22   690 _P2IM0	=	0xfd22
                           00FD32   691 _P2IM1	=	0xfd32
                           00FD42   692 _P2WKUE	=	0xfd42
                           00FE12   693 _P2PU	=	0xfe12
                           00FE1A   694 _P2NCS	=	0xfe1a
                           00FE22   695 _P2SR	=	0xfe22
                           00FE2A   696 _P2DR	=	0xfe2a
                           00FE32   697 _P2IE	=	0xfe32
                           00FD03   698 _P3INTE	=	0xfd03
                           00FD13   699 _P3INTF	=	0xfd13
                           00FD23   700 _P3IM0	=	0xfd23
                           00FD33   701 _P3IM1	=	0xfd33
                           00FD43   702 _P3WKUE	=	0xfd43
                           00FE13   703 _P3PU	=	0xfe13
                           00FE1B   704 _P3NCS	=	0xfe1b
                           00FE23   705 _P3SR	=	0xfe23
                           00FE2B   706 _P3DR	=	0xfe2b
                           00FE33   707 _P3IE	=	0xfe33
                           00FD05   708 _P5INTE	=	0xfd05
                           00FD15   709 _P5INTF	=	0xfd15
                           00FD25   710 _P5IM0	=	0xfd25
                           00FD35   711 _P5IM1	=	0xfd35
                           00FD45   712 _P5WKUE	=	0xfd45
                           00FE15   713 _P5PU	=	0xfe15
                           00FE1D   714 _P5NCS	=	0xfe1d
                           00FE25   715 _P5SR	=	0xfe25
                           00FE2D   716 _P5DR	=	0xfe2d
                           00FE35   717 _P5IE	=	0xfe35
                           00FD60   718 _PINIPL	=	0xfd60
                           00FD61   719 _PINIPH	=	0xfd61
                           00FE80   720 _I2CCFG	=	0xfe80
                           00FE81   721 _I2CMSCR	=	0xfe81
                           00FE82   722 _I2CMSST	=	0xfe82
                           00FE83   723 _I2CSLCR	=	0xfe83
                           00FE84   724 _I2CSLST	=	0xfe84
                           00FE85   725 _I2CSLADR	=	0xfe85
                           00FE86   726 _I2CTXD	=	0xfe86
                           00FE87   727 _I2CRXD	=	0xfe87
                           00FE88   728 _I2CMSAUX	=	0xfe88
                           00FE50   729 _LCMCFG	=	0xfe50
                           00FE51   730 _LCMCFG2	=	0xfe51
                           00FE52   731 _LCMCR	=	0xfe52
                           00FE53   732 _LCMSTA	=	0xfe53
                           00FE54   733 _LCMIDDATL	=	0xfe54
                           00FE55   734 _LCMIDDATH	=	0xfe55
                           00FE54   735 _LCMIDDAT	=	0xfe54
                           00FA70   736 _DMA_LCM_CFG	=	0xfa70
                           00FA71   737 _DMA_LCM_CR	=	0xfa71
                           00FA72   738 _DMA_LCM_STA	=	0xfa72
                           00FA73   739 _DMA_LCM_AMT	=	0xfa73
                           00FA74   740 _DMA_LCM_DONE	=	0xfa74
                           00FA75   741 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   742 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   743 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   744 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   745 _MD3	=	0xfcf0
                           00FCF1   746 _MD2	=	0xfcf1
                           00FCF2   747 _MD1	=	0xfcf2
                           00FCF3   748 _MD0	=	0xfcf3
                           00FCF4   749 _MD5	=	0xfcf4
                           00FCF5   750 _MD4	=	0xfcf5
                           00FCF6   751 _ARCON	=	0xfcf6
                           00FCF7   752 _OPCON	=	0xfcf7
                           00FE08   753 _SPFUNC	=	0xfe08
                           00FE09   754 _RSTFLAG	=	0xfe09
                           00FEB0   755 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   756 _PWMA_ENO	=	0xfeb1
                           00FEB2   757 _PWMA_PS	=	0xfeb2
                           00FEB3   758 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   759 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   760 _PWMB_ENO	=	0xfeb5
                           00FEB6   761 _PWMB_PS	=	0xfeb6
                           00FEB7   762 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   763 _PWMA_CR1	=	0xfec0
                           00FEC1   764 _PWMA_CR2	=	0xfec1
                           00FEC2   765 _PWMA_SMCR	=	0xfec2
                           00FEC3   766 _PWMA_ETR	=	0xfec3
                           00FEC4   767 _PWMA_IER	=	0xfec4
                           00FEC5   768 _PWMA_SR1	=	0xfec5
                           00FEC6   769 _PWMA_SR2	=	0xfec6
                           00FEC7   770 _PWMA_EGR	=	0xfec7
                           00FEC8   771 _PWMA_CCMR1	=	0xfec8
                           00FEC9   772 _PWMA_CCMR2	=	0xfec9
                           00FECA   773 _PWMA_CCMR3	=	0xfeca
                           00FECB   774 _PWMA_CCMR4	=	0xfecb
                           00FECC   775 _PWMA_CCER1	=	0xfecc
                           00FECD   776 _PWMA_CCER2	=	0xfecd
                           00FECE   777 _PWMA_CNTRH	=	0xfece
                           00FECF   778 _PWMA_CNTRL	=	0xfecf
                           00FED0   779 _PWMA_PSCRH	=	0xfed0
                           00FED1   780 _PWMA_PSCRL	=	0xfed1
                           00FED2   781 _PWMA_ARRH	=	0xfed2
                           00FED3   782 _PWMA_ARRL	=	0xfed3
                           00FED4   783 _PWMA_RCR	=	0xfed4
                           00FED5   784 _PWMA_CCR1H	=	0xfed5
                           00FED6   785 _PWMA_CCR1L	=	0xfed6
                           00FED7   786 _PWMA_CCR2H	=	0xfed7
                           00FED8   787 _PWMA_CCR2L	=	0xfed8
                           00FED9   788 _PWMA_CCR3H	=	0xfed9
                           00FEDA   789 _PWMA_CCR3L	=	0xfeda
                           00FEDB   790 _PWMA_CCR4H	=	0xfedb
                           00FEDC   791 _PWMA_CCR4L	=	0xfedc
                           00FEDD   792 _PWMA_BKR	=	0xfedd
                           00FEDE   793 _PWMA_DTR	=	0xfede
                           00FEDF   794 _PWMA_OISR	=	0xfedf
                           00FEE0   795 _PWMB_CR1	=	0xfee0
                           00FEE1   796 _PWMB_CR2	=	0xfee1
                           00FEE2   797 _PWMB_SMCR	=	0xfee2
                           00FEE3   798 _PWMB_ETR	=	0xfee3
                           00FEE4   799 _PWMB_IER	=	0xfee4
                           00FEE5   800 _PWMB_SR1	=	0xfee5
                           00FEE6   801 _PWMB_SR2	=	0xfee6
                           00FEE7   802 _PWMB_EGR	=	0xfee7
                           00FEE8   803 _PWMB_CCMR1	=	0xfee8
                           00FEE9   804 _PWMB_CCMR2	=	0xfee9
                           00FEEA   805 _PWMB_CCMR3	=	0xfeea
                           00FEEB   806 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   807 _PWMB_CCER1	=	0xfeec
                           00FEED   808 _PWMB_CCER2	=	0xfeed
                           00FEEE   809 _PWMB_CNTRH	=	0xfeee
                           00FEEF   810 _PWMB_CNTRL	=	0xfeef
                           00FEF0   811 _PWMB_PSCRH	=	0xfef0
                           00FEF1   812 _PWMB_PSCRL	=	0xfef1
                           00FEF2   813 _PWMB_ARRH	=	0xfef2
                           00FEF3   814 _PWMB_ARRL	=	0xfef3
                           00FEF4   815 _PWMB_RCR	=	0xfef4
                           00FEF5   816 _PWMB_CCR1H	=	0xfef5
                           00FEF6   817 _PWMB_CCR1L	=	0xfef6
                           00FEF7   818 _PWMB_CCR2H	=	0xfef7
                           00FEF8   819 _PWMB_CCR2L	=	0xfef8
                           00FEF9   820 _PWMB_CCR3H	=	0xfef9
                           00FEFA   821 _PWMB_CCR3L	=	0xfefa
                           00FEFB   822 _PWMB_CCR4H	=	0xfefb
                           00FEFC   823 _PWMB_CCR4L	=	0xfefc
                           00FEFD   824 _PWMB_BKR	=	0xfefd
                           00FEFE   825 _PWMB_DTR	=	0xfefe
                           00FEFF   826 _PWMB_OISR	=	0xfeff
                           00FE60   827 _RTCCR	=	0xfe60
                           00FE61   828 _RTCCFG	=	0xfe61
                           00FE62   829 _RTCIEN	=	0xfe62
                           00FE63   830 _RTCIF	=	0xfe63
                           00FE64   831 _ALAHOUR	=	0xfe64
                           00FE65   832 _ALAMIN	=	0xfe65
                           00FE66   833 _ALASEC	=	0xfe66
                           00FE67   834 _ALASSEC	=	0xfe67
                           00FE68   835 _INIYEAR	=	0xfe68
                           00FE69   836 _INIMONTH	=	0xfe69
                           00FE6A   837 _INIDAY	=	0xfe6a
                           00FE6B   838 _INIHOUR	=	0xfe6b
                           00FE6C   839 _INIMIN	=	0xfe6c
                           00FE6D   840 _INISEC	=	0xfe6d
                           00FE6E   841 _INISSEC	=	0xfe6e
                           00FE70   842 _YEAR	=	0xfe70
                           00FE71   843 _MONTH	=	0xfe71
                           00FE72   844 _DAY	=	0xfe72
                           00FE73   845 _HOUR	=	0xfe73
                           00FE74   846 _MIN	=	0xfe74
                           00FE75   847 _SEC	=	0xfe75
                           00FE76   848 _SSEC	=	0xfe76
                           00FA20   849 _DMA_SPI_CFG	=	0xfa20
                           00FA21   850 _DMA_SPI_CR	=	0xfa21
                           00FA22   851 _DMA_SPI_STA	=	0xfa22
                           00FA23   852 _DMA_SPI_AMT	=	0xfa23
                           00FA24   853 _DMA_SPI_DONE	=	0xfa24
                           00FA25   854 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   855 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   856 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   857 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   858 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   859 _CLKDIV	=	0xfe01
                           00FE02   860 _HIRCCR	=	0xfe02
                           00FE03   861 _XOSCCR	=	0xfe03
                           00FE08   862 _X32KCR	=	0xfe08
                           00FE04   863 _IRC32KCR	=	0xfe04
                           00FE00   864 _CKSEL	=	0xfe00
                           00FE05   865 _MCLKOCR	=	0xfe05
                           00FE06   866 _IRCDB	=	0xfe06
                           00FE07   867 _IRC48MCR	=	0xfe07
                           00FEA2   868 _TM2PS	=	0xfea2
                           00FEA3   869 _TM3PS	=	0xfea3
                           00FEA4   870 _TM4PS	=	0xfea4
                           00FA30   871 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   872 _DMA_UR1T_CR	=	0xfa31
                           00FA32   873 _DMA_UR1T_STA	=	0xfa32
                           00FA33   874 _DMA_URTX_AMT	=	0xfa33
                           00FA34   875 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   876 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   877 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   878 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   879 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   880 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   881 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   882 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   883 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   884 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   885 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   886 _DMA_UR2T_CR	=	0xfa31
                           00FA32   887 _DMA_UR2T_STA	=	0xfa32
                           00FA33   888 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   889 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   890 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   891 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   892 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   893 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   894 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   895 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   896 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   897 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   898 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   899 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   900 _DMA_UR3T_CR	=	0xfa31
                           00FA32   901 _DMA_UR3T_STA	=	0xfa32
                           00FA33   902 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   903 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   904 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   905 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   906 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   907 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   908 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   909 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   910 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   911 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   912 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   913 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   914 _DMA_UR4T_CR	=	0xfa31
                           00FA32   915 _DMA_UR4T_STA	=	0xfa32
                           00FA33   916 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   917 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   918 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   919 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   920 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   921 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   922 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   923 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   924 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   925 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   926 _DMA_UR4R_TXAL	=	0xfa3e
      0001D8                        927 _uartGetCharacter_result_65536_69:
      0001D8                        928 	.ds 1
      0001D9                        929 _delay1ms_ms_65536_131:
      0001D9                        930 	.ds 2
      0001DB                        931 _delay10us_us_65536_137:
      0001DB                        932 	.ds 1
      0001DC                        933 _delay1us_us_65536_143:
      0001DC                        934 	.ds 2
                                    935 ;--------------------------------------------------------
                                    936 ; absolute external ram data
                                    937 ;--------------------------------------------------------
                                    938 	.area XABS    (ABS,XDATA)
                                    939 ;--------------------------------------------------------
                                    940 ; external initialized ram data
                                    941 ;--------------------------------------------------------
                                    942 	.area XISEG   (XDATA)
                                    943 	.area HOME    (CODE)
                                    944 	.area GSINIT0 (CODE)
                                    945 	.area GSINIT1 (CODE)
                                    946 	.area GSINIT2 (CODE)
                                    947 	.area GSINIT3 (CODE)
                                    948 	.area GSINIT4 (CODE)
                                    949 	.area GSINIT5 (CODE)
                                    950 	.area GSINIT  (CODE)
                                    951 	.area GSFINAL (CODE)
                                    952 	.area CSEG    (CODE)
                                    953 ;--------------------------------------------------------
                                    954 ; global & static initialisations
                                    955 ;--------------------------------------------------------
                                    956 	.area HOME    (CODE)
                                    957 	.area GSINIT  (CODE)
                                    958 	.area GSFINAL (CODE)
                                    959 	.area GSINIT  (CODE)
                                    960 ;--------------------------------------------------------
                                    961 ; Home
                                    962 ;--------------------------------------------------------
                                    963 	.area HOME    (CODE)
                                    964 	.area HOME    (CODE)
                                    965 ;--------------------------------------------------------
                                    966 ; code
                                    967 ;--------------------------------------------------------
                                    968 	.area CSEG    (CODE)
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'delay1ms'
                                    971 ;------------------------------------------------------------
                                    972 ;ms                        Allocated with name '_delay1ms_ms_65536_131'
                                    973 ;i                         Allocated with name '_delay1ms_i_131072_133'
                                    974 ;n                         Allocated with name '_delay1ms_n_262144_135'
                                    975 ;------------------------------------------------------------
                                    976 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:158: void delay1ms(uint16_t ms) {
                                    977 ;	-----------------------------------------
                                    978 ;	 function delay1ms
                                    979 ;	-----------------------------------------
      001ECC                        980 _delay1ms:
                           000007   981 	ar7 = 0x07
                           000006   982 	ar6 = 0x06
                           000005   983 	ar5 = 0x05
                           000004   984 	ar4 = 0x04
                           000003   985 	ar3 = 0x03
                           000002   986 	ar2 = 0x02
                           000001   987 	ar1 = 0x01
                           000000   988 	ar0 = 0x00
      001ECC AF 83            [24]  989 	mov	r7,dph
      001ECE E5 82            [12]  990 	mov	a,dpl
      001ED0 90 01 D9         [24]  991 	mov	dptr,#_delay1ms_ms_65536_131
      001ED3 F0               [24]  992 	movx	@dptr,a
      001ED4 EF               [12]  993 	mov	a,r7
      001ED5 A3               [24]  994 	inc	dptr
      001ED6 F0               [24]  995 	movx	@dptr,a
                                    996 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:159: for (uint16_t i = ms; i; i--) {
      001ED7 90 01 D9         [24]  997 	mov	dptr,#_delay1ms_ms_65536_131
      001EDA E0               [24]  998 	movx	a,@dptr
      001EDB FE               [12]  999 	mov	r6,a
      001EDC A3               [24] 1000 	inc	dptr
      001EDD E0               [24] 1001 	movx	a,@dptr
      001EDE FF               [12] 1002 	mov	r7,a
      001EDF                       1003 00107$:
      001EDF EE               [12] 1004 	mov	a,r6
      001EE0 4F               [12] 1005 	orl	a,r7
      001EE1 60 19            [24] 1006 	jz	00109$
                                   1007 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:160: for (uint16_t n = DELAY_1ms; n; n--) {
      001EE3 7C 82            [12] 1008 	mov	r4,#0x82
      001EE5 7D 0A            [12] 1009 	mov	r5,#0x0a
      001EE7                       1010 00104$:
      001EE7 EC               [12] 1011 	mov	a,r4
      001EE8 4D               [12] 1012 	orl	a,r5
      001EE9 60 0A            [24] 1013 	jz	00108$
                                   1014 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:161: NOP();
      001EEB 00               [12] 1015 	NOP	
                                   1016 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:162: NOP();
      001EEC 00               [12] 1017 	NOP	
                                   1018 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:163: NOP();
      001EED 00               [12] 1019 	NOP	
                                   1020 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:160: for (uint16_t n = DELAY_1ms; n; n--) {
      001EEE 1C               [12] 1021 	dec	r4
      001EEF BC FF 01         [24] 1022 	cjne	r4,#0xff,00131$
      001EF2 1D               [12] 1023 	dec	r5
      001EF3                       1024 00131$:
      001EF3 80 F2            [24] 1025 	sjmp	00104$
      001EF5                       1026 00108$:
                                   1027 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:159: for (uint16_t i = ms; i; i--) {
      001EF5 1E               [12] 1028 	dec	r6
      001EF6 BE FF 01         [24] 1029 	cjne	r6,#0xff,00132$
      001EF9 1F               [12] 1030 	dec	r7
      001EFA                       1031 00132$:
      001EFA 80 E3            [24] 1032 	sjmp	00107$
      001EFC                       1033 00109$:
                                   1034 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:166: }
      001EFC 22               [24] 1035 	ret
                                   1036 ;------------------------------------------------------------
                                   1037 ;Allocation info for local variables in function 'delay10us'
                                   1038 ;------------------------------------------------------------
                                   1039 ;us                        Allocated with name '_delay10us_us_65536_137'
                                   1040 ;i                         Allocated with name '_delay10us_i_131072_139'
                                   1041 ;n                         Allocated with name '_delay10us_n_262144_141'
                                   1042 ;------------------------------------------------------------
                                   1043 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:167: void delay10us(uint8_t us) {
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function delay10us
                                   1046 ;	-----------------------------------------
      001EFD                       1047 _delay10us:
      001EFD E5 82            [12] 1048 	mov	a,dpl
      001EFF 90 01 DB         [24] 1049 	mov	dptr,#_delay10us_us_65536_137
      001F02 F0               [24] 1050 	movx	@dptr,a
                                   1051 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:168: for (uint8_t i = us; i; i--) {
      001F03 E0               [24] 1052 	movx	a,@dptr
      001F04 FF               [12] 1053 	mov	r7,a
      001F05                       1054 00107$:
      001F05 EF               [12] 1055 	mov	a,r7
      001F06 60 0B            [24] 1056 	jz	00109$
                                   1057 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:169: for (uint8_t n = DELAY_10us; n; n--) {
      001F08 7E 37            [12] 1058 	mov	r6,#0x37
      001F0A                       1059 00104$:
      001F0A EE               [12] 1060 	mov	a,r6
      001F0B 60 03            [24] 1061 	jz	00108$
      001F0D 1E               [12] 1062 	dec	r6
      001F0E 80 FA            [24] 1063 	sjmp	00104$
      001F10                       1064 00108$:
                                   1065 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:168: for (uint8_t i = us; i; i--) {
      001F10 1F               [12] 1066 	dec	r7
      001F11 80 F2            [24] 1067 	sjmp	00107$
      001F13                       1068 00109$:
                                   1069 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:172: }
      001F13 22               [24] 1070 	ret
                                   1071 ;------------------------------------------------------------
                                   1072 ;Allocation info for local variables in function 'delay1us'
                                   1073 ;------------------------------------------------------------
                                   1074 ;us                        Allocated with name '_delay1us_us_65536_143'
                                   1075 ;i                         Allocated with name '_delay1us_i_131072_145'
                                   1076 ;n                         Allocated with name '_delay1us_n_262144_147'
                                   1077 ;------------------------------------------------------------
                                   1078 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:195: void delay1us(uint16_t us) {
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function delay1us
                                   1081 ;	-----------------------------------------
      001F14                       1082 _delay1us:
      001F14 AF 83            [24] 1083 	mov	r7,dph
      001F16 E5 82            [12] 1084 	mov	a,dpl
      001F18 90 01 DC         [24] 1085 	mov	dptr,#_delay1us_us_65536_143
      001F1B F0               [24] 1086 	movx	@dptr,a
      001F1C EF               [12] 1087 	mov	a,r7
      001F1D A3               [24] 1088 	inc	dptr
      001F1E F0               [24] 1089 	movx	@dptr,a
                                   1090 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:196: for (uint16_t i = us; i; i--) {
      001F1F 90 01 DC         [24] 1091 	mov	dptr,#_delay1us_us_65536_143
      001F22 E0               [24] 1092 	movx	a,@dptr
      001F23 FE               [12] 1093 	mov	r6,a
      001F24 A3               [24] 1094 	inc	dptr
      001F25 E0               [24] 1095 	movx	a,@dptr
      001F26 FF               [12] 1096 	mov	r7,a
      001F27                       1097 00107$:
      001F27 EE               [12] 1098 	mov	a,r6
      001F28 4F               [12] 1099 	orl	a,r7
      001F29 60 10            [24] 1100 	jz	00109$
                                   1101 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:197: for (uint8_t n = DELAY_1us; n; n--) {
      001F2B 7D 05            [12] 1102 	mov	r5,#0x05
      001F2D                       1103 00104$:
      001F2D ED               [12] 1104 	mov	a,r5
      001F2E 60 03            [24] 1105 	jz	00101$
      001F30 1D               [12] 1106 	dec	r5
      001F31 80 FA            [24] 1107 	sjmp	00104$
      001F33                       1108 00101$:
                                   1109 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:200: NOP();
      001F33 00               [12] 1110 	NOP	
                                   1111 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:196: for (uint16_t i = us; i; i--) {
      001F34 1E               [12] 1112 	dec	r6
      001F35 BE FF 01         [24] 1113 	cjne	r6,#0xff,00131$
      001F38 1F               [12] 1114 	dec	r7
      001F39                       1115 00131$:
      001F39 80 EC            [24] 1116 	sjmp	00107$
      001F3B                       1117 00109$:
                                   1118 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:202: }
      001F3B 22               [24] 1119 	ret
                                   1120 	.area CSEG    (CODE)
                                   1121 	.area CONST   (CODE)
                                   1122 	.area XINIT   (CODE)
                                   1123 	.area CABS    (ABS,CODE)
