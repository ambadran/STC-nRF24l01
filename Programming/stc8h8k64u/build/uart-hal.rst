                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _fifoBytesFree
                                     12 	.globl _fifoRead
                                     13 	.globl _fifoWrite
                                     14 	.globl _fifoClear
                                     15 	.globl _startTimer
                                     16 	.globl _S1SM0_FE
                                     17 	.globl _T1IE
                                     18 	.globl _T0IE
                                     19 	.globl _T1RUN
                                     20 	.globl _T0RUN
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _EA
                                     30 	.globl _INT1IE
                                     31 	.globl _INT0IE
                                     32 	.globl _INT1TR
                                     33 	.globl _INT0TR
                                     34 	.globl _P5_5
                                     35 	.globl _P5_4
                                     36 	.globl _P5_3
                                     37 	.globl _P5_2
                                     38 	.globl _P5_1
                                     39 	.globl _P5_0
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _P1_7
                                     57 	.globl _P1_6
                                     58 	.globl _P1_5
                                     59 	.globl _P1_4
                                     60 	.globl _P1_3
                                     61 	.globl _P1_2
                                     62 	.globl _P1_1
                                     63 	.globl _P1_0
                                     64 	.globl _USBADR
                                     65 	.globl _USBCON
                                     66 	.globl _USBDAT
                                     67 	.globl _USBCLK
                                     68 	.globl _S4BUF
                                     69 	.globl _S4CON
                                     70 	.globl _S3BUF
                                     71 	.globl _S3CON
                                     72 	.globl _S2BUF
                                     73 	.globl _S2CON
                                     74 	.globl _S1BUF
                                     75 	.globl _S1CON
                                     76 	.globl _SADEN
                                     77 	.globl _SADDR
                                     78 	.globl _AUXINTIF
                                     79 	.globl _T3
                                     80 	.globl _T3L
                                     81 	.globl _T3H
                                     82 	.globl _T4
                                     83 	.globl _T4L
                                     84 	.globl _T4H
                                     85 	.globl _T4T3M
                                     86 	.globl _WDT_CONTR
                                     87 	.globl _AUXR
                                     88 	.globl _T2
                                     89 	.globl _T2H
                                     90 	.globl _T2L
                                     91 	.globl _T1
                                     92 	.globl _T1H
                                     93 	.globl _T1L
                                     94 	.globl _T0
                                     95 	.globl _T0H
                                     96 	.globl _T0L
                                     97 	.globl _TMOD
                                     98 	.globl _TCON
                                     99 	.globl _IRTRIM
                                    100 	.globl _LIRTRIM
                                    101 	.globl _IRCBAND
                                    102 	.globl _SPDAT
                                    103 	.globl _SPCTL
                                    104 	.globl _SPSTAT
                                    105 	.globl _WKTC
                                    106 	.globl _WKTCH
                                    107 	.globl _WKTCL
                                    108 	.globl _BUS_SPEED
                                    109 	.globl _P_SW2
                                    110 	.globl _P_SW1
                                    111 	.globl _RSTCFG
                                    112 	.globl _PCON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _SP
                                    117 	.globl _IP3H
                                    118 	.globl _IP3L
                                    119 	.globl _IP2H
                                    120 	.globl _IP2L
                                    121 	.globl _IE2
                                    122 	.globl _IP1H
                                    123 	.globl _IP1L
                                    124 	.globl _IE1
                                    125 	.globl _INT_CLKO
                                    126 	.globl _IAP_TPS
                                    127 	.globl _IAP_CONTR
                                    128 	.globl _IAP_TRIG
                                    129 	.globl _IAP_CMD
                                    130 	.globl _IAP_ADDR
                                    131 	.globl _IAP_ADDRL
                                    132 	.globl _IAP_ADDRH
                                    133 	.globl _IAP_DATA
                                    134 	.globl _P5M0
                                    135 	.globl _P5M1
                                    136 	.globl _P5
                                    137 	.globl _P3M0
                                    138 	.globl _P3M1
                                    139 	.globl _P3
                                    140 	.globl _P2M0
                                    141 	.globl _P2M1
                                    142 	.globl _P2
                                    143 	.globl _P1M0
                                    144 	.globl _P1M1
                                    145 	.globl _P1
                                    146 	.globl _TA
                                    147 	.globl _DPH1
                                    148 	.globl _DPL1
                                    149 	.globl _DPS
                                    150 	.globl _DP
                                    151 	.globl _DPH
                                    152 	.globl _DPL
                                    153 	.globl _CMPCR2
                                    154 	.globl _CMPCR1
                                    155 	.globl _DMA_ADC_AMT
                                    156 	.globl _ADCCFG
                                    157 	.globl _ADC_RES
                                    158 	.globl _ADC_RESL
                                    159 	.globl _ADC_RESH
                                    160 	.globl _ADC_CONTR
                                    161 	.globl _uartSendBlock_PARM_4
                                    162 	.globl _uartSendBlock_PARM_3
                                    163 	.globl _uartSendBlock_PARM_2
                                    164 	.globl _uartGetBlock_PARM_4
                                    165 	.globl _uartGetBlock_PARM_3
                                    166 	.globl _uartGetBlock_PARM_2
                                    167 	.globl _uartInitialise_PARM_5
                                    168 	.globl _uartInitialise_PARM_4
                                    169 	.globl _uartInitialise_PARM_3
                                    170 	.globl _uartInitialise_PARM_2
                                    171 	.globl _uartTransmitBufferHasBytesFree_PARM_2
                                    172 	.globl _DMA_UR4R_TXAL
                                    173 	.globl _DMA_UR4R_TXAH
                                    174 	.globl _DMA_UR4R_DONE
                                    175 	.globl _DMA_UR4R_AMT
                                    176 	.globl _DMA_UR4R_STA
                                    177 	.globl _DMA_UR4R_CR
                                    178 	.globl _DMA_UR4R_CFG
                                    179 	.globl _DMA_UR4T_TXAL
                                    180 	.globl _DMA_UR4T_TXAH
                                    181 	.globl _DMA_UR4T_DONE
                                    182 	.globl _DMA_UR4T_AMT
                                    183 	.globl _DMA_UR4T_STA
                                    184 	.globl _DMA_UR4T_CR
                                    185 	.globl _DMA_UR4T_CFG
                                    186 	.globl _DMA_UR3R_TXAL
                                    187 	.globl _DMA_UR3R_TXAH
                                    188 	.globl _DMA_UR3R_DONE
                                    189 	.globl _DMA_UR3R_AMT
                                    190 	.globl _DMA_UR3R_STA
                                    191 	.globl _DMA_UR3R_CR
                                    192 	.globl _DMA_UR3R_CFG
                                    193 	.globl _DMA_UR3T_TXAL
                                    194 	.globl _DMA_UR3T_TXAH
                                    195 	.globl _DMA_UR3T_DONE
                                    196 	.globl _DMA_UR3T_AMT
                                    197 	.globl _DMA_UR3T_STA
                                    198 	.globl _DMA_UR3T_CR
                                    199 	.globl _DMA_UR3T_CFG
                                    200 	.globl _DMA_UR2R_TXAL
                                    201 	.globl _DMA_UR2R_TXAH
                                    202 	.globl _DMA_UR2R_DONE
                                    203 	.globl _DMA_UR2R_AMT
                                    204 	.globl _DMA_UR2R_STA
                                    205 	.globl _DMA_UR2R_CR
                                    206 	.globl _DMA_UR2R_CFG
                                    207 	.globl _DMA_UR2T_TXAL
                                    208 	.globl _DMA_UR2T_TXAH
                                    209 	.globl _DMA_UR2T_DONE
                                    210 	.globl _DMA_UR2T_AMT
                                    211 	.globl _DMA_UR2T_STA
                                    212 	.globl _DMA_UR2T_CR
                                    213 	.globl _DMA_UR2T_CFG
                                    214 	.globl _DMA_UR1R_TXAL
                                    215 	.globl _DMA_UR1R_TXAH
                                    216 	.globl _DMA_UR1R_DONE
                                    217 	.globl _DMA_UR1R_AMT
                                    218 	.globl _DMA_UR1R_STA
                                    219 	.globl _DMA_UR1R_CR
                                    220 	.globl _DMA_UR1R_CFG
                                    221 	.globl _DMA_UR1T_TXAL
                                    222 	.globl _DMA_UR1T_TXAH
                                    223 	.globl _DMA_UR1T_DONE
                                    224 	.globl _DMA_URTX_AMT
                                    225 	.globl _DMA_UR1T_STA
                                    226 	.globl _DMA_UR1T_CR
                                    227 	.globl _DMA_UR1T_CFG
                                    228 	.globl _TM4PS
                                    229 	.globl _TM3PS
                                    230 	.globl _TM2PS
                                    231 	.globl _IRC48MCR
                                    232 	.globl _IRCDB
                                    233 	.globl _MCLKOCR
                                    234 	.globl _CKSEL
                                    235 	.globl _IRC32KCR
                                    236 	.globl _XOSCCR
                                    237 	.globl _HIRCCR
                                    238 	.globl _CLKDIV
                                    239 	.globl _DMA_SPI_CFG2
                                    240 	.globl _DMA_SPI_RXAL
                                    241 	.globl _DMA_SPI_RXAH
                                    242 	.globl _DMA_SPI_TXAL
                                    243 	.globl _DMA_SPI_TXAH
                                    244 	.globl _DMA_SPI_DONE
                                    245 	.globl _DMA_SPI_AMT
                                    246 	.globl _DMA_SPI_STA
                                    247 	.globl _DMA_SPI_CR
                                    248 	.globl _DMA_SPI_CFG
                                    249 	.globl _SSEC
                                    250 	.globl _SEC
                                    251 	.globl _MIN
                                    252 	.globl _HOUR
                                    253 	.globl _DAY
                                    254 	.globl _MONTH
                                    255 	.globl _YEAR
                                    256 	.globl _INISSEC
                                    257 	.globl _INISEC
                                    258 	.globl _INIMIN
                                    259 	.globl _INIHOUR
                                    260 	.globl _INIDAY
                                    261 	.globl _INIMONTH
                                    262 	.globl _INIYEAR
                                    263 	.globl _ALASSEC
                                    264 	.globl _ALASEC
                                    265 	.globl _ALAMIN
                                    266 	.globl _ALAHOUR
                                    267 	.globl _RTCIF
                                    268 	.globl _RTCIEN
                                    269 	.globl _RTCCFG
                                    270 	.globl _RTCCR
                                    271 	.globl _PWMB_OISR
                                    272 	.globl _PWMB_DTR
                                    273 	.globl _PWMB_BKR
                                    274 	.globl _PWMB_CCR4L
                                    275 	.globl _PWMB_CCR4H
                                    276 	.globl _PWMB_CCR3L
                                    277 	.globl _PWMB_CCR3H
                                    278 	.globl _PWMB_CCR2L
                                    279 	.globl _PWMB_CCR2H
                                    280 	.globl _PWMB_CCR1L
                                    281 	.globl _PWMB_CCR1H
                                    282 	.globl _PWMB_RCR
                                    283 	.globl _PWMB_ARRL
                                    284 	.globl _PWMB_ARRH
                                    285 	.globl _PWMB_PSCRL
                                    286 	.globl _PWMB_PSCRH
                                    287 	.globl _PWMB_CNTRL
                                    288 	.globl _PWMB_CNTRH
                                    289 	.globl _PWMB_CCER2
                                    290 	.globl _PWMB_CCER1
                                    291 	.globl _PWMB_CCMR4
                                    292 	.globl _PWMB_CCMR3
                                    293 	.globl _PWMB_CCMR2
                                    294 	.globl _PWMB_CCMR1
                                    295 	.globl _PWMB_EGR
                                    296 	.globl _PWMB_SR2
                                    297 	.globl _PWMB_SR1
                                    298 	.globl _PWMB_IER
                                    299 	.globl _PWMB_ETR
                                    300 	.globl _PWMB_SMCR
                                    301 	.globl _PWMB_CR2
                                    302 	.globl _PWMB_CR1
                                    303 	.globl _PWMA_OISR
                                    304 	.globl _PWMA_DTR
                                    305 	.globl _PWMA_BKR
                                    306 	.globl _PWMA_CCR4L
                                    307 	.globl _PWMA_CCR4H
                                    308 	.globl _PWMA_CCR3L
                                    309 	.globl _PWMA_CCR3H
                                    310 	.globl _PWMA_CCR2L
                                    311 	.globl _PWMA_CCR2H
                                    312 	.globl _PWMA_CCR1L
                                    313 	.globl _PWMA_CCR1H
                                    314 	.globl _PWMA_RCR
                                    315 	.globl _PWMA_ARRL
                                    316 	.globl _PWMA_ARRH
                                    317 	.globl _PWMA_PSCRL
                                    318 	.globl _PWMA_PSCRH
                                    319 	.globl _PWMA_CNTRL
                                    320 	.globl _PWMA_CNTRH
                                    321 	.globl _PWMA_CCER2
                                    322 	.globl _PWMA_CCER1
                                    323 	.globl _PWMA_CCMR4
                                    324 	.globl _PWMA_CCMR3
                                    325 	.globl _PWMA_CCMR2
                                    326 	.globl _PWMA_CCMR1
                                    327 	.globl _PWMA_EGR
                                    328 	.globl _PWMA_SR2
                                    329 	.globl _PWMA_SR1
                                    330 	.globl _PWMA_IER
                                    331 	.globl _PWMA_ETR
                                    332 	.globl _PWMA_SMCR
                                    333 	.globl _PWMA_CR2
                                    334 	.globl _PWMA_CR1
                                    335 	.globl _PWMB_IOAUX
                                    336 	.globl _PWMB_PS
                                    337 	.globl _PWMB_ENO
                                    338 	.globl _PWMB_ETRPS
                                    339 	.globl _PWMA_IOAUX
                                    340 	.globl _PWMA_PS
                                    341 	.globl _PWMA_ENO
                                    342 	.globl _PWMA_ETRPS
                                    343 	.globl _RSTFLAG
                                    344 	.globl _SPFUNC
                                    345 	.globl _OPCON
                                    346 	.globl _ARCON
                                    347 	.globl _MD4
                                    348 	.globl _MD5
                                    349 	.globl _MD0
                                    350 	.globl _MD1
                                    351 	.globl _MD2
                                    352 	.globl _MD3
                                    353 	.globl _DMA_LCM_RXAL
                                    354 	.globl _DMA_LCM_RXAH
                                    355 	.globl _DMA_LCM_TXAL
                                    356 	.globl _DMA_LCM_TXAH
                                    357 	.globl _DMA_LCM_DONE
                                    358 	.globl _DMA_LCM_AMT
                                    359 	.globl _DMA_LCM_STA
                                    360 	.globl _DMA_LCM_CR
                                    361 	.globl _DMA_LCM_CFG
                                    362 	.globl _LCMIDDAT
                                    363 	.globl _LCMIDDATH
                                    364 	.globl _LCMIDDATL
                                    365 	.globl _LCMSTA
                                    366 	.globl _LCMCR
                                    367 	.globl _LCMCFG2
                                    368 	.globl _LCMCFG
                                    369 	.globl _I2CMSAUX
                                    370 	.globl _I2CRXD
                                    371 	.globl _I2CTXD
                                    372 	.globl _I2CSLADR
                                    373 	.globl _I2CSLST
                                    374 	.globl _I2CSLCR
                                    375 	.globl _I2CMSST
                                    376 	.globl _I2CMSCR
                                    377 	.globl _I2CCFG
                                    378 	.globl _PINIPH
                                    379 	.globl _PINIPL
                                    380 	.globl _P5IE
                                    381 	.globl _P5DR
                                    382 	.globl _P5SR
                                    383 	.globl _P5NCS
                                    384 	.globl _P5PU
                                    385 	.globl _P5WKUE
                                    386 	.globl _P5IM1
                                    387 	.globl _P5IM0
                                    388 	.globl _P5INTF
                                    389 	.globl _P5INTE
                                    390 	.globl _P3IE
                                    391 	.globl _P3DR
                                    392 	.globl _P3SR
                                    393 	.globl _P3NCS
                                    394 	.globl _P3PU
                                    395 	.globl _P3WKUE
                                    396 	.globl _P3IM1
                                    397 	.globl _P3IM0
                                    398 	.globl _P3INTF
                                    399 	.globl _P3INTE
                                    400 	.globl _P2IE
                                    401 	.globl _P2DR
                                    402 	.globl _P2SR
                                    403 	.globl _P2NCS
                                    404 	.globl _P2PU
                                    405 	.globl _P2WKUE
                                    406 	.globl _P2IM1
                                    407 	.globl _P2IM0
                                    408 	.globl _P2INTF
                                    409 	.globl _P2INTE
                                    410 	.globl _P1IE
                                    411 	.globl _P1DR
                                    412 	.globl _P1SR
                                    413 	.globl _P1NCS
                                    414 	.globl _P1PU
                                    415 	.globl _P1WKUE
                                    416 	.globl _P1IM1
                                    417 	.globl _P1IM0
                                    418 	.globl _P1INTF
                                    419 	.globl _P1INTE
                                    420 	.globl _DMA_M2M_RXAL
                                    421 	.globl _DMA_M2M_RXAH
                                    422 	.globl _DMA_M2M_TXAL
                                    423 	.globl _DMA_M2M_TXAH
                                    424 	.globl _DMA_M2M_DONE
                                    425 	.globl _DMA_M2M_AMT
                                    426 	.globl _DMA_M2M_STA
                                    427 	.globl _DMA_M2M_CR
                                    428 	.globl _DMA_M2M_CFG
                                    429 	.globl _CMPEXCFG
                                    430 	.globl _DMA_ADC_CHSW1
                                    431 	.globl _DMA_ADC_CHSW0
                                    432 	.globl _DMA_ADC_CFG2
                                    433 	.globl _DMA_ADC_RXAL
                                    434 	.globl _DMA_ADC_RXAH
                                    435 	.globl _DMA_ADC_STA
                                    436 	.globl _DMA_ADC_CR
                                    437 	.globl _DMA_ADC_CFG
                                    438 	.globl _ADCEXCFG
                                    439 	.globl _ADCTIM
                                    440 	.globl _UART1_transmitBuffer
                                    441 	.globl _UART1_receiveBuffer
                                    442 	.globl _uartIsTransmissionComplete
                                    443 	.globl _uartTransmitBufferHasBytesFree
                                    444 	.globl _uartReceiveBufferBytes
                                    445 	.globl _uartFlushReceiveBuffer
                                    446 	.globl _uartInitialise
                                    447 	.globl _uart1_isr
                                    448 	.globl _uartGetBlock
                                    449 	.globl _uartSendBlock
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
                                    611 ; overlayable bit register bank
                                    612 ;--------------------------------------------------------
                                    613 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        614 bits:
      000020                        615 	.ds 1
                           008000   616 	b0 = bits[0]
                           008100   617 	b1 = bits[1]
                           008200   618 	b2 = bits[2]
                           008300   619 	b3 = bits[3]
                           008400   620 	b4 = bits[4]
                           008500   621 	b5 = bits[5]
                           008600   622 	b6 = bits[6]
                           008700   623 	b7 = bits[7]
                                    624 ;--------------------------------------------------------
                                    625 ; internal ram data
                                    626 ;--------------------------------------------------------
                                    627 	.area DSEG    (DATA)
      000008                        628 _uartGetBlock_sloc0_1_0:
      000008                        629 	.ds 1
      000009                        630 _uartGetBlock_sloc1_1_0:
      000009                        631 	.ds 3
      00000C                        632 _uartSendBlock_sloc0_1_0:
      00000C                        633 	.ds 1
      00000D                        634 _uartSendBlock_sloc1_1_0:
      00000D                        635 	.ds 3
                                    636 ;--------------------------------------------------------
                                    637 ; overlayable items in internal ram 
                                    638 ;--------------------------------------------------------
                                    639 ;--------------------------------------------------------
                                    640 ; indirectly addressable internal ram data
                                    641 ;--------------------------------------------------------
                                    642 	.area ISEG    (DATA)
      000025                        643 _UART1_receiveBufferData:
      000025                        644 	.ds 16
      000035                        645 _UART1_receiveBuffer::
      000035                        646 	.ds 8
      00003D                        647 _UART1_transmitBufferData:
      00003D                        648 	.ds 16
      00004D                        649 _UART1_transmitBuffer::
      00004D                        650 	.ds 8
                                    651 ;--------------------------------------------------------
                                    652 ; absolute internal ram data
                                    653 ;--------------------------------------------------------
                                    654 	.area IABS    (ABS,DATA)
                                    655 	.area IABS    (ABS,DATA)
                                    656 ;--------------------------------------------------------
                                    657 ; bit data
                                    658 ;--------------------------------------------------------
                                    659 	.area BSEG    (BIT)
                                    660 ;--------------------------------------------------------
                                    661 ; paged external ram data
                                    662 ;--------------------------------------------------------
                                    663 	.area PSEG    (PAG,XDATA)
                                    664 ;--------------------------------------------------------
                                    665 ; external ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area XSEG    (XDATA)
                           00FEA8   668 _ADCTIM	=	0xfea8
                           00FEAD   669 _ADCEXCFG	=	0xfead
                           00FA10   670 _DMA_ADC_CFG	=	0xfa10
                           00FA11   671 _DMA_ADC_CR	=	0xfa11
                           00FA12   672 _DMA_ADC_STA	=	0xfa12
                           00FA17   673 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   674 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   675 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   676 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   677 _DMA_ADC_CHSW1	=	0xfa1b
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
                           00FE04   872 _IRC32KCR	=	0xfe04
                           00FE00   873 _CKSEL	=	0xfe00
                           00FE05   874 _MCLKOCR	=	0xfe05
                           00FE06   875 _IRCDB	=	0xfe06
                           00FE07   876 _IRC48MCR	=	0xfe07
                           00FEA2   877 _TM2PS	=	0xfea2
                           00FEA3   878 _TM3PS	=	0xfea3
                           00FEA4   879 _TM4PS	=	0xfea4
                           00FA30   880 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   881 _DMA_UR1T_CR	=	0xfa31
                           00FA32   882 _DMA_UR1T_STA	=	0xfa32
                           00FA33   883 _DMA_URTX_AMT	=	0xfa33
                           00FA34   884 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   885 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   886 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   887 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   888 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   889 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   890 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   891 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   892 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   893 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   894 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   895 _DMA_UR2T_CR	=	0xfa31
                           00FA32   896 _DMA_UR2T_STA	=	0xfa32
                           00FA33   897 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   898 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   899 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   900 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   901 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   902 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   903 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   904 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   905 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   906 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   907 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   908 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   909 _DMA_UR3T_CR	=	0xfa31
                           00FA32   910 _DMA_UR3T_STA	=	0xfa32
                           00FA33   911 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   912 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   913 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   914 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   915 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   916 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   917 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   918 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   919 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   920 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   921 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   922 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   923 _DMA_UR4T_CR	=	0xfa31
                           00FA32   924 _DMA_UR4T_STA	=	0xfa32
                           00FA33   925 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   926 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   927 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   928 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   929 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   930 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   931 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   932 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   933 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   934 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   935 _DMA_UR4R_TXAL	=	0xfa3e
      000000                        936 _uartGetCharacter_result_65536_32:
      000000                        937 	.ds 1
      000001                        938 _uartReceiveBuffer_uart_65536_51:
      000001                        939 	.ds 1
      000002                        940 _uartReceiveBuffer_result_65536_52:
      000002                        941 	.ds 3
      000005                        942 _uartTransmitBuffer_uart_65536_54:
      000005                        943 	.ds 1
      000006                        944 _uartTransmitBuffer_result_65536_55:
      000006                        945 	.ds 3
      000009                        946 _uartIsTransmissionComplete_uart_65536_57:
      000009                        947 	.ds 1
      00000A                        948 _uartTransmitBufferHasBytesFree_PARM_2:
      00000A                        949 	.ds 1
      00000B                        950 _uartTransmitBufferHasBytesFree_uart_65536_59:
      00000B                        951 	.ds 1
      00000C                        952 _uartTransmitBufferHasBytesFree_rc_65537_61:
      00000C                        953 	.ds 1
      00000D                        954 _uartReceiveBufferBytes_uart_65536_62:
      00000D                        955 	.ds 1
      00000E                        956 _uartFlushReceiveBuffer_uart_65536_68:
      00000E                        957 	.ds 1
      00000F                        958 _uartInitialise_PARM_2:
      00000F                        959 	.ds 4
      000013                        960 _uartInitialise_PARM_3:
      000013                        961 	.ds 1
      000014                        962 _uartInitialise_PARM_4:
      000014                        963 	.ds 1
      000015                        964 _uartInitialise_PARM_5:
      000015                        965 	.ds 1
      000016                        966 _uartInitialise_uart_65536_70:
      000016                        967 	.ds 1
      000017                        968 _uartInitialise_rc_65536_71:
      000017                        969 	.ds 1
      000018                        970 _uartInitialise_timer_65536_71:
      000018                        971 	.ds 1
      000019                        972 _uartInitialise_operationMode_131072_74:
      000019                        973 	.ds 1
      00001A                        974 _uart1_isr_c_65536_89:
      00001A                        975 	.ds 1
      00001B                        976 _uartGetBlock_PARM_2:
      00001B                        977 	.ds 3
      00001E                        978 _uartGetBlock_PARM_3:
      00001E                        979 	.ds 1
      00001F                        980 _uartGetBlock_PARM_4:
      00001F                        981 	.ds 1
      000020                        982 _uartGetBlock_uart_65536_94:
      000020                        983 	.ds 1
      000021                        984 _uartSendBlock_PARM_2:
      000021                        985 	.ds 3
      000024                        986 _uartSendBlock_PARM_3:
      000024                        987 	.ds 1
      000025                        988 _uartSendBlock_PARM_4:
      000025                        989 	.ds 1
      000026                        990 _uartSendBlock_uart_65536_97:
      000026                        991 	.ds 1
      000027                        992 _uartSendBlock_data_131073_101:
      000027                        993 	.ds 1
                                    994 ;--------------------------------------------------------
                                    995 ; absolute external ram data
                                    996 ;--------------------------------------------------------
                                    997 	.area XABS    (ABS,XDATA)
                                    998 ;--------------------------------------------------------
                                    999 ; external initialized ram data
                                   1000 ;--------------------------------------------------------
                                   1001 	.area XISEG   (XDATA)
                                   1002 	.area HOME    (CODE)
                                   1003 	.area GSINIT0 (CODE)
                                   1004 	.area GSINIT1 (CODE)
                                   1005 	.area GSINIT2 (CODE)
                                   1006 	.area GSINIT3 (CODE)
                                   1007 	.area GSINIT4 (CODE)
                                   1008 	.area GSINIT5 (CODE)
                                   1009 	.area GSINIT  (CODE)
                                   1010 	.area GSFINAL (CODE)
                                   1011 	.area CSEG    (CODE)
                                   1012 ;--------------------------------------------------------
                                   1013 ; global & static initialisations
                                   1014 ;--------------------------------------------------------
                                   1015 	.area HOME    (CODE)
                                   1016 	.area GSINIT  (CODE)
                                   1017 	.area GSFINAL (CODE)
                                   1018 	.area GSINIT  (CODE)
                                   1019 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:75: FIFO_BUFFER(UART1_receiveBuffer, UART1_RX_BUFFER_SIZE, UART1_SEGMENT)
      000081 78 35            [12] 1020 	mov	r0,#_UART1_receiveBuffer
      000083 76 10            [12] 1021 	mov	@r0,#0x10
      000085 78 36            [12] 1022 	mov	r0,#(_UART1_receiveBuffer + 0x0001)
      000087 76 00            [12] 1023 	mov	@r0,#0x00
      000089 78 37            [12] 1024 	mov	r0,#(_UART1_receiveBuffer + 0x0002)
      00008B 76 00            [12] 1025 	mov	@r0,#0x00
      00008D 78 38            [12] 1026 	mov	r0,#(_UART1_receiveBuffer + 0x0003)
      00008F 76 00            [12] 1027 	mov	@r0,#0x00
      000091 78 39            [12] 1028 	mov	r0,#(_UART1_receiveBuffer + 0x0004)
      000093 76 00            [12] 1029 	mov	@r0,#0x00
      000095 78 3A            [12] 1030 	mov	r0,#(_UART1_receiveBuffer + 0x0005)
      000097 76 25            [12] 1031 	mov	@r0,#_UART1_receiveBufferData
      000099 08               [12] 1032 	inc	r0
      00009A 76 00            [12] 1033 	mov	@r0,#(_UART1_receiveBufferData >> 8)
      00009C 08               [12] 1034 	inc	r0
      00009D 76 40            [12] 1035 	mov	@r0,#0x40
                                   1036 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:76: FIFO_BUFFER(UART1_transmitBuffer, UART1_TX_BUFFER_SIZE, UART1_SEGMENT)
      00009F 78 4D            [12] 1037 	mov	r0,#_UART1_transmitBuffer
      0000A1 76 10            [12] 1038 	mov	@r0,#0x10
      0000A3 78 4E            [12] 1039 	mov	r0,#(_UART1_transmitBuffer + 0x0001)
      0000A5 76 00            [12] 1040 	mov	@r0,#0x00
      0000A7 78 4F            [12] 1041 	mov	r0,#(_UART1_transmitBuffer + 0x0002)
      0000A9 76 00            [12] 1042 	mov	@r0,#0x00
      0000AB 78 50            [12] 1043 	mov	r0,#(_UART1_transmitBuffer + 0x0003)
      0000AD 76 00            [12] 1044 	mov	@r0,#0x00
      0000AF 78 51            [12] 1045 	mov	r0,#(_UART1_transmitBuffer + 0x0004)
      0000B1 76 00            [12] 1046 	mov	@r0,#0x00
      0000B3 78 52            [12] 1047 	mov	r0,#(_UART1_transmitBuffer + 0x0005)
      0000B5 76 3D            [12] 1048 	mov	@r0,#_UART1_transmitBufferData
      0000B7 08               [12] 1049 	inc	r0
      0000B8 76 00            [12] 1050 	mov	@r0,#(_UART1_transmitBufferData >> 8)
      0000BA 08               [12] 1051 	inc	r0
      0000BB 76 40            [12] 1052 	mov	@r0,#0x40
                                   1053 ;--------------------------------------------------------
                                   1054 ; Home
                                   1055 ;--------------------------------------------------------
                                   1056 	.area HOME    (CODE)
                                   1057 	.area HOME    (CODE)
                                   1058 ;--------------------------------------------------------
                                   1059 ; code
                                   1060 ;--------------------------------------------------------
                                   1061 	.area CSEG    (CODE)
                                   1062 ;------------------------------------------------------------
                                   1063 ;Allocation info for local variables in function 'uartReceiveBuffer'
                                   1064 ;------------------------------------------------------------
                                   1065 ;uart                      Allocated with name '_uartReceiveBuffer_uart_65536_51'
                                   1066 ;result                    Allocated with name '_uartReceiveBuffer_result_65536_52'
                                   1067 ;------------------------------------------------------------
                                   1068 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:127: static FifoState *uartReceiveBuffer(Uart uart) {
                                   1069 ;	-----------------------------------------
                                   1070 ;	 function uartReceiveBuffer
                                   1071 ;	-----------------------------------------
      0000C0                       1072 _uartReceiveBuffer:
                           000007  1073 	ar7 = 0x07
                           000006  1074 	ar6 = 0x06
                           000005  1075 	ar5 = 0x05
                           000004  1076 	ar4 = 0x04
                           000003  1077 	ar3 = 0x03
                           000002  1078 	ar2 = 0x02
                           000001  1079 	ar1 = 0x01
                           000000  1080 	ar0 = 0x00
      0000C0 E5 82            [12] 1081 	mov	a,dpl
      0000C2 90 00 01         [24] 1082 	mov	dptr,#_uartReceiveBuffer_uart_65536_51
      0000C5 F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:128: FifoState *result = NULL;
      0000C6 90 00 02         [24] 1085 	mov	dptr,#_uartReceiveBuffer_result_65536_52
      0000C9 E4               [12] 1086 	clr	a
      0000CA F0               [24] 1087 	movx	@dptr,a
      0000CB A3               [24] 1088 	inc	dptr
      0000CC F0               [24] 1089 	movx	@dptr,a
      0000CD A3               [24] 1090 	inc	dptr
      0000CE F0               [24] 1091 	movx	@dptr,a
                                   1092 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:130: switch (uart) {
      0000CF 90 00 01         [24] 1093 	mov	dptr,#_uartReceiveBuffer_uart_65536_51
      0000D2 E0               [24] 1094 	movx	a,@dptr
      0000D3 FF               [12] 1095 	mov	r7,a
      0000D4 BF 01 0D         [24] 1096 	cjne	r7,#0x01,00102$
                                   1097 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:132: result = &UART1_receiveBuffer;
      0000D7 90 00 02         [24] 1098 	mov	dptr,#_uartReceiveBuffer_result_65536_52
      0000DA 74 35            [12] 1099 	mov	a,#_UART1_receiveBuffer
      0000DC F0               [24] 1100 	movx	@dptr,a
      0000DD E4               [12] 1101 	clr	a
      0000DE A3               [24] 1102 	inc	dptr
      0000DF F0               [24] 1103 	movx	@dptr,a
      0000E0 74 40            [12] 1104 	mov	a,#0x40
      0000E2 A3               [24] 1105 	inc	dptr
      0000E3 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:150: }
      0000E4                       1108 00102$:
                                   1109 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:152: return result;
      0000E4 90 00 02         [24] 1110 	mov	dptr,#_uartReceiveBuffer_result_65536_52
      0000E7 E0               [24] 1111 	movx	a,@dptr
      0000E8 FD               [12] 1112 	mov	r5,a
      0000E9 A3               [24] 1113 	inc	dptr
      0000EA E0               [24] 1114 	movx	a,@dptr
      0000EB FE               [12] 1115 	mov	r6,a
      0000EC A3               [24] 1116 	inc	dptr
      0000ED E0               [24] 1117 	movx	a,@dptr
      0000EE FF               [12] 1118 	mov	r7,a
      0000EF 8D 82            [24] 1119 	mov	dpl,r5
      0000F1 8E 83            [24] 1120 	mov	dph,r6
      0000F3 8F F0            [24] 1121 	mov	b,r7
                                   1122 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:153: }
      0000F5 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'uartTransmitBuffer'
                                   1126 ;------------------------------------------------------------
                                   1127 ;uart                      Allocated with name '_uartTransmitBuffer_uart_65536_54'
                                   1128 ;result                    Allocated with name '_uartTransmitBuffer_result_65536_55'
                                   1129 ;------------------------------------------------------------
                                   1130 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:155: static FifoState *uartTransmitBuffer(Uart uart) {
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function uartTransmitBuffer
                                   1133 ;	-----------------------------------------
      0000F6                       1134 _uartTransmitBuffer:
      0000F6 E5 82            [12] 1135 	mov	a,dpl
      0000F8 90 00 05         [24] 1136 	mov	dptr,#_uartTransmitBuffer_uart_65536_54
      0000FB F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:156: FifoState *result = NULL;
      0000FC 90 00 06         [24] 1139 	mov	dptr,#_uartTransmitBuffer_result_65536_55
      0000FF E4               [12] 1140 	clr	a
      000100 F0               [24] 1141 	movx	@dptr,a
      000101 A3               [24] 1142 	inc	dptr
      000102 F0               [24] 1143 	movx	@dptr,a
      000103 A3               [24] 1144 	inc	dptr
      000104 F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:158: switch (uart) {
      000105 90 00 05         [24] 1147 	mov	dptr,#_uartTransmitBuffer_uart_65536_54
      000108 E0               [24] 1148 	movx	a,@dptr
      000109 FF               [12] 1149 	mov	r7,a
      00010A BF 01 0D         [24] 1150 	cjne	r7,#0x01,00102$
                                   1151 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:160: result = &UART1_transmitBuffer;
      00010D 90 00 06         [24] 1152 	mov	dptr,#_uartTransmitBuffer_result_65536_55
      000110 74 4D            [12] 1153 	mov	a,#_UART1_transmitBuffer
      000112 F0               [24] 1154 	movx	@dptr,a
      000113 E4               [12] 1155 	clr	a
      000114 A3               [24] 1156 	inc	dptr
      000115 F0               [24] 1157 	movx	@dptr,a
      000116 74 40            [12] 1158 	mov	a,#0x40
      000118 A3               [24] 1159 	inc	dptr
      000119 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:178: }
      00011A                       1162 00102$:
                                   1163 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:180: return result;
      00011A 90 00 06         [24] 1164 	mov	dptr,#_uartTransmitBuffer_result_65536_55
      00011D E0               [24] 1165 	movx	a,@dptr
      00011E FD               [12] 1166 	mov	r5,a
      00011F A3               [24] 1167 	inc	dptr
      000120 E0               [24] 1168 	movx	a,@dptr
      000121 FE               [12] 1169 	mov	r6,a
      000122 A3               [24] 1170 	inc	dptr
      000123 E0               [24] 1171 	movx	a,@dptr
      000124 FF               [12] 1172 	mov	r7,a
      000125 8D 82            [24] 1173 	mov	dpl,r5
      000127 8E 83            [24] 1174 	mov	dph,r6
      000129 8F F0            [24] 1175 	mov	b,r7
                                   1176 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:181: }
      00012B 22               [24] 1177 	ret
                                   1178 ;------------------------------------------------------------
                                   1179 ;Allocation info for local variables in function 'uartIsTransmissionComplete'
                                   1180 ;------------------------------------------------------------
                                   1181 ;uart                      Allocated with name '_uartIsTransmissionComplete_uart_65536_57'
                                   1182 ;buffer                    Allocated with name '_uartIsTransmissionComplete_buffer_65536_58'
                                   1183 ;------------------------------------------------------------
                                   1184 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:183: bool uartIsTransmissionComplete(Uart uart) {
                                   1185 ;	-----------------------------------------
                                   1186 ;	 function uartIsTransmissionComplete
                                   1187 ;	-----------------------------------------
      00012C                       1188 _uartIsTransmissionComplete:
      00012C E5 82            [12] 1189 	mov	a,dpl
      00012E 90 00 09         [24] 1190 	mov	dptr,#_uartIsTransmissionComplete_uart_65536_57
      000131 F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:184: FifoState *buffer = uartTransmitBuffer(uart);
      000132 E0               [24] 1193 	movx	a,@dptr
      000133 F5 82            [12] 1194 	mov	dpl,a
      000135 12 00 F6         [24] 1195 	lcall	_uartTransmitBuffer
      000138 AD 82            [24] 1196 	mov	r5,dpl
      00013A AE 83            [24] 1197 	mov	r6,dph
      00013C AF F0            [24] 1198 	mov	r7,b
                                   1199 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:186: return buffer->status == STATUS_CLEAR;
      00013E 74 04            [12] 1200 	mov	a,#0x04
      000140 2D               [12] 1201 	add	a,r5
      000141 FD               [12] 1202 	mov	r5,a
      000142 E4               [12] 1203 	clr	a
      000143 3E               [12] 1204 	addc	a,r6
      000144 FE               [12] 1205 	mov	r6,a
      000145 8D 82            [24] 1206 	mov	dpl,r5
      000147 8E 83            [24] 1207 	mov	dph,r6
      000149 8F F0            [24] 1208 	mov	b,r7
      00014B 12 1C 2A         [24] 1209 	lcall	__gptrget
      00014E B4 01 00         [24] 1210 	cjne	a,#0x01,00103$
      000151                       1211 00103$:
      000151 E4               [12] 1212 	clr	a
      000152 33               [12] 1213 	rlc	a
                                   1214 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:187: }
      000153 F5 82            [12] 1215 	mov	dpl,a
      000155 22               [24] 1216 	ret
                                   1217 ;------------------------------------------------------------
                                   1218 ;Allocation info for local variables in function 'uartTransmitBufferHasBytesFree'
                                   1219 ;------------------------------------------------------------
                                   1220 ;bytes                     Allocated with name '_uartTransmitBufferHasBytesFree_PARM_2'
                                   1221 ;uart                      Allocated with name '_uartTransmitBufferHasBytesFree_uart_65536_59'
                                   1222 ;rc                        Allocated with name '_uartTransmitBufferHasBytesFree_rc_65537_61'
                                   1223 ;------------------------------------------------------------
                                   1224 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:189: bool uartTransmitBufferHasBytesFree(Uart uart, uint8_t bytes) {
                                   1225 ;	-----------------------------------------
                                   1226 ;	 function uartTransmitBufferHasBytesFree
                                   1227 ;	-----------------------------------------
      000156                       1228 _uartTransmitBufferHasBytesFree:
      000156 E5 82            [12] 1229 	mov	a,dpl
      000158 90 00 0B         [24] 1230 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_59
      00015B F0               [24] 1231 	movx	@dptr,a
                                   1232 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:190: EA = 0;
                                   1233 ;	assignBit
      00015C C2 AF            [12] 1234 	clr	_EA
                                   1235 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:191: bool rc = fifoBytesFree(uartTransmitBuffer(uart)) >= bytes;
      00015E 90 00 0B         [24] 1236 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_59
      000161 E0               [24] 1237 	movx	a,@dptr
      000162 F5 82            [12] 1238 	mov	dpl,a
      000164 12 00 F6         [24] 1239 	lcall	_uartTransmitBuffer
      000167 12 0A C9         [24] 1240 	lcall	_fifoBytesFree
      00016A AF 82            [24] 1241 	mov	r7,dpl
      00016C 90 00 0A         [24] 1242 	mov	dptr,#_uartTransmitBufferHasBytesFree_PARM_2
      00016F E0               [24] 1243 	movx	a,@dptr
      000170 FE               [12] 1244 	mov	r6,a
      000171 C3               [12] 1245 	clr	c
      000172 EF               [12] 1246 	mov	a,r7
      000173 9E               [12] 1247 	subb	a,r6
      000174 E4               [12] 1248 	clr	a
      000175 33               [12] 1249 	rlc	a
      000176 90 00 0C         [24] 1250 	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_61
      000179 B4 01 00         [24] 1251 	cjne	a,#0x01,00103$
      00017C                       1252 00103$:
      00017C E4               [12] 1253 	clr	a
      00017D 33               [12] 1254 	rlc	a
      00017E F0               [24] 1255 	movx	@dptr,a
                                   1256 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:192: EA = 1;
                                   1257 ;	assignBit
      00017F D2 AF            [12] 1258 	setb	_EA
                                   1259 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:194: return rc;
      000181 90 00 0C         [24] 1260 	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_61
      000184 E0               [24] 1261 	movx	a,@dptr
                                   1262 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:195: }
      000185 F5 82            [12] 1263 	mov	dpl,a
      000187 22               [24] 1264 	ret
                                   1265 ;------------------------------------------------------------
                                   1266 ;Allocation info for local variables in function 'uartReceiveBufferBytes'
                                   1267 ;------------------------------------------------------------
                                   1268 ;uart                      Allocated with name '_uartReceiveBufferBytes_uart_65536_62'
                                   1269 ;__1310720007              Allocated with name '_uartReceiveBufferBytes___1310720007_131072_64'
                                   1270 ;rc                        Allocated with name '_uartReceiveBufferBytes_rc_65537_64'
                                   1271 ;__1310730008              Allocated with name '_uartReceiveBufferBytes___1310730008_131073_65'
                                   1272 ;buffer                    Allocated with name '_uartReceiveBufferBytes_buffer_196609_66'
                                   1273 ;------------------------------------------------------------
                                   1274 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:197: uint8_t uartReceiveBufferBytes(Uart uart) {
                                   1275 ;	-----------------------------------------
                                   1276 ;	 function uartReceiveBufferBytes
                                   1277 ;	-----------------------------------------
      000188                       1278 _uartReceiveBufferBytes:
      000188 E5 82            [12] 1279 	mov	a,dpl
      00018A 90 00 0D         [24] 1280 	mov	dptr,#_uartReceiveBufferBytes_uart_65536_62
      00018D F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:198: EA = 0;
                                   1283 ;	assignBit
      00018E C2 AF            [12] 1284 	clr	_EA
                                   1285 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:199: uint8_t rc = fifoBytesUsed(uartReceiveBuffer(uart));
      000190 90 00 0D         [24] 1286 	mov	dptr,#_uartReceiveBufferBytes_uart_65536_62
      000193 E0               [24] 1287 	movx	a,@dptr
      000194 F5 82            [12] 1288 	mov	dpl,a
      000196 12 00 C0         [24] 1289 	lcall	_uartReceiveBuffer
      000199 AD 82            [24] 1290 	mov	r5,dpl
      00019B AE 83            [24] 1291 	mov	r6,dph
      00019D AF F0            [24] 1292 	mov	r7,b
      00019F 0D               [12] 1293 	inc	r5
      0001A0 BD 00 01         [24] 1294 	cjne	r5,#0x00,00104$
      0001A3 0E               [12] 1295 	inc	r6
      0001A4                       1296 00104$:
      0001A4 8D 82            [24] 1297 	mov	dpl,r5
      0001A6 8E 83            [24] 1298 	mov	dph,r6
      0001A8 8F F0            [24] 1299 	mov	b,r7
      0001AA 12 1C 2A         [24] 1300 	lcall	__gptrget
      0001AD FD               [12] 1301 	mov	r5,a
                                   1302 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:200: EA = 1;
                                   1303 ;	assignBit
      0001AE D2 AF            [12] 1304 	setb	_EA
                                   1305 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:202: return rc;
      0001B0 8D 82            [24] 1306 	mov	dpl,r5
                                   1307 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:203: }
      0001B2 22               [24] 1308 	ret
                                   1309 ;------------------------------------------------------------
                                   1310 ;Allocation info for local variables in function 'uartFlushReceiveBuffer'
                                   1311 ;------------------------------------------------------------
                                   1312 ;uart                      Allocated with name '_uartFlushReceiveBuffer_uart_65536_68'
                                   1313 ;------------------------------------------------------------
                                   1314 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:205: void uartFlushReceiveBuffer(Uart uart) {
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function uartFlushReceiveBuffer
                                   1317 ;	-----------------------------------------
      0001B3                       1318 _uartFlushReceiveBuffer:
      0001B3 E5 82            [12] 1319 	mov	a,dpl
      0001B5 90 00 0E         [24] 1320 	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_68
      0001B8 F0               [24] 1321 	movx	@dptr,a
                                   1322 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:206: EA = 0;
                                   1323 ;	assignBit
      0001B9 C2 AF            [12] 1324 	clr	_EA
                                   1325 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:207: fifoClear(uartReceiveBuffer(uart));
      0001BB 90 00 0E         [24] 1326 	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_68
      0001BE E0               [24] 1327 	movx	a,@dptr
      0001BF F5 82            [12] 1328 	mov	dpl,a
      0001C1 12 00 C0         [24] 1329 	lcall	_uartReceiveBuffer
      0001C4 12 0A 20         [24] 1330 	lcall	_fifoClear
                                   1331 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:208: EA = 1;
                                   1332 ;	assignBit
      0001C7 D2 AF            [12] 1333 	setb	_EA
                                   1334 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:209: }
      0001C9 22               [24] 1335 	ret
                                   1336 ;------------------------------------------------------------
                                   1337 ;Allocation info for local variables in function 'uartInitialise'
                                   1338 ;------------------------------------------------------------
                                   1339 ;baudRate                  Allocated with name '_uartInitialise_PARM_2'
                                   1340 ;baudRateTimer             Allocated with name '_uartInitialise_PARM_3'
                                   1341 ;mode                      Allocated with name '_uartInitialise_PARM_4'
                                   1342 ;pinSwitch                 Allocated with name '_uartInitialise_PARM_5'
                                   1343 ;uart                      Allocated with name '_uartInitialise_uart_65536_70'
                                   1344 ;rc                        Allocated with name '_uartInitialise_rc_65536_71'
                                   1345 ;timer                     Allocated with name '_uartInitialise_timer_65536_71'
                                   1346 ;operationMode             Allocated with name '_uartInitialise_operationMode_131072_74'
                                   1347 ;scon                      Allocated with name '_uartInitialise_scon_131073_79'
                                   1348 ;------------------------------------------------------------
                                   1349 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:224: TimerStatus uartInitialise(Uart uart, uint32_t baudRate, UartBaudRateTimer baudRateTimer, UartMode mode, uint8_t pinSwitch) {
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function uartInitialise
                                   1352 ;	-----------------------------------------
      0001CA                       1353 _uartInitialise:
      0001CA E5 82            [12] 1354 	mov	a,dpl
      0001CC 90 00 16         [24] 1355 	mov	dptr,#_uartInitialise_uart_65536_70
      0001CF F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:225: TimerStatus rc = TIMER_FREQUENCY_OK;
      0001D0 90 00 17         [24] 1358 	mov	dptr,#_uartInitialise_rc_65536_71
      0001D3 E4               [12] 1359 	clr	a
      0001D4 F0               [24] 1360 	movx	@dptr,a
                                   1361 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:227: Timer timer = TIMER2;
      0001D5 90 00 18         [24] 1362 	mov	dptr,#_uartInitialise_timer_65536_71
      0001D8 74 02            [12] 1363 	mov	a,#0x02
      0001DA F0               [24] 1364 	movx	@dptr,a
                                   1365 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:236: if (uart != UART1 || mode == UART_8N1) {
      0001DB 90 00 16         [24] 1366 	mov	dptr,#_uartInitialise_uart_65536_70
      0001DE E0               [24] 1367 	movx	a,@dptr
      0001DF FF               [12] 1368 	mov	r7,a
      0001E0 BF 01 09         [24] 1369 	cjne	r7,#0x01,00103$
      0001E3 90 00 14         [24] 1370 	mov	dptr,#_uartInitialise_PARM_4
      0001E6 E0               [24] 1371 	movx	a,@dptr
      0001E7 60 03            [24] 1372 	jz	00207$
      0001E9 02 02 6E         [24] 1373 	ljmp	00104$
      0001EC                       1374 00207$:
      0001EC                       1375 00103$:
                                   1376 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:242: if (baudRateTimer == UART_USE_OWN_TIMER) {
      0001EC 90 00 13         [24] 1377 	mov	dptr,#_uartInitialise_PARM_3
      0001EF E0               [24] 1378 	movx	a,@dptr
      0001F0 FE               [12] 1379 	mov	r6,a
      0001F1 BE 01 05         [24] 1380 	cjne	r6,#0x01,00102$
                                   1381 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:245: timer =  (Timer) uart;
      0001F4 90 00 18         [24] 1382 	mov	dptr,#_uartInitialise_timer_65536_71
      0001F7 EF               [12] 1383 	mov	a,r7
      0001F8 F0               [24] 1384 	movx	@dptr,a
      0001F9                       1385 00102$:
                                   1386 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:257: timer, 
      0001F9 90 00 18         [24] 1387 	mov	dptr,#_uartInitialise_timer_65536_71
      0001FC E0               [24] 1388 	movx	a,@dptr
      0001FD FF               [12] 1389 	mov	r7,a
                                   1390 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:258: baudRateToSysclkDivisor(baudRate), 
      0001FE 90 00 0F         [24] 1391 	mov	dptr,#_uartInitialise_PARM_2
      000201 E0               [24] 1392 	movx	a,@dptr
      000202 FB               [12] 1393 	mov	r3,a
      000203 A3               [24] 1394 	inc	dptr
      000204 E0               [24] 1395 	movx	a,@dptr
      000205 FC               [12] 1396 	mov	r4,a
      000206 A3               [24] 1397 	inc	dptr
      000207 E0               [24] 1398 	movx	a,@dptr
      000208 FD               [12] 1399 	mov	r5,a
      000209 A3               [24] 1400 	inc	dptr
      00020A E0               [24] 1401 	movx	a,@dptr
      00020B FE               [12] 1402 	mov	r6,a
      00020C 90 00 90         [24] 1403 	mov	dptr,#__divulong_PARM_2
      00020F EB               [12] 1404 	mov	a,r3
      000210 F0               [24] 1405 	movx	@dptr,a
      000211 EC               [12] 1406 	mov	a,r4
      000212 A3               [24] 1407 	inc	dptr
      000213 F0               [24] 1408 	movx	@dptr,a
      000214 ED               [12] 1409 	mov	a,r5
      000215 A3               [24] 1410 	inc	dptr
      000216 F0               [24] 1411 	movx	@dptr,a
      000217 EE               [12] 1412 	mov	a,r6
      000218 A3               [24] 1413 	inc	dptr
      000219 F0               [24] 1414 	movx	@dptr,a
      00021A 90 0E C0         [24] 1415 	mov	dptr,#0x0ec0
      00021D 75 F0 16         [24] 1416 	mov	b,#0x16
      000220 74 02            [12] 1417 	mov	a,#0x02
      000222 C0 07            [24] 1418 	push	ar7
      000224 12 1B 1B         [24] 1419 	lcall	__divulong
      000227 AB 82            [24] 1420 	mov	r3,dpl
      000229 AC 83            [24] 1421 	mov	r4,dph
      00022B AD F0            [24] 1422 	mov	r5,b
      00022D FE               [12] 1423 	mov	r6,a
      00022E D0 07            [24] 1424 	pop	ar7
      000230 EE               [12] 1425 	mov	a,r6
      000231 C3               [12] 1426 	clr	c
      000232 13               [12] 1427 	rrc	a
      000233 FE               [12] 1428 	mov	r6,a
      000234 ED               [12] 1429 	mov	a,r5
      000235 13               [12] 1430 	rrc	a
      000236 FD               [12] 1431 	mov	r5,a
      000237 EC               [12] 1432 	mov	a,r4
      000238 13               [12] 1433 	rrc	a
      000239 FC               [12] 1434 	mov	r4,a
      00023A EB               [12] 1435 	mov	a,r3
      00023B 13               [12] 1436 	rrc	a
      00023C FB               [12] 1437 	mov	r3,a
      00023D EE               [12] 1438 	mov	a,r6
      00023E C3               [12] 1439 	clr	c
      00023F 13               [12] 1440 	rrc	a
      000240 FE               [12] 1441 	mov	r6,a
      000241 ED               [12] 1442 	mov	a,r5
      000242 13               [12] 1443 	rrc	a
      000243 FD               [12] 1444 	mov	r5,a
      000244 EC               [12] 1445 	mov	a,r4
      000245 13               [12] 1446 	rrc	a
      000246 FC               [12] 1447 	mov	r4,a
      000247 EB               [12] 1448 	mov	a,r3
      000248 13               [12] 1449 	rrc	a
                                   1450 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:261: FREE_RUNNING
      000249 90 00 29         [24] 1451 	mov	dptr,#_startTimer_PARM_2
      00024C F0               [24] 1452 	movx	@dptr,a
      00024D EC               [12] 1453 	mov	a,r4
      00024E A3               [24] 1454 	inc	dptr
      00024F F0               [24] 1455 	movx	@dptr,a
      000250 ED               [12] 1456 	mov	a,r5
      000251 A3               [24] 1457 	inc	dptr
      000252 F0               [24] 1458 	movx	@dptr,a
      000253 EE               [12] 1459 	mov	a,r6
      000254 A3               [24] 1460 	inc	dptr
      000255 F0               [24] 1461 	movx	@dptr,a
      000256 90 00 2D         [24] 1462 	mov	dptr,#_startTimer_PARM_3
      000259 E4               [12] 1463 	clr	a
      00025A F0               [24] 1464 	movx	@dptr,a
      00025B 90 00 2E         [24] 1465 	mov	dptr,#_startTimer_PARM_4
      00025E F0               [24] 1466 	movx	@dptr,a
      00025F 90 00 2F         [24] 1467 	mov	dptr,#_startTimer_PARM_5
      000262 F0               [24] 1468 	movx	@dptr,a
      000263 8F 82            [24] 1469 	mov	dpl,r7
      000265 12 05 79         [24] 1470 	lcall	_startTimer
      000268 E5 82            [12] 1471 	mov	a,dpl
      00026A 90 00 17         [24] 1472 	mov	dptr,#_uartInitialise_rc_65536_71
      00026D F0               [24] 1473 	movx	@dptr,a
      00026E                       1474 00104$:
                                   1475 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:265: if (rc == TIMER_FREQUENCY_OK) {
      00026E 90 00 17         [24] 1476 	mov	dptr,#_uartInitialise_rc_65536_71
      000271 E0               [24] 1477 	movx	a,@dptr
      000272 60 03            [24] 1478 	jz	00210$
      000274 02 03 A9         [24] 1479 	ljmp	00132$
      000277                       1480 00210$:
                                   1481 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:266: uint8_t operationMode = 0;
      000277 90 00 19         [24] 1482 	mov	dptr,#_uartInitialise_operationMode_131072_74
      00027A E4               [12] 1483 	clr	a
      00027B F0               [24] 1484 	movx	@dptr,a
                                   1485 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:268: switch (mode) {
      00027C 90 00 14         [24] 1486 	mov	dptr,#_uartInitialise_PARM_4
      00027F E0               [24] 1487 	movx	a,@dptr
      000280 FF               [12] 1488 	mov  r7,a
      000281 24 FC            [12] 1489 	add	a,#0xff - 0x03
      000283 40 4C            [24] 1490 	jc	00115$
      000285 EF               [12] 1491 	mov	a,r7
      000286 2F               [12] 1492 	add	a,r7
                                   1493 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:269: case UART_8N1:
      000287 90 02 8B         [24] 1494 	mov	dptr,#00212$
      00028A 73               [24] 1495 	jmp	@a+dptr
      00028B                       1496 00212$:
      00028B 80 06            [24] 1497 	sjmp	00106$
      00028D 80 14            [24] 1498 	sjmp	00111$
      00028F 80 12            [24] 1499 	sjmp	00111$
      000291 80 10            [24] 1500 	sjmp	00111$
      000293                       1501 00106$:
                                   1502 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:270: if (uart == UART1) {
      000293 90 00 16         [24] 1503 	mov	dptr,#_uartInitialise_uart_65536_70
      000296 E0               [24] 1504 	movx	a,@dptr
      000297 FE               [12] 1505 	mov	r6,a
      000298 BE 01 36         [24] 1506 	cjne	r6,#0x01,00115$
                                   1507 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:271: operationMode = 1;
      00029B 90 00 19         [24] 1508 	mov	dptr,#_uartInitialise_operationMode_131072_74
      00029E 74 01            [12] 1509 	mov	a,#0x01
      0002A0 F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:273: break;
                                   1512 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:277: case UART_MULTI_MACHINE:
      0002A1 80 2E            [24] 1513 	sjmp	00115$
      0002A3                       1514 00111$:
                                   1515 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:278: if (uart == UART1) {
      0002A3 90 00 16         [24] 1516 	mov	dptr,#_uartInitialise_uart_65536_70
      0002A6 E0               [24] 1517 	movx	a,@dptr
      0002A7 FE               [12] 1518 	mov	r6,a
      0002A8 BE 01 20         [24] 1519 	cjne	r6,#0x01,00113$
                                   1520 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:279: operationMode = 2 | ((baudRate & 2) >> 1);
      0002AB 90 00 0F         [24] 1521 	mov	dptr,#_uartInitialise_PARM_2
      0002AE E0               [24] 1522 	movx	a,@dptr
      0002AF FB               [12] 1523 	mov	r3,a
      0002B0 A3               [24] 1524 	inc	dptr
      0002B1 E0               [24] 1525 	movx	a,@dptr
      0002B2 A3               [24] 1526 	inc	dptr
      0002B3 E0               [24] 1527 	movx	a,@dptr
      0002B4 FD               [12] 1528 	mov	r5,a
      0002B5 A3               [24] 1529 	inc	dptr
      0002B6 E0               [24] 1530 	movx	a,@dptr
      0002B7 FE               [12] 1531 	mov	r6,a
      0002B8 53 03 02         [24] 1532 	anl	ar3,#0x02
      0002BB E4               [12] 1533 	clr	a
      0002BC C3               [12] 1534 	clr	c
      0002BD 13               [12] 1535 	rrc	a
      0002BE CB               [12] 1536 	xch	a,r3
      0002BF 13               [12] 1537 	rrc	a
      0002C0 CB               [12] 1538 	xch	a,r3
      0002C1 FC               [12] 1539 	mov	r4,a
      0002C2 90 00 19         [24] 1540 	mov	dptr,#_uartInitialise_operationMode_131072_74
      0002C5 74 02            [12] 1541 	mov	a,#0x02
      0002C7 4B               [12] 1542 	orl	a,r3
      0002C8 F0               [24] 1543 	movx	@dptr,a
      0002C9 80 06            [24] 1544 	sjmp	00115$
      0002CB                       1545 00113$:
                                   1546 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:281: operationMode = 1;
      0002CB 90 00 19         [24] 1547 	mov	dptr,#_uartInitialise_operationMode_131072_74
      0002CE 74 01            [12] 1548 	mov	a,#0x01
      0002D0 F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:284: }
      0002D1                       1551 00115$:
                                   1552 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:286: uint8_t scon = ((mode == UART_MULTI_MACHINE) ? M_SM2 : 0)
      0002D1 BF 03 06         [24] 1553 	cjne	r7,#0x03,00135$
      0002D4 7E 20            [12] 1554 	mov	r6,#0x20
      0002D6 7F 00            [12] 1555 	mov	r7,#0x00
      0002D8 80 04            [24] 1556 	sjmp	00136$
      0002DA                       1557 00135$:
      0002DA 7E 00            [12] 1558 	mov	r6,#0x00
      0002DC 7F 00            [12] 1559 	mov	r7,#0x00
      0002DE                       1560 00136$:
      0002DE 90 00 19         [24] 1561 	mov	dptr,#_uartInitialise_operationMode_131072_74
      0002E1 E0               [24] 1562 	movx	a,@dptr
      0002E2 30 E1 06         [24] 1563 	jnb	acc.1,00137$
      0002E5 7C 80            [12] 1564 	mov	r4,#0x80
      0002E7 7D 00            [12] 1565 	mov	r5,#0x00
      0002E9 80 04            [24] 1566 	sjmp	00138$
      0002EB                       1567 00137$:
      0002EB 7C 00            [12] 1568 	mov	r4,#0x00
      0002ED 7D 00            [12] 1569 	mov	r5,#0x00
      0002EF                       1570 00138$:
      0002EF EC               [12] 1571 	mov	a,r4
      0002F0 4E               [12] 1572 	orl	a,r6
      0002F1 44 10            [12] 1573 	orl	a,#0x10
      0002F3 FF               [12] 1574 	mov	r7,a
                                   1575 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:289: switch (uart) {
      0002F4 90 00 16         [24] 1576 	mov	dptr,#_uartInitialise_uart_65536_70
      0002F7 E0               [24] 1577 	movx	a,@dptr
      0002F8 FE               [12] 1578 	mov	r6,a
      0002F9 BE 01 02         [24] 1579 	cjne	r6,#0x01,00220$
      0002FC 80 03            [24] 1580 	sjmp	00221$
      0002FE                       1581 00220$:
      0002FE 02 03 89         [24] 1582 	ljmp	00130$
      000301                       1583 00221$:
                                   1584 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:292: switch (operationMode) {
      000301 90 00 19         [24] 1585 	mov	dptr,#_uartInitialise_operationMode_131072_74
      000304 E0               [24] 1586 	movx	a,@dptr
      000305 FE               [12] 1587 	mov	r6,a
      000306 BE 01 02         [24] 1588 	cjne	r6,#0x01,00222$
      000309 80 0A            [24] 1589 	sjmp	00117$
      00030B                       1590 00222$:
      00030B BE 02 02         [24] 1591 	cjne	r6,#0x02,00223$
      00030E 80 17            [24] 1592 	sjmp	00121$
      000310                       1593 00223$:
                                   1594 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:293: case 1:
      000310 BE 03 4A         [24] 1595 	cjne	r6,#0x03,00129$
      000313 80 2E            [24] 1596 	sjmp	00125$
      000315                       1597 00117$:
                                   1598 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:295: if (timer == TIMER2) {
      000315 90 00 18         [24] 1599 	mov	dptr,#_uartInitialise_timer_65536_71
      000318 E0               [24] 1600 	movx	a,@dptr
      000319 FE               [12] 1601 	mov	r6,a
      00031A BE 02 05         [24] 1602 	cjne	r6,#0x02,00119$
                                   1603 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:296: AUXR |= M_S1ST2;
      00031D 43 8E 01         [24] 1604 	orl	_AUXR,#0x01
      000320 80 3B            [24] 1605 	sjmp	00129$
      000322                       1606 00119$:
                                   1607 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:298: AUXR &= ~M_S1ST2;
      000322 53 8E FE         [24] 1608 	anl	_AUXR,#0xfe
                                   1609 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:301: break;
                                   1610 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:303: case 2:
      000325 80 36            [24] 1611 	sjmp	00129$
      000327                       1612 00121$:
                                   1613 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:305: if (baudRate & 1) {
      000327 90 00 0F         [24] 1614 	mov	dptr,#_uartInitialise_PARM_2
      00032A E0               [24] 1615 	movx	a,@dptr
      00032B FB               [12] 1616 	mov	r3,a
      00032C A3               [24] 1617 	inc	dptr
      00032D E0               [24] 1618 	movx	a,@dptr
      00032E FC               [12] 1619 	mov	r4,a
      00032F A3               [24] 1620 	inc	dptr
      000330 E0               [24] 1621 	movx	a,@dptr
      000331 FD               [12] 1622 	mov	r5,a
      000332 A3               [24] 1623 	inc	dptr
      000333 E0               [24] 1624 	movx	a,@dptr
      000334 FE               [12] 1625 	mov	r6,a
      000335 EB               [12] 1626 	mov	a,r3
      000336 30 E0 05         [24] 1627 	jnb	acc.0,00123$
                                   1628 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:306: PCON |= M_SMOD;
      000339 43 87 80         [24] 1629 	orl	_PCON,#0x80
      00033C 80 1F            [24] 1630 	sjmp	00129$
      00033E                       1631 00123$:
                                   1632 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:308: PCON &= ~M_SMOD;
      00033E 53 87 7F         [24] 1633 	anl	_PCON,#0x7f
                                   1634 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:310: break;
                                   1635 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:313: case 3:
      000341 80 1A            [24] 1636 	sjmp	00129$
      000343                       1637 00125$:
                                   1638 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:315: if (baudRate & 1) {
      000343 90 00 0F         [24] 1639 	mov	dptr,#_uartInitialise_PARM_2
      000346 E0               [24] 1640 	movx	a,@dptr
      000347 FB               [12] 1641 	mov	r3,a
      000348 A3               [24] 1642 	inc	dptr
      000349 E0               [24] 1643 	movx	a,@dptr
      00034A FC               [12] 1644 	mov	r4,a
      00034B A3               [24] 1645 	inc	dptr
      00034C E0               [24] 1646 	movx	a,@dptr
      00034D FD               [12] 1647 	mov	r5,a
      00034E A3               [24] 1648 	inc	dptr
      00034F E0               [24] 1649 	movx	a,@dptr
      000350 FE               [12] 1650 	mov	r6,a
      000351 EB               [12] 1651 	mov	a,r3
      000352 30 E0 05         [24] 1652 	jnb	acc.0,00127$
                                   1653 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:316: AUXR |= M_UART_M0x6;
      000355 43 8E 20         [24] 1654 	orl	_AUXR,#0x20
      000358 80 03            [24] 1655 	sjmp	00129$
      00035A                       1656 00127$:
                                   1657 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:318: AUXR &= ~M_UART_M0x6;
      00035A 53 8E DF         [24] 1658 	anl	_AUXR,#0xdf
                                   1659 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:322: }
      00035D                       1660 00129$:
                                   1661 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:326: P_SW1 = (P_SW1 & ~M_S1_S) | ((pinSwitch << P_S1_S) & M_S1_S);
      00035D 74 3F            [12] 1662 	mov	a,#0x3f
      00035F 55 A2            [12] 1663 	anl	a,_P_SW1
      000361 FE               [12] 1664 	mov	r6,a
      000362 90 00 15         [24] 1665 	mov	dptr,#_uartInitialise_PARM_5
      000365 E0               [24] 1666 	movx	a,@dptr
      000366 03               [12] 1667 	rr	a
      000367 03               [12] 1668 	rr	a
      000368 54 C0            [12] 1669 	anl	a,#0xc0
      00036A FD               [12] 1670 	mov	r5,a
      00036B 74 C0            [12] 1671 	mov	a,#0xc0
      00036D 5D               [12] 1672 	anl	a,r5
      00036E 4E               [12] 1673 	orl	a,r6
      00036F F5 A2            [12] 1674 	mov	_P_SW1,a
                                   1675 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:330: S1CON = scon | ((operationMode & 1) ? M_SM1 : 0);
      000371 90 00 19         [24] 1676 	mov	dptr,#_uartInitialise_operationMode_131072_74
      000374 E0               [24] 1677 	movx	a,@dptr
      000375 30 E0 06         [24] 1678 	jnb	acc.0,00139$
      000378 7D 40            [12] 1679 	mov	r5,#0x40
      00037A 7E 00            [12] 1680 	mov	r6,#0x00
      00037C 80 04            [24] 1681 	sjmp	00140$
      00037E                       1682 00139$:
      00037E 7D 00            [12] 1683 	mov	r5,#0x00
      000380 7E 00            [12] 1684 	mov	r6,#0x00
      000382                       1685 00140$:
      000382 ED               [12] 1686 	mov	a,r5
      000383 4F               [12] 1687 	orl	a,r7
      000384 F5 98            [12] 1688 	mov	_S1CON,a
                                   1689 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:333: IE1 |= M_S1IE;
      000386 43 A8 10         [24] 1690 	orl	_IE1,#0x10
                                   1691 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:398: }
      000389                       1692 00130$:
                                   1693 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:400: uartTransmitBuffer(uart)->status = STATUS_CLEAR;
      000389 90 00 16         [24] 1694 	mov	dptr,#_uartInitialise_uart_65536_70
      00038C E0               [24] 1695 	movx	a,@dptr
      00038D F5 82            [12] 1696 	mov	dpl,a
      00038F 12 00 F6         [24] 1697 	lcall	_uartTransmitBuffer
      000392 AD 82            [24] 1698 	mov	r5,dpl
      000394 AE 83            [24] 1699 	mov	r6,dph
      000396 AF F0            [24] 1700 	mov	r7,b
      000398 74 04            [12] 1701 	mov	a,#0x04
      00039A 2D               [12] 1702 	add	a,r5
      00039B FD               [12] 1703 	mov	r5,a
      00039C E4               [12] 1704 	clr	a
      00039D 3E               [12] 1705 	addc	a,r6
      00039E FE               [12] 1706 	mov	r6,a
      00039F 8D 82            [24] 1707 	mov	dpl,r5
      0003A1 8E 83            [24] 1708 	mov	dph,r6
      0003A3 8F F0            [24] 1709 	mov	b,r7
      0003A5 E4               [12] 1710 	clr	a
      0003A6 12 1C 0F         [24] 1711 	lcall	__gptrput
      0003A9                       1712 00132$:
                                   1713 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:403: return rc;
      0003A9 90 00 17         [24] 1714 	mov	dptr,#_uartInitialise_rc_65536_71
      0003AC E0               [24] 1715 	movx	a,@dptr
                                   1716 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:404: }
      0003AD F5 82            [12] 1717 	mov	dpl,a
      0003AF 22               [24] 1718 	ret
                                   1719 ;------------------------------------------------------------
                                   1720 ;Allocation info for local variables in function 'uart1_isr'
                                   1721 ;------------------------------------------------------------
                                   1722 ;c                         Allocated with name '_uart1_isr_c_65536_89'
                                   1723 ;------------------------------------------------------------
                                   1724 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:411: INTERRUPT(uart1_isr, UART1_INTERRUPT) {
                                   1725 ;	-----------------------------------------
                                   1726 ;	 function uart1_isr
                                   1727 ;	-----------------------------------------
      0003B0                       1728 _uart1_isr:
      0003B0 C0 20            [24] 1729 	push	bits
      0003B2 C0 E0            [24] 1730 	push	acc
      0003B4 C0 F0            [24] 1731 	push	b
      0003B6 C0 82            [24] 1732 	push	dpl
      0003B8 C0 83            [24] 1733 	push	dph
      0003BA C0 07            [24] 1734 	push	(0+7)
      0003BC C0 06            [24] 1735 	push	(0+6)
      0003BE C0 05            [24] 1736 	push	(0+5)
      0003C0 C0 04            [24] 1737 	push	(0+4)
      0003C2 C0 03            [24] 1738 	push	(0+3)
      0003C4 C0 02            [24] 1739 	push	(0+2)
      0003C6 C0 01            [24] 1740 	push	(0+1)
      0003C8 C0 00            [24] 1741 	push	(0+0)
      0003CA C0 D0            [24] 1742 	push	psw
      0003CC 75 D0 00         [24] 1743 	mov	psw,#0x00
                                   1744 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:414: EA = 0;
                                   1745 ;	assignBit
      0003CF C2 AF            [12] 1746 	clr	_EA
                                   1747 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:416: if (S1CON & M_UART_TXIF) {
      0003D1 E5 98            [12] 1748 	mov	a,_S1CON
      0003D3 30 E1 32         [24] 1749 	jnb	acc.1,00105$
                                   1750 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:417: S1CON &= ~M_UART_TXIF;
      0003D6 53 98 FD         [24] 1751 	anl	_S1CON,#0xfd
                                   1752 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:419: if (fifoRead(&UART1_transmitBuffer, &c, 1)) {
      0003D9 74 01            [12] 1753 	mov	a,#0x01
      0003DB C0 E0            [24] 1754 	push	acc
      0003DD 74 1A            [12] 1755 	mov	a,#_uart1_isr_c_65536_89
      0003DF C0 E0            [24] 1756 	push	acc
      0003E1 74 00            [12] 1757 	mov	a,#(_uart1_isr_c_65536_89 >> 8)
      0003E3 C0 E0            [24] 1758 	push	acc
      0003E5 E4               [12] 1759 	clr	a
      0003E6 C0 E0            [24] 1760 	push	acc
      0003E8 90 00 4D         [24] 1761 	mov	dptr,#_UART1_transmitBuffer
      0003EB 75 F0 40         [24] 1762 	mov	b,#0x40
      0003EE 12 0C 65         [24] 1763 	lcall	_fifoRead
      0003F1 AF 82            [24] 1764 	mov	r7,dpl
      0003F3 E5 81            [12] 1765 	mov	a,sp
      0003F5 24 FC            [12] 1766 	add	a,#0xfc
      0003F7 F5 81            [12] 1767 	mov	sp,a
      0003F9 EF               [12] 1768 	mov	a,r7
      0003FA 60 08            [24] 1769 	jz	00102$
                                   1770 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:420: S1BUF = c;
      0003FC 90 00 1A         [24] 1771 	mov	dptr,#_uart1_isr_c_65536_89
      0003FF E0               [24] 1772 	movx	a,@dptr
      000400 F5 99            [12] 1773 	mov	_S1BUF,a
      000402 80 04            [24] 1774 	sjmp	00105$
      000404                       1775 00102$:
                                   1776 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:422: UART1_transmitBuffer.status = STATUS_CLEAR;
      000404 78 51            [12] 1777 	mov	r0,#(_UART1_transmitBuffer + 0x0004)
      000406 76 00            [12] 1778 	mov	@r0,#0x00
      000408                       1779 00105$:
                                   1780 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:426: if (S1CON & M_UART_RXIF) {
      000408 E5 98            [12] 1781 	mov	a,_S1CON
      00040A 30 E0 27         [24] 1782 	jnb	acc.0,00107$
                                   1783 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:427: S1CON &= ~M_UART_RXIF;
      00040D 53 98 FE         [24] 1784 	anl	_S1CON,#0xfe
                                   1785 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:428: c = S1BUF;
      000410 90 00 1A         [24] 1786 	mov	dptr,#_uart1_isr_c_65536_89
      000413 E5 99            [12] 1787 	mov	a,_S1BUF
      000415 F0               [24] 1788 	movx	@dptr,a
                                   1789 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:429: fifoWrite(&UART1_receiveBuffer, &c, 1);
      000416 74 01            [12] 1790 	mov	a,#0x01
      000418 C0 E0            [24] 1791 	push	acc
      00041A 74 1A            [12] 1792 	mov	a,#_uart1_isr_c_65536_89
      00041C C0 E0            [24] 1793 	push	acc
      00041E 74 00            [12] 1794 	mov	a,#(_uart1_isr_c_65536_89 >> 8)
      000420 C0 E0            [24] 1795 	push	acc
      000422 E4               [12] 1796 	clr	a
      000423 C0 E0            [24] 1797 	push	acc
      000425 90 00 35         [24] 1798 	mov	dptr,#_UART1_receiveBuffer
      000428 75 F0 40         [24] 1799 	mov	b,#0x40
      00042B 12 0B 03         [24] 1800 	lcall	_fifoWrite
      00042E E5 81            [12] 1801 	mov	a,sp
      000430 24 FC            [12] 1802 	add	a,#0xfc
      000432 F5 81            [12] 1803 	mov	sp,a
      000434                       1804 00107$:
                                   1805 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:432: EA = 1;
                                   1806 ;	assignBit
      000434 D2 AF            [12] 1807 	setb	_EA
                                   1808 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:433: }
      000436 D0 D0            [24] 1809 	pop	psw
      000438 D0 00            [24] 1810 	pop	(0+0)
      00043A D0 01            [24] 1811 	pop	(0+1)
      00043C D0 02            [24] 1812 	pop	(0+2)
      00043E D0 03            [24] 1813 	pop	(0+3)
      000440 D0 04            [24] 1814 	pop	(0+4)
      000442 D0 05            [24] 1815 	pop	(0+5)
      000444 D0 06            [24] 1816 	pop	(0+6)
      000446 D0 07            [24] 1817 	pop	(0+7)
      000448 D0 83            [24] 1818 	pop	dph
      00044A D0 82            [24] 1819 	pop	dpl
      00044C D0 F0            [24] 1820 	pop	b
      00044E D0 E0            [24] 1821 	pop	acc
      000450 D0 20            [24] 1822 	pop	bits
      000452 32               [24] 1823 	reti
                                   1824 ;------------------------------------------------------------
                                   1825 ;Allocation info for local variables in function 'uartGetBlock'
                                   1826 ;------------------------------------------------------------
                                   1827 ;sloc0                     Allocated with name '_uartGetBlock_sloc0_1_0'
                                   1828 ;sloc1                     Allocated with name '_uartGetBlock_sloc1_1_0'
                                   1829 ;data                      Allocated with name '_uartGetBlock_PARM_2'
                                   1830 ;size                      Allocated with name '_uartGetBlock_PARM_3'
                                   1831 ;blocking                  Allocated with name '_uartGetBlock_PARM_4'
                                   1832 ;uart                      Allocated with name '_uartGetBlock_uart_65536_94'
                                   1833 ;rc                        Allocated with name '_uartGetBlock_rc_65536_95'
                                   1834 ;buffer                    Allocated with name '_uartGetBlock_buffer_65536_95'
                                   1835 ;------------------------------------------------------------
                                   1836 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:511: bool uartGetBlock(Uart uart, uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   1837 ;	-----------------------------------------
                                   1838 ;	 function uartGetBlock
                                   1839 ;	-----------------------------------------
      000453                       1840 _uartGetBlock:
      000453 E5 82            [12] 1841 	mov	a,dpl
      000455 90 00 20         [24] 1842 	mov	dptr,#_uartGetBlock_uart_65536_94
      000458 F0               [24] 1843 	movx	@dptr,a
                                   1844 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:513: FifoState *buffer = uartReceiveBuffer(uart);
      000459 E0               [24] 1845 	movx	a,@dptr
      00045A F5 82            [12] 1846 	mov	dpl,a
      00045C 12 00 C0         [24] 1847 	lcall	_uartReceiveBuffer
      00045F AD 82            [24] 1848 	mov	r5,dpl
      000461 AE 83            [24] 1849 	mov	r6,dph
      000463 AF F0            [24] 1850 	mov	r7,b
                                   1851 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:515: do {
      000465 90 00 1B         [24] 1852 	mov	dptr,#_uartGetBlock_PARM_2
      000468 E0               [24] 1853 	movx	a,@dptr
      000469 F5 09            [12] 1854 	mov	_uartGetBlock_sloc1_1_0,a
      00046B A3               [24] 1855 	inc	dptr
      00046C E0               [24] 1856 	movx	a,@dptr
      00046D F5 0A            [12] 1857 	mov	(_uartGetBlock_sloc1_1_0 + 1),a
      00046F A3               [24] 1858 	inc	dptr
      000470 E0               [24] 1859 	movx	a,@dptr
      000471 F5 0B            [12] 1860 	mov	(_uartGetBlock_sloc1_1_0 + 2),a
      000473 90 00 1F         [24] 1861 	mov	dptr,#_uartGetBlock_PARM_4
      000476 E0               [24] 1862 	movx	a,@dptr
      000477 F9               [12] 1863 	mov	r1,a
      000478 B9 01 03         [24] 1864 	cjne	r1,#0x01,00115$
      00047B E9               [12] 1865 	mov	a,r1
      00047C 80 01            [24] 1866 	sjmp	00116$
      00047E                       1867 00115$:
      00047E E4               [12] 1868 	clr	a
      00047F                       1869 00116$:
      00047F F5 08            [12] 1870 	mov	_uartGetBlock_sloc0_1_0,a
      000481                       1871 00102$:
                                   1872 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:516: EA = 0;
                                   1873 ;	assignBit
      000481 C2 AF            [12] 1874 	clr	_EA
                                   1875 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:517: rc = fifoRead(buffer, data, size);
      000483 A8 09            [24] 1876 	mov	r0,_uartGetBlock_sloc1_1_0
      000485 A9 0A            [24] 1877 	mov	r1,(_uartGetBlock_sloc1_1_0 + 1)
      000487 AC 0B            [24] 1878 	mov	r4,(_uartGetBlock_sloc1_1_0 + 2)
      000489 C0 07            [24] 1879 	push	ar7
      00048B C0 06            [24] 1880 	push	ar6
      00048D C0 05            [24] 1881 	push	ar5
      00048F 90 00 1E         [24] 1882 	mov	dptr,#_uartGetBlock_PARM_3
      000492 E0               [24] 1883 	movx	a,@dptr
      000493 C0 E0            [24] 1884 	push	acc
      000495 C0 00            [24] 1885 	push	ar0
      000497 C0 01            [24] 1886 	push	ar1
      000499 C0 04            [24] 1887 	push	ar4
      00049B 8D 82            [24] 1888 	mov	dpl,r5
      00049D 8E 83            [24] 1889 	mov	dph,r6
      00049F 8F F0            [24] 1890 	mov	b,r7
      0004A1 12 0C 65         [24] 1891 	lcall	_fifoRead
      0004A4 AC 82            [24] 1892 	mov	r4,dpl
      0004A6 E5 81            [12] 1893 	mov	a,sp
      0004A8 24 FC            [12] 1894 	add	a,#0xfc
      0004AA F5 81            [12] 1895 	mov	sp,a
      0004AC D0 05            [24] 1896 	pop	ar5
      0004AE D0 06            [24] 1897 	pop	ar6
      0004B0 D0 07            [24] 1898 	pop	ar7
                                   1899 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:518: EA = 1;
                                   1900 ;	assignBit
      0004B2 D2 AF            [12] 1901 	setb	_EA
                                   1902 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:519: } while (blocking == BLOCKING && !rc);
      0004B4 E5 08            [12] 1903 	mov	a,_uartGetBlock_sloc0_1_0
      0004B6 60 03            [24] 1904 	jz	00104$
      0004B8 EC               [12] 1905 	mov	a,r4
      0004B9 60 C6            [24] 1906 	jz	00102$
      0004BB                       1907 00104$:
                                   1908 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:521: return rc;
      0004BB 8C 82            [24] 1909 	mov	dpl,r4
                                   1910 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:522: }
      0004BD 22               [24] 1911 	ret
                                   1912 ;------------------------------------------------------------
                                   1913 ;Allocation info for local variables in function 'uartSendBlock'
                                   1914 ;------------------------------------------------------------
                                   1915 ;sloc0                     Allocated with name '_uartSendBlock_sloc0_1_0'
                                   1916 ;sloc1                     Allocated with name '_uartSendBlock_sloc1_1_0'
                                   1917 ;data                      Allocated with name '_uartSendBlock_PARM_2'
                                   1918 ;size                      Allocated with name '_uartSendBlock_PARM_3'
                                   1919 ;blocking                  Allocated with name '_uartSendBlock_PARM_4'
                                   1920 ;uart                      Allocated with name '_uartSendBlock_uart_65536_97'
                                   1921 ;buffer                    Allocated with name '_uartSendBlock_buffer_65536_98'
                                   1922 ;rc                        Allocated with name '_uartSendBlock_rc_65536_98'
                                   1923 ;data                      Allocated with name '_uartSendBlock_data_131073_101'
                                   1924 ;------------------------------------------------------------
                                   1925 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:524: bool uartSendBlock(Uart uart, const uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   1926 ;	-----------------------------------------
                                   1927 ;	 function uartSendBlock
                                   1928 ;	-----------------------------------------
      0004BE                       1929 _uartSendBlock:
      0004BE E5 82            [12] 1930 	mov	a,dpl
      0004C0 90 00 26         [24] 1931 	mov	dptr,#_uartSendBlock_uart_65536_97
      0004C3 F0               [24] 1932 	movx	@dptr,a
                                   1933 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:525: FifoState *buffer = uartTransmitBuffer(uart);
      0004C4 E0               [24] 1934 	movx	a,@dptr
      0004C5 F5 82            [12] 1935 	mov	dpl,a
      0004C7 12 00 F6         [24] 1936 	lcall	_uartTransmitBuffer
      0004CA AD 82            [24] 1937 	mov	r5,dpl
      0004CC AE 83            [24] 1938 	mov	r6,dph
      0004CE AF F0            [24] 1939 	mov	r7,b
                                   1940 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:528: do {
      0004D0 90 00 21         [24] 1941 	mov	dptr,#_uartSendBlock_PARM_2
      0004D3 E0               [24] 1942 	movx	a,@dptr
      0004D4 F5 0D            [12] 1943 	mov	_uartSendBlock_sloc1_1_0,a
      0004D6 A3               [24] 1944 	inc	dptr
      0004D7 E0               [24] 1945 	movx	a,@dptr
      0004D8 F5 0E            [12] 1946 	mov	(_uartSendBlock_sloc1_1_0 + 1),a
      0004DA A3               [24] 1947 	inc	dptr
      0004DB E0               [24] 1948 	movx	a,@dptr
      0004DC F5 0F            [12] 1949 	mov	(_uartSendBlock_sloc1_1_0 + 2),a
      0004DE 90 00 25         [24] 1950 	mov	dptr,#_uartSendBlock_PARM_4
      0004E1 E0               [24] 1951 	movx	a,@dptr
      0004E2 F9               [12] 1952 	mov	r1,a
      0004E3 B9 01 03         [24] 1953 	cjne	r1,#0x01,00132$
      0004E6 E9               [12] 1954 	mov	a,r1
      0004E7 80 01            [24] 1955 	sjmp	00133$
      0004E9                       1956 00132$:
      0004E9 E4               [12] 1957 	clr	a
      0004EA                       1958 00133$:
      0004EA F5 0C            [12] 1959 	mov	_uartSendBlock_sloc0_1_0,a
      0004EC                       1960 00102$:
                                   1961 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:529: EA = 0;
                                   1962 ;	assignBit
      0004EC C2 AF            [12] 1963 	clr	_EA
                                   1964 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:530: rc = fifoWrite(buffer, data, size);
      0004EE A8 0D            [24] 1965 	mov	r0,_uartSendBlock_sloc1_1_0
      0004F0 A9 0E            [24] 1966 	mov	r1,(_uartSendBlock_sloc1_1_0 + 1)
      0004F2 AC 0F            [24] 1967 	mov	r4,(_uartSendBlock_sloc1_1_0 + 2)
      0004F4 C0 07            [24] 1968 	push	ar7
      0004F6 C0 06            [24] 1969 	push	ar6
      0004F8 C0 05            [24] 1970 	push	ar5
      0004FA 90 00 24         [24] 1971 	mov	dptr,#_uartSendBlock_PARM_3
      0004FD E0               [24] 1972 	movx	a,@dptr
      0004FE C0 E0            [24] 1973 	push	acc
      000500 C0 00            [24] 1974 	push	ar0
      000502 C0 01            [24] 1975 	push	ar1
      000504 C0 04            [24] 1976 	push	ar4
      000506 8D 82            [24] 1977 	mov	dpl,r5
      000508 8E 83            [24] 1978 	mov	dph,r6
      00050A 8F F0            [24] 1979 	mov	b,r7
      00050C 12 0B 03         [24] 1980 	lcall	_fifoWrite
      00050F AC 82            [24] 1981 	mov	r4,dpl
      000511 E5 81            [12] 1982 	mov	a,sp
      000513 24 FC            [12] 1983 	add	a,#0xfc
      000515 F5 81            [12] 1984 	mov	sp,a
      000517 D0 05            [24] 1985 	pop	ar5
      000519 D0 06            [24] 1986 	pop	ar6
      00051B D0 07            [24] 1987 	pop	ar7
                                   1988 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:531: EA = 1;
                                   1989 ;	assignBit
      00051D D2 AF            [12] 1990 	setb	_EA
                                   1991 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:532: } while (blocking == BLOCKING && !rc);
      00051F E5 0C            [12] 1992 	mov	a,_uartSendBlock_sloc0_1_0
      000521 60 03            [24] 1993 	jz	00104$
      000523 EC               [12] 1994 	mov	a,r4
      000524 60 C6            [24] 1995 	jz	00102$
      000526                       1996 00104$:
                                   1997 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:534: if (rc && buffer->status == STATUS_CLEAR) {
      000526 EC               [12] 1998 	mov	a,r4
      000527 60 4D            [24] 1999 	jz	00108$
      000529 74 04            [12] 2000 	mov	a,#0x04
      00052B 2D               [12] 2001 	add	a,r5
      00052C F9               [12] 2002 	mov	r1,a
      00052D E4               [12] 2003 	clr	a
      00052E 3E               [12] 2004 	addc	a,r6
      00052F FA               [12] 2005 	mov	r2,a
      000530 8F 03            [24] 2006 	mov	ar3,r7
      000532 89 82            [24] 2007 	mov	dpl,r1
      000534 8A 83            [24] 2008 	mov	dph,r2
      000536 8B F0            [24] 2009 	mov	b,r3
      000538 12 1C 2A         [24] 2010 	lcall	__gptrget
      00053B 70 39            [24] 2011 	jnz	00108$
                                   2012 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:535: buffer->status = STATUS_SENDING;
      00053D 89 82            [24] 2013 	mov	dpl,r1
      00053F 8A 83            [24] 2014 	mov	dph,r2
      000541 8B F0            [24] 2015 	mov	b,r3
      000543 74 01            [12] 2016 	mov	a,#0x01
      000545 12 1C 0F         [24] 2017 	lcall	__gptrput
                                   2018 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:537: fifoRead(buffer, &data, 1);
      000548 C0 04            [24] 2019 	push	ar4
      00054A C0 E0            [24] 2020 	push	acc
      00054C 74 27            [12] 2021 	mov	a,#_uartSendBlock_data_131073_101
      00054E C0 E0            [24] 2022 	push	acc
      000550 74 00            [12] 2023 	mov	a,#(_uartSendBlock_data_131073_101 >> 8)
      000552 C0 E0            [24] 2024 	push	acc
      000554 E4               [12] 2025 	clr	a
      000555 C0 E0            [24] 2026 	push	acc
      000557 8D 82            [24] 2027 	mov	dpl,r5
      000559 8E 83            [24] 2028 	mov	dph,r6
      00055B 8F F0            [24] 2029 	mov	b,r7
      00055D 12 0C 65         [24] 2030 	lcall	_fifoRead
      000560 E5 81            [12] 2031 	mov	a,sp
      000562 24 FC            [12] 2032 	add	a,#0xfc
      000564 F5 81            [12] 2033 	mov	sp,a
      000566 D0 04            [24] 2034 	pop	ar4
                                   2035 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:539: switch (uart) {
      000568 90 00 26         [24] 2036 	mov	dptr,#_uartSendBlock_uart_65536_97
      00056B E0               [24] 2037 	movx	a,@dptr
      00056C FF               [12] 2038 	mov	r7,a
      00056D BF 01 06         [24] 2039 	cjne	r7,#0x01,00108$
                                   2040 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:541: S1BUF = data;
      000570 90 00 27         [24] 2041 	mov	dptr,#_uartSendBlock_data_131073_101
      000573 E0               [24] 2042 	movx	a,@dptr
      000574 F5 99            [12] 2043 	mov	_S1BUF,a
                                   2044 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:559: }
      000576                       2045 00108$:
                                   2046 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:562: return rc;
      000576 8C 82            [24] 2047 	mov	dpl,r4
                                   2048 ;	/home/mr-atom/.stc/uni-stc/hal/uart-hal.c:563: }
      000578 22               [24] 2049 	ret
                                   2050 	.area CSEG    (CODE)
                                   2051 	.area CONST   (CODE)
                                   2052 	.area XINIT   (CODE)
                                   2053 	.area CABS    (ABS,CODE)
