                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial_console
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uartSendBlock
                                     12 	.globl _uartGetBlock
                                     13 	.globl _uartInitialise
                                     14 	.globl _S1SM0_FE
                                     15 	.globl _T1IE
                                     16 	.globl _T0IE
                                     17 	.globl _T1RUN
                                     18 	.globl _T0RUN
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _EA
                                     28 	.globl _INT1IE
                                     29 	.globl _INT0IE
                                     30 	.globl _INT1TR
                                     31 	.globl _INT0TR
                                     32 	.globl _P5_5
                                     33 	.globl _P5_4
                                     34 	.globl _P5_3
                                     35 	.globl _P5_2
                                     36 	.globl _P5_1
                                     37 	.globl _P5_0
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _P1_7
                                     55 	.globl _P1_6
                                     56 	.globl _P1_5
                                     57 	.globl _P1_4
                                     58 	.globl _P1_3
                                     59 	.globl _P1_2
                                     60 	.globl _P1_1
                                     61 	.globl _P1_0
                                     62 	.globl _USBADR
                                     63 	.globl _USBCON
                                     64 	.globl _USBDAT
                                     65 	.globl _USBCLK
                                     66 	.globl _S4BUF
                                     67 	.globl _S4CON
                                     68 	.globl _S3BUF
                                     69 	.globl _S3CON
                                     70 	.globl _S2BUF
                                     71 	.globl _S2CON
                                     72 	.globl _S1BUF
                                     73 	.globl _S1CON
                                     74 	.globl _SADEN
                                     75 	.globl _SADDR
                                     76 	.globl _AUXINTIF
                                     77 	.globl _T3
                                     78 	.globl _T3L
                                     79 	.globl _T3H
                                     80 	.globl _T4
                                     81 	.globl _T4L
                                     82 	.globl _T4H
                                     83 	.globl _T4T3M
                                     84 	.globl _WDT_CONTR
                                     85 	.globl _AUXR
                                     86 	.globl _T2
                                     87 	.globl _T2H
                                     88 	.globl _T2L
                                     89 	.globl _T1
                                     90 	.globl _T1H
                                     91 	.globl _T1L
                                     92 	.globl _T0
                                     93 	.globl _T0H
                                     94 	.globl _T0L
                                     95 	.globl _TMOD
                                     96 	.globl _TCON
                                     97 	.globl _IRTRIM
                                     98 	.globl _LIRTRIM
                                     99 	.globl _IRCBAND
                                    100 	.globl _SPDAT
                                    101 	.globl _SPCTL
                                    102 	.globl _SPSTAT
                                    103 	.globl _WKTC
                                    104 	.globl _WKTCH
                                    105 	.globl _WKTCL
                                    106 	.globl _BUS_SPEED
                                    107 	.globl _P_SW2
                                    108 	.globl _P_SW1
                                    109 	.globl _RSTCFG
                                    110 	.globl _PCON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _SP
                                    115 	.globl _IP3H
                                    116 	.globl _IP3L
                                    117 	.globl _IP2H
                                    118 	.globl _IP2L
                                    119 	.globl _IE2
                                    120 	.globl _IP1H
                                    121 	.globl _IP1L
                                    122 	.globl _IE1
                                    123 	.globl _INT_CLKO
                                    124 	.globl _IAP_TPS
                                    125 	.globl _IAP_CONTR
                                    126 	.globl _IAP_TRIG
                                    127 	.globl _IAP_CMD
                                    128 	.globl _IAP_ADDR
                                    129 	.globl _IAP_ADDRL
                                    130 	.globl _IAP_ADDRH
                                    131 	.globl _IAP_DATA
                                    132 	.globl _P5M0
                                    133 	.globl _P5M1
                                    134 	.globl _P5
                                    135 	.globl _P3M0
                                    136 	.globl _P3M1
                                    137 	.globl _P3
                                    138 	.globl _P2M0
                                    139 	.globl _P2M1
                                    140 	.globl _P2
                                    141 	.globl _P1M0
                                    142 	.globl _P1M1
                                    143 	.globl _P1
                                    144 	.globl _TA
                                    145 	.globl _DPH1
                                    146 	.globl _DPL1
                                    147 	.globl _DPS
                                    148 	.globl _DP
                                    149 	.globl _DPH
                                    150 	.globl _DPL
                                    151 	.globl _CMPCR2
                                    152 	.globl _CMPCR1
                                    153 	.globl _DMA_ADC_AMT
                                    154 	.globl _ADCCFG
                                    155 	.globl _ADC_RES
                                    156 	.globl _ADC_RESL
                                    157 	.globl _ADC_RESH
                                    158 	.globl _ADC_CONTR
                                    159 	.globl _serialConsoleInitialise_PARM_3
                                    160 	.globl _serialConsoleInitialise_PARM_2
                                    161 	.globl _DMA_UR4R_TXAL
                                    162 	.globl _DMA_UR4R_TXAH
                                    163 	.globl _DMA_UR4R_DONE
                                    164 	.globl _DMA_UR4R_AMT
                                    165 	.globl _DMA_UR4R_STA
                                    166 	.globl _DMA_UR4R_CR
                                    167 	.globl _DMA_UR4R_CFG
                                    168 	.globl _DMA_UR4T_TXAL
                                    169 	.globl _DMA_UR4T_TXAH
                                    170 	.globl _DMA_UR4T_DONE
                                    171 	.globl _DMA_UR4T_AMT
                                    172 	.globl _DMA_UR4T_STA
                                    173 	.globl _DMA_UR4T_CR
                                    174 	.globl _DMA_UR4T_CFG
                                    175 	.globl _DMA_UR3R_TXAL
                                    176 	.globl _DMA_UR3R_TXAH
                                    177 	.globl _DMA_UR3R_DONE
                                    178 	.globl _DMA_UR3R_AMT
                                    179 	.globl _DMA_UR3R_STA
                                    180 	.globl _DMA_UR3R_CR
                                    181 	.globl _DMA_UR3R_CFG
                                    182 	.globl _DMA_UR3T_TXAL
                                    183 	.globl _DMA_UR3T_TXAH
                                    184 	.globl _DMA_UR3T_DONE
                                    185 	.globl _DMA_UR3T_AMT
                                    186 	.globl _DMA_UR3T_STA
                                    187 	.globl _DMA_UR3T_CR
                                    188 	.globl _DMA_UR3T_CFG
                                    189 	.globl _DMA_UR2R_TXAL
                                    190 	.globl _DMA_UR2R_TXAH
                                    191 	.globl _DMA_UR2R_DONE
                                    192 	.globl _DMA_UR2R_AMT
                                    193 	.globl _DMA_UR2R_STA
                                    194 	.globl _DMA_UR2R_CR
                                    195 	.globl _DMA_UR2R_CFG
                                    196 	.globl _DMA_UR2T_TXAL
                                    197 	.globl _DMA_UR2T_TXAH
                                    198 	.globl _DMA_UR2T_DONE
                                    199 	.globl _DMA_UR2T_AMT
                                    200 	.globl _DMA_UR2T_STA
                                    201 	.globl _DMA_UR2T_CR
                                    202 	.globl _DMA_UR2T_CFG
                                    203 	.globl _DMA_UR1R_TXAL
                                    204 	.globl _DMA_UR1R_TXAH
                                    205 	.globl _DMA_UR1R_DONE
                                    206 	.globl _DMA_UR1R_AMT
                                    207 	.globl _DMA_UR1R_STA
                                    208 	.globl _DMA_UR1R_CR
                                    209 	.globl _DMA_UR1R_CFG
                                    210 	.globl _DMA_UR1T_TXAL
                                    211 	.globl _DMA_UR1T_TXAH
                                    212 	.globl _DMA_UR1T_DONE
                                    213 	.globl _DMA_URTX_AMT
                                    214 	.globl _DMA_UR1T_STA
                                    215 	.globl _DMA_UR1T_CR
                                    216 	.globl _DMA_UR1T_CFG
                                    217 	.globl _TM4PS
                                    218 	.globl _TM3PS
                                    219 	.globl _TM2PS
                                    220 	.globl _IRC48MCR
                                    221 	.globl _IRCDB
                                    222 	.globl _MCLKOCR
                                    223 	.globl _CKSEL
                                    224 	.globl _IRC32KCR
                                    225 	.globl _X32KCR
                                    226 	.globl _XOSCCR
                                    227 	.globl _HIRCCR
                                    228 	.globl _CLKDIV
                                    229 	.globl _DMA_SPI_CFG2
                                    230 	.globl _DMA_SPI_RXAL
                                    231 	.globl _DMA_SPI_RXAH
                                    232 	.globl _DMA_SPI_TXAL
                                    233 	.globl _DMA_SPI_TXAH
                                    234 	.globl _DMA_SPI_DONE
                                    235 	.globl _DMA_SPI_AMT
                                    236 	.globl _DMA_SPI_STA
                                    237 	.globl _DMA_SPI_CR
                                    238 	.globl _DMA_SPI_CFG
                                    239 	.globl _SSEC
                                    240 	.globl _SEC
                                    241 	.globl _MIN
                                    242 	.globl _HOUR
                                    243 	.globl _DAY
                                    244 	.globl _MONTH
                                    245 	.globl _YEAR
                                    246 	.globl _INISSEC
                                    247 	.globl _INISEC
                                    248 	.globl _INIMIN
                                    249 	.globl _INIHOUR
                                    250 	.globl _INIDAY
                                    251 	.globl _INIMONTH
                                    252 	.globl _INIYEAR
                                    253 	.globl _ALASSEC
                                    254 	.globl _ALASEC
                                    255 	.globl _ALAMIN
                                    256 	.globl _ALAHOUR
                                    257 	.globl _RTCIF
                                    258 	.globl _RTCIEN
                                    259 	.globl _RTCCFG
                                    260 	.globl _RTCCR
                                    261 	.globl _PWMB_OISR
                                    262 	.globl _PWMB_DTR
                                    263 	.globl _PWMB_BKR
                                    264 	.globl _PWMB_CCR4L
                                    265 	.globl _PWMB_CCR4H
                                    266 	.globl _PWMB_CCR3L
                                    267 	.globl _PWMB_CCR3H
                                    268 	.globl _PWMB_CCR2L
                                    269 	.globl _PWMB_CCR2H
                                    270 	.globl _PWMB_CCR1L
                                    271 	.globl _PWMB_CCR1H
                                    272 	.globl _PWMB_RCR
                                    273 	.globl _PWMB_ARRL
                                    274 	.globl _PWMB_ARRH
                                    275 	.globl _PWMB_PSCRL
                                    276 	.globl _PWMB_PSCRH
                                    277 	.globl _PWMB_CNTRL
                                    278 	.globl _PWMB_CNTRH
                                    279 	.globl _PWMB_CCER2
                                    280 	.globl _PWMB_CCER1
                                    281 	.globl _PWMB_CCMR4
                                    282 	.globl _PWMB_CCMR3
                                    283 	.globl _PWMB_CCMR2
                                    284 	.globl _PWMB_CCMR1
                                    285 	.globl _PWMB_EGR
                                    286 	.globl _PWMB_SR2
                                    287 	.globl _PWMB_SR1
                                    288 	.globl _PWMB_IER
                                    289 	.globl _PWMB_ETR
                                    290 	.globl _PWMB_SMCR
                                    291 	.globl _PWMB_CR2
                                    292 	.globl _PWMB_CR1
                                    293 	.globl _PWMA_OISR
                                    294 	.globl _PWMA_DTR
                                    295 	.globl _PWMA_BKR
                                    296 	.globl _PWMA_CCR4L
                                    297 	.globl _PWMA_CCR4H
                                    298 	.globl _PWMA_CCR3L
                                    299 	.globl _PWMA_CCR3H
                                    300 	.globl _PWMA_CCR2L
                                    301 	.globl _PWMA_CCR2H
                                    302 	.globl _PWMA_CCR1L
                                    303 	.globl _PWMA_CCR1H
                                    304 	.globl _PWMA_RCR
                                    305 	.globl _PWMA_ARRL
                                    306 	.globl _PWMA_ARRH
                                    307 	.globl _PWMA_PSCRL
                                    308 	.globl _PWMA_PSCRH
                                    309 	.globl _PWMA_CNTRL
                                    310 	.globl _PWMA_CNTRH
                                    311 	.globl _PWMA_CCER2
                                    312 	.globl _PWMA_CCER1
                                    313 	.globl _PWMA_CCMR4
                                    314 	.globl _PWMA_CCMR3
                                    315 	.globl _PWMA_CCMR2
                                    316 	.globl _PWMA_CCMR1
                                    317 	.globl _PWMA_EGR
                                    318 	.globl _PWMA_SR2
                                    319 	.globl _PWMA_SR1
                                    320 	.globl _PWMA_IER
                                    321 	.globl _PWMA_ETR
                                    322 	.globl _PWMA_SMCR
                                    323 	.globl _PWMA_CR2
                                    324 	.globl _PWMA_CR1
                                    325 	.globl _PWMB_IOAUX
                                    326 	.globl _PWMB_PS
                                    327 	.globl _PWMB_ENO
                                    328 	.globl _PWMB_ETRPS
                                    329 	.globl _PWMA_IOAUX
                                    330 	.globl _PWMA_PS
                                    331 	.globl _PWMA_ENO
                                    332 	.globl _PWMA_ETRPS
                                    333 	.globl _RSTFLAG
                                    334 	.globl _SPFUNC
                                    335 	.globl _OPCON
                                    336 	.globl _ARCON
                                    337 	.globl _MD4
                                    338 	.globl _MD5
                                    339 	.globl _MD0
                                    340 	.globl _MD1
                                    341 	.globl _MD2
                                    342 	.globl _MD3
                                    343 	.globl _DMA_LCM_RXAL
                                    344 	.globl _DMA_LCM_RXAH
                                    345 	.globl _DMA_LCM_TXAL
                                    346 	.globl _DMA_LCM_TXAH
                                    347 	.globl _DMA_LCM_DONE
                                    348 	.globl _DMA_LCM_AMT
                                    349 	.globl _DMA_LCM_STA
                                    350 	.globl _DMA_LCM_CR
                                    351 	.globl _DMA_LCM_CFG
                                    352 	.globl _LCMIDDAT
                                    353 	.globl _LCMIDDATH
                                    354 	.globl _LCMIDDATL
                                    355 	.globl _LCMSTA
                                    356 	.globl _LCMCR
                                    357 	.globl _LCMCFG2
                                    358 	.globl _LCMCFG
                                    359 	.globl _I2CMSAUX
                                    360 	.globl _I2CRXD
                                    361 	.globl _I2CTXD
                                    362 	.globl _I2CSLADR
                                    363 	.globl _I2CSLST
                                    364 	.globl _I2CSLCR
                                    365 	.globl _I2CMSST
                                    366 	.globl _I2CMSCR
                                    367 	.globl _I2CCFG
                                    368 	.globl _PINIPH
                                    369 	.globl _PINIPL
                                    370 	.globl _P5IE
                                    371 	.globl _P5DR
                                    372 	.globl _P5SR
                                    373 	.globl _P5NCS
                                    374 	.globl _P5PU
                                    375 	.globl _P5WKUE
                                    376 	.globl _P5IM1
                                    377 	.globl _P5IM0
                                    378 	.globl _P5INTF
                                    379 	.globl _P5INTE
                                    380 	.globl _P3IE
                                    381 	.globl _P3DR
                                    382 	.globl _P3SR
                                    383 	.globl _P3NCS
                                    384 	.globl _P3PU
                                    385 	.globl _P3WKUE
                                    386 	.globl _P3IM1
                                    387 	.globl _P3IM0
                                    388 	.globl _P3INTF
                                    389 	.globl _P3INTE
                                    390 	.globl _P2IE
                                    391 	.globl _P2DR
                                    392 	.globl _P2SR
                                    393 	.globl _P2NCS
                                    394 	.globl _P2PU
                                    395 	.globl _P2WKUE
                                    396 	.globl _P2IM1
                                    397 	.globl _P2IM0
                                    398 	.globl _P2INTF
                                    399 	.globl _P2INTE
                                    400 	.globl _P1IE
                                    401 	.globl _P1DR
                                    402 	.globl _P1SR
                                    403 	.globl _P1NCS
                                    404 	.globl _P1PU
                                    405 	.globl _P1WKUE
                                    406 	.globl _P1IM1
                                    407 	.globl _P1IM0
                                    408 	.globl _P1INTF
                                    409 	.globl _P1INTE
                                    410 	.globl _DMA_M2M_RXAL
                                    411 	.globl _DMA_M2M_RXAH
                                    412 	.globl _DMA_M2M_TXAL
                                    413 	.globl _DMA_M2M_TXAH
                                    414 	.globl _DMA_M2M_DONE
                                    415 	.globl _DMA_M2M_AMT
                                    416 	.globl _DMA_M2M_STA
                                    417 	.globl _DMA_M2M_CR
                                    418 	.globl _DMA_M2M_CFG
                                    419 	.globl _CMPEXCFG
                                    420 	.globl _CHIP_PACKAGE_TYPE
                                    421 	.globl _CHIP_TEST_DAY_BCD
                                    422 	.globl _CHIP_TEST_MONTH_BCD
                                    423 	.globl _CHIP_TEST_YEAR_BCD
                                    424 	.globl _PROGRAM_AREA_SIZE
                                    425 	.globl _VRTRIM_44MHz
                                    426 	.globl _VRTRIM_27MHz
                                    427 	.globl _VRTRIM_10MHz
                                    428 	.globl _VRTRIM_6MHz
                                    429 	.globl _IRTRIM_48MHz
                                    430 	.globl _IRTRIM_44_2368MHz
                                    431 	.globl _IRTRIM_40MHz
                                    432 	.globl _IRTRIM_36_864MHz
                                    433 	.globl _IRTRIM_35MHz
                                    434 	.globl _IRTRIM_33_1776MHz
                                    435 	.globl _IRTRIM_30MHz
                                    436 	.globl _IRTRIM_27MHz
                                    437 	.globl _IRTRIM_24MHz
                                    438 	.globl _IRTRIM_22_1184MHz
                                    439 	.globl ___OTHER_INFO
                                    440 	.globl _CHIP_GUID
                                    441 	.globl _DMA_ADC_CHSW1
                                    442 	.globl _DMA_ADC_CHSW0
                                    443 	.globl _DMA_ADC_CFG2
                                    444 	.globl _DMA_ADC_RXAL
                                    445 	.globl _DMA_ADC_RXAH
                                    446 	.globl _DMA_ADC_STA
                                    447 	.globl _DMA_ADC_CR
                                    448 	.globl _DMA_ADC_CFG
                                    449 	.globl _ADCEXCFG
                                    450 	.globl _ADCTIM
                                    451 	.globl _serialConsoleInitialise
                                    452 	.globl _putchar
                                    453 	.globl _getchar
                                    454 ;--------------------------------------------------------
                                    455 ; special function registers
                                    456 ;--------------------------------------------------------
                                    457 	.area RSEG    (ABS,DATA)
      000000                        458 	.org 0x0000
                           0000BC   459 _ADC_CONTR	=	0x00bc
                           0000BD   460 _ADC_RESH	=	0x00bd
                           0000BE   461 _ADC_RESL	=	0x00be
                           00BDBE   462 _ADC_RES	=	0xbdbe
                           0000DE   463 _ADCCFG	=	0x00de
                           0000FA   464 _DMA_ADC_AMT	=	0x00fa
                           0000E6   465 _CMPCR1	=	0x00e6
                           0000E7   466 _CMPCR2	=	0x00e7
                           000082   467 _DPL	=	0x0082
                           000083   468 _DPH	=	0x0083
                           008382   469 _DP	=	0x8382
                           0000E3   470 _DPS	=	0x00e3
                           0000E4   471 _DPL1	=	0x00e4
                           0000E5   472 _DPH1	=	0x00e5
                           0000AE   473 _TA	=	0x00ae
                           000090   474 _P1	=	0x0090
                           000091   475 _P1M1	=	0x0091
                           000092   476 _P1M0	=	0x0092
                           0000A0   477 _P2	=	0x00a0
                           000095   478 _P2M1	=	0x0095
                           000096   479 _P2M0	=	0x0096
                           0000B0   480 _P3	=	0x00b0
                           0000B1   481 _P3M1	=	0x00b1
                           0000B2   482 _P3M0	=	0x00b2
                           0000C8   483 _P5	=	0x00c8
                           0000C9   484 _P5M1	=	0x00c9
                           0000CA   485 _P5M0	=	0x00ca
                           0000C2   486 _IAP_DATA	=	0x00c2
                           0000C3   487 _IAP_ADDRH	=	0x00c3
                           0000C4   488 _IAP_ADDRL	=	0x00c4
                           00C3C4   489 _IAP_ADDR	=	0xc3c4
                           0000C5   490 _IAP_CMD	=	0x00c5
                           0000C6   491 _IAP_TRIG	=	0x00c6
                           0000C7   492 _IAP_CONTR	=	0x00c7
                           0000F5   493 _IAP_TPS	=	0x00f5
                           00008F   494 _INT_CLKO	=	0x008f
                           0000A8   495 _IE1	=	0x00a8
                           0000B8   496 _IP1L	=	0x00b8
                           0000B7   497 _IP1H	=	0x00b7
                           0000AF   498 _IE2	=	0x00af
                           0000B5   499 _IP2L	=	0x00b5
                           0000B6   500 _IP2H	=	0x00b6
                           0000DF   501 _IP3L	=	0x00df
                           0000EE   502 _IP3H	=	0x00ee
                           000081   503 _SP	=	0x0081
                           0000D0   504 _PSW	=	0x00d0
                           0000E0   505 _ACC	=	0x00e0
                           0000F0   506 _B	=	0x00f0
                           000087   507 _PCON	=	0x0087
                           0000FF   508 _RSTCFG	=	0x00ff
                           0000A2   509 _P_SW1	=	0x00a2
                           0000BA   510 _P_SW2	=	0x00ba
                           0000A1   511 _BUS_SPEED	=	0x00a1
                           0000AA   512 _WKTCL	=	0x00aa
                           0000AB   513 _WKTCH	=	0x00ab
                           00ABAA   514 _WKTC	=	0xabaa
                           0000CD   515 _SPSTAT	=	0x00cd
                           0000CE   516 _SPCTL	=	0x00ce
                           0000CF   517 _SPDAT	=	0x00cf
                           00009D   518 _IRCBAND	=	0x009d
                           00009E   519 _LIRTRIM	=	0x009e
                           00009F   520 _IRTRIM	=	0x009f
                           000088   521 _TCON	=	0x0088
                           000089   522 _TMOD	=	0x0089
                           00008A   523 _T0L	=	0x008a
                           00008C   524 _T0H	=	0x008c
                           008C8A   525 _T0	=	0x8c8a
                           00008B   526 _T1L	=	0x008b
                           00008D   527 _T1H	=	0x008d
                           008D8B   528 _T1	=	0x8d8b
                           0000D7   529 _T2L	=	0x00d7
                           0000D6   530 _T2H	=	0x00d6
                           00D6D7   531 _T2	=	0xd6d7
                           00008E   532 _AUXR	=	0x008e
                           0000C1   533 _WDT_CONTR	=	0x00c1
                           0000D1   534 _T4T3M	=	0x00d1
                           0000D2   535 _T4H	=	0x00d2
                           0000D3   536 _T4L	=	0x00d3
                           00D2D3   537 _T4	=	0xd2d3
                           0000D4   538 _T3H	=	0x00d4
                           0000D5   539 _T3L	=	0x00d5
                           00D4D5   540 _T3	=	0xd4d5
                           0000EF   541 _AUXINTIF	=	0x00ef
                           0000A9   542 _SADDR	=	0x00a9
                           0000B9   543 _SADEN	=	0x00b9
                           000098   544 _S1CON	=	0x0098
                           000099   545 _S1BUF	=	0x0099
                           00009A   546 _S2CON	=	0x009a
                           00009B   547 _S2BUF	=	0x009b
                           0000AC   548 _S3CON	=	0x00ac
                           0000AD   549 _S3BUF	=	0x00ad
                           000084   550 _S4CON	=	0x0084
                           000085   551 _S4BUF	=	0x0085
                           0000DC   552 _USBCLK	=	0x00dc
                           0000EC   553 _USBDAT	=	0x00ec
                           0000F4   554 _USBCON	=	0x00f4
                           0000FC   555 _USBADR	=	0x00fc
                                    556 ;--------------------------------------------------------
                                    557 ; special function bits
                                    558 ;--------------------------------------------------------
                                    559 	.area RSEG    (ABS,DATA)
      000000                        560 	.org 0x0000
                           000090   561 _P1_0	=	0x0090
                           000091   562 _P1_1	=	0x0091
                           000092   563 _P1_2	=	0x0092
                           000093   564 _P1_3	=	0x0093
                           000094   565 _P1_4	=	0x0094
                           000095   566 _P1_5	=	0x0095
                           000096   567 _P1_6	=	0x0096
                           000097   568 _P1_7	=	0x0097
                           0000A0   569 _P2_0	=	0x00a0
                           0000A1   570 _P2_1	=	0x00a1
                           0000A2   571 _P2_2	=	0x00a2
                           0000A3   572 _P2_3	=	0x00a3
                           0000A4   573 _P2_4	=	0x00a4
                           0000A5   574 _P2_5	=	0x00a5
                           0000A6   575 _P2_6	=	0x00a6
                           0000A7   576 _P2_7	=	0x00a7
                           0000B0   577 _P3_0	=	0x00b0
                           0000B1   578 _P3_1	=	0x00b1
                           0000B2   579 _P3_2	=	0x00b2
                           0000B3   580 _P3_3	=	0x00b3
                           0000B4   581 _P3_4	=	0x00b4
                           0000B5   582 _P3_5	=	0x00b5
                           0000B6   583 _P3_6	=	0x00b6
                           0000B7   584 _P3_7	=	0x00b7
                           0000C8   585 _P5_0	=	0x00c8
                           0000C9   586 _P5_1	=	0x00c9
                           0000CA   587 _P5_2	=	0x00ca
                           0000CB   588 _P5_3	=	0x00cb
                           0000CC   589 _P5_4	=	0x00cc
                           0000CD   590 _P5_5	=	0x00cd
                           000088   591 _INT0TR	=	0x0088
                           00008A   592 _INT1TR	=	0x008a
                           0000A8   593 _INT0IE	=	0x00a8
                           0000AA   594 _INT1IE	=	0x00aa
                           0000AF   595 _EA	=	0x00af
                           0000D0   596 _P	=	0x00d0
                           0000D1   597 _F1	=	0x00d1
                           0000D2   598 _OV	=	0x00d2
                           0000D3   599 _RS0	=	0x00d3
                           0000D4   600 _RS1	=	0x00d4
                           0000D5   601 _F0	=	0x00d5
                           0000D6   602 _AC	=	0x00d6
                           0000D7   603 _CY	=	0x00d7
                           00008C   604 _T0RUN	=	0x008c
                           00008E   605 _T1RUN	=	0x008e
                           0000A9   606 _T0IE	=	0x00a9
                           0000AB   607 _T1IE	=	0x00ab
                           00009F   608 _S1SM0_FE	=	0x009f
                                    609 ;--------------------------------------------------------
                                    610 ; overlayable register banks
                                    611 ;--------------------------------------------------------
                                    612 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        613 	.ds 8
                                    614 ;--------------------------------------------------------
                                    615 ; internal ram data
                                    616 ;--------------------------------------------------------
                                    617 	.area DSEG    (DATA)
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
      00004A                        932 _uartGetCharacter_result_65536_69:
      00004A                        933 	.ds 1
      00004B                        934 __serialConsoleUart:
      00004B                        935 	.ds 1
      00004C                        936 _serialConsoleInitialise_PARM_2:
      00004C                        937 	.ds 4
      000050                        938 _serialConsoleInitialise_PARM_3:
      000050                        939 	.ds 1
      000051                        940 _serialConsoleInitialise_uart_65536_131:
      000051                        941 	.ds 1
      000052                        942 _putchar_c_65536_133:
      000052                        943 	.ds 2
      000054                        944 _putchar_c_262144_137:
      000054                        945 	.ds 1
      000055                        946 _putchar_c_196608_140:
      000055                        947 	.ds 1
      000056                        948 _getchar_result_262144_145:
      000056                        949 	.ds 1
                                    950 ;--------------------------------------------------------
                                    951 ; absolute external ram data
                                    952 ;--------------------------------------------------------
                                    953 	.area XABS    (ABS,XDATA)
                                    954 ;--------------------------------------------------------
                                    955 ; external initialized ram data
                                    956 ;--------------------------------------------------------
                                    957 	.area XISEG   (XDATA)
                                    958 	.area HOME    (CODE)
                                    959 	.area GSINIT0 (CODE)
                                    960 	.area GSINIT1 (CODE)
                                    961 	.area GSINIT2 (CODE)
                                    962 	.area GSINIT3 (CODE)
                                    963 	.area GSINIT4 (CODE)
                                    964 	.area GSINIT5 (CODE)
                                    965 	.area GSINIT  (CODE)
                                    966 	.area GSFINAL (CODE)
                                    967 	.area CSEG    (CODE)
                                    968 ;--------------------------------------------------------
                                    969 ; global & static initialisations
                                    970 ;--------------------------------------------------------
                                    971 	.area HOME    (CODE)
                                    972 	.area GSINIT  (CODE)
                                    973 	.area GSFINAL (CODE)
                                    974 	.area GSINIT  (CODE)
                                    975 ;--------------------------------------------------------
                                    976 ; Home
                                    977 ;--------------------------------------------------------
                                    978 	.area HOME    (CODE)
                                    979 	.area HOME    (CODE)
                                    980 ;--------------------------------------------------------
                                    981 ; code
                                    982 ;--------------------------------------------------------
                                    983 	.area CSEG    (CODE)
                                    984 ;------------------------------------------------------------
                                    985 ;Allocation info for local variables in function 'serialConsoleInitialise'
                                    986 ;------------------------------------------------------------
                                    987 ;baudRate                  Allocated with name '_serialConsoleInitialise_PARM_2'
                                    988 ;pinConfiguration          Allocated with name '_serialConsoleInitialise_PARM_3'
                                    989 ;uart                      Allocated with name '_serialConsoleInitialise_uart_65536_131'
                                    990 ;------------------------------------------------------------
                                    991 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:52: void serialConsoleInitialise(Uart uart, uint32_t baudRate, uint8_t pinConfiguration) {
                                    992 ;	-----------------------------------------
                                    993 ;	 function serialConsoleInitialise
                                    994 ;	-----------------------------------------
      00101E                        995 _serialConsoleInitialise:
                           000007   996 	ar7 = 0x07
                           000006   997 	ar6 = 0x06
                           000005   998 	ar5 = 0x05
                           000004   999 	ar4 = 0x04
                           000003  1000 	ar3 = 0x03
                           000002  1001 	ar2 = 0x02
                           000001  1002 	ar1 = 0x01
                           000000  1003 	ar0 = 0x00
      00101E E5 82            [12] 1004 	mov	a,dpl
      001020 90 00 51         [24] 1005 	mov	dptr,#_serialConsoleInitialise_uart_65536_131
      001023 F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:53: _serialConsoleUart = uart;
      001024 E0               [24] 1008 	movx	a,@dptr
      001025 FF               [12] 1009 	mov	r7,a
      001026 90 00 4B         [24] 1010 	mov	dptr,#__serialConsoleUart
      001029 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:54: uartInitialise(_serialConsoleUart, baudRate, CONSOLE_TIMER, UART_8N1, pinConfiguration);
      00102A 90 00 4C         [24] 1013 	mov	dptr,#_serialConsoleInitialise_PARM_2
      00102D E0               [24] 1014 	movx	a,@dptr
      00102E FB               [12] 1015 	mov	r3,a
      00102F A3               [24] 1016 	inc	dptr
      001030 E0               [24] 1017 	movx	a,@dptr
      001031 FC               [12] 1018 	mov	r4,a
      001032 A3               [24] 1019 	inc	dptr
      001033 E0               [24] 1020 	movx	a,@dptr
      001034 FD               [12] 1021 	mov	r5,a
      001035 A3               [24] 1022 	inc	dptr
      001036 E0               [24] 1023 	movx	a,@dptr
      001037 FE               [12] 1024 	mov	r6,a
      001038 90 00 50         [24] 1025 	mov	dptr,#_serialConsoleInitialise_PARM_3
      00103B E0               [24] 1026 	movx	a,@dptr
      00103C FA               [12] 1027 	mov	r2,a
      00103D 90 01 BE         [24] 1028 	mov	dptr,#_uartInitialise_PARM_2
      001040 EB               [12] 1029 	mov	a,r3
      001041 F0               [24] 1030 	movx	@dptr,a
      001042 EC               [12] 1031 	mov	a,r4
      001043 A3               [24] 1032 	inc	dptr
      001044 F0               [24] 1033 	movx	@dptr,a
      001045 ED               [12] 1034 	mov	a,r5
      001046 A3               [24] 1035 	inc	dptr
      001047 F0               [24] 1036 	movx	@dptr,a
      001048 EE               [12] 1037 	mov	a,r6
      001049 A3               [24] 1038 	inc	dptr
      00104A F0               [24] 1039 	movx	@dptr,a
      00104B 90 01 C2         [24] 1040 	mov	dptr,#_uartInitialise_PARM_3
      00104E 74 01            [12] 1041 	mov	a,#0x01
      001050 F0               [24] 1042 	movx	@dptr,a
      001051 90 01 C3         [24] 1043 	mov	dptr,#_uartInitialise_PARM_4
      001054 E4               [12] 1044 	clr	a
      001055 F0               [24] 1045 	movx	@dptr,a
      001056 90 01 C4         [24] 1046 	mov	dptr,#_uartInitialise_PARM_5
      001059 EA               [12] 1047 	mov	a,r2
      00105A F0               [24] 1048 	movx	@dptr,a
      00105B 8F 82            [24] 1049 	mov	dpl,r7
                                   1050 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:55: }
      00105D 02 1A 4C         [24] 1051 	ljmp	_uartInitialise
                                   1052 ;------------------------------------------------------------
                                   1053 ;Allocation info for local variables in function 'putchar'
                                   1054 ;------------------------------------------------------------
                                   1055 ;c                         Allocated with name '_putchar_c_65536_133'
                                   1056 ;__1310720013              Allocated with name '_putchar___1310720013_131072_134'
                                   1057 ;__1966080008              Allocated with name '_putchar___1966080008_196608_135'
                                   1058 ;__1966080009              Allocated with name '_putchar___1966080009_196608_136'
                                   1059 ;__1966080010              Allocated with name '_putchar___1966080010_196608_136'
                                   1060 ;__1966080011              Allocated with name '_putchar___1966080011_196608_136'
                                   1061 ;uart                      Allocated with name '_putchar_uart_262144_137'
                                   1062 ;c                         Allocated with name '_putchar_c_262144_137'
                                   1063 ;blocking                  Allocated with name '_putchar_blocking_262144_137'
                                   1064 ;__1310720014              Allocated with name '_putchar___1310720014_131072_139'
                                   1065 ;__1310720015              Allocated with name '_putchar___1310720015_131072_139'
                                   1066 ;__1310720016              Allocated with name '_putchar___1310720016_131072_139'
                                   1067 ;uart                      Allocated with name '_putchar_uart_196608_140'
                                   1068 ;c                         Allocated with name '_putchar_c_196608_140'
                                   1069 ;blocking                  Allocated with name '_putchar_blocking_196608_140'
                                   1070 ;------------------------------------------------------------
                                   1071 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:57: int putchar(int c) {
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function putchar
                                   1074 ;	-----------------------------------------
      001060                       1075 _putchar:
      001060 AF 83            [24] 1076 	mov	r7,dph
      001062 E5 82            [12] 1077 	mov	a,dpl
      001064 90 00 52         [24] 1078 	mov	dptr,#_putchar_c_65536_133
      001067 F0               [24] 1079 	movx	@dptr,a
      001068 EF               [12] 1080 	mov	a,r7
      001069 A3               [24] 1081 	inc	dptr
      00106A F0               [24] 1082 	movx	@dptr,a
                                   1083 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:58: if (c == '\n') {
      00106B 90 00 52         [24] 1084 	mov	dptr,#_putchar_c_65536_133
      00106E E0               [24] 1085 	movx	a,@dptr
      00106F FE               [12] 1086 	mov	r6,a
      001070 A3               [24] 1087 	inc	dptr
      001071 E0               [24] 1088 	movx	a,@dptr
      001072 FF               [12] 1089 	mov	r7,a
      001073 BE 0A 29         [24] 1090 	cjne	r6,#0x0a,00102$
      001076 BF 00 26         [24] 1091 	cjne	r7,#0x00,00102$
                                   1092 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:61: uartSendCharacter(_serialConsoleUart, '\r', BLOCKING);
      001079 90 00 4B         [24] 1093 	mov	dptr,#__serialConsoleUart
      00107C E0               [24] 1094 	movx	a,@dptr
      00107D FF               [12] 1095 	mov	r7,a
      00107E 90 00 54         [24] 1096 	mov	dptr,#_putchar_c_262144_137
      001081 74 0D            [12] 1097 	mov	a,#0x0d
      001083 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:193: return uartSendBlock(uart, &c, 1, blocking);
      001084 90 01 D1         [24] 1100 	mov	dptr,#_uartSendBlock_PARM_2
      001087 74 54            [12] 1101 	mov	a,#_putchar_c_262144_137
      001089 F0               [24] 1102 	movx	@dptr,a
      00108A 74 00            [12] 1103 	mov	a,#(_putchar_c_262144_137 >> 8)
      00108C A3               [24] 1104 	inc	dptr
      00108D F0               [24] 1105 	movx	@dptr,a
      00108E E4               [12] 1106 	clr	a
      00108F A3               [24] 1107 	inc	dptr
      001090 F0               [24] 1108 	movx	@dptr,a
      001091 90 01 D4         [24] 1109 	mov	dptr,#_uartSendBlock_PARM_3
      001094 04               [12] 1110 	inc	a
      001095 F0               [24] 1111 	movx	@dptr,a
      001096 90 01 D5         [24] 1112 	mov	dptr,#_uartSendBlock_PARM_4
      001099 F0               [24] 1113 	movx	@dptr,a
      00109A 8F 82            [24] 1114 	mov	dpl,r7
      00109C 12 1E 02         [24] 1115 	lcall	_uartSendBlock
                                   1116 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:61: uartSendCharacter(_serialConsoleUart, '\r', BLOCKING);
      00109F                       1117 00102$:
                                   1118 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:64: uartSendCharacter(_serialConsoleUart, c, BLOCKING);
      00109F 90 00 52         [24] 1119 	mov	dptr,#_putchar_c_65536_133
      0010A2 E0               [24] 1120 	movx	a,@dptr
      0010A3 FE               [12] 1121 	mov	r6,a
      0010A4 A3               [24] 1122 	inc	dptr
      0010A5 E0               [24] 1123 	movx	a,@dptr
      0010A6 FF               [12] 1124 	mov	r7,a
      0010A7 8E 05            [24] 1125 	mov	ar5,r6
      0010A9 90 00 4B         [24] 1126 	mov	dptr,#__serialConsoleUart
      0010AC E0               [24] 1127 	movx	a,@dptr
      0010AD FC               [12] 1128 	mov	r4,a
      0010AE 90 00 55         [24] 1129 	mov	dptr,#_putchar_c_196608_140
      0010B1 ED               [12] 1130 	mov	a,r5
      0010B2 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:193: return uartSendBlock(uart, &c, 1, blocking);
      0010B3 90 01 D1         [24] 1133 	mov	dptr,#_uartSendBlock_PARM_2
      0010B6 74 55            [12] 1134 	mov	a,#_putchar_c_196608_140
      0010B8 F0               [24] 1135 	movx	@dptr,a
      0010B9 74 00            [12] 1136 	mov	a,#(_putchar_c_196608_140 >> 8)
      0010BB A3               [24] 1137 	inc	dptr
      0010BC F0               [24] 1138 	movx	@dptr,a
      0010BD E4               [12] 1139 	clr	a
      0010BE A3               [24] 1140 	inc	dptr
      0010BF F0               [24] 1141 	movx	@dptr,a
      0010C0 90 01 D4         [24] 1142 	mov	dptr,#_uartSendBlock_PARM_3
      0010C3 04               [12] 1143 	inc	a
      0010C4 F0               [24] 1144 	movx	@dptr,a
      0010C5 90 01 D5         [24] 1145 	mov	dptr,#_uartSendBlock_PARM_4
      0010C8 F0               [24] 1146 	movx	@dptr,a
      0010C9 8C 82            [24] 1147 	mov	dpl,r4
      0010CB C0 07            [24] 1148 	push	ar7
      0010CD C0 06            [24] 1149 	push	ar6
      0010CF 12 1E 02         [24] 1150 	lcall	_uartSendBlock
      0010D2 D0 06            [24] 1151 	pop	ar6
      0010D4 D0 07            [24] 1152 	pop	ar7
                                   1153 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:66: return c;
      0010D6 8E 82            [24] 1154 	mov	dpl,r6
      0010D8 8F 83            [24] 1155 	mov	dph,r7
                                   1156 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:67: }
      0010DA 22               [24] 1157 	ret
                                   1158 ;------------------------------------------------------------
                                   1159 ;Allocation info for local variables in function 'getchar'
                                   1160 ;------------------------------------------------------------
                                   1161 ;__1310720018              Allocated with name '_getchar___1310720018_131072_142'
                                   1162 ;__1310720019              Allocated with name '_getchar___1310720019_131072_143'
                                   1163 ;__1310720020              Allocated with name '_getchar___1310720020_131072_143'
                                   1164 ;uart                      Allocated with name '_getchar_uart_196608_144'
                                   1165 ;blocking                  Allocated with name '_getchar_blocking_196608_144'
                                   1166 ;result                    Allocated with name '_getchar_result_262144_145'
                                   1167 ;------------------------------------------------------------
                                   1168 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:69: int getchar() {
                                   1169 ;	-----------------------------------------
                                   1170 ;	 function getchar
                                   1171 ;	-----------------------------------------
      0010DB                       1172 _getchar:
                                   1173 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:70: return uartGetCharacter(_serialConsoleUart, BLOCKING);
      0010DB 90 00 4B         [24] 1174 	mov	dptr,#__serialConsoleUart
      0010DE E0               [24] 1175 	movx	a,@dptr
      0010DF FF               [12] 1176 	mov	r7,a
                                   1177 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:186: uint8_t result = 0;
      0010E0 90 00 56         [24] 1178 	mov	dptr,#_getchar_result_262144_145
      0010E3 E4               [12] 1179 	clr	a
      0010E4 F0               [24] 1180 	movx	@dptr,a
                                   1181 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:187: uartGetBlock(uart, &result, 1, blocking);
      0010E5 90 01 CB         [24] 1182 	mov	dptr,#_uartGetBlock_PARM_2
      0010E8 74 56            [12] 1183 	mov	a,#_getchar_result_262144_145
      0010EA F0               [24] 1184 	movx	@dptr,a
      0010EB 74 00            [12] 1185 	mov	a,#(_getchar_result_262144_145 >> 8)
      0010ED A3               [24] 1186 	inc	dptr
      0010EE F0               [24] 1187 	movx	@dptr,a
      0010EF E4               [12] 1188 	clr	a
      0010F0 A3               [24] 1189 	inc	dptr
      0010F1 F0               [24] 1190 	movx	@dptr,a
      0010F2 90 01 CE         [24] 1191 	mov	dptr,#_uartGetBlock_PARM_3
      0010F5 04               [12] 1192 	inc	a
      0010F6 F0               [24] 1193 	movx	@dptr,a
      0010F7 90 01 CF         [24] 1194 	mov	dptr,#_uartGetBlock_PARM_4
      0010FA F0               [24] 1195 	movx	@dptr,a
      0010FB 8F 82            [24] 1196 	mov	dpl,r7
      0010FD 12 1D 97         [24] 1197 	lcall	_uartGetBlock
                                   1198 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:189: return result;
      001100 90 00 56         [24] 1199 	mov	dptr,#_getchar_result_262144_145
      001103 E0               [24] 1200 	movx	a,@dptr
      001104 FF               [12] 1201 	mov	r7,a
                                   1202 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:70: return uartGetCharacter(_serialConsoleUart, BLOCKING);
      001105 7E 00            [12] 1203 	mov	r6,#0x00
      001107 8F 82            [24] 1204 	mov	dpl,r7
      001109 8E 83            [24] 1205 	mov	dph,r6
                                   1206 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:71: }
      00110B 22               [24] 1207 	ret
                                   1208 	.area CSEG    (CODE)
                                   1209 	.area CONST   (CODE)
                                   1210 	.area XINIT   (CODE)
                                   1211 	.area CABS    (ABS,CODE)
