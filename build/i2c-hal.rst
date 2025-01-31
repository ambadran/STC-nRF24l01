                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _gpioConfigure
                                     12 	.globl _S1SM0_FE
                                     13 	.globl _T1IE
                                     14 	.globl _T0IE
                                     15 	.globl _T1RUN
                                     16 	.globl _T0RUN
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _EA
                                     26 	.globl _INT1IE
                                     27 	.globl _INT0IE
                                     28 	.globl _INT1TR
                                     29 	.globl _INT0TR
                                     30 	.globl _P5_5
                                     31 	.globl _P5_4
                                     32 	.globl _P5_3
                                     33 	.globl _P5_2
                                     34 	.globl _P5_1
                                     35 	.globl _P5_0
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _P2_7
                                     45 	.globl _P2_6
                                     46 	.globl _P2_5
                                     47 	.globl _P2_4
                                     48 	.globl _P2_3
                                     49 	.globl _P2_2
                                     50 	.globl _P2_1
                                     51 	.globl _P2_0
                                     52 	.globl _P1_7
                                     53 	.globl _P1_6
                                     54 	.globl _P1_5
                                     55 	.globl _P1_4
                                     56 	.globl _P1_3
                                     57 	.globl _P1_2
                                     58 	.globl _P1_1
                                     59 	.globl _P1_0
                                     60 	.globl _USBADR
                                     61 	.globl _USBCON
                                     62 	.globl _USBDAT
                                     63 	.globl _USBCLK
                                     64 	.globl _S4BUF
                                     65 	.globl _S4CON
                                     66 	.globl _S3BUF
                                     67 	.globl _S3CON
                                     68 	.globl _S2BUF
                                     69 	.globl _S2CON
                                     70 	.globl _S1BUF
                                     71 	.globl _S1CON
                                     72 	.globl _SADEN
                                     73 	.globl _SADDR
                                     74 	.globl _AUXINTIF
                                     75 	.globl _T3
                                     76 	.globl _T3L
                                     77 	.globl _T3H
                                     78 	.globl _T4
                                     79 	.globl _T4L
                                     80 	.globl _T4H
                                     81 	.globl _T4T3M
                                     82 	.globl _WDT_CONTR
                                     83 	.globl _AUXR
                                     84 	.globl _T2
                                     85 	.globl _T2H
                                     86 	.globl _T2L
                                     87 	.globl _T1
                                     88 	.globl _T1H
                                     89 	.globl _T1L
                                     90 	.globl _T0
                                     91 	.globl _T0H
                                     92 	.globl _T0L
                                     93 	.globl _TMOD
                                     94 	.globl _TCON
                                     95 	.globl _IRTRIM
                                     96 	.globl _LIRTRIM
                                     97 	.globl _IRCBAND
                                     98 	.globl _SPDAT
                                     99 	.globl _SPCTL
                                    100 	.globl _SPSTAT
                                    101 	.globl _WKTC
                                    102 	.globl _WKTCH
                                    103 	.globl _WKTCL
                                    104 	.globl _BUS_SPEED
                                    105 	.globl _P_SW2
                                    106 	.globl _P_SW1
                                    107 	.globl _RSTCFG
                                    108 	.globl _PCON
                                    109 	.globl _B
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _SP
                                    113 	.globl _IP3H
                                    114 	.globl _IP3L
                                    115 	.globl _IP2H
                                    116 	.globl _IP2L
                                    117 	.globl _IE2
                                    118 	.globl _IP1H
                                    119 	.globl _IP1L
                                    120 	.globl _IE1
                                    121 	.globl _INT_CLKO
                                    122 	.globl _IAP_TPS
                                    123 	.globl _IAP_CONTR
                                    124 	.globl _IAP_TRIG
                                    125 	.globl _IAP_CMD
                                    126 	.globl _IAP_ADDR
                                    127 	.globl _IAP_ADDRL
                                    128 	.globl _IAP_ADDRH
                                    129 	.globl _IAP_DATA
                                    130 	.globl _P5M0
                                    131 	.globl _P5M1
                                    132 	.globl _P5
                                    133 	.globl _P3M0
                                    134 	.globl _P3M1
                                    135 	.globl _P3
                                    136 	.globl _P2M0
                                    137 	.globl _P2M1
                                    138 	.globl _P2
                                    139 	.globl _P1M0
                                    140 	.globl _P1M1
                                    141 	.globl _P1
                                    142 	.globl _TA
                                    143 	.globl _DPH1
                                    144 	.globl _DPL1
                                    145 	.globl _DPS
                                    146 	.globl _DP
                                    147 	.globl _DPH
                                    148 	.globl _DPL
                                    149 	.globl _CMPCR2
                                    150 	.globl _CMPCR1
                                    151 	.globl _DMA_ADC_AMT
                                    152 	.globl _ADCCFG
                                    153 	.globl _ADC_RES
                                    154 	.globl _ADC_RESL
                                    155 	.globl _ADC_RESH
                                    156 	.globl _ADC_CONTR
                                    157 	.globl _i2cStartCommand_PARM_2
                                    158 	.globl _i2cInitialiseMaster_PARM_2
                                    159 	.globl _DMA_UR4R_TXAL
                                    160 	.globl _DMA_UR4R_TXAH
                                    161 	.globl _DMA_UR4R_DONE
                                    162 	.globl _DMA_UR4R_AMT
                                    163 	.globl _DMA_UR4R_STA
                                    164 	.globl _DMA_UR4R_CR
                                    165 	.globl _DMA_UR4R_CFG
                                    166 	.globl _DMA_UR4T_TXAL
                                    167 	.globl _DMA_UR4T_TXAH
                                    168 	.globl _DMA_UR4T_DONE
                                    169 	.globl _DMA_UR4T_AMT
                                    170 	.globl _DMA_UR4T_STA
                                    171 	.globl _DMA_UR4T_CR
                                    172 	.globl _DMA_UR4T_CFG
                                    173 	.globl _DMA_UR3R_TXAL
                                    174 	.globl _DMA_UR3R_TXAH
                                    175 	.globl _DMA_UR3R_DONE
                                    176 	.globl _DMA_UR3R_AMT
                                    177 	.globl _DMA_UR3R_STA
                                    178 	.globl _DMA_UR3R_CR
                                    179 	.globl _DMA_UR3R_CFG
                                    180 	.globl _DMA_UR3T_TXAL
                                    181 	.globl _DMA_UR3T_TXAH
                                    182 	.globl _DMA_UR3T_DONE
                                    183 	.globl _DMA_UR3T_AMT
                                    184 	.globl _DMA_UR3T_STA
                                    185 	.globl _DMA_UR3T_CR
                                    186 	.globl _DMA_UR3T_CFG
                                    187 	.globl _DMA_UR2R_TXAL
                                    188 	.globl _DMA_UR2R_TXAH
                                    189 	.globl _DMA_UR2R_DONE
                                    190 	.globl _DMA_UR2R_AMT
                                    191 	.globl _DMA_UR2R_STA
                                    192 	.globl _DMA_UR2R_CR
                                    193 	.globl _DMA_UR2R_CFG
                                    194 	.globl _DMA_UR2T_TXAL
                                    195 	.globl _DMA_UR2T_TXAH
                                    196 	.globl _DMA_UR2T_DONE
                                    197 	.globl _DMA_UR2T_AMT
                                    198 	.globl _DMA_UR2T_STA
                                    199 	.globl _DMA_UR2T_CR
                                    200 	.globl _DMA_UR2T_CFG
                                    201 	.globl _DMA_UR1R_TXAL
                                    202 	.globl _DMA_UR1R_TXAH
                                    203 	.globl _DMA_UR1R_DONE
                                    204 	.globl _DMA_UR1R_AMT
                                    205 	.globl _DMA_UR1R_STA
                                    206 	.globl _DMA_UR1R_CR
                                    207 	.globl _DMA_UR1R_CFG
                                    208 	.globl _DMA_UR1T_TXAL
                                    209 	.globl _DMA_UR1T_TXAH
                                    210 	.globl _DMA_UR1T_DONE
                                    211 	.globl _DMA_URTX_AMT
                                    212 	.globl _DMA_UR1T_STA
                                    213 	.globl _DMA_UR1T_CR
                                    214 	.globl _DMA_UR1T_CFG
                                    215 	.globl _TM4PS
                                    216 	.globl _TM3PS
                                    217 	.globl _TM2PS
                                    218 	.globl _IRC48MCR
                                    219 	.globl _IRCDB
                                    220 	.globl _MCLKOCR
                                    221 	.globl _CKSEL
                                    222 	.globl _IRC32KCR
                                    223 	.globl _X32KCR
                                    224 	.globl _XOSCCR
                                    225 	.globl _HIRCCR
                                    226 	.globl _CLKDIV
                                    227 	.globl _DMA_SPI_CFG2
                                    228 	.globl _DMA_SPI_RXAL
                                    229 	.globl _DMA_SPI_RXAH
                                    230 	.globl _DMA_SPI_TXAL
                                    231 	.globl _DMA_SPI_TXAH
                                    232 	.globl _DMA_SPI_DONE
                                    233 	.globl _DMA_SPI_AMT
                                    234 	.globl _DMA_SPI_STA
                                    235 	.globl _DMA_SPI_CR
                                    236 	.globl _DMA_SPI_CFG
                                    237 	.globl _SSEC
                                    238 	.globl _SEC
                                    239 	.globl _MIN
                                    240 	.globl _HOUR
                                    241 	.globl _DAY
                                    242 	.globl _MONTH
                                    243 	.globl _YEAR
                                    244 	.globl _INISSEC
                                    245 	.globl _INISEC
                                    246 	.globl _INIMIN
                                    247 	.globl _INIHOUR
                                    248 	.globl _INIDAY
                                    249 	.globl _INIMONTH
                                    250 	.globl _INIYEAR
                                    251 	.globl _ALASSEC
                                    252 	.globl _ALASEC
                                    253 	.globl _ALAMIN
                                    254 	.globl _ALAHOUR
                                    255 	.globl _RTCIF
                                    256 	.globl _RTCIEN
                                    257 	.globl _RTCCFG
                                    258 	.globl _RTCCR
                                    259 	.globl _PWMB_OISR
                                    260 	.globl _PWMB_DTR
                                    261 	.globl _PWMB_BKR
                                    262 	.globl _PWMB_CCR4L
                                    263 	.globl _PWMB_CCR4H
                                    264 	.globl _PWMB_CCR3L
                                    265 	.globl _PWMB_CCR3H
                                    266 	.globl _PWMB_CCR2L
                                    267 	.globl _PWMB_CCR2H
                                    268 	.globl _PWMB_CCR1L
                                    269 	.globl _PWMB_CCR1H
                                    270 	.globl _PWMB_RCR
                                    271 	.globl _PWMB_ARRL
                                    272 	.globl _PWMB_ARRH
                                    273 	.globl _PWMB_PSCRL
                                    274 	.globl _PWMB_PSCRH
                                    275 	.globl _PWMB_CNTRL
                                    276 	.globl _PWMB_CNTRH
                                    277 	.globl _PWMB_CCER2
                                    278 	.globl _PWMB_CCER1
                                    279 	.globl _PWMB_CCMR4
                                    280 	.globl _PWMB_CCMR3
                                    281 	.globl _PWMB_CCMR2
                                    282 	.globl _PWMB_CCMR1
                                    283 	.globl _PWMB_EGR
                                    284 	.globl _PWMB_SR2
                                    285 	.globl _PWMB_SR1
                                    286 	.globl _PWMB_IER
                                    287 	.globl _PWMB_ETR
                                    288 	.globl _PWMB_SMCR
                                    289 	.globl _PWMB_CR2
                                    290 	.globl _PWMB_CR1
                                    291 	.globl _PWMA_OISR
                                    292 	.globl _PWMA_DTR
                                    293 	.globl _PWMA_BKR
                                    294 	.globl _PWMA_CCR4L
                                    295 	.globl _PWMA_CCR4H
                                    296 	.globl _PWMA_CCR3L
                                    297 	.globl _PWMA_CCR3H
                                    298 	.globl _PWMA_CCR2L
                                    299 	.globl _PWMA_CCR2H
                                    300 	.globl _PWMA_CCR1L
                                    301 	.globl _PWMA_CCR1H
                                    302 	.globl _PWMA_RCR
                                    303 	.globl _PWMA_ARRL
                                    304 	.globl _PWMA_ARRH
                                    305 	.globl _PWMA_PSCRL
                                    306 	.globl _PWMA_PSCRH
                                    307 	.globl _PWMA_CNTRL
                                    308 	.globl _PWMA_CNTRH
                                    309 	.globl _PWMA_CCER2
                                    310 	.globl _PWMA_CCER1
                                    311 	.globl _PWMA_CCMR4
                                    312 	.globl _PWMA_CCMR3
                                    313 	.globl _PWMA_CCMR2
                                    314 	.globl _PWMA_CCMR1
                                    315 	.globl _PWMA_EGR
                                    316 	.globl _PWMA_SR2
                                    317 	.globl _PWMA_SR1
                                    318 	.globl _PWMA_IER
                                    319 	.globl _PWMA_ETR
                                    320 	.globl _PWMA_SMCR
                                    321 	.globl _PWMA_CR2
                                    322 	.globl _PWMA_CR1
                                    323 	.globl _PWMB_IOAUX
                                    324 	.globl _PWMB_PS
                                    325 	.globl _PWMB_ENO
                                    326 	.globl _PWMB_ETRPS
                                    327 	.globl _PWMA_IOAUX
                                    328 	.globl _PWMA_PS
                                    329 	.globl _PWMA_ENO
                                    330 	.globl _PWMA_ETRPS
                                    331 	.globl _RSTFLAG
                                    332 	.globl _SPFUNC
                                    333 	.globl _OPCON
                                    334 	.globl _ARCON
                                    335 	.globl _MD4
                                    336 	.globl _MD5
                                    337 	.globl _MD0
                                    338 	.globl _MD1
                                    339 	.globl _MD2
                                    340 	.globl _MD3
                                    341 	.globl _DMA_LCM_RXAL
                                    342 	.globl _DMA_LCM_RXAH
                                    343 	.globl _DMA_LCM_TXAL
                                    344 	.globl _DMA_LCM_TXAH
                                    345 	.globl _DMA_LCM_DONE
                                    346 	.globl _DMA_LCM_AMT
                                    347 	.globl _DMA_LCM_STA
                                    348 	.globl _DMA_LCM_CR
                                    349 	.globl _DMA_LCM_CFG
                                    350 	.globl _LCMIDDAT
                                    351 	.globl _LCMIDDATH
                                    352 	.globl _LCMIDDATL
                                    353 	.globl _LCMSTA
                                    354 	.globl _LCMCR
                                    355 	.globl _LCMCFG2
                                    356 	.globl _LCMCFG
                                    357 	.globl _I2CMSAUX
                                    358 	.globl _I2CRXD
                                    359 	.globl _I2CTXD
                                    360 	.globl _I2CSLADR
                                    361 	.globl _I2CSLST
                                    362 	.globl _I2CSLCR
                                    363 	.globl _I2CMSST
                                    364 	.globl _I2CMSCR
                                    365 	.globl _I2CCFG
                                    366 	.globl _PINIPH
                                    367 	.globl _PINIPL
                                    368 	.globl _P5IE
                                    369 	.globl _P5DR
                                    370 	.globl _P5SR
                                    371 	.globl _P5NCS
                                    372 	.globl _P5PU
                                    373 	.globl _P5WKUE
                                    374 	.globl _P5IM1
                                    375 	.globl _P5IM0
                                    376 	.globl _P5INTF
                                    377 	.globl _P5INTE
                                    378 	.globl _P3IE
                                    379 	.globl _P3DR
                                    380 	.globl _P3SR
                                    381 	.globl _P3NCS
                                    382 	.globl _P3PU
                                    383 	.globl _P3WKUE
                                    384 	.globl _P3IM1
                                    385 	.globl _P3IM0
                                    386 	.globl _P3INTF
                                    387 	.globl _P3INTE
                                    388 	.globl _P2IE
                                    389 	.globl _P2DR
                                    390 	.globl _P2SR
                                    391 	.globl _P2NCS
                                    392 	.globl _P2PU
                                    393 	.globl _P2WKUE
                                    394 	.globl _P2IM1
                                    395 	.globl _P2IM0
                                    396 	.globl _P2INTF
                                    397 	.globl _P2INTE
                                    398 	.globl _P1IE
                                    399 	.globl _P1DR
                                    400 	.globl _P1SR
                                    401 	.globl _P1NCS
                                    402 	.globl _P1PU
                                    403 	.globl _P1WKUE
                                    404 	.globl _P1IM1
                                    405 	.globl _P1IM0
                                    406 	.globl _P1INTF
                                    407 	.globl _P1INTE
                                    408 	.globl _DMA_M2M_RXAL
                                    409 	.globl _DMA_M2M_RXAH
                                    410 	.globl _DMA_M2M_TXAL
                                    411 	.globl _DMA_M2M_TXAH
                                    412 	.globl _DMA_M2M_DONE
                                    413 	.globl _DMA_M2M_AMT
                                    414 	.globl _DMA_M2M_STA
                                    415 	.globl _DMA_M2M_CR
                                    416 	.globl _DMA_M2M_CFG
                                    417 	.globl _CMPEXCFG
                                    418 	.globl _CHIP_PACKAGE_TYPE
                                    419 	.globl _CHIP_TEST_DAY_BCD
                                    420 	.globl _CHIP_TEST_MONTH_BCD
                                    421 	.globl _CHIP_TEST_YEAR_BCD
                                    422 	.globl _PROGRAM_AREA_SIZE
                                    423 	.globl _VRTRIM_44MHz
                                    424 	.globl _VRTRIM_27MHz
                                    425 	.globl _VRTRIM_10MHz
                                    426 	.globl _VRTRIM_6MHz
                                    427 	.globl _IRTRIM_48MHz
                                    428 	.globl _IRTRIM_44_2368MHz
                                    429 	.globl _IRTRIM_40MHz
                                    430 	.globl _IRTRIM_36_864MHz
                                    431 	.globl _IRTRIM_35MHz
                                    432 	.globl _IRTRIM_33_1776MHz
                                    433 	.globl _IRTRIM_30MHz
                                    434 	.globl _IRTRIM_27MHz
                                    435 	.globl _IRTRIM_24MHz
                                    436 	.globl _IRTRIM_22_1184MHz
                                    437 	.globl ___OTHER_INFO
                                    438 	.globl _CHIP_GUID
                                    439 	.globl _DMA_ADC_CHSW1
                                    440 	.globl _DMA_ADC_CHSW0
                                    441 	.globl _DMA_ADC_CFG2
                                    442 	.globl _DMA_ADC_RXAL
                                    443 	.globl _DMA_ADC_RXAH
                                    444 	.globl _DMA_ADC_STA
                                    445 	.globl _DMA_ADC_CR
                                    446 	.globl _DMA_ADC_CFG
                                    447 	.globl _ADCEXCFG
                                    448 	.globl _ADCTIM
                                    449 	.globl _i2cInitialiseMaster
                                    450 	.globl _i2cStart
                                    451 	.globl _i2cStop
                                    452 	.globl _i2cSendAck
                                    453 	.globl _i2cSendData
                                    454 	.globl _i2cReceiveAck
                                    455 	.globl _i2cReceiveData
                                    456 	.globl _i2cStartCommand
                                    457 	.globl _i2cSendByte
                                    458 	.globl _i2cReadByteSendAck
                                    459 ;--------------------------------------------------------
                                    460 ; special function registers
                                    461 ;--------------------------------------------------------
                                    462 	.area RSEG    (ABS,DATA)
      000000                        463 	.org 0x0000
                           0000BC   464 _ADC_CONTR	=	0x00bc
                           0000BD   465 _ADC_RESH	=	0x00bd
                           0000BE   466 _ADC_RESL	=	0x00be
                           00BDBE   467 _ADC_RES	=	0xbdbe
                           0000DE   468 _ADCCFG	=	0x00de
                           0000FA   469 _DMA_ADC_AMT	=	0x00fa
                           0000E6   470 _CMPCR1	=	0x00e6
                           0000E7   471 _CMPCR2	=	0x00e7
                           000082   472 _DPL	=	0x0082
                           000083   473 _DPH	=	0x0083
                           008382   474 _DP	=	0x8382
                           0000E3   475 _DPS	=	0x00e3
                           0000E4   476 _DPL1	=	0x00e4
                           0000E5   477 _DPH1	=	0x00e5
                           0000AE   478 _TA	=	0x00ae
                           000090   479 _P1	=	0x0090
                           000091   480 _P1M1	=	0x0091
                           000092   481 _P1M0	=	0x0092
                           0000A0   482 _P2	=	0x00a0
                           000095   483 _P2M1	=	0x0095
                           000096   484 _P2M0	=	0x0096
                           0000B0   485 _P3	=	0x00b0
                           0000B1   486 _P3M1	=	0x00b1
                           0000B2   487 _P3M0	=	0x00b2
                           0000C8   488 _P5	=	0x00c8
                           0000C9   489 _P5M1	=	0x00c9
                           0000CA   490 _P5M0	=	0x00ca
                           0000C2   491 _IAP_DATA	=	0x00c2
                           0000C3   492 _IAP_ADDRH	=	0x00c3
                           0000C4   493 _IAP_ADDRL	=	0x00c4
                           00C3C4   494 _IAP_ADDR	=	0xc3c4
                           0000C5   495 _IAP_CMD	=	0x00c5
                           0000C6   496 _IAP_TRIG	=	0x00c6
                           0000C7   497 _IAP_CONTR	=	0x00c7
                           0000F5   498 _IAP_TPS	=	0x00f5
                           00008F   499 _INT_CLKO	=	0x008f
                           0000A8   500 _IE1	=	0x00a8
                           0000B8   501 _IP1L	=	0x00b8
                           0000B7   502 _IP1H	=	0x00b7
                           0000AF   503 _IE2	=	0x00af
                           0000B5   504 _IP2L	=	0x00b5
                           0000B6   505 _IP2H	=	0x00b6
                           0000DF   506 _IP3L	=	0x00df
                           0000EE   507 _IP3H	=	0x00ee
                           000081   508 _SP	=	0x0081
                           0000D0   509 _PSW	=	0x00d0
                           0000E0   510 _ACC	=	0x00e0
                           0000F0   511 _B	=	0x00f0
                           000087   512 _PCON	=	0x0087
                           0000FF   513 _RSTCFG	=	0x00ff
                           0000A2   514 _P_SW1	=	0x00a2
                           0000BA   515 _P_SW2	=	0x00ba
                           0000A1   516 _BUS_SPEED	=	0x00a1
                           0000AA   517 _WKTCL	=	0x00aa
                           0000AB   518 _WKTCH	=	0x00ab
                           00ABAA   519 _WKTC	=	0xabaa
                           0000CD   520 _SPSTAT	=	0x00cd
                           0000CE   521 _SPCTL	=	0x00ce
                           0000CF   522 _SPDAT	=	0x00cf
                           00009D   523 _IRCBAND	=	0x009d
                           00009E   524 _LIRTRIM	=	0x009e
                           00009F   525 _IRTRIM	=	0x009f
                           000088   526 _TCON	=	0x0088
                           000089   527 _TMOD	=	0x0089
                           00008A   528 _T0L	=	0x008a
                           00008C   529 _T0H	=	0x008c
                           008C8A   530 _T0	=	0x8c8a
                           00008B   531 _T1L	=	0x008b
                           00008D   532 _T1H	=	0x008d
                           008D8B   533 _T1	=	0x8d8b
                           0000D7   534 _T2L	=	0x00d7
                           0000D6   535 _T2H	=	0x00d6
                           00D6D7   536 _T2	=	0xd6d7
                           00008E   537 _AUXR	=	0x008e
                           0000C1   538 _WDT_CONTR	=	0x00c1
                           0000D1   539 _T4T3M	=	0x00d1
                           0000D2   540 _T4H	=	0x00d2
                           0000D3   541 _T4L	=	0x00d3
                           00D2D3   542 _T4	=	0xd2d3
                           0000D4   543 _T3H	=	0x00d4
                           0000D5   544 _T3L	=	0x00d5
                           00D4D5   545 _T3	=	0xd4d5
                           0000EF   546 _AUXINTIF	=	0x00ef
                           0000A9   547 _SADDR	=	0x00a9
                           0000B9   548 _SADEN	=	0x00b9
                           000098   549 _S1CON	=	0x0098
                           000099   550 _S1BUF	=	0x0099
                           00009A   551 _S2CON	=	0x009a
                           00009B   552 _S2BUF	=	0x009b
                           0000AC   553 _S3CON	=	0x00ac
                           0000AD   554 _S3BUF	=	0x00ad
                           000084   555 _S4CON	=	0x0084
                           000085   556 _S4BUF	=	0x0085
                           0000DC   557 _USBCLK	=	0x00dc
                           0000EC   558 _USBDAT	=	0x00ec
                           0000F4   559 _USBCON	=	0x00f4
                           0000FC   560 _USBADR	=	0x00fc
                                    561 ;--------------------------------------------------------
                                    562 ; special function bits
                                    563 ;--------------------------------------------------------
                                    564 	.area RSEG    (ABS,DATA)
      000000                        565 	.org 0x0000
                           000090   566 _P1_0	=	0x0090
                           000091   567 _P1_1	=	0x0091
                           000092   568 _P1_2	=	0x0092
                           000093   569 _P1_3	=	0x0093
                           000094   570 _P1_4	=	0x0094
                           000095   571 _P1_5	=	0x0095
                           000096   572 _P1_6	=	0x0096
                           000097   573 _P1_7	=	0x0097
                           0000A0   574 _P2_0	=	0x00a0
                           0000A1   575 _P2_1	=	0x00a1
                           0000A2   576 _P2_2	=	0x00a2
                           0000A3   577 _P2_3	=	0x00a3
                           0000A4   578 _P2_4	=	0x00a4
                           0000A5   579 _P2_5	=	0x00a5
                           0000A6   580 _P2_6	=	0x00a6
                           0000A7   581 _P2_7	=	0x00a7
                           0000B0   582 _P3_0	=	0x00b0
                           0000B1   583 _P3_1	=	0x00b1
                           0000B2   584 _P3_2	=	0x00b2
                           0000B3   585 _P3_3	=	0x00b3
                           0000B4   586 _P3_4	=	0x00b4
                           0000B5   587 _P3_5	=	0x00b5
                           0000B6   588 _P3_6	=	0x00b6
                           0000B7   589 _P3_7	=	0x00b7
                           0000C8   590 _P5_0	=	0x00c8
                           0000C9   591 _P5_1	=	0x00c9
                           0000CA   592 _P5_2	=	0x00ca
                           0000CB   593 _P5_3	=	0x00cb
                           0000CC   594 _P5_4	=	0x00cc
                           0000CD   595 _P5_5	=	0x00cd
                           000088   596 _INT0TR	=	0x0088
                           00008A   597 _INT1TR	=	0x008a
                           0000A8   598 _INT0IE	=	0x00a8
                           0000AA   599 _INT1IE	=	0x00aa
                           0000AF   600 _EA	=	0x00af
                           0000D0   601 _P	=	0x00d0
                           0000D1   602 _F1	=	0x00d1
                           0000D2   603 _OV	=	0x00d2
                           0000D3   604 _RS0	=	0x00d3
                           0000D4   605 _RS1	=	0x00d4
                           0000D5   606 _F0	=	0x00d5
                           0000D6   607 _AC	=	0x00d6
                           0000D7   608 _CY	=	0x00d7
                           00008C   609 _T0RUN	=	0x008c
                           00008E   610 _T1RUN	=	0x008e
                           0000A9   611 _T0IE	=	0x00a9
                           0000AB   612 _T1IE	=	0x00ab
                           00009F   613 _S1SM0_FE	=	0x009f
                                    614 ;--------------------------------------------------------
                                    615 ; overlayable register banks
                                    616 ;--------------------------------------------------------
                                    617 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        618 	.ds 8
                                    619 ;--------------------------------------------------------
                                    620 ; internal ram data
                                    621 ;--------------------------------------------------------
                                    622 	.area DSEG    (DATA)
                                    623 ;--------------------------------------------------------
                                    624 ; overlayable items in internal ram 
                                    625 ;--------------------------------------------------------
                                    626 ;--------------------------------------------------------
                                    627 ; indirectly addressable internal ram data
                                    628 ;--------------------------------------------------------
                                    629 	.area ISEG    (DATA)
                                    630 ;--------------------------------------------------------
                                    631 ; absolute internal ram data
                                    632 ;--------------------------------------------------------
                                    633 	.area IABS    (ABS,DATA)
                                    634 	.area IABS    (ABS,DATA)
                                    635 ;--------------------------------------------------------
                                    636 ; bit data
                                    637 ;--------------------------------------------------------
                                    638 	.area BSEG    (BIT)
                                    639 ;--------------------------------------------------------
                                    640 ; paged external ram data
                                    641 ;--------------------------------------------------------
                                    642 	.area PSEG    (PAG,XDATA)
                                    643 ;--------------------------------------------------------
                                    644 ; external ram data
                                    645 ;--------------------------------------------------------
                                    646 	.area XSEG    (XDATA)
                           00FEA8   647 _ADCTIM	=	0xfea8
                           00FEAD   648 _ADCEXCFG	=	0xfead
                           00FA10   649 _DMA_ADC_CFG	=	0xfa10
                           00FA11   650 _DMA_ADC_CR	=	0xfa11
                           00FA12   651 _DMA_ADC_STA	=	0xfa12
                           00FA17   652 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   653 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   654 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   655 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   656 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   657 _CHIP_GUID	=	0xfde0
                           00FDE7   658 ___OTHER_INFO	=	0xfde7
                           00FDEB   659 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   660 _IRTRIM_24MHz	=	0xfdec
                           00FDED   661 _IRTRIM_27MHz	=	0xfded
                           00FDEE   662 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   663 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   664 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   665 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   666 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   667 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   668 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   669 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   670 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   671 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   672 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   673 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   674 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   675 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   676 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   677 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   678 _CMPEXCFG	=	0xfeae
                           00FA00   679 _DMA_M2M_CFG	=	0xfa00
                           00FA01   680 _DMA_M2M_CR	=	0xfa01
                           00FA02   681 _DMA_M2M_STA	=	0xfa02
                           00FA03   682 _DMA_M2M_AMT	=	0xfa03
                           00FA04   683 _DMA_M2M_DONE	=	0xfa04
                           00FA05   684 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   685 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   686 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   687 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   688 _P1INTE	=	0xfd01
                           00FD11   689 _P1INTF	=	0xfd11
                           00FD21   690 _P1IM0	=	0xfd21
                           00FD31   691 _P1IM1	=	0xfd31
                           00FD41   692 _P1WKUE	=	0xfd41
                           00FE11   693 _P1PU	=	0xfe11
                           00FE19   694 _P1NCS	=	0xfe19
                           00FE21   695 _P1SR	=	0xfe21
                           00FE29   696 _P1DR	=	0xfe29
                           00FE31   697 _P1IE	=	0xfe31
                           00FD02   698 _P2INTE	=	0xfd02
                           00FD12   699 _P2INTF	=	0xfd12
                           00FD22   700 _P2IM0	=	0xfd22
                           00FD32   701 _P2IM1	=	0xfd32
                           00FD42   702 _P2WKUE	=	0xfd42
                           00FE12   703 _P2PU	=	0xfe12
                           00FE1A   704 _P2NCS	=	0xfe1a
                           00FE22   705 _P2SR	=	0xfe22
                           00FE2A   706 _P2DR	=	0xfe2a
                           00FE32   707 _P2IE	=	0xfe32
                           00FD03   708 _P3INTE	=	0xfd03
                           00FD13   709 _P3INTF	=	0xfd13
                           00FD23   710 _P3IM0	=	0xfd23
                           00FD33   711 _P3IM1	=	0xfd33
                           00FD43   712 _P3WKUE	=	0xfd43
                           00FE13   713 _P3PU	=	0xfe13
                           00FE1B   714 _P3NCS	=	0xfe1b
                           00FE23   715 _P3SR	=	0xfe23
                           00FE2B   716 _P3DR	=	0xfe2b
                           00FE33   717 _P3IE	=	0xfe33
                           00FD05   718 _P5INTE	=	0xfd05
                           00FD15   719 _P5INTF	=	0xfd15
                           00FD25   720 _P5IM0	=	0xfd25
                           00FD35   721 _P5IM1	=	0xfd35
                           00FD45   722 _P5WKUE	=	0xfd45
                           00FE15   723 _P5PU	=	0xfe15
                           00FE1D   724 _P5NCS	=	0xfe1d
                           00FE25   725 _P5SR	=	0xfe25
                           00FE2D   726 _P5DR	=	0xfe2d
                           00FE35   727 _P5IE	=	0xfe35
                           00FD60   728 _PINIPL	=	0xfd60
                           00FD61   729 _PINIPH	=	0xfd61
                           00FE80   730 _I2CCFG	=	0xfe80
                           00FE81   731 _I2CMSCR	=	0xfe81
                           00FE82   732 _I2CMSST	=	0xfe82
                           00FE83   733 _I2CSLCR	=	0xfe83
                           00FE84   734 _I2CSLST	=	0xfe84
                           00FE85   735 _I2CSLADR	=	0xfe85
                           00FE86   736 _I2CTXD	=	0xfe86
                           00FE87   737 _I2CRXD	=	0xfe87
                           00FE88   738 _I2CMSAUX	=	0xfe88
                           00FE50   739 _LCMCFG	=	0xfe50
                           00FE51   740 _LCMCFG2	=	0xfe51
                           00FE52   741 _LCMCR	=	0xfe52
                           00FE53   742 _LCMSTA	=	0xfe53
                           00FE54   743 _LCMIDDATL	=	0xfe54
                           00FE55   744 _LCMIDDATH	=	0xfe55
                           00FE54   745 _LCMIDDAT	=	0xfe54
                           00FA70   746 _DMA_LCM_CFG	=	0xfa70
                           00FA71   747 _DMA_LCM_CR	=	0xfa71
                           00FA72   748 _DMA_LCM_STA	=	0xfa72
                           00FA73   749 _DMA_LCM_AMT	=	0xfa73
                           00FA74   750 _DMA_LCM_DONE	=	0xfa74
                           00FA75   751 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   752 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   753 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   754 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   755 _MD3	=	0xfcf0
                           00FCF1   756 _MD2	=	0xfcf1
                           00FCF2   757 _MD1	=	0xfcf2
                           00FCF3   758 _MD0	=	0xfcf3
                           00FCF4   759 _MD5	=	0xfcf4
                           00FCF5   760 _MD4	=	0xfcf5
                           00FCF6   761 _ARCON	=	0xfcf6
                           00FCF7   762 _OPCON	=	0xfcf7
                           00FE08   763 _SPFUNC	=	0xfe08
                           00FE09   764 _RSTFLAG	=	0xfe09
                           00FEB0   765 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   766 _PWMA_ENO	=	0xfeb1
                           00FEB2   767 _PWMA_PS	=	0xfeb2
                           00FEB3   768 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   769 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   770 _PWMB_ENO	=	0xfeb5
                           00FEB6   771 _PWMB_PS	=	0xfeb6
                           00FEB7   772 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   773 _PWMA_CR1	=	0xfec0
                           00FEC1   774 _PWMA_CR2	=	0xfec1
                           00FEC2   775 _PWMA_SMCR	=	0xfec2
                           00FEC3   776 _PWMA_ETR	=	0xfec3
                           00FEC4   777 _PWMA_IER	=	0xfec4
                           00FEC5   778 _PWMA_SR1	=	0xfec5
                           00FEC6   779 _PWMA_SR2	=	0xfec6
                           00FEC7   780 _PWMA_EGR	=	0xfec7
                           00FEC8   781 _PWMA_CCMR1	=	0xfec8
                           00FEC9   782 _PWMA_CCMR2	=	0xfec9
                           00FECA   783 _PWMA_CCMR3	=	0xfeca
                           00FECB   784 _PWMA_CCMR4	=	0xfecb
                           00FECC   785 _PWMA_CCER1	=	0xfecc
                           00FECD   786 _PWMA_CCER2	=	0xfecd
                           00FECE   787 _PWMA_CNTRH	=	0xfece
                           00FECF   788 _PWMA_CNTRL	=	0xfecf
                           00FED0   789 _PWMA_PSCRH	=	0xfed0
                           00FED1   790 _PWMA_PSCRL	=	0xfed1
                           00FED2   791 _PWMA_ARRH	=	0xfed2
                           00FED3   792 _PWMA_ARRL	=	0xfed3
                           00FED4   793 _PWMA_RCR	=	0xfed4
                           00FED5   794 _PWMA_CCR1H	=	0xfed5
                           00FED6   795 _PWMA_CCR1L	=	0xfed6
                           00FED7   796 _PWMA_CCR2H	=	0xfed7
                           00FED8   797 _PWMA_CCR2L	=	0xfed8
                           00FED9   798 _PWMA_CCR3H	=	0xfed9
                           00FEDA   799 _PWMA_CCR3L	=	0xfeda
                           00FEDB   800 _PWMA_CCR4H	=	0xfedb
                           00FEDC   801 _PWMA_CCR4L	=	0xfedc
                           00FEDD   802 _PWMA_BKR	=	0xfedd
                           00FEDE   803 _PWMA_DTR	=	0xfede
                           00FEDF   804 _PWMA_OISR	=	0xfedf
                           00FEE0   805 _PWMB_CR1	=	0xfee0
                           00FEE1   806 _PWMB_CR2	=	0xfee1
                           00FEE2   807 _PWMB_SMCR	=	0xfee2
                           00FEE3   808 _PWMB_ETR	=	0xfee3
                           00FEE4   809 _PWMB_IER	=	0xfee4
                           00FEE5   810 _PWMB_SR1	=	0xfee5
                           00FEE6   811 _PWMB_SR2	=	0xfee6
                           00FEE7   812 _PWMB_EGR	=	0xfee7
                           00FEE8   813 _PWMB_CCMR1	=	0xfee8
                           00FEE9   814 _PWMB_CCMR2	=	0xfee9
                           00FEEA   815 _PWMB_CCMR3	=	0xfeea
                           00FEEB   816 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   817 _PWMB_CCER1	=	0xfeec
                           00FEED   818 _PWMB_CCER2	=	0xfeed
                           00FEEE   819 _PWMB_CNTRH	=	0xfeee
                           00FEEF   820 _PWMB_CNTRL	=	0xfeef
                           00FEF0   821 _PWMB_PSCRH	=	0xfef0
                           00FEF1   822 _PWMB_PSCRL	=	0xfef1
                           00FEF2   823 _PWMB_ARRH	=	0xfef2
                           00FEF3   824 _PWMB_ARRL	=	0xfef3
                           00FEF4   825 _PWMB_RCR	=	0xfef4
                           00FEF5   826 _PWMB_CCR1H	=	0xfef5
                           00FEF6   827 _PWMB_CCR1L	=	0xfef6
                           00FEF7   828 _PWMB_CCR2H	=	0xfef7
                           00FEF8   829 _PWMB_CCR2L	=	0xfef8
                           00FEF9   830 _PWMB_CCR3H	=	0xfef9
                           00FEFA   831 _PWMB_CCR3L	=	0xfefa
                           00FEFB   832 _PWMB_CCR4H	=	0xfefb
                           00FEFC   833 _PWMB_CCR4L	=	0xfefc
                           00FEFD   834 _PWMB_BKR	=	0xfefd
                           00FEFE   835 _PWMB_DTR	=	0xfefe
                           00FEFF   836 _PWMB_OISR	=	0xfeff
                           00FE60   837 _RTCCR	=	0xfe60
                           00FE61   838 _RTCCFG	=	0xfe61
                           00FE62   839 _RTCIEN	=	0xfe62
                           00FE63   840 _RTCIF	=	0xfe63
                           00FE64   841 _ALAHOUR	=	0xfe64
                           00FE65   842 _ALAMIN	=	0xfe65
                           00FE66   843 _ALASEC	=	0xfe66
                           00FE67   844 _ALASSEC	=	0xfe67
                           00FE68   845 _INIYEAR	=	0xfe68
                           00FE69   846 _INIMONTH	=	0xfe69
                           00FE6A   847 _INIDAY	=	0xfe6a
                           00FE6B   848 _INIHOUR	=	0xfe6b
                           00FE6C   849 _INIMIN	=	0xfe6c
                           00FE6D   850 _INISEC	=	0xfe6d
                           00FE6E   851 _INISSEC	=	0xfe6e
                           00FE70   852 _YEAR	=	0xfe70
                           00FE71   853 _MONTH	=	0xfe71
                           00FE72   854 _DAY	=	0xfe72
                           00FE73   855 _HOUR	=	0xfe73
                           00FE74   856 _MIN	=	0xfe74
                           00FE75   857 _SEC	=	0xfe75
                           00FE76   858 _SSEC	=	0xfe76
                           00FA20   859 _DMA_SPI_CFG	=	0xfa20
                           00FA21   860 _DMA_SPI_CR	=	0xfa21
                           00FA22   861 _DMA_SPI_STA	=	0xfa22
                           00FA23   862 _DMA_SPI_AMT	=	0xfa23
                           00FA24   863 _DMA_SPI_DONE	=	0xfa24
                           00FA25   864 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   865 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   866 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   867 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   868 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   869 _CLKDIV	=	0xfe01
                           00FE02   870 _HIRCCR	=	0xfe02
                           00FE03   871 _XOSCCR	=	0xfe03
                           00FE08   872 _X32KCR	=	0xfe08
                           00FE04   873 _IRC32KCR	=	0xfe04
                           00FE00   874 _CKSEL	=	0xfe00
                           00FE05   875 _MCLKOCR	=	0xfe05
                           00FE06   876 _IRCDB	=	0xfe06
                           00FE07   877 _IRC48MCR	=	0xfe07
                           00FEA2   878 _TM2PS	=	0xfea2
                           00FEA3   879 _TM3PS	=	0xfea3
                           00FEA4   880 _TM4PS	=	0xfea4
                           00FA30   881 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   882 _DMA_UR1T_CR	=	0xfa31
                           00FA32   883 _DMA_UR1T_STA	=	0xfa32
                           00FA33   884 _DMA_URTX_AMT	=	0xfa33
                           00FA34   885 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   886 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   887 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   888 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   889 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   890 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   891 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   892 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   893 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   894 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   895 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   896 _DMA_UR2T_CR	=	0xfa31
                           00FA32   897 _DMA_UR2T_STA	=	0xfa32
                           00FA33   898 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   899 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   900 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   901 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   902 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   903 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   904 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   905 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   906 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   907 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   908 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   909 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   910 _DMA_UR3T_CR	=	0xfa31
                           00FA32   911 _DMA_UR3T_STA	=	0xfa32
                           00FA33   912 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   913 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   914 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   915 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   916 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   917 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   918 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   919 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   920 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   921 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   922 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   923 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   924 _DMA_UR4T_CR	=	0xfa31
                           00FA32   925 _DMA_UR4T_STA	=	0xfa32
                           00FA33   926 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   927 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   928 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   929 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   930 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   931 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   932 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   933 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   934 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   935 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   936 _DMA_UR4R_TXAL	=	0xfa3e
      000025                        937 _uartGetCharacter_result_65536_69:
      000025                        938 	.ds 1
      000026                        939 __i2cConfigurePins_pinSwitch_65536_131:
      000026                        940 	.ds 1
      000027                        941 __i2cConfigurePins_pinConfig_262145_136:
      000027                        942 	.ds 13
      000034                        943 _i2cInitialiseMaster_PARM_2:
      000034                        944 	.ds 4
      000038                        945 _i2cInitialiseMaster_pinSwitch_65536_137:
      000038                        946 	.ds 1
      000039                        947 _i2cInitialiseMaster_msSpeed_65537_139:
      000039                        948 	.ds 1
      00003A                        949 _i2cSendAck_value_65536_144:
      00003A                        950 	.ds 1
      00003B                        951 _i2cSendData_byte_65536_148:
      00003B                        952 	.ds 1
      00003C                        953 _i2cStartCommand_PARM_2:
      00003C                        954 	.ds 1
      00003D                        955 _i2cStartCommand_slaveAddress_65536_154:
      00003D                        956 	.ds 1
      00003E                        957 _i2cSendByte_byte_65536_157:
      00003E                        958 	.ds 1
      00003F                        959 _i2cReadByteSendAck_value_65536_160:
      00003F                        960 	.ds 1
                                    961 ;--------------------------------------------------------
                                    962 ; absolute external ram data
                                    963 ;--------------------------------------------------------
                                    964 	.area XABS    (ABS,XDATA)
                                    965 ;--------------------------------------------------------
                                    966 ; external initialized ram data
                                    967 ;--------------------------------------------------------
                                    968 	.area XISEG   (XDATA)
                                    969 	.area HOME    (CODE)
                                    970 	.area GSINIT0 (CODE)
                                    971 	.area GSINIT1 (CODE)
                                    972 	.area GSINIT2 (CODE)
                                    973 	.area GSINIT3 (CODE)
                                    974 	.area GSINIT4 (CODE)
                                    975 	.area GSINIT5 (CODE)
                                    976 	.area GSINIT  (CODE)
                                    977 	.area GSFINAL (CODE)
                                    978 	.area CSEG    (CODE)
                                    979 ;--------------------------------------------------------
                                    980 ; global & static initialisations
                                    981 ;--------------------------------------------------------
                                    982 	.area HOME    (CODE)
                                    983 	.area GSINIT  (CODE)
                                    984 	.area GSFINAL (CODE)
                                    985 	.area GSINIT  (CODE)
                                    986 ;--------------------------------------------------------
                                    987 ; Home
                                    988 ;--------------------------------------------------------
                                    989 	.area HOME    (CODE)
                                    990 	.area HOME    (CODE)
                                    991 ;--------------------------------------------------------
                                    992 ; code
                                    993 ;--------------------------------------------------------
                                    994 	.area CSEG    (CODE)
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function '_i2cConfigurePins'
                                    997 ;------------------------------------------------------------
                                    998 ;pinSwitch                 Allocated with name '__i2cConfigurePins_pinSwitch_65536_131'
                                    999 ;i                         Allocated with name '__i2cConfigurePins_i_131072_133'
                                   1000 ;pinConfig                 Allocated with name '__i2cConfigurePins_pinConfig_262145_136'
                                   1001 ;pinDefinition             Allocated with name '__i2cConfigurePins_pinDefinition_262145_136'
                                   1002 ;------------------------------------------------------------
                                   1003 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:82: static void _i2cConfigurePins(uint8_t pinSwitch) {
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function _i2cConfigurePins
                                   1006 ;	-----------------------------------------
      000A39                       1007 __i2cConfigurePins:
                           000007  1008 	ar7 = 0x07
                           000006  1009 	ar6 = 0x06
                           000005  1010 	ar5 = 0x05
                           000004  1011 	ar4 = 0x04
                           000003  1012 	ar3 = 0x03
                           000002  1013 	ar2 = 0x02
                           000001  1014 	ar1 = 0x01
                           000000  1015 	ar0 = 0x00
      000A39 E5 82            [12] 1016 	mov	a,dpl
      000A3B 90 00 26         [24] 1017 	mov	dptr,#__i2cConfigurePins_pinSwitch_65536_131
      000A3E F0               [24] 1018 	movx	@dptr,a
                                   1019 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:83: for (uint8_t i = 0; i < (sizeof(_pinConfigurations) / CFG_ROW_SIZE); i++) {
      000A3F 7F 00            [12] 1020 	mov	r7,#0x00
      000A41                       1021 00105$:
      000A41 BF 03 00         [24] 1022 	cjne	r7,#0x03,00121$
      000A44                       1023 00121$:
      000A44 40 01            [24] 1024 	jc	00122$
      000A46 22               [24] 1025 	ret
      000A47                       1026 00122$:
                                   1027 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:84: if (_pinConfigurations[i][CFG_PIN_SWITCH] == pinSwitch) {
      000A47 EF               [12] 1028 	mov	a,r7
      000A48 75 F0 03         [24] 1029 	mov	b,#0x03
      000A4B A4               [48] 1030 	mul	ab
      000A4C FD               [12] 1031 	mov	r5,a
      000A4D AE F0            [24] 1032 	mov	r6,b
      000A4F 24 69            [12] 1033 	add	a,#__pinConfigurations
      000A51 F5 82            [12] 1034 	mov	dpl,a
      000A53 EE               [12] 1035 	mov	a,r6
      000A54 34 4A            [12] 1036 	addc	a,#(__pinConfigurations >> 8)
      000A56 F5 83            [12] 1037 	mov	dph,a
      000A58 E4               [12] 1038 	clr	a
      000A59 93               [24] 1039 	movc	a,@a+dptr
      000A5A FC               [12] 1040 	mov	r4,a
      000A5B 90 00 26         [24] 1041 	mov	dptr,#__i2cConfigurePins_pinSwitch_65536_131
      000A5E E0               [24] 1042 	movx	a,@dptr
      000A5F FB               [12] 1043 	mov	r3,a
      000A60 EC               [12] 1044 	mov	a,r4
      000A61 B5 03 02         [24] 1045 	cjne	a,ar3,00123$
      000A64 80 03            [24] 1046 	sjmp	00124$
      000A66                       1047 00123$:
      000A66 02 0B 0C         [24] 1048 	ljmp	00106$
      000A69                       1049 00124$:
                                   1050 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:85: P_SW2 = (P_SW2 & ~M_I2C_S) | ((pinSwitch << P_I2C_S) & M_I2C_S);
      000A69 74 CF            [12] 1051 	mov	a,#0xcf
      000A6B 55 BA            [12] 1052 	anl	a,_P_SW2
      000A6D FC               [12] 1053 	mov	r4,a
      000A6E EB               [12] 1054 	mov	a,r3
      000A6F C4               [12] 1055 	swap	a
      000A70 54 F0            [12] 1056 	anl	a,#0xf0
      000A72 FB               [12] 1057 	mov	r3,a
      000A73 74 30            [12] 1058 	mov	a,#0x30
      000A75 5B               [12] 1059 	anl	a,r3
      000A76 4C               [12] 1060 	orl	a,r4
      000A77 F5 BA            [12] 1061 	mov	_P_SW2,a
                                   1062 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:86: GpioConfig pinConfig = GPIO_PIN_CONFIG(GPIO_PORT3, GPIO_PIN0, GPIO_OPEN_DRAIN_MODE);
      000A79 90 00 27         [24] 1063 	mov	dptr,#__i2cConfigurePins_pinConfig_262145_136
      000A7C 74 03            [12] 1064 	mov	a,#0x03
      000A7E F0               [24] 1065 	movx	@dptr,a
      000A7F 90 00 28         [24] 1066 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0001)
      000A82 E4               [12] 1067 	clr	a
      000A83 F0               [24] 1068 	movx	@dptr,a
      000A84 90 00 29         [24] 1069 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0002)
      000A87 04               [12] 1070 	inc	a
      000A88 F0               [24] 1071 	movx	@dptr,a
      000A89 90 00 2A         [24] 1072 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0003)
      000A8C 74 03            [12] 1073 	mov	a,#0x03
      000A8E F0               [24] 1074 	movx	@dptr,a
      000A8F 90 00 2B         [24] 1075 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0004)
      000A92 74 01            [12] 1076 	mov	a,#0x01
      000A94 F0               [24] 1077 	movx	@dptr,a
      000A95 90 00 2C         [24] 1078 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0005)
      000A98 E4               [12] 1079 	clr	a
      000A99 F0               [24] 1080 	movx	@dptr,a
      000A9A 90 00 2D         [24] 1081 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0006)
      000A9D 74 03            [12] 1082 	mov	a,#0x03
      000A9F F0               [24] 1083 	movx	@dptr,a
      000AA0 90 00 2E         [24] 1084 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0007)
      000AA3 74 01            [12] 1085 	mov	a,#0x01
      000AA5 F0               [24] 1086 	movx	@dptr,a
      000AA6 90 00 2F         [24] 1087 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0008)
      000AA9 E4               [12] 1088 	clr	a
      000AAA F0               [24] 1089 	movx	@dptr,a
      000AAB 90 00 30         [24] 1090 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0009)
      000AAE F0               [24] 1091 	movx	@dptr,a
      000AAF 90 00 31         [24] 1092 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x000a)
      000AB2 F0               [24] 1093 	movx	@dptr,a
      000AB3 90 00 32         [24] 1094 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x000b)
      000AB6 F0               [24] 1095 	movx	@dptr,a
      000AB7 90 00 33         [24] 1096 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x000c)
      000ABA F0               [24] 1097 	movx	@dptr,a
                                   1098 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:89: pinDefinition = _pinConfigurations[i][CFG_SDA_PIN];
      000ABB ED               [12] 1099 	mov	a,r5
      000ABC 24 69            [12] 1100 	add	a,#__pinConfigurations
      000ABE FD               [12] 1101 	mov	r5,a
      000ABF EE               [12] 1102 	mov	a,r6
      000AC0 34 4A            [12] 1103 	addc	a,#(__pinConfigurations >> 8)
      000AC2 FE               [12] 1104 	mov	r6,a
      000AC3 8D 82            [24] 1105 	mov	dpl,r5
      000AC5 8E 83            [24] 1106 	mov	dph,r6
      000AC7 A3               [24] 1107 	inc	dptr
      000AC8 A3               [24] 1108 	inc	dptr
      000AC9 E4               [12] 1109 	clr	a
      000ACA 93               [24] 1110 	movc	a,@a+dptr
                                   1111 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:90: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      000ACB FC               [12] 1112 	mov	r4,a
      000ACC C4               [12] 1113 	swap	a
      000ACD 54 0F            [12] 1114 	anl	a,#0x0f
      000ACF 90 00 27         [24] 1115 	mov	dptr,#__i2cConfigurePins_pinConfig_262145_136
      000AD2 F0               [24] 1116 	movx	@dptr,a
                                   1117 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:91: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      000AD3 53 04 0F         [24] 1118 	anl	ar4,#0x0f
      000AD6 90 00 28         [24] 1119 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0001)
      000AD9 EC               [12] 1120 	mov	a,r4
      000ADA F0               [24] 1121 	movx	@dptr,a
                                   1122 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:92: gpioConfigure(&pinConfig);
      000ADB 90 00 27         [24] 1123 	mov	dptr,#__i2cConfigurePins_pinConfig_262145_136
      000ADE 75 F0 00         [24] 1124 	mov	b,#0x00
      000AE1 C0 06            [24] 1125 	push	ar6
      000AE3 C0 05            [24] 1126 	push	ar5
      000AE5 12 01 7E         [24] 1127 	lcall	_gpioConfigure
      000AE8 D0 05            [24] 1128 	pop	ar5
      000AEA D0 06            [24] 1129 	pop	ar6
                                   1130 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:94: pinDefinition = _pinConfigurations[i][CFG_SCL_PIN];
      000AEC 8D 82            [24] 1131 	mov	dpl,r5
      000AEE 8E 83            [24] 1132 	mov	dph,r6
      000AF0 A3               [24] 1133 	inc	dptr
      000AF1 E4               [12] 1134 	clr	a
      000AF2 93               [24] 1135 	movc	a,@a+dptr
                                   1136 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:95: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      000AF3 FE               [12] 1137 	mov	r6,a
      000AF4 C4               [12] 1138 	swap	a
      000AF5 54 0F            [12] 1139 	anl	a,#0x0f
      000AF7 90 00 27         [24] 1140 	mov	dptr,#__i2cConfigurePins_pinConfig_262145_136
      000AFA F0               [24] 1141 	movx	@dptr,a
                                   1142 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:96: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      000AFB 53 06 0F         [24] 1143 	anl	ar6,#0x0f
      000AFE 90 00 28         [24] 1144 	mov	dptr,#(__i2cConfigurePins_pinConfig_262145_136 + 0x0001)
      000B01 EE               [12] 1145 	mov	a,r6
      000B02 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:100: gpioConfigure(&pinConfig);
      000B03 90 00 27         [24] 1148 	mov	dptr,#__i2cConfigurePins_pinConfig_262145_136
      000B06 75 F0 00         [24] 1149 	mov	b,#0x00
                                   1150 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:101: break;
      000B09 02 01 7E         [24] 1151 	ljmp	_gpioConfigure
      000B0C                       1152 00106$:
                                   1153 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:83: for (uint8_t i = 0; i < (sizeof(_pinConfigurations) / CFG_ROW_SIZE); i++) {
      000B0C 0F               [12] 1154 	inc	r7
                                   1155 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:104: }
      000B0D 02 0A 41         [24] 1156 	ljmp	00105$
                                   1157 ;------------------------------------------------------------
                                   1158 ;Allocation info for local variables in function 'i2cInitialiseMaster'
                                   1159 ;------------------------------------------------------------
                                   1160 ;i2cFreq                   Allocated with name '_i2cInitialiseMaster_PARM_2'
                                   1161 ;pinSwitch                 Allocated with name '_i2cInitialiseMaster_pinSwitch_65536_137'
                                   1162 ;msSpeed                   Allocated with name '_i2cInitialiseMaster_msSpeed_65537_139'
                                   1163 ;------------------------------------------------------------
                                   1164 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:186: void i2cInitialiseMaster(uint8_t pinSwitch, uint32_t i2cFreq) {
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function i2cInitialiseMaster
                                   1167 ;	-----------------------------------------
      000B10                       1168 _i2cInitialiseMaster:
      000B10 E5 82            [12] 1169 	mov	a,dpl
      000B12 90 00 38         [24] 1170 	mov	dptr,#_i2cInitialiseMaster_pinSwitch_65536_137
      000B15 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:187: _i2cConfigurePins(pinSwitch);
      000B16 E0               [24] 1173 	movx	a,@dptr
      000B17 F5 82            [12] 1174 	mov	dpl,a
      000B19 12 0A 39         [24] 1175 	lcall	__i2cConfigurePins
                                   1176 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:189: uint8_t msSpeed = MCU_FREQ / i2cFreq / 4 - 2;
      000B1C 90 00 34         [24] 1177 	mov	dptr,#_i2cInitialiseMaster_PARM_2
      000B1F E0               [24] 1178 	movx	a,@dptr
      000B20 FC               [12] 1179 	mov	r4,a
      000B21 A3               [24] 1180 	inc	dptr
      000B22 E0               [24] 1181 	movx	a,@dptr
      000B23 FD               [12] 1182 	mov	r5,a
      000B24 A3               [24] 1183 	inc	dptr
      000B25 E0               [24] 1184 	movx	a,@dptr
      000B26 FE               [12] 1185 	mov	r6,a
      000B27 A3               [24] 1186 	inc	dptr
      000B28 E0               [24] 1187 	movx	a,@dptr
      000B29 FF               [12] 1188 	mov	r7,a
      000B2A 90 02 CD         [24] 1189 	mov	dptr,#__divulong_PARM_2
      000B2D EC               [12] 1190 	mov	a,r4
      000B2E F0               [24] 1191 	movx	@dptr,a
      000B2F ED               [12] 1192 	mov	a,r5
      000B30 A3               [24] 1193 	inc	dptr
      000B31 F0               [24] 1194 	movx	@dptr,a
      000B32 EE               [12] 1195 	mov	a,r6
      000B33 A3               [24] 1196 	inc	dptr
      000B34 F0               [24] 1197 	movx	@dptr,a
      000B35 EF               [12] 1198 	mov	a,r7
      000B36 A3               [24] 1199 	inc	dptr
      000B37 F0               [24] 1200 	movx	@dptr,a
      000B38 90 0E C0         [24] 1201 	mov	dptr,#0x0ec0
      000B3B 75 F0 16         [24] 1202 	mov	b,#0x16
      000B3E 74 02            [12] 1203 	mov	a,#0x02
      000B40 12 3B F6         [24] 1204 	lcall	__divulong
      000B43 AC 82            [24] 1205 	mov	r4,dpl
      000B45 AD 83            [24] 1206 	mov	r5,dph
      000B47 ED               [12] 1207 	mov	a,r5
      000B48 C3               [12] 1208 	clr	c
      000B49 13               [12] 1209 	rrc	a
      000B4A CC               [12] 1210 	xch	a,r4
      000B4B 13               [12] 1211 	rrc	a
      000B4C CC               [12] 1212 	xch	a,r4
      000B4D C3               [12] 1213 	clr	c
      000B4E 13               [12] 1214 	rrc	a
      000B4F CC               [12] 1215 	xch	a,r4
      000B50 13               [12] 1216 	rrc	a
      000B51 CC               [12] 1217 	xch	a,r4
      000B52 1C               [12] 1218 	dec	r4
      000B53 1C               [12] 1219 	dec	r4
      000B54 90 00 39         [24] 1220 	mov	dptr,#_i2cInitialiseMaster_msSpeed_65537_139
      000B57 EC               [12] 1221 	mov	a,r4
      000B58 F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:191: if (msSpeed > 63) {
      000B59 EC               [12] 1224 	mov	a,r4
      000B5A 24 C0            [12] 1225 	add	a,#0xff - 0x3f
      000B5C 50 06            [24] 1226 	jnc	00102$
                                   1227 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:192: msSpeed = 63;
      000B5E 90 00 39         [24] 1228 	mov	dptr,#_i2cInitialiseMaster_msSpeed_65537_139
      000B61 74 3F            [12] 1229 	mov	a,#0x3f
      000B63 F0               [24] 1230 	movx	@dptr,a
      000B64                       1231 00102$:
                                   1232 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:196: I2CMSCR = I2C_standby;
      000B64 90 FE 81         [24] 1233 	mov	dptr,#_I2CMSCR
      000B67 E4               [12] 1234 	clr	a
      000B68 F0               [24] 1235 	movx	@dptr,a
                                   1236 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:198: I2CMSST = 0;
      000B69 90 FE 82         [24] 1237 	mov	dptr,#_I2CMSST
      000B6C F0               [24] 1238 	movx	@dptr,a
                                   1239 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:200: I2CCFG = M_ENI2C | M_MSSL | msSpeed;
      000B6D 90 00 39         [24] 1240 	mov	dptr,#_i2cInitialiseMaster_msSpeed_65537_139
      000B70 E0               [24] 1241 	movx	a,@dptr
      000B71 90 FE 80         [24] 1242 	mov	dptr,#_I2CCFG
      000B74 44 C0            [12] 1243 	orl	a,#0xc0
      000B76 F0               [24] 1244 	movx	@dptr,a
                                   1245 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:201: }
      000B77 22               [24] 1246 	ret
                                   1247 ;------------------------------------------------------------
                                   1248 ;Allocation info for local variables in function '_waitForCompletion'
                                   1249 ;------------------------------------------------------------
                                   1250 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:203: static void _waitForCompletion() {
                                   1251 ;	-----------------------------------------
                                   1252 ;	 function _waitForCompletion
                                   1253 ;	-----------------------------------------
      000B78                       1254 __waitForCompletion:
                                   1255 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:204: while (!(I2CMSST & M_MSIF));
      000B78                       1256 00101$:
      000B78 90 FE 82         [24] 1257 	mov	dptr,#_I2CMSST
      000B7B E0               [24] 1258 	movx	a,@dptr
      000B7C 30 E6 F9         [24] 1259 	jnb	acc.6,00101$
                                   1260 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:206: I2CMSST &= ~M_MSIF;
      000B7F 90 FE 82         [24] 1261 	mov	dptr,#_I2CMSST
      000B82 E0               [24] 1262 	movx	a,@dptr
      000B83 53 E0 BF         [24] 1263 	anl	acc,#0xbf
      000B86 F0               [24] 1264 	movx	@dptr,a
                                   1265 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:207: }
      000B87 22               [24] 1266 	ret
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'i2cStart'
                                   1269 ;------------------------------------------------------------
                                   1270 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:209: void i2cStart() {
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function i2cStart
                                   1273 ;	-----------------------------------------
      000B88                       1274 _i2cStart:
                                   1275 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:210: I2CMSCR = I2C_start;
      000B88 90 FE 81         [24] 1276 	mov	dptr,#_I2CMSCR
      000B8B 74 01            [12] 1277 	mov	a,#0x01
      000B8D F0               [24] 1278 	movx	@dptr,a
                                   1279 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:211: _waitForCompletion();
                                   1280 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:212: }
      000B8E 02 0B 78         [24] 1281 	ljmp	__waitForCompletion
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'i2cStop'
                                   1284 ;------------------------------------------------------------
                                   1285 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:214: void i2cStop() {
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function i2cStop
                                   1288 ;	-----------------------------------------
      000B91                       1289 _i2cStop:
                                   1290 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:215: I2CMSCR = I2C_stop;
      000B91 90 FE 81         [24] 1291 	mov	dptr,#_I2CMSCR
      000B94 74 06            [12] 1292 	mov	a,#0x06
      000B96 F0               [24] 1293 	movx	@dptr,a
                                   1294 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:216: _waitForCompletion();
                                   1295 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:217: }
      000B97 02 0B 78         [24] 1296 	ljmp	__waitForCompletion
                                   1297 ;------------------------------------------------------------
                                   1298 ;Allocation info for local variables in function 'i2cSendAck'
                                   1299 ;------------------------------------------------------------
                                   1300 ;value                     Allocated with name '_i2cSendAck_value_65536_144'
                                   1301 ;------------------------------------------------------------
                                   1302 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:219: void i2cSendAck(I2C_AckNak value) {
                                   1303 ;	-----------------------------------------
                                   1304 ;	 function i2cSendAck
                                   1305 ;	-----------------------------------------
      000B9A                       1306 _i2cSendAck:
      000B9A E5 82            [12] 1307 	mov	a,dpl
      000B9C 90 00 3A         [24] 1308 	mov	dptr,#_i2cSendAck_value_65536_144
      000B9F F0               [24] 1309 	movx	@dptr,a
                                   1310 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:220: if (value) {
      000BA0 E0               [24] 1311 	movx	a,@dptr
      000BA1 60 0A            [24] 1312 	jz	00102$
                                   1313 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:221: I2CMSST |= M_MSACKO;
      000BA3 90 FE 82         [24] 1314 	mov	dptr,#_I2CMSST
      000BA6 E0               [24] 1315 	movx	a,@dptr
      000BA7 43 E0 01         [24] 1316 	orl	acc,#0x01
      000BAA F0               [24] 1317 	movx	@dptr,a
      000BAB 80 08            [24] 1318 	sjmp	00103$
      000BAD                       1319 00102$:
                                   1320 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:223: I2CMSST &= ~M_MSACKO;
      000BAD 90 FE 82         [24] 1321 	mov	dptr,#_I2CMSST
      000BB0 E0               [24] 1322 	movx	a,@dptr
      000BB1 53 E0 FE         [24] 1323 	anl	acc,#0xfe
      000BB4 F0               [24] 1324 	movx	@dptr,a
      000BB5                       1325 00103$:
                                   1326 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:226: I2CMSCR = I2C_sendAck;
      000BB5 90 FE 81         [24] 1327 	mov	dptr,#_I2CMSCR
      000BB8 74 05            [12] 1328 	mov	a,#0x05
      000BBA F0               [24] 1329 	movx	@dptr,a
                                   1330 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:227: _waitForCompletion();
                                   1331 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:228: }
      000BBB 02 0B 78         [24] 1332 	ljmp	__waitForCompletion
                                   1333 ;------------------------------------------------------------
                                   1334 ;Allocation info for local variables in function 'i2cSendData'
                                   1335 ;------------------------------------------------------------
                                   1336 ;byte                      Allocated with name '_i2cSendData_byte_65536_148'
                                   1337 ;------------------------------------------------------------
                                   1338 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:230: void i2cSendData(uint8_t byte) {
                                   1339 ;	-----------------------------------------
                                   1340 ;	 function i2cSendData
                                   1341 ;	-----------------------------------------
      000BBE                       1342 _i2cSendData:
      000BBE E5 82            [12] 1343 	mov	a,dpl
      000BC0 90 00 3B         [24] 1344 	mov	dptr,#_i2cSendData_byte_65536_148
      000BC3 F0               [24] 1345 	movx	@dptr,a
                                   1346 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:231: I2CTXD = byte;
      000BC4 E0               [24] 1347 	movx	a,@dptr
      000BC5 90 FE 86         [24] 1348 	mov	dptr,#_I2CTXD
      000BC8 F0               [24] 1349 	movx	@dptr,a
                                   1350 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:232: I2CMSCR = I2C_sendData;
      000BC9 90 FE 81         [24] 1351 	mov	dptr,#_I2CMSCR
      000BCC 74 02            [12] 1352 	mov	a,#0x02
      000BCE F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:233: _waitForCompletion();
                                   1355 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:234: }
      000BCF 02 0B 78         [24] 1356 	ljmp	__waitForCompletion
                                   1357 ;------------------------------------------------------------
                                   1358 ;Allocation info for local variables in function 'i2cReceiveAck'
                                   1359 ;------------------------------------------------------------
                                   1360 ;result                    Allocated with name '_i2cReceiveAck_result_65537_151'
                                   1361 ;------------------------------------------------------------
                                   1362 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:236: I2C_AckNak i2cReceiveAck() {
                                   1363 ;	-----------------------------------------
                                   1364 ;	 function i2cReceiveAck
                                   1365 ;	-----------------------------------------
      000BD2                       1366 _i2cReceiveAck:
                                   1367 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:237: I2CMSCR = I2C_receiveAck;
      000BD2 90 FE 81         [24] 1368 	mov	dptr,#_I2CMSCR
      000BD5 74 03            [12] 1369 	mov	a,#0x03
      000BD7 F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:238: _waitForCompletion();
      000BD8 12 0B 78         [24] 1372 	lcall	__waitForCompletion
                                   1373 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:239: I2C_AckNak result = (I2C_AckNak) ((I2CMSST & M_MSACKI) >> P_MSACKI);
      000BDB 90 FE 82         [24] 1374 	mov	dptr,#_I2CMSST
      000BDE E0               [24] 1375 	movx	a,@dptr
      000BDF FF               [12] 1376 	mov	r7,a
      000BE0 53 07 02         [24] 1377 	anl	ar7,#0x02
      000BE3 E4               [12] 1378 	clr	a
      000BE4 A2 E7            [12] 1379 	mov	c,acc.7
      000BE6 13               [12] 1380 	rrc	a
      000BE7 CF               [12] 1381 	xch	a,r7
      000BE8 13               [12] 1382 	rrc	a
      000BE9 CF               [12] 1383 	xch	a,r7
                                   1384 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:241: return result;
      000BEA 8F 82            [24] 1385 	mov	dpl,r7
                                   1386 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:242: }
      000BEC 22               [24] 1387 	ret
                                   1388 ;------------------------------------------------------------
                                   1389 ;Allocation info for local variables in function 'i2cReceiveData'
                                   1390 ;------------------------------------------------------------
                                   1391 ;result                    Allocated with name '_i2cReceiveData_result_65537_153'
                                   1392 ;------------------------------------------------------------
                                   1393 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:244: uint8_t i2cReceiveData() {
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function i2cReceiveData
                                   1396 ;	-----------------------------------------
      000BED                       1397 _i2cReceiveData:
                                   1398 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:245: I2CMSCR = I2C_receiveData;
      000BED 90 FE 81         [24] 1399 	mov	dptr,#_I2CMSCR
      000BF0 74 04            [12] 1400 	mov	a,#0x04
      000BF2 F0               [24] 1401 	movx	@dptr,a
                                   1402 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:246: _waitForCompletion();
      000BF3 12 0B 78         [24] 1403 	lcall	__waitForCompletion
                                   1404 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:247: uint8_t result = I2CRXD;
      000BF6 90 FE 87         [24] 1405 	mov	dptr,#_I2CRXD
      000BF9 E0               [24] 1406 	movx	a,@dptr
                                   1407 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:249: return result;
                                   1408 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:250: }
      000BFA F5 82            [12] 1409 	mov	dpl,a
      000BFC 22               [24] 1410 	ret
                                   1411 ;------------------------------------------------------------
                                   1412 ;Allocation info for local variables in function 'i2cStartCommand'
                                   1413 ;------------------------------------------------------------
                                   1414 ;command                   Allocated with name '_i2cStartCommand_PARM_2'
                                   1415 ;slaveAddress              Allocated with name '_i2cStartCommand_slaveAddress_65536_154'
                                   1416 ;result                    Allocated with name '_i2cStartCommand_result_65537_156'
                                   1417 ;------------------------------------------------------------
                                   1418 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:252: I2C_AckNak i2cStartCommand(uint8_t slaveAddress, I2C_Command command) {
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function i2cStartCommand
                                   1421 ;	-----------------------------------------
      000BFD                       1422 _i2cStartCommand:
      000BFD E5 82            [12] 1423 	mov	a,dpl
      000BFF 90 00 3D         [24] 1424 	mov	dptr,#_i2cStartCommand_slaveAddress_65536_154
      000C02 F0               [24] 1425 	movx	@dptr,a
                                   1426 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:253: I2CTXD = (slaveAddress << 1) | command;
      000C03 E0               [24] 1427 	movx	a,@dptr
      000C04 25 E0            [12] 1428 	add	a,acc
      000C06 FF               [12] 1429 	mov	r7,a
      000C07 90 00 3C         [24] 1430 	mov	dptr,#_i2cStartCommand_PARM_2
      000C0A E0               [24] 1431 	movx	a,@dptr
      000C0B 90 FE 86         [24] 1432 	mov	dptr,#_I2CTXD
      000C0E 4F               [12] 1433 	orl	a,r7
      000C0F F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:254: I2CMSCR = I2C_start_sendData_receiveAck;
      000C10 90 FE 81         [24] 1436 	mov	dptr,#_I2CMSCR
      000C13 74 09            [12] 1437 	mov	a,#0x09
      000C15 F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:255: _waitForCompletion();
      000C16 12 0B 78         [24] 1440 	lcall	__waitForCompletion
                                   1441 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:256: I2C_AckNak result = (I2C_AckNak) ((I2CMSST & M_MSACKI) >> P_MSACKI);
      000C19 90 FE 82         [24] 1442 	mov	dptr,#_I2CMSST
      000C1C E0               [24] 1443 	movx	a,@dptr
      000C1D FF               [12] 1444 	mov	r7,a
      000C1E 53 07 02         [24] 1445 	anl	ar7,#0x02
      000C21 E4               [12] 1446 	clr	a
      000C22 A2 E7            [12] 1447 	mov	c,acc.7
      000C24 13               [12] 1448 	rrc	a
      000C25 CF               [12] 1449 	xch	a,r7
      000C26 13               [12] 1450 	rrc	a
      000C27 CF               [12] 1451 	xch	a,r7
                                   1452 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:258: return result;
      000C28 8F 82            [24] 1453 	mov	dpl,r7
                                   1454 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:259: }
      000C2A 22               [24] 1455 	ret
                                   1456 ;------------------------------------------------------------
                                   1457 ;Allocation info for local variables in function 'i2cSendByte'
                                   1458 ;------------------------------------------------------------
                                   1459 ;byte                      Allocated with name '_i2cSendByte_byte_65536_157'
                                   1460 ;result                    Allocated with name '_i2cSendByte_result_65537_159'
                                   1461 ;------------------------------------------------------------
                                   1462 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:261: I2C_AckNak i2cSendByte(uint8_t byte) {
                                   1463 ;	-----------------------------------------
                                   1464 ;	 function i2cSendByte
                                   1465 ;	-----------------------------------------
      000C2B                       1466 _i2cSendByte:
      000C2B E5 82            [12] 1467 	mov	a,dpl
      000C2D 90 00 3E         [24] 1468 	mov	dptr,#_i2cSendByte_byte_65536_157
      000C30 F0               [24] 1469 	movx	@dptr,a
                                   1470 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:262: I2CTXD = byte;
      000C31 E0               [24] 1471 	movx	a,@dptr
      000C32 90 FE 86         [24] 1472 	mov	dptr,#_I2CTXD
      000C35 F0               [24] 1473 	movx	@dptr,a
                                   1474 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:263: I2CMSCR = I2C_sendData_receiveAck;
      000C36 90 FE 81         [24] 1475 	mov	dptr,#_I2CMSCR
      000C39 74 0A            [12] 1476 	mov	a,#0x0a
      000C3B F0               [24] 1477 	movx	@dptr,a
                                   1478 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:264: _waitForCompletion();
      000C3C 12 0B 78         [24] 1479 	lcall	__waitForCompletion
                                   1480 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:265: I2C_AckNak result = (I2C_AckNak) ((I2CMSST & M_MSACKI) >> P_MSACKI);
      000C3F 90 FE 82         [24] 1481 	mov	dptr,#_I2CMSST
      000C42 E0               [24] 1482 	movx	a,@dptr
      000C43 FF               [12] 1483 	mov	r7,a
      000C44 53 07 02         [24] 1484 	anl	ar7,#0x02
      000C47 E4               [12] 1485 	clr	a
      000C48 A2 E7            [12] 1486 	mov	c,acc.7
      000C4A 13               [12] 1487 	rrc	a
      000C4B CF               [12] 1488 	xch	a,r7
      000C4C 13               [12] 1489 	rrc	a
      000C4D CF               [12] 1490 	xch	a,r7
                                   1491 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:267: return result;
      000C4E 8F 82            [24] 1492 	mov	dpl,r7
                                   1493 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:268: }
      000C50 22               [24] 1494 	ret
                                   1495 ;------------------------------------------------------------
                                   1496 ;Allocation info for local variables in function 'i2cReadByteSendAck'
                                   1497 ;------------------------------------------------------------
                                   1498 ;value                     Allocated with name '_i2cReadByteSendAck_value_65536_160'
                                   1499 ;result                    Allocated with name '_i2cReadByteSendAck_result_65537_162'
                                   1500 ;------------------------------------------------------------
                                   1501 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:270: uint8_t i2cReadByteSendAck(I2C_AckNak value) {
                                   1502 ;	-----------------------------------------
                                   1503 ;	 function i2cReadByteSendAck
                                   1504 ;	-----------------------------------------
      000C51                       1505 _i2cReadByteSendAck:
      000C51 E5 82            [12] 1506 	mov	a,dpl
      000C53 90 00 3F         [24] 1507 	mov	dptr,#_i2cReadByteSendAck_value_65536_160
      000C56 F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:271: I2CMSCR = value ? I2C_receiveData_sendAck1 : I2C_receiveData_sendAck0;
      000C57 E0               [24] 1510 	movx	a,@dptr
      000C58 60 06            [24] 1511 	jz	00103$
      000C5A 7E 0C            [12] 1512 	mov	r6,#0x0c
      000C5C 7F 00            [12] 1513 	mov	r7,#0x00
      000C5E 80 04            [24] 1514 	sjmp	00104$
      000C60                       1515 00103$:
      000C60 7E 0B            [12] 1516 	mov	r6,#0x0b
      000C62 7F 00            [12] 1517 	mov	r7,#0x00
      000C64                       1518 00104$:
      000C64 90 FE 81         [24] 1519 	mov	dptr,#_I2CMSCR
      000C67 EE               [12] 1520 	mov	a,r6
      000C68 F0               [24] 1521 	movx	@dptr,a
                                   1522 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:272: _waitForCompletion();
      000C69 12 0B 78         [24] 1523 	lcall	__waitForCompletion
                                   1524 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:273: uint8_t result = I2CRXD;
      000C6C 90 FE 87         [24] 1525 	mov	dptr,#_I2CRXD
      000C6F E0               [24] 1526 	movx	a,@dptr
                                   1527 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:275: return result;
                                   1528 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:276: }
      000C70 F5 82            [12] 1529 	mov	dpl,a
      000C72 22               [24] 1530 	ret
                                   1531 	.area CSEG    (CODE)
                                   1532 	.area CONST   (CODE)
      004A69                       1533 __pinConfigurations:
      004A69 00                    1534 	.db #0x00	; 0
      004A6A 15                    1535 	.db #0x15	; 21
      004A6B 14                    1536 	.db #0x14	; 20
      004A6C 01                    1537 	.db #0x01	; 1
      004A6D 25                    1538 	.db #0x25	; 37
      004A6E 24                    1539 	.db #0x24	; 36
      004A6F 03                    1540 	.db #0x03	; 3
      004A70 32                    1541 	.db #0x32	; 50	'2'
      004A71 33                    1542 	.db #0x33	; 51	'3'
                                   1543 	.area XINIT   (CODE)
                                   1544 	.area CABS    (ABS,CODE)
