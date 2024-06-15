                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
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
      000021                        614 bits:
      000021                        615 	.ds 1
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
      00003A                        643 _UART1_receiveBufferData:
      00003A                        644 	.ds 16
      00004A                        645 _UART1_receiveBuffer::
      00004A                        646 	.ds 8
      000052                        647 _UART1_transmitBufferData:
      000052                        648 	.ds 16
      000062                        649 _UART1_transmitBuffer::
      000062                        650 	.ds 8
                                    651 ;--------------------------------------------------------
                                    652 ; absolute internal ram data
                                    653 ;--------------------------------------------------------
                                    654 	.area IABS    (ABS,DATA)
                                    655 	.area IABS    (ABS,DATA)
                                    656 ;--------------------------------------------------------
                                    657 ; bit data
                                    658 ;--------------------------------------------------------
                                    659 	.area BSEG    (BIT)
      000000                        660 _uartIsTransmissionComplete_sloc0_1_0:
      000000                        661 	.ds 1
      000001                        662 _uartTransmitBufferHasBytesFree_sloc0_1_0:
      000001                        663 	.ds 1
                                    664 ;--------------------------------------------------------
                                    665 ; paged external ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area PSEG    (PAG,XDATA)
                                    668 ;--------------------------------------------------------
                                    669 ; uninitialized external ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area XSEG    (XDATA)
                           00FEA8   672 _ADCTIM	=	0xfea8
                           00FEAD   673 _ADCEXCFG	=	0xfead
                           00FA10   674 _DMA_ADC_CFG	=	0xfa10
                           00FA11   675 _DMA_ADC_CR	=	0xfa11
                           00FA12   676 _DMA_ADC_STA	=	0xfa12
                           00FA17   677 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   678 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   679 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   680 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   681 _DMA_ADC_CHSW1	=	0xfa1b
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
                           00FE04   876 _IRC32KCR	=	0xfe04
                           00FE00   877 _CKSEL	=	0xfe00
                           00FE05   878 _MCLKOCR	=	0xfe05
                           00FE06   879 _IRCDB	=	0xfe06
                           00FE07   880 _IRC48MCR	=	0xfe07
                           00FEA2   881 _TM2PS	=	0xfea2
                           00FEA3   882 _TM3PS	=	0xfea3
                           00FEA4   883 _TM4PS	=	0xfea4
                           00FA30   884 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   885 _DMA_UR1T_CR	=	0xfa31
                           00FA32   886 _DMA_UR1T_STA	=	0xfa32
                           00FA33   887 _DMA_URTX_AMT	=	0xfa33
                           00FA34   888 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   889 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   890 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   891 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   892 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   893 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   894 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   895 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   896 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   897 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   898 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   899 _DMA_UR2T_CR	=	0xfa31
                           00FA32   900 _DMA_UR2T_STA	=	0xfa32
                           00FA33   901 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   902 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   903 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   904 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   905 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   906 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   907 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   908 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   909 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   910 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   911 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   912 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   913 _DMA_UR3T_CR	=	0xfa31
                           00FA32   914 _DMA_UR3T_STA	=	0xfa32
                           00FA33   915 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   916 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   917 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   918 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   919 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   920 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   921 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   922 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   923 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   924 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   925 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   926 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   927 _DMA_UR4T_CR	=	0xfa31
                           00FA32   928 _DMA_UR4T_STA	=	0xfa32
                           00FA33   929 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   930 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   931 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   932 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   933 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   934 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   935 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   936 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   937 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   938 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   939 _DMA_UR4R_TXAL	=	0xfa3e
      000042                        940 _uartGetCharacter_result_10000_50:
      000042                        941 	.ds 1
      000043                        942 _uartReceiveBuffer_uart_10000_84:
      000043                        943 	.ds 1
      000044                        944 _uartReceiveBuffer_result_10000_85:
      000044                        945 	.ds 3
      000047                        946 _uartTransmitBuffer_uart_10000_87:
      000047                        947 	.ds 1
      000048                        948 _uartTransmitBuffer_result_10000_88:
      000048                        949 	.ds 3
      00004B                        950 _uartIsTransmissionComplete_uart_10000_90:
      00004B                        951 	.ds 1
      00004C                        952 _uartTransmitBufferHasBytesFree_PARM_2:
      00004C                        953 	.ds 1
      00004D                        954 _uartTransmitBufferHasBytesFree_uart_10000_92:
      00004D                        955 	.ds 1
      00004E                        956 _uartReceiveBufferBytes_uart_10000_95:
      00004E                        957 	.ds 1
      00004F                        958 _uartFlushReceiveBuffer_uart_10000_101:
      00004F                        959 	.ds 1
      000050                        960 _uartInitialise_PARM_2:
      000050                        961 	.ds 4
      000054                        962 _uartInitialise_PARM_3:
      000054                        963 	.ds 1
      000055                        964 _uartInitialise_PARM_4:
      000055                        965 	.ds 1
      000056                        966 _uartInitialise_PARM_5:
      000056                        967 	.ds 1
      000057                        968 _uartInitialise_uart_10000_103:
      000057                        969 	.ds 1
      000058                        970 _uartInitialise_rc_10000_104:
      000058                        971 	.ds 1
      000059                        972 _uartInitialise_timer_10000_104:
      000059                        973 	.ds 1
      00005A                        974 _uartInitialise_operationMode_20000_107:
      00005A                        975 	.ds 1
      00005B                        976 _uart1_isr_c_10000_122:
      00005B                        977 	.ds 1
      00005C                        978 _uartGetBlock_PARM_2:
      00005C                        979 	.ds 3
      00005F                        980 _uartGetBlock_PARM_3:
      00005F                        981 	.ds 1
      000060                        982 _uartGetBlock_PARM_4:
      000060                        983 	.ds 1
      000061                        984 _uartGetBlock_uart_10000_127:
      000061                        985 	.ds 1
      000062                        986 _uartSendBlock_PARM_2:
      000062                        987 	.ds 3
      000065                        988 _uartSendBlock_PARM_3:
      000065                        989 	.ds 1
      000066                        990 _uartSendBlock_PARM_4:
      000066                        991 	.ds 1
      000067                        992 _uartSendBlock_uart_10000_130:
      000067                        993 	.ds 1
      000068                        994 _uartSendBlock_data_20001_134:
      000068                        995 	.ds 1
                                    996 ;--------------------------------------------------------
                                    997 ; absolute external ram data
                                    998 ;--------------------------------------------------------
                                    999 	.area XABS    (ABS,XDATA)
                                   1000 ;--------------------------------------------------------
                                   1001 ; initialized external ram data
                                   1002 ;--------------------------------------------------------
                                   1003 	.area XISEG   (XDATA)
                                   1004 	.area HOME    (CODE)
                                   1005 	.area GSINIT0 (CODE)
                                   1006 	.area GSINIT1 (CODE)
                                   1007 	.area GSINIT2 (CODE)
                                   1008 	.area GSINIT3 (CODE)
                                   1009 	.area GSINIT4 (CODE)
                                   1010 	.area GSINIT5 (CODE)
                                   1011 	.area GSINIT  (CODE)
                                   1012 	.area GSFINAL (CODE)
                                   1013 	.area CSEG    (CODE)
                                   1014 ;--------------------------------------------------------
                                   1015 ; global & static initialisations
                                   1016 ;--------------------------------------------------------
                                   1017 	.area HOME    (CODE)
                                   1018 	.area GSINIT  (CODE)
                                   1019 	.area GSFINAL (CODE)
                                   1020 	.area GSINIT  (CODE)
                                   1021 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:75: FIFO_BUFFER(UART1_receiveBuffer, UART1_RX_BUFFER_SIZE, UART1_SEGMENT)
      0000A9 78 4A            [12] 1022 	mov	r0,#_UART1_receiveBuffer
      0000AB 76 10            [12] 1023 	mov	@r0,#0x10
      0000AD 78 4B            [12] 1024 	mov	r0,#(_UART1_receiveBuffer + 0x0001)
      0000AF 76 00            [12] 1025 	mov	@r0,#0x00
      0000B1 78 4C            [12] 1026 	mov	r0,#(_UART1_receiveBuffer + 0x0002)
      0000B3 76 00            [12] 1027 	mov	@r0,#0x00
      0000B5 78 4D            [12] 1028 	mov	r0,#(_UART1_receiveBuffer + 0x0003)
      0000B7 76 00            [12] 1029 	mov	@r0,#0x00
      0000B9 78 4E            [12] 1030 	mov	r0,#(_UART1_receiveBuffer + 0x0004)
      0000BB 76 00            [12] 1031 	mov	@r0,#0x00
      0000BD 78 4F            [12] 1032 	mov	r0,#(_UART1_receiveBuffer + 0x0005)
      0000BF 76 3A            [12] 1033 	mov	@r0,#_UART1_receiveBufferData
      0000C1 08               [12] 1034 	inc	r0
      0000C2 76 00            [12] 1035 	mov	@r0,#(_UART1_receiveBufferData >> 8)
      0000C4 08               [12] 1036 	inc	r0
      0000C5 76 40            [12] 1037 	mov	@r0,#0x40
                                   1038 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:76: FIFO_BUFFER(UART1_transmitBuffer, UART1_TX_BUFFER_SIZE, UART1_SEGMENT)
      0000C7 78 62            [12] 1039 	mov	r0,#_UART1_transmitBuffer
      0000C9 76 10            [12] 1040 	mov	@r0,#0x10
      0000CB 78 63            [12] 1041 	mov	r0,#(_UART1_transmitBuffer + 0x0001)
      0000CD 76 00            [12] 1042 	mov	@r0,#0x00
      0000CF 78 64            [12] 1043 	mov	r0,#(_UART1_transmitBuffer + 0x0002)
      0000D1 76 00            [12] 1044 	mov	@r0,#0x00
      0000D3 78 65            [12] 1045 	mov	r0,#(_UART1_transmitBuffer + 0x0003)
      0000D5 76 00            [12] 1046 	mov	@r0,#0x00
      0000D7 78 66            [12] 1047 	mov	r0,#(_UART1_transmitBuffer + 0x0004)
      0000D9 76 00            [12] 1048 	mov	@r0,#0x00
      0000DB 78 67            [12] 1049 	mov	r0,#(_UART1_transmitBuffer + 0x0005)
      0000DD 76 52            [12] 1050 	mov	@r0,#_UART1_transmitBufferData
      0000DF 08               [12] 1051 	inc	r0
      0000E0 76 00            [12] 1052 	mov	@r0,#(_UART1_transmitBufferData >> 8)
      0000E2 08               [12] 1053 	inc	r0
      0000E3 76 40            [12] 1054 	mov	@r0,#0x40
                                   1055 ;--------------------------------------------------------
                                   1056 ; Home
                                   1057 ;--------------------------------------------------------
                                   1058 	.area HOME    (CODE)
                                   1059 	.area HOME    (CODE)
                                   1060 ;--------------------------------------------------------
                                   1061 ; code
                                   1062 ;--------------------------------------------------------
                                   1063 	.area CSEG    (CODE)
                                   1064 ;------------------------------------------------------------
                                   1065 ;Allocation info for local variables in function 'uartReceiveBuffer'
                                   1066 ;------------------------------------------------------------
                                   1067 ;uart                      Allocated with name '_uartReceiveBuffer_uart_10000_84'
                                   1068 ;result                    Allocated with name '_uartReceiveBuffer_result_10000_85'
                                   1069 ;------------------------------------------------------------
                                   1070 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:127: static FifoState *uartReceiveBuffer(Uart uart) {
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function uartReceiveBuffer
                                   1073 ;	-----------------------------------------
      000651                       1074 _uartReceiveBuffer:
                           000007  1075 	ar7 = 0x07
                           000006  1076 	ar6 = 0x06
                           000005  1077 	ar5 = 0x05
                           000004  1078 	ar4 = 0x04
                           000003  1079 	ar3 = 0x03
                           000002  1080 	ar2 = 0x02
                           000001  1081 	ar1 = 0x01
                           000000  1082 	ar0 = 0x00
      000651 E5 82            [12] 1083 	mov	a,dpl
      000653 90 00 43         [24] 1084 	mov	dptr,#_uartReceiveBuffer_uart_10000_84
      000656 F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:128: FifoState *result = NULL;
      000657 90 00 44         [24] 1087 	mov	dptr,#_uartReceiveBuffer_result_10000_85
      00065A E4               [12] 1088 	clr	a
      00065B F0               [24] 1089 	movx	@dptr,a
      00065C A3               [24] 1090 	inc	dptr
      00065D F0               [24] 1091 	movx	@dptr,a
      00065E A3               [24] 1092 	inc	dptr
      00065F F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:130: switch (uart) {
      000660 90 00 43         [24] 1095 	mov	dptr,#_uartReceiveBuffer_uart_10000_84
      000663 E0               [24] 1096 	movx	a,@dptr
      000664 FF               [12] 1097 	mov	r7,a
      000665 BF 01 0D         [24] 1098 	cjne	r7,#0x01,00102$
                                   1099 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:132: result = &UART1_receiveBuffer;
      000668 90 00 44         [24] 1100 	mov	dptr,#_uartReceiveBuffer_result_10000_85
      00066B 74 4A            [12] 1101 	mov	a,#_UART1_receiveBuffer
      00066D F0               [24] 1102 	movx	@dptr,a
      00066E E4               [12] 1103 	clr	a
      00066F A3               [24] 1104 	inc	dptr
      000670 F0               [24] 1105 	movx	@dptr,a
      000671 74 40            [12] 1106 	mov	a,#0x40
      000673 A3               [24] 1107 	inc	dptr
      000674 F0               [24] 1108 	movx	@dptr,a
                                   1109 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:150: }
      000675                       1110 00102$:
                                   1111 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:152: return result;
      000675 90 00 44         [24] 1112 	mov	dptr,#_uartReceiveBuffer_result_10000_85
      000678 E0               [24] 1113 	movx	a,@dptr
      000679 FD               [12] 1114 	mov	r5,a
      00067A A3               [24] 1115 	inc	dptr
      00067B E0               [24] 1116 	movx	a,@dptr
      00067C FE               [12] 1117 	mov	r6,a
      00067D A3               [24] 1118 	inc	dptr
      00067E E0               [24] 1119 	movx	a,@dptr
      00067F FF               [12] 1120 	mov	r7,a
      000680 8D 82            [24] 1121 	mov	dpl, r5
      000682 8E 83            [24] 1122 	mov	dph, r6
      000684 8F F0            [24] 1123 	mov	b, r7
                                   1124 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:153: }
      000686 22               [24] 1125 	ret
                                   1126 ;------------------------------------------------------------
                                   1127 ;Allocation info for local variables in function 'uartTransmitBuffer'
                                   1128 ;------------------------------------------------------------
                                   1129 ;uart                      Allocated with name '_uartTransmitBuffer_uart_10000_87'
                                   1130 ;result                    Allocated with name '_uartTransmitBuffer_result_10000_88'
                                   1131 ;------------------------------------------------------------
                                   1132 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:155: static FifoState *uartTransmitBuffer(Uart uart) {
                                   1133 ;	-----------------------------------------
                                   1134 ;	 function uartTransmitBuffer
                                   1135 ;	-----------------------------------------
      000687                       1136 _uartTransmitBuffer:
      000687 E5 82            [12] 1137 	mov	a,dpl
      000689 90 00 47         [24] 1138 	mov	dptr,#_uartTransmitBuffer_uart_10000_87
      00068C F0               [24] 1139 	movx	@dptr,a
                                   1140 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:156: FifoState *result = NULL;
      00068D 90 00 48         [24] 1141 	mov	dptr,#_uartTransmitBuffer_result_10000_88
      000690 E4               [12] 1142 	clr	a
      000691 F0               [24] 1143 	movx	@dptr,a
      000692 A3               [24] 1144 	inc	dptr
      000693 F0               [24] 1145 	movx	@dptr,a
      000694 A3               [24] 1146 	inc	dptr
      000695 F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:158: switch (uart) {
      000696 90 00 47         [24] 1149 	mov	dptr,#_uartTransmitBuffer_uart_10000_87
      000699 E0               [24] 1150 	movx	a,@dptr
      00069A FF               [12] 1151 	mov	r7,a
      00069B BF 01 0D         [24] 1152 	cjne	r7,#0x01,00102$
                                   1153 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:160: result = &UART1_transmitBuffer;
      00069E 90 00 48         [24] 1154 	mov	dptr,#_uartTransmitBuffer_result_10000_88
      0006A1 74 62            [12] 1155 	mov	a,#_UART1_transmitBuffer
      0006A3 F0               [24] 1156 	movx	@dptr,a
      0006A4 E4               [12] 1157 	clr	a
      0006A5 A3               [24] 1158 	inc	dptr
      0006A6 F0               [24] 1159 	movx	@dptr,a
      0006A7 74 40            [12] 1160 	mov	a,#0x40
      0006A9 A3               [24] 1161 	inc	dptr
      0006AA F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:178: }
      0006AB                       1164 00102$:
                                   1165 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:180: return result;
      0006AB 90 00 48         [24] 1166 	mov	dptr,#_uartTransmitBuffer_result_10000_88
      0006AE E0               [24] 1167 	movx	a,@dptr
      0006AF FD               [12] 1168 	mov	r5,a
      0006B0 A3               [24] 1169 	inc	dptr
      0006B1 E0               [24] 1170 	movx	a,@dptr
      0006B2 FE               [12] 1171 	mov	r6,a
      0006B3 A3               [24] 1172 	inc	dptr
      0006B4 E0               [24] 1173 	movx	a,@dptr
      0006B5 FF               [12] 1174 	mov	r7,a
      0006B6 8D 82            [24] 1175 	mov	dpl, r5
      0006B8 8E 83            [24] 1176 	mov	dph, r6
      0006BA 8F F0            [24] 1177 	mov	b, r7
                                   1178 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:181: }
      0006BC 22               [24] 1179 	ret
                                   1180 ;------------------------------------------------------------
                                   1181 ;Allocation info for local variables in function 'uartIsTransmissionComplete'
                                   1182 ;------------------------------------------------------------
                                   1183 ;uart                      Allocated with name '_uartIsTransmissionComplete_uart_10000_90'
                                   1184 ;buffer                    Allocated with name '_uartIsTransmissionComplete_buffer_10000_91'
                                   1185 ;------------------------------------------------------------
                                   1186 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:183: bool uartIsTransmissionComplete(Uart uart) {
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function uartIsTransmissionComplete
                                   1189 ;	-----------------------------------------
      0006BD                       1190 _uartIsTransmissionComplete:
      0006BD E5 82            [12] 1191 	mov	a,dpl
      0006BF 90 00 4B         [24] 1192 	mov	dptr,#_uartIsTransmissionComplete_uart_10000_90
      0006C2 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:184: FifoState *buffer = uartTransmitBuffer(uart);
      0006C3 E0               [24] 1195 	movx	a,@dptr
      0006C4 F5 82            [12] 1196 	mov	dpl,a
      0006C6 12 06 87         [24] 1197 	lcall	_uartTransmitBuffer
      0006C9 AD 82            [24] 1198 	mov	r5, dpl
      0006CB AE 83            [24] 1199 	mov	r6, dph
      0006CD AF F0            [24] 1200 	mov	r7, b
                                   1201 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:186: return buffer->status == STATUS_CLEAR;
      0006CF 74 04            [12] 1202 	mov	a,#0x04
      0006D1 2D               [12] 1203 	add	a, r5
      0006D2 FD               [12] 1204 	mov	r5,a
      0006D3 E4               [12] 1205 	clr	a
      0006D4 3E               [12] 1206 	addc	a, r6
      0006D5 FE               [12] 1207 	mov	r6,a
      0006D6 8D 82            [24] 1208 	mov	dpl,r5
      0006D8 8E 83            [24] 1209 	mov	dph,r6
      0006DA 8F F0            [24] 1210 	mov	b,r7
      0006DC 12 3A A0         [24] 1211 	lcall	__gptrget
      0006DF B4 01 00         [24] 1212 	cjne	a,#0x01,00103$
      0006E2                       1213 00103$:
      0006E2 92 00            [24] 1214 	mov  _uartIsTransmissionComplete_sloc0_1_0,c
      0006E4 E4               [12] 1215 	clr	a
      0006E5 33               [12] 1216 	rlc	a
      0006E6 F5 82            [12] 1217 	mov	dpl, a
                                   1218 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:187: }
      0006E8 22               [24] 1219 	ret
                                   1220 ;------------------------------------------------------------
                                   1221 ;Allocation info for local variables in function 'uartTransmitBufferHasBytesFree'
                                   1222 ;------------------------------------------------------------
                                   1223 ;bytes                     Allocated with name '_uartTransmitBufferHasBytesFree_PARM_2'
                                   1224 ;uart                      Allocated with name '_uartTransmitBufferHasBytesFree_uart_10000_92'
                                   1225 ;rc                        Allocated with name '_uartTransmitBufferHasBytesFree_rc_10001_94'
                                   1226 ;------------------------------------------------------------
                                   1227 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:189: bool uartTransmitBufferHasBytesFree(Uart uart, uint8_t bytes) {
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function uartTransmitBufferHasBytesFree
                                   1230 ;	-----------------------------------------
      0006E9                       1231 _uartTransmitBufferHasBytesFree:
      0006E9 E5 82            [12] 1232 	mov	a,dpl
      0006EB 90 00 4D         [24] 1233 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_10000_92
      0006EE F0               [24] 1234 	movx	@dptr,a
                                   1235 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:190: EA = 0;
                                   1236 ;	assignBit
      0006EF C2 AF            [12] 1237 	clr	_EA
                                   1238 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:191: bool rc = fifoBytesFree(uartTransmitBuffer(uart)) >= bytes;
      0006F1 90 00 4D         [24] 1239 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_10000_92
      0006F4 E0               [24] 1240 	movx	a,@dptr
      0006F5 F5 82            [12] 1241 	mov	dpl,a
      0006F7 12 06 87         [24] 1242 	lcall	_uartTransmitBuffer
      0006FA 12 18 D4         [24] 1243 	lcall	_fifoBytesFree
      0006FD AF 82            [24] 1244 	mov	r7, dpl
      0006FF 90 00 4C         [24] 1245 	mov	dptr,#_uartTransmitBufferHasBytesFree_PARM_2
      000702 E0               [24] 1246 	movx	a,@dptr
      000703 FE               [12] 1247 	mov	r6,a
      000704 C3               [12] 1248 	clr	c
      000705 EF               [12] 1249 	mov	a,r7
      000706 9E               [12] 1250 	subb	a,r6
      000707 92 01            [24] 1251 	mov  _uartTransmitBufferHasBytesFree_sloc0_1_0,c
      000709 B3               [12] 1252 	cpl	c
      00070A E4               [12] 1253 	clr	a
      00070B 33               [12] 1254 	rlc	a
      00070C FF               [12] 1255 	mov	r7,a
                                   1256 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:192: EA = 1;
                                   1257 ;	assignBit
      00070D D2 AF            [12] 1258 	setb	_EA
                                   1259 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:194: return rc;
      00070F 8F 82            [24] 1260 	mov	dpl, r7
                                   1261 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:195: }
      000711 22               [24] 1262 	ret
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'uartReceiveBufferBytes'
                                   1265 ;------------------------------------------------------------
                                   1266 ;uart                      Allocated with name '_uartReceiveBufferBytes_uart_10000_95'
                                   1267 ;__200000007               Allocated with name '_uartReceiveBufferBytes___200000007_20000_97'
                                   1268 ;rc                        Allocated with name '_uartReceiveBufferBytes_rc_10001_97'
                                   1269 ;__200010008               Allocated with name '_uartReceiveBufferBytes___200010008_20001_98'
                                   1270 ;buffer                    Allocated with name '_uartReceiveBufferBytes_buffer_30001_99'
                                   1271 ;------------------------------------------------------------
                                   1272 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:197: uint8_t uartReceiveBufferBytes(Uart uart) {
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function uartReceiveBufferBytes
                                   1275 ;	-----------------------------------------
      000712                       1276 _uartReceiveBufferBytes:
      000712 E5 82            [12] 1277 	mov	a,dpl
      000714 90 00 4E         [24] 1278 	mov	dptr,#_uartReceiveBufferBytes_uart_10000_95
      000717 F0               [24] 1279 	movx	@dptr,a
                                   1280 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:198: EA = 0;
                                   1281 ;	assignBit
      000718 C2 AF            [12] 1282 	clr	_EA
                                   1283 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:199: uint8_t rc = fifoBytesUsed(uartReceiveBuffer(uart));
      00071A 90 00 4E         [24] 1284 	mov	dptr,#_uartReceiveBufferBytes_uart_10000_95
      00071D E0               [24] 1285 	movx	a,@dptr
      00071E F5 82            [12] 1286 	mov	dpl,a
      000720 12 06 51         [24] 1287 	lcall	_uartReceiveBuffer
      000723 AD 82            [24] 1288 	mov	r5, dpl
      000725 AE 83            [24] 1289 	mov	r6, dph
      000727 AF F0            [24] 1290 	mov	r7, b
      000729 0D               [12] 1291 	inc	r5
      00072A BD 00 01         [24] 1292 	cjne	r5,#0x00,00104$
      00072D 0E               [12] 1293 	inc	r6
      00072E                       1294 00104$:
      00072E 8D 82            [24] 1295 	mov	dpl,r5
      000730 8E 83            [24] 1296 	mov	dph,r6
      000732 8F F0            [24] 1297 	mov	b,r7
      000734 12 3A A0         [24] 1298 	lcall	__gptrget
      000737 FD               [12] 1299 	mov	r5,a
                                   1300 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:200: EA = 1;
                                   1301 ;	assignBit
      000738 D2 AF            [12] 1302 	setb	_EA
                                   1303 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:202: return rc;
      00073A 8D 82            [24] 1304 	mov	dpl, r5
                                   1305 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:203: }
      00073C 22               [24] 1306 	ret
                                   1307 ;------------------------------------------------------------
                                   1308 ;Allocation info for local variables in function 'uartFlushReceiveBuffer'
                                   1309 ;------------------------------------------------------------
                                   1310 ;uart                      Allocated with name '_uartFlushReceiveBuffer_uart_10000_101'
                                   1311 ;------------------------------------------------------------
                                   1312 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:205: void uartFlushReceiveBuffer(Uart uart) {
                                   1313 ;	-----------------------------------------
                                   1314 ;	 function uartFlushReceiveBuffer
                                   1315 ;	-----------------------------------------
      00073D                       1316 _uartFlushReceiveBuffer:
      00073D E5 82            [12] 1317 	mov	a,dpl
      00073F 90 00 4F         [24] 1318 	mov	dptr,#_uartFlushReceiveBuffer_uart_10000_101
      000742 F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:206: EA = 0;
                                   1321 ;	assignBit
      000743 C2 AF            [12] 1322 	clr	_EA
                                   1323 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:207: fifoClear(uartReceiveBuffer(uart));
      000745 90 00 4F         [24] 1324 	mov	dptr,#_uartFlushReceiveBuffer_uart_10000_101
      000748 E0               [24] 1325 	movx	a,@dptr
      000749 F5 82            [12] 1326 	mov	dpl,a
      00074B 12 06 51         [24] 1327 	lcall	_uartReceiveBuffer
      00074E 12 18 28         [24] 1328 	lcall	_fifoClear
                                   1329 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:208: EA = 1;
                                   1330 ;	assignBit
      000751 D2 AF            [12] 1331 	setb	_EA
                                   1332 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:209: }
      000753 22               [24] 1333 	ret
                                   1334 ;------------------------------------------------------------
                                   1335 ;Allocation info for local variables in function 'uartInitialise'
                                   1336 ;------------------------------------------------------------
                                   1337 ;baudRate                  Allocated with name '_uartInitialise_PARM_2'
                                   1338 ;baudRateTimer             Allocated with name '_uartInitialise_PARM_3'
                                   1339 ;mode                      Allocated with name '_uartInitialise_PARM_4'
                                   1340 ;pinSwitch                 Allocated with name '_uartInitialise_PARM_5'
                                   1341 ;uart                      Allocated with name '_uartInitialise_uart_10000_103'
                                   1342 ;rc                        Allocated with name '_uartInitialise_rc_10000_104'
                                   1343 ;timer                     Allocated with name '_uartInitialise_timer_10000_104'
                                   1344 ;operationMode             Allocated with name '_uartInitialise_operationMode_20000_107'
                                   1345 ;scon                      Allocated with name '_uartInitialise_scon_20001_112'
                                   1346 ;------------------------------------------------------------
                                   1347 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:224: TimerStatus uartInitialise(Uart uart, uint32_t baudRate, UartBaudRateTimer baudRateTimer, UartMode mode, uint8_t pinSwitch) {
                                   1348 ;	-----------------------------------------
                                   1349 ;	 function uartInitialise
                                   1350 ;	-----------------------------------------
      000754                       1351 _uartInitialise:
      000754 E5 82            [12] 1352 	mov	a,dpl
      000756 90 00 57         [24] 1353 	mov	dptr,#_uartInitialise_uart_10000_103
      000759 F0               [24] 1354 	movx	@dptr,a
                                   1355 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:225: TimerStatus rc = TIMER_FREQUENCY_OK;
      00075A 90 00 58         [24] 1356 	mov	dptr,#_uartInitialise_rc_10000_104
      00075D E4               [12] 1357 	clr	a
      00075E F0               [24] 1358 	movx	@dptr,a
                                   1359 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:227: Timer timer = TIMER2;
      00075F 90 00 59         [24] 1360 	mov	dptr,#_uartInitialise_timer_10000_104
      000762 74 02            [12] 1361 	mov	a,#0x02
      000764 F0               [24] 1362 	movx	@dptr,a
                                   1363 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:236: if (uart != UART1 || mode == UART_8N1) {
      000765 90 00 57         [24] 1364 	mov	dptr,#_uartInitialise_uart_10000_103
      000768 E0               [24] 1365 	movx	a,@dptr
      000769 FF               [12] 1366 	mov	r7,a
      00076A BF 01 09         [24] 1367 	cjne	r7,#0x01,00103$
      00076D 90 00 55         [24] 1368 	mov	dptr,#_uartInitialise_PARM_4
      000770 E0               [24] 1369 	movx	a,@dptr
      000771 60 03            [24] 1370 	jz	00239$
      000773 02 07 F6         [24] 1371 	ljmp	00104$
      000776                       1372 00239$:
      000776                       1373 00103$:
                                   1374 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:242: if (baudRateTimer == UART_USE_OWN_TIMER) {
      000776 90 00 54         [24] 1375 	mov	dptr,#_uartInitialise_PARM_3
      000779 E0               [24] 1376 	movx	a,@dptr
      00077A 60 05            [24] 1377 	jz	00102$
                                   1378 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:245: timer =  (Timer) uart;
      00077C 90 00 59         [24] 1379 	mov	dptr,#_uartInitialise_timer_10000_104
      00077F EF               [12] 1380 	mov	a,r7
      000780 F0               [24] 1381 	movx	@dptr,a
      000781                       1382 00102$:
                                   1383 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:257: timer, 
      000781 90 00 59         [24] 1384 	mov	dptr,#_uartInitialise_timer_10000_104
      000784 E0               [24] 1385 	movx	a,@dptr
      000785 FF               [12] 1386 	mov	r7,a
                                   1387 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:258: baudRateToSysclkDivisor(baudRate), 
      000786 90 00 50         [24] 1388 	mov	dptr,#_uartInitialise_PARM_2
      000789 E0               [24] 1389 	movx	a,@dptr
      00078A FB               [12] 1390 	mov	r3,a
      00078B A3               [24] 1391 	inc	dptr
      00078C E0               [24] 1392 	movx	a,@dptr
      00078D FC               [12] 1393 	mov	r4,a
      00078E A3               [24] 1394 	inc	dptr
      00078F E0               [24] 1395 	movx	a,@dptr
      000790 FD               [12] 1396 	mov	r5,a
      000791 A3               [24] 1397 	inc	dptr
      000792 E0               [24] 1398 	movx	a,@dptr
      000793 FE               [12] 1399 	mov	r6,a
      000794 90 01 00         [24] 1400 	mov	dptr,#__divulong_PARM_2
      000797 EB               [12] 1401 	mov	a,r3
      000798 F0               [24] 1402 	movx	@dptr,a
      000799 EC               [12] 1403 	mov	a,r4
      00079A A3               [24] 1404 	inc	dptr
      00079B F0               [24] 1405 	movx	@dptr,a
      00079C ED               [12] 1406 	mov	a,r5
      00079D A3               [24] 1407 	inc	dptr
      00079E F0               [24] 1408 	movx	@dptr,a
      00079F EE               [12] 1409 	mov	a,r6
      0007A0 A3               [24] 1410 	inc	dptr
      0007A1 F0               [24] 1411 	movx	@dptr,a
      0007A2 90 0E C0         [24] 1412 	mov	dptr,#0x0ec0
      0007A5 75 F0 16         [24] 1413 	mov	b, #0x16
      0007A8 74 02            [12] 1414 	mov	a, #0x02
      0007AA C0 07            [24] 1415 	push	ar7
      0007AC 12 2E D9         [24] 1416 	lcall	__divulong
      0007AF AB 82            [24] 1417 	mov	r3, dpl
      0007B1 AC 83            [24] 1418 	mov	r4, dph
      0007B3 AD F0            [24] 1419 	mov	r5, b
      0007B5 FE               [12] 1420 	mov	r6, a
      0007B6 D0 07            [24] 1421 	pop	ar7
      0007B8 EE               [12] 1422 	mov	a,r6
      0007B9 C3               [12] 1423 	clr	c
      0007BA 13               [12] 1424 	rrc	a
      0007BB FE               [12] 1425 	mov	r6,a
      0007BC ED               [12] 1426 	mov	a,r5
      0007BD 13               [12] 1427 	rrc	a
      0007BE FD               [12] 1428 	mov	r5,a
      0007BF EC               [12] 1429 	mov	a,r4
      0007C0 13               [12] 1430 	rrc	a
      0007C1 FC               [12] 1431 	mov	r4,a
      0007C2 EB               [12] 1432 	mov	a,r3
      0007C3 13               [12] 1433 	rrc	a
      0007C4 FB               [12] 1434 	mov	r3,a
      0007C5 EE               [12] 1435 	mov	a,r6
      0007C6 C3               [12] 1436 	clr	c
      0007C7 13               [12] 1437 	rrc	a
      0007C8 FE               [12] 1438 	mov	r6,a
      0007C9 ED               [12] 1439 	mov	a,r5
      0007CA 13               [12] 1440 	rrc	a
      0007CB FD               [12] 1441 	mov	r5,a
      0007CC EC               [12] 1442 	mov	a,r4
      0007CD 13               [12] 1443 	rrc	a
      0007CE FC               [12] 1444 	mov	r4,a
      0007CF EB               [12] 1445 	mov	a,r3
      0007D0 13               [12] 1446 	rrc	a
                                   1447 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:261: FREE_RUNNING
      0007D1 90 00 6A         [24] 1448 	mov	dptr,#_startTimer_PARM_2
      0007D4 F0               [24] 1449 	movx	@dptr,a
      0007D5 EC               [12] 1450 	mov	a,r4
      0007D6 A3               [24] 1451 	inc	dptr
      0007D7 F0               [24] 1452 	movx	@dptr,a
      0007D8 ED               [12] 1453 	mov	a,r5
      0007D9 A3               [24] 1454 	inc	dptr
      0007DA F0               [24] 1455 	movx	@dptr,a
      0007DB EE               [12] 1456 	mov	a,r6
      0007DC A3               [24] 1457 	inc	dptr
      0007DD F0               [24] 1458 	movx	@dptr,a
      0007DE 90 00 6E         [24] 1459 	mov	dptr,#_startTimer_PARM_3
      0007E1 E4               [12] 1460 	clr	a
      0007E2 F0               [24] 1461 	movx	@dptr,a
      0007E3 90 00 6F         [24] 1462 	mov	dptr,#_startTimer_PARM_4
      0007E6 F0               [24] 1463 	movx	@dptr,a
      0007E7 90 00 70         [24] 1464 	mov	dptr,#_startTimer_PARM_5
      0007EA F0               [24] 1465 	movx	@dptr,a
      0007EB 8F 82            [24] 1466 	mov	dpl, r7
      0007ED 12 0A D9         [24] 1467 	lcall	_startTimer
      0007F0 E5 82            [12] 1468 	mov	a, dpl
      0007F2 90 00 58         [24] 1469 	mov	dptr,#_uartInitialise_rc_10000_104
      0007F5 F0               [24] 1470 	movx	@dptr,a
      0007F6                       1471 00104$:
                                   1472 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:265: if (rc == TIMER_FREQUENCY_OK) {
      0007F6 90 00 58         [24] 1473 	mov	dptr,#_uartInitialise_rc_10000_104
      0007F9 E0               [24] 1474 	movx	a,@dptr
      0007FA 60 03            [24] 1475 	jz	00241$
      0007FC 02 09 19         [24] 1476 	ljmp	00132$
      0007FF                       1477 00241$:
                                   1478 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:266: uint8_t operationMode = 0;
      0007FF 90 00 5A         [24] 1479 	mov	dptr,#_uartInitialise_operationMode_20000_107
      000802 E4               [12] 1480 	clr	a
      000803 F0               [24] 1481 	movx	@dptr,a
                                   1482 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:268: switch (mode) {
      000804 90 00 55         [24] 1483 	mov	dptr,#_uartInitialise_PARM_4
      000807 E0               [24] 1484 	movx	a,@dptr
      000808 FF               [12] 1485 	mov  r7,a
      000809 24 FC            [12] 1486 	add	a,#0xff - 0x03
      00080B 40 49            [24] 1487 	jc	00115$
      00080D EF               [12] 1488 	mov	a,r7
      00080E 2F               [12] 1489 	add	a,r7
                                   1490 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:269: case UART_8N1:
      00080F 90 08 13         [24] 1491 	mov	dptr,#00243$
      000812 73               [24] 1492 	jmp	@a+dptr
      000813                       1493 00243$:
      000813 80 06            [24] 1494 	sjmp	00106$
      000815 80 14            [24] 1495 	sjmp	00111$
      000817 80 12            [24] 1496 	sjmp	00111$
      000819 80 10            [24] 1497 	sjmp	00111$
      00081B                       1498 00106$:
                                   1499 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:270: if (uart == UART1) {
      00081B 90 00 57         [24] 1500 	mov	dptr,#_uartInitialise_uart_10000_103
      00081E E0               [24] 1501 	movx	a,@dptr
      00081F FE               [12] 1502 	mov	r6,a
      000820 BE 01 33         [24] 1503 	cjne	r6,#0x01,00115$
                                   1504 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:271: operationMode = 1;
      000823 90 00 5A         [24] 1505 	mov	dptr,#_uartInitialise_operationMode_20000_107
      000826 74 01            [12] 1506 	mov	a,#0x01
      000828 F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:273: break;
                                   1509 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:277: case UART_MULTI_MACHINE:
      000829 80 2B            [24] 1510 	sjmp	00115$
      00082B                       1511 00111$:
                                   1512 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:278: if (uart == UART1) {
      00082B 90 00 57         [24] 1513 	mov	dptr,#_uartInitialise_uart_10000_103
      00082E E0               [24] 1514 	movx	a,@dptr
      00082F FE               [12] 1515 	mov	r6,a
      000830 BE 01 1D         [24] 1516 	cjne	r6,#0x01,00113$
                                   1517 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:279: operationMode = 2 | ((baudRate & 2) >> 1);
      000833 90 00 50         [24] 1518 	mov	dptr,#_uartInitialise_PARM_2
      000836 E0               [24] 1519 	movx	a,@dptr
      000837 FB               [12] 1520 	mov	r3,a
      000838 A3               [24] 1521 	inc	dptr
      000839 E0               [24] 1522 	movx	a,@dptr
      00083A A3               [24] 1523 	inc	dptr
      00083B E0               [24] 1524 	movx	a,@dptr
      00083C A3               [24] 1525 	inc	dptr
      00083D E0               [24] 1526 	movx	a,@dptr
      00083E 53 03 02         [24] 1527 	anl	ar3,#0x02
      000841 E4               [12] 1528 	clr	a
      000842 C3               [12] 1529 	clr	c
      000843 13               [12] 1530 	rrc	a
      000844 CB               [12] 1531 	xch	a,r3
      000845 13               [12] 1532 	rrc	a
      000846 CB               [12] 1533 	xch	a,r3
      000847 90 00 5A         [24] 1534 	mov	dptr,#_uartInitialise_operationMode_20000_107
      00084A 74 02            [12] 1535 	mov	a,#0x02
      00084C 4B               [12] 1536 	orl	a,r3
      00084D F0               [24] 1537 	movx	@dptr,a
      00084E 80 06            [24] 1538 	sjmp	00115$
      000850                       1539 00113$:
                                   1540 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:281: operationMode = 1;
      000850 90 00 5A         [24] 1541 	mov	dptr,#_uartInitialise_operationMode_20000_107
      000853 74 01            [12] 1542 	mov	a,#0x01
      000855 F0               [24] 1543 	movx	@dptr,a
                                   1544 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:284: }
      000856                       1545 00115$:
                                   1546 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:286: uint8_t scon = ((mode == UART_MULTI_MACHINE) ? M_SM2 : 0)
      000856 BF 03 04         [24] 1547 	cjne	r7,#0x03,00135$
      000859 7F 20            [12] 1548 	mov	r7,#0x20
      00085B 80 02            [24] 1549 	sjmp	00136$
      00085D                       1550 00135$:
      00085D 7F 00            [12] 1551 	mov	r7,#0x00
      00085F                       1552 00136$:
      00085F 90 00 5A         [24] 1553 	mov	dptr,#_uartInitialise_operationMode_20000_107
      000862 E0               [24] 1554 	movx	a,@dptr
      000863 30 E1 04         [24] 1555 	jnb	acc.1,00137$
      000866 7E 80            [12] 1556 	mov	r6,#0x80
      000868 80 02            [24] 1557 	sjmp	00138$
      00086A                       1558 00137$:
      00086A 7E 00            [12] 1559 	mov	r6,#0x00
      00086C                       1560 00138$:
      00086C EE               [12] 1561 	mov	a,r6
      00086D 4F               [12] 1562 	orl	a,r7
      00086E 44 10            [12] 1563 	orl	a,#0x10
      000870 FF               [12] 1564 	mov	r7,a
                                   1565 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:289: switch (uart) {
      000871 90 00 57         [24] 1566 	mov	dptr,#_uartInitialise_uart_10000_103
      000874 E0               [24] 1567 	movx	a,@dptr
      000875 FE               [12] 1568 	mov	r6,a
      000876 BE 01 02         [24] 1569 	cjne	r6,#0x01,00251$
      000879 80 03            [24] 1570 	sjmp	00252$
      00087B                       1571 00251$:
      00087B 02 08 F9         [24] 1572 	ljmp	00130$
      00087E                       1573 00252$:
                                   1574 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:292: switch (operationMode) {
      00087E 90 00 5A         [24] 1575 	mov	dptr,#_uartInitialise_operationMode_20000_107
      000881 E0               [24] 1576 	movx	a,@dptr
      000882 FE               [12] 1577 	mov	r6,a
      000883 BE 01 02         [24] 1578 	cjne	r6,#0x01,00253$
      000886 80 0A            [24] 1579 	sjmp	00117$
      000888                       1580 00253$:
      000888 BE 02 02         [24] 1581 	cjne	r6,#0x02,00254$
      00088B 80 17            [24] 1582 	sjmp	00121$
      00088D                       1583 00254$:
                                   1584 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:293: case 1:
      00088D BE 03 44         [24] 1585 	cjne	r6,#0x03,00129$
      000890 80 2B            [24] 1586 	sjmp	00125$
      000892                       1587 00117$:
                                   1588 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:295: if (timer == TIMER2) {
      000892 90 00 59         [24] 1589 	mov	dptr,#_uartInitialise_timer_10000_104
      000895 E0               [24] 1590 	movx	a,@dptr
      000896 FD               [12] 1591 	mov	r5,a
      000897 BD 02 05         [24] 1592 	cjne	r5,#0x02,00119$
                                   1593 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:296: AUXR |= M_S1ST2;
      00089A 43 8E 01         [24] 1594 	orl	_AUXR,#0x01
      00089D 80 35            [24] 1595 	sjmp	00129$
      00089F                       1596 00119$:
                                   1597 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:298: AUXR &= ~M_S1ST2;
      00089F 53 8E FE         [24] 1598 	anl	_AUXR,#0xfe
                                   1599 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:301: break;
                                   1600 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:303: case 2:
      0008A2 80 30            [24] 1601 	sjmp	00129$
      0008A4                       1602 00121$:
                                   1603 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:305: if (baudRate & 1) {
      0008A4 90 00 50         [24] 1604 	mov	dptr,#_uartInitialise_PARM_2
      0008A7 E0               [24] 1605 	movx	a,@dptr
      0008A8 FA               [12] 1606 	mov	r2,a
      0008A9 A3               [24] 1607 	inc	dptr
      0008AA E0               [24] 1608 	movx	a,@dptr
      0008AB A3               [24] 1609 	inc	dptr
      0008AC E0               [24] 1610 	movx	a,@dptr
      0008AD A3               [24] 1611 	inc	dptr
      0008AE E0               [24] 1612 	movx	a,@dptr
      0008AF EA               [12] 1613 	mov	a,r2
      0008B0 30 E0 05         [24] 1614 	jnb	acc.0,00123$
                                   1615 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:306: PCON |= M_SMOD;
      0008B3 43 87 80         [24] 1616 	orl	_PCON,#0x80
      0008B6 80 1C            [24] 1617 	sjmp	00129$
      0008B8                       1618 00123$:
                                   1619 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:308: PCON &= ~M_SMOD;
      0008B8 53 87 7F         [24] 1620 	anl	_PCON,#0x7f
                                   1621 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:310: break;
                                   1622 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:313: case 3:
      0008BB 80 17            [24] 1623 	sjmp	00129$
      0008BD                       1624 00125$:
                                   1625 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:315: if (baudRate & 1) {
      0008BD 90 00 50         [24] 1626 	mov	dptr,#_uartInitialise_PARM_2
      0008C0 E0               [24] 1627 	movx	a,@dptr
      0008C1 FA               [12] 1628 	mov	r2,a
      0008C2 A3               [24] 1629 	inc	dptr
      0008C3 E0               [24] 1630 	movx	a,@dptr
      0008C4 A3               [24] 1631 	inc	dptr
      0008C5 E0               [24] 1632 	movx	a,@dptr
      0008C6 A3               [24] 1633 	inc	dptr
      0008C7 E0               [24] 1634 	movx	a,@dptr
      0008C8 EA               [12] 1635 	mov	a,r2
      0008C9 30 E0 05         [24] 1636 	jnb	acc.0,00127$
                                   1637 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:316: AUXR |= M_UART_M0x6;
      0008CC 43 8E 20         [24] 1638 	orl	_AUXR,#0x20
      0008CF 80 03            [24] 1639 	sjmp	00129$
      0008D1                       1640 00127$:
                                   1641 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:318: AUXR &= ~M_UART_M0x6;
      0008D1 53 8E DF         [24] 1642 	anl	_AUXR,#0xdf
                                   1643 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:322: }
      0008D4                       1644 00129$:
                                   1645 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:326: P_SW1 = (P_SW1 & ~M_S1_S) | ((pinSwitch << P_S1_S) & M_S1_S);
      0008D4 74 3F            [12] 1646 	mov	a,#0x3f
      0008D6 55 A2            [12] 1647 	anl	a,_P_SW1
      0008D8 FD               [12] 1648 	mov	r5,a
      0008D9 90 00 56         [24] 1649 	mov	dptr,#_uartInitialise_PARM_5
      0008DC E0               [24] 1650 	movx	a,@dptr
      0008DD 03               [12] 1651 	rr	a
      0008DE 03               [12] 1652 	rr	a
      0008DF 54 C0            [12] 1653 	anl	a,#0xc0
      0008E1 FC               [12] 1654 	mov	r4,a
      0008E2 74 C0            [12] 1655 	mov	a,#0xc0
      0008E4 5C               [12] 1656 	anl	a,r4
      0008E5 4D               [12] 1657 	orl	a,r5
      0008E6 F5 A2            [12] 1658 	mov	_P_SW1,a
                                   1659 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:330: S1CON = scon | ((operationMode & 1) ? M_SM1 : 0);
      0008E8 EE               [12] 1660 	mov	a,r6
      0008E9 30 E0 04         [24] 1661 	jnb	acc.0,00139$
      0008EC 7E 40            [12] 1662 	mov	r6,#0x40
      0008EE 80 02            [24] 1663 	sjmp	00140$
      0008F0                       1664 00139$:
      0008F0 7E 00            [12] 1665 	mov	r6,#0x00
      0008F2                       1666 00140$:
      0008F2 EE               [12] 1667 	mov	a,r6
      0008F3 4F               [12] 1668 	orl	a,r7
      0008F4 F5 98            [12] 1669 	mov	_S1CON,a
                                   1670 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:333: IE1 |= M_S1IE;
      0008F6 43 A8 10         [24] 1671 	orl	_IE1,#0x10
                                   1672 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:398: }
      0008F9                       1673 00130$:
                                   1674 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:400: uartTransmitBuffer(uart)->status = STATUS_CLEAR;
      0008F9 90 00 57         [24] 1675 	mov	dptr,#_uartInitialise_uart_10000_103
      0008FC E0               [24] 1676 	movx	a,@dptr
      0008FD F5 82            [12] 1677 	mov	dpl,a
      0008FF 12 06 87         [24] 1678 	lcall	_uartTransmitBuffer
      000902 AD 82            [24] 1679 	mov	r5, dpl
      000904 AE 83            [24] 1680 	mov	r6, dph
      000906 AF F0            [24] 1681 	mov	r7, b
      000908 74 04            [12] 1682 	mov	a,#0x04
      00090A 2D               [12] 1683 	add	a, r5
      00090B FD               [12] 1684 	mov	r5,a
      00090C E4               [12] 1685 	clr	a
      00090D 3E               [12] 1686 	addc	a, r6
      00090E FE               [12] 1687 	mov	r6,a
      00090F 8D 82            [24] 1688 	mov	dpl,r5
      000911 8E 83            [24] 1689 	mov	dph,r6
      000913 8F F0            [24] 1690 	mov	b,r7
      000915 E4               [12] 1691 	clr	a
      000916 12 2F F5         [24] 1692 	lcall	__gptrput
      000919                       1693 00132$:
                                   1694 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:403: return rc;
      000919 90 00 58         [24] 1695 	mov	dptr,#_uartInitialise_rc_10000_104
      00091C E0               [24] 1696 	movx	a,@dptr
                                   1697 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:404: }
      00091D F5 82            [12] 1698 	mov	dpl,a
      00091F 22               [24] 1699 	ret
                                   1700 ;------------------------------------------------------------
                                   1701 ;Allocation info for local variables in function 'uart1_isr'
                                   1702 ;------------------------------------------------------------
                                   1703 ;c                         Allocated with name '_uart1_isr_c_10000_122'
                                   1704 ;------------------------------------------------------------
                                   1705 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:411: INTERRUPT(uart1_isr, UART1_INTERRUPT) {
                                   1706 ;	-----------------------------------------
                                   1707 ;	 function uart1_isr
                                   1708 ;	-----------------------------------------
      000920                       1709 _uart1_isr:
      000920 C0 21            [24] 1710 	push	bits
      000922 C0 E0            [24] 1711 	push	acc
      000924 C0 F0            [24] 1712 	push	b
      000926 C0 82            [24] 1713 	push	dpl
      000928 C0 83            [24] 1714 	push	dph
      00092A C0 07            [24] 1715 	push	(0+7)
      00092C C0 06            [24] 1716 	push	(0+6)
      00092E C0 05            [24] 1717 	push	(0+5)
      000930 C0 04            [24] 1718 	push	(0+4)
      000932 C0 03            [24] 1719 	push	(0+3)
      000934 C0 02            [24] 1720 	push	(0+2)
      000936 C0 01            [24] 1721 	push	(0+1)
      000938 C0 00            [24] 1722 	push	(0+0)
      00093A C0 D0            [24] 1723 	push	psw
      00093C 75 D0 00         [24] 1724 	mov	psw,#0x00
                                   1725 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:414: EA = 0;
                                   1726 ;	assignBit
      00093F C2 AF            [12] 1727 	clr	_EA
                                   1728 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:416: if (S1CON & M_UART_TXIF) {
      000941 E5 98            [12] 1729 	mov	a,_S1CON
      000943 30 E1 32         [24] 1730 	jnb	acc.1,00105$
                                   1731 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:417: S1CON &= ~M_UART_TXIF;
      000946 53 98 FD         [24] 1732 	anl	_S1CON,#0xfd
                                   1733 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:419: if (fifoRead(&UART1_transmitBuffer, &c, 1)) {
      000949 74 01            [12] 1734 	mov	a,#0x01
      00094B C0 E0            [24] 1735 	push	acc
      00094D 74 5B            [12] 1736 	mov	a,#_uart1_isr_c_10000_122
      00094F C0 E0            [24] 1737 	push	acc
      000951 74 00            [12] 1738 	mov	a,#(_uart1_isr_c_10000_122 >> 8)
      000953 C0 E0            [24] 1739 	push	acc
      000955 E4               [12] 1740 	clr	a
      000956 C0 E0            [24] 1741 	push	acc
      000958 90 00 62         [24] 1742 	mov	dptr,#_UART1_transmitBuffer
      00095B 75 F0 40         [24] 1743 	mov	b, #0x40
      00095E 12 1A 6E         [24] 1744 	lcall	_fifoRead
      000961 AF 82            [24] 1745 	mov	r7, dpl
      000963 E5 81            [12] 1746 	mov	a,sp
      000965 24 FC            [12] 1747 	add	a,#0xfc
      000967 F5 81            [12] 1748 	mov	sp,a
      000969 EF               [12] 1749 	mov	a,r7
      00096A 60 08            [24] 1750 	jz	00102$
                                   1751 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:420: S1BUF = c;
      00096C 90 00 5B         [24] 1752 	mov	dptr,#_uart1_isr_c_10000_122
      00096F E0               [24] 1753 	movx	a,@dptr
      000970 F5 99            [12] 1754 	mov	_S1BUF,a
      000972 80 04            [24] 1755 	sjmp	00105$
      000974                       1756 00102$:
                                   1757 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:422: UART1_transmitBuffer.status = STATUS_CLEAR;
      000974 78 66            [12] 1758 	mov	r0,#(_UART1_transmitBuffer + 0x0004)
      000976 76 00            [12] 1759 	mov	@r0,#0x00
      000978                       1760 00105$:
                                   1761 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:426: if (S1CON & M_UART_RXIF) {
      000978 E5 98            [12] 1762 	mov	a,_S1CON
      00097A 30 E0 27         [24] 1763 	jnb	acc.0,00107$
                                   1764 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:427: S1CON &= ~M_UART_RXIF;
      00097D 53 98 FE         [24] 1765 	anl	_S1CON,#0xfe
                                   1766 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:428: c = S1BUF;
      000980 90 00 5B         [24] 1767 	mov	dptr,#_uart1_isr_c_10000_122
      000983 E5 99            [12] 1768 	mov	a,_S1BUF
      000985 F0               [24] 1769 	movx	@dptr,a
                                   1770 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:429: fifoWrite(&UART1_receiveBuffer, &c, 1);
      000986 74 01            [12] 1771 	mov	a,#0x01
      000988 C0 E0            [24] 1772 	push	acc
      00098A 74 5B            [12] 1773 	mov	a,#_uart1_isr_c_10000_122
      00098C C0 E0            [24] 1774 	push	acc
      00098E 74 00            [12] 1775 	mov	a,#(_uart1_isr_c_10000_122 >> 8)
      000990 C0 E0            [24] 1776 	push	acc
      000992 E4               [12] 1777 	clr	a
      000993 C0 E0            [24] 1778 	push	acc
      000995 90 00 4A         [24] 1779 	mov	dptr,#_UART1_receiveBuffer
      000998 75 F0 40         [24] 1780 	mov	b, #0x40
      00099B 12 19 0E         [24] 1781 	lcall	_fifoWrite
      00099E E5 81            [12] 1782 	mov	a,sp
      0009A0 24 FC            [12] 1783 	add	a,#0xfc
      0009A2 F5 81            [12] 1784 	mov	sp,a
      0009A4                       1785 00107$:
                                   1786 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:432: EA = 1;
                                   1787 ;	assignBit
      0009A4 D2 AF            [12] 1788 	setb	_EA
                                   1789 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:433: }
      0009A6 D0 D0            [24] 1790 	pop	psw
      0009A8 D0 00            [24] 1791 	pop	(0+0)
      0009AA D0 01            [24] 1792 	pop	(0+1)
      0009AC D0 02            [24] 1793 	pop	(0+2)
      0009AE D0 03            [24] 1794 	pop	(0+3)
      0009B0 D0 04            [24] 1795 	pop	(0+4)
      0009B2 D0 05            [24] 1796 	pop	(0+5)
      0009B4 D0 06            [24] 1797 	pop	(0+6)
      0009B6 D0 07            [24] 1798 	pop	(0+7)
      0009B8 D0 83            [24] 1799 	pop	dph
      0009BA D0 82            [24] 1800 	pop	dpl
      0009BC D0 F0            [24] 1801 	pop	b
      0009BE D0 E0            [24] 1802 	pop	acc
      0009C0 D0 21            [24] 1803 	pop	bits
      0009C2 32               [24] 1804 	reti
                                   1805 ;------------------------------------------------------------
                                   1806 ;Allocation info for local variables in function 'uartGetBlock'
                                   1807 ;------------------------------------------------------------
                                   1808 ;sloc0                     Allocated with name '_uartGetBlock_sloc0_1_0'
                                   1809 ;sloc1                     Allocated with name '_uartGetBlock_sloc1_1_0'
                                   1810 ;data                      Allocated with name '_uartGetBlock_PARM_2'
                                   1811 ;size                      Allocated with name '_uartGetBlock_PARM_3'
                                   1812 ;blocking                  Allocated with name '_uartGetBlock_PARM_4'
                                   1813 ;uart                      Allocated with name '_uartGetBlock_uart_10000_127'
                                   1814 ;rc                        Allocated with name '_uartGetBlock_rc_10000_128'
                                   1815 ;buffer                    Allocated with name '_uartGetBlock_buffer_10000_128'
                                   1816 ;------------------------------------------------------------
                                   1817 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:511: bool uartGetBlock(Uart uart, uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   1818 ;	-----------------------------------------
                                   1819 ;	 function uartGetBlock
                                   1820 ;	-----------------------------------------
      0009C3                       1821 _uartGetBlock:
      0009C3 E5 82            [12] 1822 	mov	a,dpl
      0009C5 90 00 61         [24] 1823 	mov	dptr,#_uartGetBlock_uart_10000_127
      0009C8 F0               [24] 1824 	movx	@dptr,a
                                   1825 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:513: FifoState *buffer = uartReceiveBuffer(uart);
      0009C9 E0               [24] 1826 	movx	a,@dptr
      0009CA F5 82            [12] 1827 	mov	dpl,a
      0009CC 12 06 51         [24] 1828 	lcall	_uartReceiveBuffer
      0009CF AD 82            [24] 1829 	mov	r5, dpl
      0009D1 AE 83            [24] 1830 	mov	r6, dph
      0009D3 AF F0            [24] 1831 	mov	r7, b
                                   1832 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:515: do {
      0009D5 90 00 5C         [24] 1833 	mov	dptr,#_uartGetBlock_PARM_2
      0009D8 E0               [24] 1834 	movx	a,@dptr
      0009D9 F5 09            [12] 1835 	mov	_uartGetBlock_sloc1_1_0,a
      0009DB A3               [24] 1836 	inc	dptr
      0009DC E0               [24] 1837 	movx	a,@dptr
      0009DD F5 0A            [12] 1838 	mov	(_uartGetBlock_sloc1_1_0 + 1),a
      0009DF A3               [24] 1839 	inc	dptr
      0009E0 E0               [24] 1840 	movx	a,@dptr
      0009E1 F5 0B            [12] 1841 	mov	(_uartGetBlock_sloc1_1_0 + 2),a
      0009E3 90 00 60         [24] 1842 	mov	dptr,#_uartGetBlock_PARM_4
      0009E6 E0               [24] 1843 	movx	a,@dptr
      0009E7 F5 08            [12] 1844 	mov	_uartGetBlock_sloc0_1_0,a
      0009E9                       1845 00102$:
                                   1846 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:516: EA = 0;
                                   1847 ;	assignBit
      0009E9 C2 AF            [12] 1848 	clr	_EA
                                   1849 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:517: rc = fifoRead(buffer, data, size);
      0009EB A8 09            [24] 1850 	mov	r0,_uartGetBlock_sloc1_1_0
      0009ED A9 0A            [24] 1851 	mov	r1,(_uartGetBlock_sloc1_1_0 + 1)
      0009EF AC 0B            [24] 1852 	mov	r4,(_uartGetBlock_sloc1_1_0 + 2)
      0009F1 C0 07            [24] 1853 	push	ar7
      0009F3 C0 06            [24] 1854 	push	ar6
      0009F5 C0 05            [24] 1855 	push	ar5
      0009F7 90 00 5F         [24] 1856 	mov	dptr,#_uartGetBlock_PARM_3
      0009FA E0               [24] 1857 	movx	a,@dptr
      0009FB C0 E0            [24] 1858 	push	acc
      0009FD C0 00            [24] 1859 	push	ar0
      0009FF C0 01            [24] 1860 	push	ar1
      000A01 C0 04            [24] 1861 	push	ar4
      000A03 8D 82            [24] 1862 	mov	dpl, r5
      000A05 8E 83            [24] 1863 	mov	dph, r6
      000A07 8F F0            [24] 1864 	mov	b, r7
      000A09 12 1A 6E         [24] 1865 	lcall	_fifoRead
      000A0C AC 82            [24] 1866 	mov	r4, dpl
      000A0E E5 81            [12] 1867 	mov	a,sp
      000A10 24 FC            [12] 1868 	add	a,#0xfc
      000A12 F5 81            [12] 1869 	mov	sp,a
      000A14 D0 05            [24] 1870 	pop	ar5
      000A16 D0 06            [24] 1871 	pop	ar6
      000A18 D0 07            [24] 1872 	pop	ar7
                                   1873 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:518: EA = 1;
                                   1874 ;	assignBit
      000A1A D2 AF            [12] 1875 	setb	_EA
                                   1876 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:519: } while (blocking == BLOCKING && !rc);
      000A1C E5 08            [12] 1877 	mov	a,_uartGetBlock_sloc0_1_0
      000A1E 60 03            [24] 1878 	jz	00104$
      000A20 EC               [12] 1879 	mov	a,r4
      000A21 60 C6            [24] 1880 	jz	00102$
      000A23                       1881 00104$:
                                   1882 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:521: return rc;
      000A23 8C 82            [24] 1883 	mov	dpl, r4
                                   1884 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:522: }
      000A25 22               [24] 1885 	ret
                                   1886 ;------------------------------------------------------------
                                   1887 ;Allocation info for local variables in function 'uartSendBlock'
                                   1888 ;------------------------------------------------------------
                                   1889 ;sloc0                     Allocated with name '_uartSendBlock_sloc0_1_0'
                                   1890 ;sloc1                     Allocated with name '_uartSendBlock_sloc1_1_0'
                                   1891 ;data                      Allocated with name '_uartSendBlock_PARM_2'
                                   1892 ;size                      Allocated with name '_uartSendBlock_PARM_3'
                                   1893 ;blocking                  Allocated with name '_uartSendBlock_PARM_4'
                                   1894 ;uart                      Allocated with name '_uartSendBlock_uart_10000_130'
                                   1895 ;buffer                    Allocated with name '_uartSendBlock_buffer_10000_131'
                                   1896 ;rc                        Allocated with name '_uartSendBlock_rc_10000_131'
                                   1897 ;data                      Allocated with name '_uartSendBlock_data_20001_134'
                                   1898 ;------------------------------------------------------------
                                   1899 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:524: bool uartSendBlock(Uart uart, const uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   1900 ;	-----------------------------------------
                                   1901 ;	 function uartSendBlock
                                   1902 ;	-----------------------------------------
      000A26                       1903 _uartSendBlock:
      000A26 E5 82            [12] 1904 	mov	a,dpl
      000A28 90 00 67         [24] 1905 	mov	dptr,#_uartSendBlock_uart_10000_130
      000A2B F0               [24] 1906 	movx	@dptr,a
                                   1907 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:525: FifoState *buffer = uartTransmitBuffer(uart);
      000A2C E0               [24] 1908 	movx	a,@dptr
      000A2D F5 82            [12] 1909 	mov	dpl,a
      000A2F 12 06 87         [24] 1910 	lcall	_uartTransmitBuffer
      000A32 AD 82            [24] 1911 	mov	r5, dpl
      000A34 AE 83            [24] 1912 	mov	r6, dph
      000A36 AF F0            [24] 1913 	mov	r7, b
                                   1914 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:528: do {
      000A38 90 00 62         [24] 1915 	mov	dptr,#_uartSendBlock_PARM_2
      000A3B E0               [24] 1916 	movx	a,@dptr
      000A3C F5 0D            [12] 1917 	mov	_uartSendBlock_sloc1_1_0,a
      000A3E A3               [24] 1918 	inc	dptr
      000A3F E0               [24] 1919 	movx	a,@dptr
      000A40 F5 0E            [12] 1920 	mov	(_uartSendBlock_sloc1_1_0 + 1),a
      000A42 A3               [24] 1921 	inc	dptr
      000A43 E0               [24] 1922 	movx	a,@dptr
      000A44 F5 0F            [12] 1923 	mov	(_uartSendBlock_sloc1_1_0 + 2),a
      000A46 90 00 66         [24] 1924 	mov	dptr,#_uartSendBlock_PARM_4
      000A49 E0               [24] 1925 	movx	a,@dptr
      000A4A F5 0C            [12] 1926 	mov	_uartSendBlock_sloc0_1_0,a
      000A4C                       1927 00102$:
                                   1928 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:529: EA = 0;
                                   1929 ;	assignBit
      000A4C C2 AF            [12] 1930 	clr	_EA
                                   1931 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:530: rc = fifoWrite(buffer, data, size);
      000A4E A8 0D            [24] 1932 	mov	r0,_uartSendBlock_sloc1_1_0
      000A50 A9 0E            [24] 1933 	mov	r1,(_uartSendBlock_sloc1_1_0 + 1)
      000A52 AC 0F            [24] 1934 	mov	r4,(_uartSendBlock_sloc1_1_0 + 2)
      000A54 C0 07            [24] 1935 	push	ar7
      000A56 C0 06            [24] 1936 	push	ar6
      000A58 C0 05            [24] 1937 	push	ar5
      000A5A 90 00 65         [24] 1938 	mov	dptr,#_uartSendBlock_PARM_3
      000A5D E0               [24] 1939 	movx	a,@dptr
      000A5E C0 E0            [24] 1940 	push	acc
      000A60 C0 00            [24] 1941 	push	ar0
      000A62 C0 01            [24] 1942 	push	ar1
      000A64 C0 04            [24] 1943 	push	ar4
      000A66 8D 82            [24] 1944 	mov	dpl, r5
      000A68 8E 83            [24] 1945 	mov	dph, r6
      000A6A 8F F0            [24] 1946 	mov	b, r7
      000A6C 12 19 0E         [24] 1947 	lcall	_fifoWrite
      000A6F AC 82            [24] 1948 	mov	r4, dpl
      000A71 E5 81            [12] 1949 	mov	a,sp
      000A73 24 FC            [12] 1950 	add	a,#0xfc
      000A75 F5 81            [12] 1951 	mov	sp,a
      000A77 D0 05            [24] 1952 	pop	ar5
      000A79 D0 06            [24] 1953 	pop	ar6
      000A7B D0 07            [24] 1954 	pop	ar7
                                   1955 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:531: EA = 1;
                                   1956 ;	assignBit
      000A7D D2 AF            [12] 1957 	setb	_EA
                                   1958 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:532: } while (blocking == BLOCKING && !rc);
      000A7F E5 0C            [12] 1959 	mov	a,_uartSendBlock_sloc0_1_0
      000A81 60 03            [24] 1960 	jz	00104$
      000A83 EC               [12] 1961 	mov	a,r4
      000A84 60 C6            [24] 1962 	jz	00102$
      000A86                       1963 00104$:
                                   1964 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:534: if (rc && buffer->status == STATUS_CLEAR) {
      000A86 EC               [12] 1965 	mov	a,r4
      000A87 60 4D            [24] 1966 	jz	00108$
      000A89 74 04            [12] 1967 	mov	a,#0x04
      000A8B 2D               [12] 1968 	add	a, r5
      000A8C F9               [12] 1969 	mov	r1,a
      000A8D E4               [12] 1970 	clr	a
      000A8E 3E               [12] 1971 	addc	a, r6
      000A8F FA               [12] 1972 	mov	r2,a
      000A90 8F 03            [24] 1973 	mov	ar3,r7
      000A92 89 82            [24] 1974 	mov	dpl,r1
      000A94 8A 83            [24] 1975 	mov	dph,r2
      000A96 8B F0            [24] 1976 	mov	b,r3
      000A98 12 3A A0         [24] 1977 	lcall	__gptrget
      000A9B 70 39            [24] 1978 	jnz	00108$
                                   1979 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:535: buffer->status = STATUS_SENDING;
      000A9D 89 82            [24] 1980 	mov	dpl,r1
      000A9F 8A 83            [24] 1981 	mov	dph,r2
      000AA1 8B F0            [24] 1982 	mov	b,r3
      000AA3 74 01            [12] 1983 	mov	a,#0x01
      000AA5 12 2F F5         [24] 1984 	lcall	__gptrput
                                   1985 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:537: fifoRead(buffer, &data, 1);
      000AA8 C0 04            [24] 1986 	push	ar4
      000AAA C0 E0            [24] 1987 	push	acc
      000AAC 74 68            [12] 1988 	mov	a,#_uartSendBlock_data_20001_134
      000AAE C0 E0            [24] 1989 	push	acc
      000AB0 74 00            [12] 1990 	mov	a,#(_uartSendBlock_data_20001_134 >> 8)
      000AB2 C0 E0            [24] 1991 	push	acc
      000AB4 E4               [12] 1992 	clr	a
      000AB5 C0 E0            [24] 1993 	push	acc
      000AB7 8D 82            [24] 1994 	mov	dpl, r5
      000AB9 8E 83            [24] 1995 	mov	dph, r6
      000ABB 8F F0            [24] 1996 	mov	b, r7
      000ABD 12 1A 6E         [24] 1997 	lcall	_fifoRead
      000AC0 E5 81            [12] 1998 	mov	a,sp
      000AC2 24 FC            [12] 1999 	add	a,#0xfc
      000AC4 F5 81            [12] 2000 	mov	sp,a
      000AC6 D0 04            [24] 2001 	pop	ar4
                                   2002 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:539: switch (uart) {
      000AC8 90 00 67         [24] 2003 	mov	dptr,#_uartSendBlock_uart_10000_130
      000ACB E0               [24] 2004 	movx	a,@dptr
      000ACC FF               [12] 2005 	mov	r7,a
      000ACD BF 01 06         [24] 2006 	cjne	r7,#0x01,00108$
                                   2007 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:541: S1BUF = data;
      000AD0 90 00 68         [24] 2008 	mov	dptr,#_uartSendBlock_data_20001_134
      000AD3 E0               [24] 2009 	movx	a,@dptr
      000AD4 F5 99            [12] 2010 	mov	_S1BUF,a
                                   2011 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:559: }
      000AD6                       2012 00108$:
                                   2013 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:562: return rc;
      000AD6 8C 82            [24] 2014 	mov	dpl, r4
                                   2015 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.c:563: }
      000AD8 22               [24] 2016 	ret
                                   2017 	.area CSEG    (CODE)
                                   2018 	.area CONST   (CODE)
                                   2019 	.area XINIT   (CODE)
                                   2020 	.area CABS    (ABS,CODE)
