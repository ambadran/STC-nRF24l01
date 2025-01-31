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
                                    161 	.globl __UART2_transmitBuffer
                                    162 	.globl __UART2_receiveBuffer
                                    163 	.globl __UART1_transmitBuffer
                                    164 	.globl __UART1_receiveBuffer
                                    165 	.globl _uartSendBlock_PARM_4
                                    166 	.globl _uartSendBlock_PARM_3
                                    167 	.globl _uartSendBlock_PARM_2
                                    168 	.globl _uartGetBlock_PARM_4
                                    169 	.globl _uartGetBlock_PARM_3
                                    170 	.globl _uartGetBlock_PARM_2
                                    171 	.globl _uartInitialise_PARM_5
                                    172 	.globl _uartInitialise_PARM_4
                                    173 	.globl _uartInitialise_PARM_3
                                    174 	.globl _uartInitialise_PARM_2
                                    175 	.globl _uartTransmitBufferHasBytesFree_PARM_2
                                    176 	.globl _DMA_UR4R_TXAL
                                    177 	.globl _DMA_UR4R_TXAH
                                    178 	.globl _DMA_UR4R_DONE
                                    179 	.globl _DMA_UR4R_AMT
                                    180 	.globl _DMA_UR4R_STA
                                    181 	.globl _DMA_UR4R_CR
                                    182 	.globl _DMA_UR4R_CFG
                                    183 	.globl _DMA_UR4T_TXAL
                                    184 	.globl _DMA_UR4T_TXAH
                                    185 	.globl _DMA_UR4T_DONE
                                    186 	.globl _DMA_UR4T_AMT
                                    187 	.globl _DMA_UR4T_STA
                                    188 	.globl _DMA_UR4T_CR
                                    189 	.globl _DMA_UR4T_CFG
                                    190 	.globl _DMA_UR3R_TXAL
                                    191 	.globl _DMA_UR3R_TXAH
                                    192 	.globl _DMA_UR3R_DONE
                                    193 	.globl _DMA_UR3R_AMT
                                    194 	.globl _DMA_UR3R_STA
                                    195 	.globl _DMA_UR3R_CR
                                    196 	.globl _DMA_UR3R_CFG
                                    197 	.globl _DMA_UR3T_TXAL
                                    198 	.globl _DMA_UR3T_TXAH
                                    199 	.globl _DMA_UR3T_DONE
                                    200 	.globl _DMA_UR3T_AMT
                                    201 	.globl _DMA_UR3T_STA
                                    202 	.globl _DMA_UR3T_CR
                                    203 	.globl _DMA_UR3T_CFG
                                    204 	.globl _DMA_UR2R_TXAL
                                    205 	.globl _DMA_UR2R_TXAH
                                    206 	.globl _DMA_UR2R_DONE
                                    207 	.globl _DMA_UR2R_AMT
                                    208 	.globl _DMA_UR2R_STA
                                    209 	.globl _DMA_UR2R_CR
                                    210 	.globl _DMA_UR2R_CFG
                                    211 	.globl _DMA_UR2T_TXAL
                                    212 	.globl _DMA_UR2T_TXAH
                                    213 	.globl _DMA_UR2T_DONE
                                    214 	.globl _DMA_UR2T_AMT
                                    215 	.globl _DMA_UR2T_STA
                                    216 	.globl _DMA_UR2T_CR
                                    217 	.globl _DMA_UR2T_CFG
                                    218 	.globl _DMA_UR1R_TXAL
                                    219 	.globl _DMA_UR1R_TXAH
                                    220 	.globl _DMA_UR1R_DONE
                                    221 	.globl _DMA_UR1R_AMT
                                    222 	.globl _DMA_UR1R_STA
                                    223 	.globl _DMA_UR1R_CR
                                    224 	.globl _DMA_UR1R_CFG
                                    225 	.globl _DMA_UR1T_TXAL
                                    226 	.globl _DMA_UR1T_TXAH
                                    227 	.globl _DMA_UR1T_DONE
                                    228 	.globl _DMA_URTX_AMT
                                    229 	.globl _DMA_UR1T_STA
                                    230 	.globl _DMA_UR1T_CR
                                    231 	.globl _DMA_UR1T_CFG
                                    232 	.globl _TM4PS
                                    233 	.globl _TM3PS
                                    234 	.globl _TM2PS
                                    235 	.globl _IRC48MCR
                                    236 	.globl _IRCDB
                                    237 	.globl _MCLKOCR
                                    238 	.globl _CKSEL
                                    239 	.globl _IRC32KCR
                                    240 	.globl _X32KCR
                                    241 	.globl _XOSCCR
                                    242 	.globl _HIRCCR
                                    243 	.globl _CLKDIV
                                    244 	.globl _DMA_SPI_CFG2
                                    245 	.globl _DMA_SPI_RXAL
                                    246 	.globl _DMA_SPI_RXAH
                                    247 	.globl _DMA_SPI_TXAL
                                    248 	.globl _DMA_SPI_TXAH
                                    249 	.globl _DMA_SPI_DONE
                                    250 	.globl _DMA_SPI_AMT
                                    251 	.globl _DMA_SPI_STA
                                    252 	.globl _DMA_SPI_CR
                                    253 	.globl _DMA_SPI_CFG
                                    254 	.globl _SSEC
                                    255 	.globl _SEC
                                    256 	.globl _MIN
                                    257 	.globl _HOUR
                                    258 	.globl _DAY
                                    259 	.globl _MONTH
                                    260 	.globl _YEAR
                                    261 	.globl _INISSEC
                                    262 	.globl _INISEC
                                    263 	.globl _INIMIN
                                    264 	.globl _INIHOUR
                                    265 	.globl _INIDAY
                                    266 	.globl _INIMONTH
                                    267 	.globl _INIYEAR
                                    268 	.globl _ALASSEC
                                    269 	.globl _ALASEC
                                    270 	.globl _ALAMIN
                                    271 	.globl _ALAHOUR
                                    272 	.globl _RTCIF
                                    273 	.globl _RTCIEN
                                    274 	.globl _RTCCFG
                                    275 	.globl _RTCCR
                                    276 	.globl _PWMB_OISR
                                    277 	.globl _PWMB_DTR
                                    278 	.globl _PWMB_BKR
                                    279 	.globl _PWMB_CCR4L
                                    280 	.globl _PWMB_CCR4H
                                    281 	.globl _PWMB_CCR3L
                                    282 	.globl _PWMB_CCR3H
                                    283 	.globl _PWMB_CCR2L
                                    284 	.globl _PWMB_CCR2H
                                    285 	.globl _PWMB_CCR1L
                                    286 	.globl _PWMB_CCR1H
                                    287 	.globl _PWMB_RCR
                                    288 	.globl _PWMB_ARRL
                                    289 	.globl _PWMB_ARRH
                                    290 	.globl _PWMB_PSCRL
                                    291 	.globl _PWMB_PSCRH
                                    292 	.globl _PWMB_CNTRL
                                    293 	.globl _PWMB_CNTRH
                                    294 	.globl _PWMB_CCER2
                                    295 	.globl _PWMB_CCER1
                                    296 	.globl _PWMB_CCMR4
                                    297 	.globl _PWMB_CCMR3
                                    298 	.globl _PWMB_CCMR2
                                    299 	.globl _PWMB_CCMR1
                                    300 	.globl _PWMB_EGR
                                    301 	.globl _PWMB_SR2
                                    302 	.globl _PWMB_SR1
                                    303 	.globl _PWMB_IER
                                    304 	.globl _PWMB_ETR
                                    305 	.globl _PWMB_SMCR
                                    306 	.globl _PWMB_CR2
                                    307 	.globl _PWMB_CR1
                                    308 	.globl _PWMA_OISR
                                    309 	.globl _PWMA_DTR
                                    310 	.globl _PWMA_BKR
                                    311 	.globl _PWMA_CCR4L
                                    312 	.globl _PWMA_CCR4H
                                    313 	.globl _PWMA_CCR3L
                                    314 	.globl _PWMA_CCR3H
                                    315 	.globl _PWMA_CCR2L
                                    316 	.globl _PWMA_CCR2H
                                    317 	.globl _PWMA_CCR1L
                                    318 	.globl _PWMA_CCR1H
                                    319 	.globl _PWMA_RCR
                                    320 	.globl _PWMA_ARRL
                                    321 	.globl _PWMA_ARRH
                                    322 	.globl _PWMA_PSCRL
                                    323 	.globl _PWMA_PSCRH
                                    324 	.globl _PWMA_CNTRL
                                    325 	.globl _PWMA_CNTRH
                                    326 	.globl _PWMA_CCER2
                                    327 	.globl _PWMA_CCER1
                                    328 	.globl _PWMA_CCMR4
                                    329 	.globl _PWMA_CCMR3
                                    330 	.globl _PWMA_CCMR2
                                    331 	.globl _PWMA_CCMR1
                                    332 	.globl _PWMA_EGR
                                    333 	.globl _PWMA_SR2
                                    334 	.globl _PWMA_SR1
                                    335 	.globl _PWMA_IER
                                    336 	.globl _PWMA_ETR
                                    337 	.globl _PWMA_SMCR
                                    338 	.globl _PWMA_CR2
                                    339 	.globl _PWMA_CR1
                                    340 	.globl _PWMB_IOAUX
                                    341 	.globl _PWMB_PS
                                    342 	.globl _PWMB_ENO
                                    343 	.globl _PWMB_ETRPS
                                    344 	.globl _PWMA_IOAUX
                                    345 	.globl _PWMA_PS
                                    346 	.globl _PWMA_ENO
                                    347 	.globl _PWMA_ETRPS
                                    348 	.globl _RSTFLAG
                                    349 	.globl _SPFUNC
                                    350 	.globl _OPCON
                                    351 	.globl _ARCON
                                    352 	.globl _MD4
                                    353 	.globl _MD5
                                    354 	.globl _MD0
                                    355 	.globl _MD1
                                    356 	.globl _MD2
                                    357 	.globl _MD3
                                    358 	.globl _DMA_LCM_RXAL
                                    359 	.globl _DMA_LCM_RXAH
                                    360 	.globl _DMA_LCM_TXAL
                                    361 	.globl _DMA_LCM_TXAH
                                    362 	.globl _DMA_LCM_DONE
                                    363 	.globl _DMA_LCM_AMT
                                    364 	.globl _DMA_LCM_STA
                                    365 	.globl _DMA_LCM_CR
                                    366 	.globl _DMA_LCM_CFG
                                    367 	.globl _LCMIDDAT
                                    368 	.globl _LCMIDDATH
                                    369 	.globl _LCMIDDATL
                                    370 	.globl _LCMSTA
                                    371 	.globl _LCMCR
                                    372 	.globl _LCMCFG2
                                    373 	.globl _LCMCFG
                                    374 	.globl _I2CMSAUX
                                    375 	.globl _I2CRXD
                                    376 	.globl _I2CTXD
                                    377 	.globl _I2CSLADR
                                    378 	.globl _I2CSLST
                                    379 	.globl _I2CSLCR
                                    380 	.globl _I2CMSST
                                    381 	.globl _I2CMSCR
                                    382 	.globl _I2CCFG
                                    383 	.globl _PINIPH
                                    384 	.globl _PINIPL
                                    385 	.globl _P5IE
                                    386 	.globl _P5DR
                                    387 	.globl _P5SR
                                    388 	.globl _P5NCS
                                    389 	.globl _P5PU
                                    390 	.globl _P5WKUE
                                    391 	.globl _P5IM1
                                    392 	.globl _P5IM0
                                    393 	.globl _P5INTF
                                    394 	.globl _P5INTE
                                    395 	.globl _P3IE
                                    396 	.globl _P3DR
                                    397 	.globl _P3SR
                                    398 	.globl _P3NCS
                                    399 	.globl _P3PU
                                    400 	.globl _P3WKUE
                                    401 	.globl _P3IM1
                                    402 	.globl _P3IM0
                                    403 	.globl _P3INTF
                                    404 	.globl _P3INTE
                                    405 	.globl _P2IE
                                    406 	.globl _P2DR
                                    407 	.globl _P2SR
                                    408 	.globl _P2NCS
                                    409 	.globl _P2PU
                                    410 	.globl _P2WKUE
                                    411 	.globl _P2IM1
                                    412 	.globl _P2IM0
                                    413 	.globl _P2INTF
                                    414 	.globl _P2INTE
                                    415 	.globl _P1IE
                                    416 	.globl _P1DR
                                    417 	.globl _P1SR
                                    418 	.globl _P1NCS
                                    419 	.globl _P1PU
                                    420 	.globl _P1WKUE
                                    421 	.globl _P1IM1
                                    422 	.globl _P1IM0
                                    423 	.globl _P1INTF
                                    424 	.globl _P1INTE
                                    425 	.globl _DMA_M2M_RXAL
                                    426 	.globl _DMA_M2M_RXAH
                                    427 	.globl _DMA_M2M_TXAL
                                    428 	.globl _DMA_M2M_TXAH
                                    429 	.globl _DMA_M2M_DONE
                                    430 	.globl _DMA_M2M_AMT
                                    431 	.globl _DMA_M2M_STA
                                    432 	.globl _DMA_M2M_CR
                                    433 	.globl _DMA_M2M_CFG
                                    434 	.globl _CMPEXCFG
                                    435 	.globl _CHIP_PACKAGE_TYPE
                                    436 	.globl _CHIP_TEST_DAY_BCD
                                    437 	.globl _CHIP_TEST_MONTH_BCD
                                    438 	.globl _CHIP_TEST_YEAR_BCD
                                    439 	.globl _PROGRAM_AREA_SIZE
                                    440 	.globl _VRTRIM_44MHz
                                    441 	.globl _VRTRIM_27MHz
                                    442 	.globl _VRTRIM_10MHz
                                    443 	.globl _VRTRIM_6MHz
                                    444 	.globl _IRTRIM_48MHz
                                    445 	.globl _IRTRIM_44_2368MHz
                                    446 	.globl _IRTRIM_40MHz
                                    447 	.globl _IRTRIM_36_864MHz
                                    448 	.globl _IRTRIM_35MHz
                                    449 	.globl _IRTRIM_33_1776MHz
                                    450 	.globl _IRTRIM_30MHz
                                    451 	.globl _IRTRIM_27MHz
                                    452 	.globl _IRTRIM_24MHz
                                    453 	.globl _IRTRIM_22_1184MHz
                                    454 	.globl ___OTHER_INFO
                                    455 	.globl _CHIP_GUID
                                    456 	.globl _DMA_ADC_CHSW1
                                    457 	.globl _DMA_ADC_CHSW0
                                    458 	.globl _DMA_ADC_CFG2
                                    459 	.globl _DMA_ADC_RXAL
                                    460 	.globl _DMA_ADC_RXAH
                                    461 	.globl _DMA_ADC_STA
                                    462 	.globl _DMA_ADC_CR
                                    463 	.globl _DMA_ADC_CFG
                                    464 	.globl _ADCEXCFG
                                    465 	.globl _ADCTIM
                                    466 	.globl _uartIsTransmissionComplete
                                    467 	.globl _uartTransmitBufferHasBytesFree
                                    468 	.globl _uartReceiveBufferBytes
                                    469 	.globl _uartFlushReceiveBuffer
                                    470 	.globl _uartInitialise
                                    471 	.globl _uart1_isr
                                    472 	.globl _uart2_isr
                                    473 	.globl _uartGetBlock
                                    474 	.globl _uartSendBlock
                                    475 ;--------------------------------------------------------
                                    476 ; special function registers
                                    477 ;--------------------------------------------------------
                                    478 	.area RSEG    (ABS,DATA)
      000000                        479 	.org 0x0000
                           0000BC   480 _ADC_CONTR	=	0x00bc
                           0000BD   481 _ADC_RESH	=	0x00bd
                           0000BE   482 _ADC_RESL	=	0x00be
                           00BDBE   483 _ADC_RES	=	0xbdbe
                           0000DE   484 _ADCCFG	=	0x00de
                           0000FA   485 _DMA_ADC_AMT	=	0x00fa
                           0000E6   486 _CMPCR1	=	0x00e6
                           0000E7   487 _CMPCR2	=	0x00e7
                           000082   488 _DPL	=	0x0082
                           000083   489 _DPH	=	0x0083
                           008382   490 _DP	=	0x8382
                           0000E3   491 _DPS	=	0x00e3
                           0000E4   492 _DPL1	=	0x00e4
                           0000E5   493 _DPH1	=	0x00e5
                           0000AE   494 _TA	=	0x00ae
                           000090   495 _P1	=	0x0090
                           000091   496 _P1M1	=	0x0091
                           000092   497 _P1M0	=	0x0092
                           0000A0   498 _P2	=	0x00a0
                           000095   499 _P2M1	=	0x0095
                           000096   500 _P2M0	=	0x0096
                           0000B0   501 _P3	=	0x00b0
                           0000B1   502 _P3M1	=	0x00b1
                           0000B2   503 _P3M0	=	0x00b2
                           0000C8   504 _P5	=	0x00c8
                           0000C9   505 _P5M1	=	0x00c9
                           0000CA   506 _P5M0	=	0x00ca
                           0000C2   507 _IAP_DATA	=	0x00c2
                           0000C3   508 _IAP_ADDRH	=	0x00c3
                           0000C4   509 _IAP_ADDRL	=	0x00c4
                           00C3C4   510 _IAP_ADDR	=	0xc3c4
                           0000C5   511 _IAP_CMD	=	0x00c5
                           0000C6   512 _IAP_TRIG	=	0x00c6
                           0000C7   513 _IAP_CONTR	=	0x00c7
                           0000F5   514 _IAP_TPS	=	0x00f5
                           00008F   515 _INT_CLKO	=	0x008f
                           0000A8   516 _IE1	=	0x00a8
                           0000B8   517 _IP1L	=	0x00b8
                           0000B7   518 _IP1H	=	0x00b7
                           0000AF   519 _IE2	=	0x00af
                           0000B5   520 _IP2L	=	0x00b5
                           0000B6   521 _IP2H	=	0x00b6
                           0000DF   522 _IP3L	=	0x00df
                           0000EE   523 _IP3H	=	0x00ee
                           000081   524 _SP	=	0x0081
                           0000D0   525 _PSW	=	0x00d0
                           0000E0   526 _ACC	=	0x00e0
                           0000F0   527 _B	=	0x00f0
                           000087   528 _PCON	=	0x0087
                           0000FF   529 _RSTCFG	=	0x00ff
                           0000A2   530 _P_SW1	=	0x00a2
                           0000BA   531 _P_SW2	=	0x00ba
                           0000A1   532 _BUS_SPEED	=	0x00a1
                           0000AA   533 _WKTCL	=	0x00aa
                           0000AB   534 _WKTCH	=	0x00ab
                           00ABAA   535 _WKTC	=	0xabaa
                           0000CD   536 _SPSTAT	=	0x00cd
                           0000CE   537 _SPCTL	=	0x00ce
                           0000CF   538 _SPDAT	=	0x00cf
                           00009D   539 _IRCBAND	=	0x009d
                           00009E   540 _LIRTRIM	=	0x009e
                           00009F   541 _IRTRIM	=	0x009f
                           000088   542 _TCON	=	0x0088
                           000089   543 _TMOD	=	0x0089
                           00008A   544 _T0L	=	0x008a
                           00008C   545 _T0H	=	0x008c
                           008C8A   546 _T0	=	0x8c8a
                           00008B   547 _T1L	=	0x008b
                           00008D   548 _T1H	=	0x008d
                           008D8B   549 _T1	=	0x8d8b
                           0000D7   550 _T2L	=	0x00d7
                           0000D6   551 _T2H	=	0x00d6
                           00D6D7   552 _T2	=	0xd6d7
                           00008E   553 _AUXR	=	0x008e
                           0000C1   554 _WDT_CONTR	=	0x00c1
                           0000D1   555 _T4T3M	=	0x00d1
                           0000D2   556 _T4H	=	0x00d2
                           0000D3   557 _T4L	=	0x00d3
                           00D2D3   558 _T4	=	0xd2d3
                           0000D4   559 _T3H	=	0x00d4
                           0000D5   560 _T3L	=	0x00d5
                           00D4D5   561 _T3	=	0xd4d5
                           0000EF   562 _AUXINTIF	=	0x00ef
                           0000A9   563 _SADDR	=	0x00a9
                           0000B9   564 _SADEN	=	0x00b9
                           000098   565 _S1CON	=	0x0098
                           000099   566 _S1BUF	=	0x0099
                           00009A   567 _S2CON	=	0x009a
                           00009B   568 _S2BUF	=	0x009b
                           0000AC   569 _S3CON	=	0x00ac
                           0000AD   570 _S3BUF	=	0x00ad
                           000084   571 _S4CON	=	0x0084
                           000085   572 _S4BUF	=	0x0085
                           0000DC   573 _USBCLK	=	0x00dc
                           0000EC   574 _USBDAT	=	0x00ec
                           0000F4   575 _USBCON	=	0x00f4
                           0000FC   576 _USBADR	=	0x00fc
                                    577 ;--------------------------------------------------------
                                    578 ; special function bits
                                    579 ;--------------------------------------------------------
                                    580 	.area RSEG    (ABS,DATA)
      000000                        581 	.org 0x0000
                           000090   582 _P1_0	=	0x0090
                           000091   583 _P1_1	=	0x0091
                           000092   584 _P1_2	=	0x0092
                           000093   585 _P1_3	=	0x0093
                           000094   586 _P1_4	=	0x0094
                           000095   587 _P1_5	=	0x0095
                           000096   588 _P1_6	=	0x0096
                           000097   589 _P1_7	=	0x0097
                           0000A0   590 _P2_0	=	0x00a0
                           0000A1   591 _P2_1	=	0x00a1
                           0000A2   592 _P2_2	=	0x00a2
                           0000A3   593 _P2_3	=	0x00a3
                           0000A4   594 _P2_4	=	0x00a4
                           0000A5   595 _P2_5	=	0x00a5
                           0000A6   596 _P2_6	=	0x00a6
                           0000A7   597 _P2_7	=	0x00a7
                           0000B0   598 _P3_0	=	0x00b0
                           0000B1   599 _P3_1	=	0x00b1
                           0000B2   600 _P3_2	=	0x00b2
                           0000B3   601 _P3_3	=	0x00b3
                           0000B4   602 _P3_4	=	0x00b4
                           0000B5   603 _P3_5	=	0x00b5
                           0000B6   604 _P3_6	=	0x00b6
                           0000B7   605 _P3_7	=	0x00b7
                           0000C8   606 _P5_0	=	0x00c8
                           0000C9   607 _P5_1	=	0x00c9
                           0000CA   608 _P5_2	=	0x00ca
                           0000CB   609 _P5_3	=	0x00cb
                           0000CC   610 _P5_4	=	0x00cc
                           0000CD   611 _P5_5	=	0x00cd
                           000088   612 _INT0TR	=	0x0088
                           00008A   613 _INT1TR	=	0x008a
                           0000A8   614 _INT0IE	=	0x00a8
                           0000AA   615 _INT1IE	=	0x00aa
                           0000AF   616 _EA	=	0x00af
                           0000D0   617 _P	=	0x00d0
                           0000D1   618 _F1	=	0x00d1
                           0000D2   619 _OV	=	0x00d2
                           0000D3   620 _RS0	=	0x00d3
                           0000D4   621 _RS1	=	0x00d4
                           0000D5   622 _F0	=	0x00d5
                           0000D6   623 _AC	=	0x00d6
                           0000D7   624 _CY	=	0x00d7
                           00008C   625 _T0RUN	=	0x008c
                           00008E   626 _T1RUN	=	0x008e
                           0000A9   627 _T0IE	=	0x00a9
                           0000AB   628 _T1IE	=	0x00ab
                           00009F   629 _S1SM0_FE	=	0x009f
                                    630 ;--------------------------------------------------------
                                    631 ; overlayable register banks
                                    632 ;--------------------------------------------------------
                                    633 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        634 	.ds 8
                                    635 ;--------------------------------------------------------
                                    636 ; overlayable bit register bank
                                    637 ;--------------------------------------------------------
                                    638 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        639 bits:
      000020                        640 	.ds 1
                           008000   641 	b0 = bits[0]
                           008100   642 	b1 = bits[1]
                           008200   643 	b2 = bits[2]
                           008300   644 	b3 = bits[3]
                           008400   645 	b4 = bits[4]
                           008500   646 	b5 = bits[5]
                           008600   647 	b6 = bits[6]
                           008700   648 	b7 = bits[7]
                                    649 ;--------------------------------------------------------
                                    650 ; internal ram data
                                    651 ;--------------------------------------------------------
                                    652 	.area DSEG    (DATA)
      00000D                        653 _uartGetBlock_sloc0_1_0:
      00000D                        654 	.ds 1
      00000E                        655 _uartGetBlock_sloc1_1_0:
      00000E                        656 	.ds 3
      000011                        657 _uartSendBlock_sloc0_1_0:
      000011                        658 	.ds 1
      000012                        659 _uartSendBlock_sloc1_1_0:
      000012                        660 	.ds 3
                                    661 ;--------------------------------------------------------
                                    662 ; overlayable items in internal ram 
                                    663 ;--------------------------------------------------------
                                    664 ;--------------------------------------------------------
                                    665 ; indirectly addressable internal ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area ISEG    (DATA)
                                    668 ;--------------------------------------------------------
                                    669 ; absolute internal ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area IABS    (ABS,DATA)
                                    672 	.area IABS    (ABS,DATA)
                                    673 ;--------------------------------------------------------
                                    674 ; bit data
                                    675 ;--------------------------------------------------------
                                    676 	.area BSEG    (BIT)
                                    677 ;--------------------------------------------------------
                                    678 ; paged external ram data
                                    679 ;--------------------------------------------------------
                                    680 	.area PSEG    (PAG,XDATA)
                                    681 ;--------------------------------------------------------
                                    682 ; external ram data
                                    683 ;--------------------------------------------------------
                                    684 	.area XSEG    (XDATA)
                           00FEA8   685 _ADCTIM	=	0xfea8
                           00FEAD   686 _ADCEXCFG	=	0xfead
                           00FA10   687 _DMA_ADC_CFG	=	0xfa10
                           00FA11   688 _DMA_ADC_CR	=	0xfa11
                           00FA12   689 _DMA_ADC_STA	=	0xfa12
                           00FA17   690 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   691 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   692 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   693 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   694 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   695 _CHIP_GUID	=	0xfde0
                           00FDE7   696 ___OTHER_INFO	=	0xfde7
                           00FDEB   697 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   698 _IRTRIM_24MHz	=	0xfdec
                           00FDED   699 _IRTRIM_27MHz	=	0xfded
                           00FDEE   700 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   701 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   702 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   703 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   704 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   705 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   706 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   707 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   708 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   709 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   710 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   711 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   712 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   713 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   714 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   715 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   716 _CMPEXCFG	=	0xfeae
                           00FA00   717 _DMA_M2M_CFG	=	0xfa00
                           00FA01   718 _DMA_M2M_CR	=	0xfa01
                           00FA02   719 _DMA_M2M_STA	=	0xfa02
                           00FA03   720 _DMA_M2M_AMT	=	0xfa03
                           00FA04   721 _DMA_M2M_DONE	=	0xfa04
                           00FA05   722 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   723 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   724 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   725 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   726 _P1INTE	=	0xfd01
                           00FD11   727 _P1INTF	=	0xfd11
                           00FD21   728 _P1IM0	=	0xfd21
                           00FD31   729 _P1IM1	=	0xfd31
                           00FD41   730 _P1WKUE	=	0xfd41
                           00FE11   731 _P1PU	=	0xfe11
                           00FE19   732 _P1NCS	=	0xfe19
                           00FE21   733 _P1SR	=	0xfe21
                           00FE29   734 _P1DR	=	0xfe29
                           00FE31   735 _P1IE	=	0xfe31
                           00FD02   736 _P2INTE	=	0xfd02
                           00FD12   737 _P2INTF	=	0xfd12
                           00FD22   738 _P2IM0	=	0xfd22
                           00FD32   739 _P2IM1	=	0xfd32
                           00FD42   740 _P2WKUE	=	0xfd42
                           00FE12   741 _P2PU	=	0xfe12
                           00FE1A   742 _P2NCS	=	0xfe1a
                           00FE22   743 _P2SR	=	0xfe22
                           00FE2A   744 _P2DR	=	0xfe2a
                           00FE32   745 _P2IE	=	0xfe32
                           00FD03   746 _P3INTE	=	0xfd03
                           00FD13   747 _P3INTF	=	0xfd13
                           00FD23   748 _P3IM0	=	0xfd23
                           00FD33   749 _P3IM1	=	0xfd33
                           00FD43   750 _P3WKUE	=	0xfd43
                           00FE13   751 _P3PU	=	0xfe13
                           00FE1B   752 _P3NCS	=	0xfe1b
                           00FE23   753 _P3SR	=	0xfe23
                           00FE2B   754 _P3DR	=	0xfe2b
                           00FE33   755 _P3IE	=	0xfe33
                           00FD05   756 _P5INTE	=	0xfd05
                           00FD15   757 _P5INTF	=	0xfd15
                           00FD25   758 _P5IM0	=	0xfd25
                           00FD35   759 _P5IM1	=	0xfd35
                           00FD45   760 _P5WKUE	=	0xfd45
                           00FE15   761 _P5PU	=	0xfe15
                           00FE1D   762 _P5NCS	=	0xfe1d
                           00FE25   763 _P5SR	=	0xfe25
                           00FE2D   764 _P5DR	=	0xfe2d
                           00FE35   765 _P5IE	=	0xfe35
                           00FD60   766 _PINIPL	=	0xfd60
                           00FD61   767 _PINIPH	=	0xfd61
                           00FE80   768 _I2CCFG	=	0xfe80
                           00FE81   769 _I2CMSCR	=	0xfe81
                           00FE82   770 _I2CMSST	=	0xfe82
                           00FE83   771 _I2CSLCR	=	0xfe83
                           00FE84   772 _I2CSLST	=	0xfe84
                           00FE85   773 _I2CSLADR	=	0xfe85
                           00FE86   774 _I2CTXD	=	0xfe86
                           00FE87   775 _I2CRXD	=	0xfe87
                           00FE88   776 _I2CMSAUX	=	0xfe88
                           00FE50   777 _LCMCFG	=	0xfe50
                           00FE51   778 _LCMCFG2	=	0xfe51
                           00FE52   779 _LCMCR	=	0xfe52
                           00FE53   780 _LCMSTA	=	0xfe53
                           00FE54   781 _LCMIDDATL	=	0xfe54
                           00FE55   782 _LCMIDDATH	=	0xfe55
                           00FE54   783 _LCMIDDAT	=	0xfe54
                           00FA70   784 _DMA_LCM_CFG	=	0xfa70
                           00FA71   785 _DMA_LCM_CR	=	0xfa71
                           00FA72   786 _DMA_LCM_STA	=	0xfa72
                           00FA73   787 _DMA_LCM_AMT	=	0xfa73
                           00FA74   788 _DMA_LCM_DONE	=	0xfa74
                           00FA75   789 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   790 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   791 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   792 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   793 _MD3	=	0xfcf0
                           00FCF1   794 _MD2	=	0xfcf1
                           00FCF2   795 _MD1	=	0xfcf2
                           00FCF3   796 _MD0	=	0xfcf3
                           00FCF4   797 _MD5	=	0xfcf4
                           00FCF5   798 _MD4	=	0xfcf5
                           00FCF6   799 _ARCON	=	0xfcf6
                           00FCF7   800 _OPCON	=	0xfcf7
                           00FE08   801 _SPFUNC	=	0xfe08
                           00FE09   802 _RSTFLAG	=	0xfe09
                           00FEB0   803 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   804 _PWMA_ENO	=	0xfeb1
                           00FEB2   805 _PWMA_PS	=	0xfeb2
                           00FEB3   806 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   807 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   808 _PWMB_ENO	=	0xfeb5
                           00FEB6   809 _PWMB_PS	=	0xfeb6
                           00FEB7   810 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   811 _PWMA_CR1	=	0xfec0
                           00FEC1   812 _PWMA_CR2	=	0xfec1
                           00FEC2   813 _PWMA_SMCR	=	0xfec2
                           00FEC3   814 _PWMA_ETR	=	0xfec3
                           00FEC4   815 _PWMA_IER	=	0xfec4
                           00FEC5   816 _PWMA_SR1	=	0xfec5
                           00FEC6   817 _PWMA_SR2	=	0xfec6
                           00FEC7   818 _PWMA_EGR	=	0xfec7
                           00FEC8   819 _PWMA_CCMR1	=	0xfec8
                           00FEC9   820 _PWMA_CCMR2	=	0xfec9
                           00FECA   821 _PWMA_CCMR3	=	0xfeca
                           00FECB   822 _PWMA_CCMR4	=	0xfecb
                           00FECC   823 _PWMA_CCER1	=	0xfecc
                           00FECD   824 _PWMA_CCER2	=	0xfecd
                           00FECE   825 _PWMA_CNTRH	=	0xfece
                           00FECF   826 _PWMA_CNTRL	=	0xfecf
                           00FED0   827 _PWMA_PSCRH	=	0xfed0
                           00FED1   828 _PWMA_PSCRL	=	0xfed1
                           00FED2   829 _PWMA_ARRH	=	0xfed2
                           00FED3   830 _PWMA_ARRL	=	0xfed3
                           00FED4   831 _PWMA_RCR	=	0xfed4
                           00FED5   832 _PWMA_CCR1H	=	0xfed5
                           00FED6   833 _PWMA_CCR1L	=	0xfed6
                           00FED7   834 _PWMA_CCR2H	=	0xfed7
                           00FED8   835 _PWMA_CCR2L	=	0xfed8
                           00FED9   836 _PWMA_CCR3H	=	0xfed9
                           00FEDA   837 _PWMA_CCR3L	=	0xfeda
                           00FEDB   838 _PWMA_CCR4H	=	0xfedb
                           00FEDC   839 _PWMA_CCR4L	=	0xfedc
                           00FEDD   840 _PWMA_BKR	=	0xfedd
                           00FEDE   841 _PWMA_DTR	=	0xfede
                           00FEDF   842 _PWMA_OISR	=	0xfedf
                           00FEE0   843 _PWMB_CR1	=	0xfee0
                           00FEE1   844 _PWMB_CR2	=	0xfee1
                           00FEE2   845 _PWMB_SMCR	=	0xfee2
                           00FEE3   846 _PWMB_ETR	=	0xfee3
                           00FEE4   847 _PWMB_IER	=	0xfee4
                           00FEE5   848 _PWMB_SR1	=	0xfee5
                           00FEE6   849 _PWMB_SR2	=	0xfee6
                           00FEE7   850 _PWMB_EGR	=	0xfee7
                           00FEE8   851 _PWMB_CCMR1	=	0xfee8
                           00FEE9   852 _PWMB_CCMR2	=	0xfee9
                           00FEEA   853 _PWMB_CCMR3	=	0xfeea
                           00FEEB   854 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   855 _PWMB_CCER1	=	0xfeec
                           00FEED   856 _PWMB_CCER2	=	0xfeed
                           00FEEE   857 _PWMB_CNTRH	=	0xfeee
                           00FEEF   858 _PWMB_CNTRL	=	0xfeef
                           00FEF0   859 _PWMB_PSCRH	=	0xfef0
                           00FEF1   860 _PWMB_PSCRL	=	0xfef1
                           00FEF2   861 _PWMB_ARRH	=	0xfef2
                           00FEF3   862 _PWMB_ARRL	=	0xfef3
                           00FEF4   863 _PWMB_RCR	=	0xfef4
                           00FEF5   864 _PWMB_CCR1H	=	0xfef5
                           00FEF6   865 _PWMB_CCR1L	=	0xfef6
                           00FEF7   866 _PWMB_CCR2H	=	0xfef7
                           00FEF8   867 _PWMB_CCR2L	=	0xfef8
                           00FEF9   868 _PWMB_CCR3H	=	0xfef9
                           00FEFA   869 _PWMB_CCR3L	=	0xfefa
                           00FEFB   870 _PWMB_CCR4H	=	0xfefb
                           00FEFC   871 _PWMB_CCR4L	=	0xfefc
                           00FEFD   872 _PWMB_BKR	=	0xfefd
                           00FEFE   873 _PWMB_DTR	=	0xfefe
                           00FEFF   874 _PWMB_OISR	=	0xfeff
                           00FE60   875 _RTCCR	=	0xfe60
                           00FE61   876 _RTCCFG	=	0xfe61
                           00FE62   877 _RTCIEN	=	0xfe62
                           00FE63   878 _RTCIF	=	0xfe63
                           00FE64   879 _ALAHOUR	=	0xfe64
                           00FE65   880 _ALAMIN	=	0xfe65
                           00FE66   881 _ALASEC	=	0xfe66
                           00FE67   882 _ALASSEC	=	0xfe67
                           00FE68   883 _INIYEAR	=	0xfe68
                           00FE69   884 _INIMONTH	=	0xfe69
                           00FE6A   885 _INIDAY	=	0xfe6a
                           00FE6B   886 _INIHOUR	=	0xfe6b
                           00FE6C   887 _INIMIN	=	0xfe6c
                           00FE6D   888 _INISEC	=	0xfe6d
                           00FE6E   889 _INISSEC	=	0xfe6e
                           00FE70   890 _YEAR	=	0xfe70
                           00FE71   891 _MONTH	=	0xfe71
                           00FE72   892 _DAY	=	0xfe72
                           00FE73   893 _HOUR	=	0xfe73
                           00FE74   894 _MIN	=	0xfe74
                           00FE75   895 _SEC	=	0xfe75
                           00FE76   896 _SSEC	=	0xfe76
                           00FA20   897 _DMA_SPI_CFG	=	0xfa20
                           00FA21   898 _DMA_SPI_CR	=	0xfa21
                           00FA22   899 _DMA_SPI_STA	=	0xfa22
                           00FA23   900 _DMA_SPI_AMT	=	0xfa23
                           00FA24   901 _DMA_SPI_DONE	=	0xfa24
                           00FA25   902 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   903 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   904 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   905 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   906 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   907 _CLKDIV	=	0xfe01
                           00FE02   908 _HIRCCR	=	0xfe02
                           00FE03   909 _XOSCCR	=	0xfe03
                           00FE08   910 _X32KCR	=	0xfe08
                           00FE04   911 _IRC32KCR	=	0xfe04
                           00FE00   912 _CKSEL	=	0xfe00
                           00FE05   913 _MCLKOCR	=	0xfe05
                           00FE06   914 _IRCDB	=	0xfe06
                           00FE07   915 _IRC48MCR	=	0xfe07
                           00FEA2   916 _TM2PS	=	0xfea2
                           00FEA3   917 _TM3PS	=	0xfea3
                           00FEA4   918 _TM4PS	=	0xfea4
                           00FA30   919 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   920 _DMA_UR1T_CR	=	0xfa31
                           00FA32   921 _DMA_UR1T_STA	=	0xfa32
                           00FA33   922 _DMA_URTX_AMT	=	0xfa33
                           00FA34   923 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   924 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   925 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   926 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   927 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   928 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   929 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   930 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   931 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   932 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   933 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   934 _DMA_UR2T_CR	=	0xfa31
                           00FA32   935 _DMA_UR2T_STA	=	0xfa32
                           00FA33   936 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   937 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   938 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   939 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   940 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   941 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   942 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   943 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   944 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   945 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   946 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   947 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   948 _DMA_UR3T_CR	=	0xfa31
                           00FA32   949 _DMA_UR3T_STA	=	0xfa32
                           00FA33   950 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   951 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   952 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   953 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   954 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   955 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   956 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   957 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   958 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   959 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   960 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   961 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   962 _DMA_UR4T_CR	=	0xfa31
                           00FA32   963 _DMA_UR4T_STA	=	0xfa32
                           00FA33   964 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   965 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   966 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   967 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   968 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   969 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   970 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   971 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   972 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   973 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   974 _DMA_UR4R_TXAL	=	0xfa3e
      000096                        975 _uartGetCharacter_result_65536_69:
      000096                        976 	.ds 1
      000097                        977 __UART1_receiveBufferData:
      000097                        978 	.ds 16
      0000A7                        979 __UART1_transmitBufferData:
      0000A7                        980 	.ds 16
      0000B7                        981 __UART2_receiveBufferData:
      0000B7                        982 	.ds 233
      0001A0                        983 __UART2_transmitBufferData:
      0001A0                        984 	.ds 16
      0001B0                        985 __uartReceiveBuffer_uart_65536_131:
      0001B0                        986 	.ds 1
      0001B1                        987 __uartReceiveBuffer_result_65536_132:
      0001B1                        988 	.ds 3
      0001B4                        989 __uartTransmitBuffer_uart_65536_134:
      0001B4                        990 	.ds 1
      0001B5                        991 __uartTransmitBuffer_result_65536_135:
      0001B5                        992 	.ds 3
      0001B8                        993 _uartIsTransmissionComplete_uart_65536_137:
      0001B8                        994 	.ds 1
      0001B9                        995 _uartTransmitBufferHasBytesFree_PARM_2:
      0001B9                        996 	.ds 1
      0001BA                        997 _uartTransmitBufferHasBytesFree_uart_65536_139:
      0001BA                        998 	.ds 1
      0001BB                        999 _uartTransmitBufferHasBytesFree_rc_65537_141:
      0001BB                       1000 	.ds 1
      0001BC                       1001 _uartReceiveBufferBytes_uart_65536_142:
      0001BC                       1002 	.ds 1
      0001BD                       1003 _uartFlushReceiveBuffer_uart_65536_148:
      0001BD                       1004 	.ds 1
      0001BE                       1005 _uartInitialise_PARM_2:
      0001BE                       1006 	.ds 4
      0001C2                       1007 _uartInitialise_PARM_3:
      0001C2                       1008 	.ds 1
      0001C3                       1009 _uartInitialise_PARM_4:
      0001C3                       1010 	.ds 1
      0001C4                       1011 _uartInitialise_PARM_5:
      0001C4                       1012 	.ds 1
      0001C5                       1013 _uartInitialise_uart_65536_150:
      0001C5                       1014 	.ds 1
      0001C6                       1015 _uartInitialise_rc_65536_151:
      0001C6                       1016 	.ds 1
      0001C7                       1017 _uartInitialise_timer_65536_151:
      0001C7                       1018 	.ds 1
      0001C8                       1019 _uartInitialise_operationMode_131072_154:
      0001C8                       1020 	.ds 1
      0001C9                       1021 _uart1_isr_c_65536_169:
      0001C9                       1022 	.ds 1
      0001CA                       1023 _uart2_isr_c_65536_175:
      0001CA                       1024 	.ds 1
      0001CB                       1025 _uartGetBlock_PARM_2:
      0001CB                       1026 	.ds 3
      0001CE                       1027 _uartGetBlock_PARM_3:
      0001CE                       1028 	.ds 1
      0001CF                       1029 _uartGetBlock_PARM_4:
      0001CF                       1030 	.ds 1
      0001D0                       1031 _uartGetBlock_uart_65536_180:
      0001D0                       1032 	.ds 1
      0001D1                       1033 _uartSendBlock_PARM_2:
      0001D1                       1034 	.ds 3
      0001D4                       1035 _uartSendBlock_PARM_3:
      0001D4                       1036 	.ds 1
      0001D5                       1037 _uartSendBlock_PARM_4:
      0001D5                       1038 	.ds 1
      0001D6                       1039 _uartSendBlock_uart_65536_183:
      0001D6                       1040 	.ds 1
      0001D7                       1041 _uartSendBlock_data_131073_187:
      0001D7                       1042 	.ds 1
                                   1043 ;--------------------------------------------------------
                                   1044 ; absolute external ram data
                                   1045 ;--------------------------------------------------------
                                   1046 	.area XABS    (ABS,XDATA)
                                   1047 ;--------------------------------------------------------
                                   1048 ; external initialized ram data
                                   1049 ;--------------------------------------------------------
                                   1050 	.area XISEG   (XDATA)
      00031E                       1051 __UART1_receiveBuffer::
      00031E                       1052 	.ds 8
      000326                       1053 __UART1_transmitBuffer::
      000326                       1054 	.ds 8
      00032E                       1055 __UART2_receiveBuffer::
      00032E                       1056 	.ds 8
      000336                       1057 __UART2_transmitBuffer::
      000336                       1058 	.ds 8
                                   1059 	.area HOME    (CODE)
                                   1060 	.area GSINIT0 (CODE)
                                   1061 	.area GSINIT1 (CODE)
                                   1062 	.area GSINIT2 (CODE)
                                   1063 	.area GSINIT3 (CODE)
                                   1064 	.area GSINIT4 (CODE)
                                   1065 	.area GSINIT5 (CODE)
                                   1066 	.area GSINIT  (CODE)
                                   1067 	.area GSFINAL (CODE)
                                   1068 	.area CSEG    (CODE)
                                   1069 ;--------------------------------------------------------
                                   1070 ; global & static initialisations
                                   1071 ;--------------------------------------------------------
                                   1072 	.area HOME    (CODE)
                                   1073 	.area GSINIT  (CODE)
                                   1074 	.area GSFINAL (CODE)
                                   1075 	.area GSINIT  (CODE)
                                   1076 ;--------------------------------------------------------
                                   1077 ; Home
                                   1078 ;--------------------------------------------------------
                                   1079 	.area HOME    (CODE)
                                   1080 	.area HOME    (CODE)
                                   1081 ;--------------------------------------------------------
                                   1082 ; code
                                   1083 ;--------------------------------------------------------
                                   1084 	.area CSEG    (CODE)
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function '_uartReceiveBuffer'
                                   1087 ;------------------------------------------------------------
                                   1088 ;uart                      Allocated with name '__uartReceiveBuffer_uart_65536_131'
                                   1089 ;result                    Allocated with name '__uartReceiveBuffer_result_65536_132'
                                   1090 ;------------------------------------------------------------
                                   1091 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:127: static FifoState *_uartReceiveBuffer(Uart uart) {
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function _uartReceiveBuffer
                                   1094 ;	-----------------------------------------
      001916                       1095 __uartReceiveBuffer:
                           000007  1096 	ar7 = 0x07
                           000006  1097 	ar6 = 0x06
                           000005  1098 	ar5 = 0x05
                           000004  1099 	ar4 = 0x04
                           000003  1100 	ar3 = 0x03
                           000002  1101 	ar2 = 0x02
                           000001  1102 	ar1 = 0x01
                           000000  1103 	ar0 = 0x00
      001916 E5 82            [12] 1104 	mov	a,dpl
      001918 90 01 B0         [24] 1105 	mov	dptr,#__uartReceiveBuffer_uart_65536_131
      00191B F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:128: FifoState *result = NULL;
      00191C 90 01 B1         [24] 1108 	mov	dptr,#__uartReceiveBuffer_result_65536_132
      00191F E4               [12] 1109 	clr	a
      001920 F0               [24] 1110 	movx	@dptr,a
      001921 A3               [24] 1111 	inc	dptr
      001922 F0               [24] 1112 	movx	@dptr,a
      001923 A3               [24] 1113 	inc	dptr
      001924 F0               [24] 1114 	movx	@dptr,a
                                   1115 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:130: switch (uart) {
      001925 90 01 B0         [24] 1116 	mov	dptr,#__uartReceiveBuffer_uart_65536_131
      001928 E0               [24] 1117 	movx	a,@dptr
      001929 FF               [12] 1118 	mov	r7,a
      00192A BF 01 02         [24] 1119 	cjne	r7,#0x01,00114$
      00192D 80 05            [24] 1120 	sjmp	00101$
      00192F                       1121 00114$:
                                   1122 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:131: case UART1:
      00192F BF 02 1E         [24] 1123 	cjne	r7,#0x02,00103$
      001932 80 0F            [24] 1124 	sjmp	00102$
      001934                       1125 00101$:
                                   1126 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:132: result = &_UART1_receiveBuffer;
      001934 90 01 B1         [24] 1127 	mov	dptr,#__uartReceiveBuffer_result_65536_132
      001937 74 1E            [12] 1128 	mov	a,#__UART1_receiveBuffer
      001939 F0               [24] 1129 	movx	@dptr,a
      00193A 74 03            [12] 1130 	mov	a,#(__UART1_receiveBuffer >> 8)
      00193C A3               [24] 1131 	inc	dptr
      00193D F0               [24] 1132 	movx	@dptr,a
      00193E E4               [12] 1133 	clr	a
      00193F A3               [24] 1134 	inc	dptr
      001940 F0               [24] 1135 	movx	@dptr,a
                                   1136 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:133: break;
                                   1137 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:136: case UART2:
      001941 80 0D            [24] 1138 	sjmp	00103$
      001943                       1139 00102$:
                                   1140 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:137: result = &_UART2_receiveBuffer;
      001943 90 01 B1         [24] 1141 	mov	dptr,#__uartReceiveBuffer_result_65536_132
      001946 74 2E            [12] 1142 	mov	a,#__UART2_receiveBuffer
      001948 F0               [24] 1143 	movx	@dptr,a
      001949 74 03            [12] 1144 	mov	a,#(__UART2_receiveBuffer >> 8)
      00194B A3               [24] 1145 	inc	dptr
      00194C F0               [24] 1146 	movx	@dptr,a
      00194D E4               [12] 1147 	clr	a
      00194E A3               [24] 1148 	inc	dptr
      00194F F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:150: }
      001950                       1151 00103$:
                                   1152 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:152: return result;
      001950 90 01 B1         [24] 1153 	mov	dptr,#__uartReceiveBuffer_result_65536_132
      001953 E0               [24] 1154 	movx	a,@dptr
      001954 FD               [12] 1155 	mov	r5,a
      001955 A3               [24] 1156 	inc	dptr
      001956 E0               [24] 1157 	movx	a,@dptr
      001957 FE               [12] 1158 	mov	r6,a
      001958 A3               [24] 1159 	inc	dptr
      001959 E0               [24] 1160 	movx	a,@dptr
      00195A FF               [12] 1161 	mov	r7,a
      00195B 8D 82            [24] 1162 	mov	dpl,r5
      00195D 8E 83            [24] 1163 	mov	dph,r6
      00195F 8F F0            [24] 1164 	mov	b,r7
                                   1165 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:153: }
      001961 22               [24] 1166 	ret
                                   1167 ;------------------------------------------------------------
                                   1168 ;Allocation info for local variables in function '_uartTransmitBuffer'
                                   1169 ;------------------------------------------------------------
                                   1170 ;uart                      Allocated with name '__uartTransmitBuffer_uart_65536_134'
                                   1171 ;result                    Allocated with name '__uartTransmitBuffer_result_65536_135'
                                   1172 ;------------------------------------------------------------
                                   1173 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:155: static FifoState *_uartTransmitBuffer(Uart uart) {
                                   1174 ;	-----------------------------------------
                                   1175 ;	 function _uartTransmitBuffer
                                   1176 ;	-----------------------------------------
      001962                       1177 __uartTransmitBuffer:
      001962 E5 82            [12] 1178 	mov	a,dpl
      001964 90 01 B4         [24] 1179 	mov	dptr,#__uartTransmitBuffer_uart_65536_134
      001967 F0               [24] 1180 	movx	@dptr,a
                                   1181 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:156: FifoState *result = NULL;
      001968 90 01 B5         [24] 1182 	mov	dptr,#__uartTransmitBuffer_result_65536_135
      00196B E4               [12] 1183 	clr	a
      00196C F0               [24] 1184 	movx	@dptr,a
      00196D A3               [24] 1185 	inc	dptr
      00196E F0               [24] 1186 	movx	@dptr,a
      00196F A3               [24] 1187 	inc	dptr
      001970 F0               [24] 1188 	movx	@dptr,a
                                   1189 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:158: switch (uart) {
      001971 90 01 B4         [24] 1190 	mov	dptr,#__uartTransmitBuffer_uart_65536_134
      001974 E0               [24] 1191 	movx	a,@dptr
      001975 FF               [12] 1192 	mov	r7,a
      001976 BF 01 02         [24] 1193 	cjne	r7,#0x01,00114$
      001979 80 05            [24] 1194 	sjmp	00101$
      00197B                       1195 00114$:
                                   1196 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:159: case UART1:
      00197B BF 02 1E         [24] 1197 	cjne	r7,#0x02,00103$
      00197E 80 0F            [24] 1198 	sjmp	00102$
      001980                       1199 00101$:
                                   1200 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:160: result = &_UART1_transmitBuffer;
      001980 90 01 B5         [24] 1201 	mov	dptr,#__uartTransmitBuffer_result_65536_135
      001983 74 26            [12] 1202 	mov	a,#__UART1_transmitBuffer
      001985 F0               [24] 1203 	movx	@dptr,a
      001986 74 03            [12] 1204 	mov	a,#(__UART1_transmitBuffer >> 8)
      001988 A3               [24] 1205 	inc	dptr
      001989 F0               [24] 1206 	movx	@dptr,a
      00198A E4               [12] 1207 	clr	a
      00198B A3               [24] 1208 	inc	dptr
      00198C F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:161: break;
                                   1211 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:164: case UART2:
      00198D 80 0D            [24] 1212 	sjmp	00103$
      00198F                       1213 00102$:
                                   1214 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:165: result = &_UART2_transmitBuffer;
      00198F 90 01 B5         [24] 1215 	mov	dptr,#__uartTransmitBuffer_result_65536_135
      001992 74 36            [12] 1216 	mov	a,#__UART2_transmitBuffer
      001994 F0               [24] 1217 	movx	@dptr,a
      001995 74 03            [12] 1218 	mov	a,#(__UART2_transmitBuffer >> 8)
      001997 A3               [24] 1219 	inc	dptr
      001998 F0               [24] 1220 	movx	@dptr,a
      001999 E4               [12] 1221 	clr	a
      00199A A3               [24] 1222 	inc	dptr
      00199B F0               [24] 1223 	movx	@dptr,a
                                   1224 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:178: }
      00199C                       1225 00103$:
                                   1226 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:180: return result;
      00199C 90 01 B5         [24] 1227 	mov	dptr,#__uartTransmitBuffer_result_65536_135
      00199F E0               [24] 1228 	movx	a,@dptr
      0019A0 FD               [12] 1229 	mov	r5,a
      0019A1 A3               [24] 1230 	inc	dptr
      0019A2 E0               [24] 1231 	movx	a,@dptr
      0019A3 FE               [12] 1232 	mov	r6,a
      0019A4 A3               [24] 1233 	inc	dptr
      0019A5 E0               [24] 1234 	movx	a,@dptr
      0019A6 FF               [12] 1235 	mov	r7,a
      0019A7 8D 82            [24] 1236 	mov	dpl,r5
      0019A9 8E 83            [24] 1237 	mov	dph,r6
      0019AB 8F F0            [24] 1238 	mov	b,r7
                                   1239 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:181: }
      0019AD 22               [24] 1240 	ret
                                   1241 ;------------------------------------------------------------
                                   1242 ;Allocation info for local variables in function 'uartIsTransmissionComplete'
                                   1243 ;------------------------------------------------------------
                                   1244 ;uart                      Allocated with name '_uartIsTransmissionComplete_uart_65536_137'
                                   1245 ;buffer                    Allocated with name '_uartIsTransmissionComplete_buffer_65536_138'
                                   1246 ;------------------------------------------------------------
                                   1247 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:183: bool uartIsTransmissionComplete(Uart uart) {
                                   1248 ;	-----------------------------------------
                                   1249 ;	 function uartIsTransmissionComplete
                                   1250 ;	-----------------------------------------
      0019AE                       1251 _uartIsTransmissionComplete:
      0019AE E5 82            [12] 1252 	mov	a,dpl
      0019B0 90 01 B8         [24] 1253 	mov	dptr,#_uartIsTransmissionComplete_uart_65536_137
      0019B3 F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:184: FifoState *buffer = _uartTransmitBuffer(uart);
      0019B4 E0               [24] 1256 	movx	a,@dptr
      0019B5 F5 82            [12] 1257 	mov	dpl,a
      0019B7 12 19 62         [24] 1258 	lcall	__uartTransmitBuffer
      0019BA AD 82            [24] 1259 	mov	r5,dpl
      0019BC AE 83            [24] 1260 	mov	r6,dph
      0019BE AF F0            [24] 1261 	mov	r7,b
                                   1262 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:186: return buffer->status == STATUS_CLEAR;
      0019C0 74 04            [12] 1263 	mov	a,#0x04
      0019C2 2D               [12] 1264 	add	a,r5
      0019C3 FD               [12] 1265 	mov	r5,a
      0019C4 E4               [12] 1266 	clr	a
      0019C5 3E               [12] 1267 	addc	a,r6
      0019C6 FE               [12] 1268 	mov	r6,a
      0019C7 8D 82            [24] 1269 	mov	dpl,r5
      0019C9 8E 83            [24] 1270 	mov	dph,r6
      0019CB 8F F0            [24] 1271 	mov	b,r7
      0019CD 12 4A 06         [24] 1272 	lcall	__gptrget
      0019D0 B4 01 00         [24] 1273 	cjne	a,#0x01,00103$
      0019D3                       1274 00103$:
      0019D3 E4               [12] 1275 	clr	a
      0019D4 33               [12] 1276 	rlc	a
                                   1277 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:187: }
      0019D5 F5 82            [12] 1278 	mov	dpl,a
      0019D7 22               [24] 1279 	ret
                                   1280 ;------------------------------------------------------------
                                   1281 ;Allocation info for local variables in function 'uartTransmitBufferHasBytesFree'
                                   1282 ;------------------------------------------------------------
                                   1283 ;bytes                     Allocated with name '_uartTransmitBufferHasBytesFree_PARM_2'
                                   1284 ;uart                      Allocated with name '_uartTransmitBufferHasBytesFree_uart_65536_139'
                                   1285 ;rc                        Allocated with name '_uartTransmitBufferHasBytesFree_rc_65537_141'
                                   1286 ;------------------------------------------------------------
                                   1287 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:189: bool uartTransmitBufferHasBytesFree(Uart uart, uint8_t bytes) {
                                   1288 ;	-----------------------------------------
                                   1289 ;	 function uartTransmitBufferHasBytesFree
                                   1290 ;	-----------------------------------------
      0019D8                       1291 _uartTransmitBufferHasBytesFree:
      0019D8 E5 82            [12] 1292 	mov	a,dpl
      0019DA 90 01 BA         [24] 1293 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_139
      0019DD F0               [24] 1294 	movx	@dptr,a
                                   1295 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:190: EA = 0;
                                   1296 ;	assignBit
      0019DE C2 AF            [12] 1297 	clr	_EA
                                   1298 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:191: bool rc = fifoBytesFree(_uartTransmitBuffer(uart)) >= bytes;
      0019E0 90 01 BA         [24] 1299 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_139
      0019E3 E0               [24] 1300 	movx	a,@dptr
      0019E4 F5 82            [12] 1301 	mov	dpl,a
      0019E6 12 19 62         [24] 1302 	lcall	__uartTransmitBuffer
      0019E9 12 0D 1C         [24] 1303 	lcall	_fifoBytesFree
      0019EC AF 82            [24] 1304 	mov	r7,dpl
      0019EE 90 01 B9         [24] 1305 	mov	dptr,#_uartTransmitBufferHasBytesFree_PARM_2
      0019F1 E0               [24] 1306 	movx	a,@dptr
      0019F2 FE               [12] 1307 	mov	r6,a
      0019F3 C3               [12] 1308 	clr	c
      0019F4 EF               [12] 1309 	mov	a,r7
      0019F5 9E               [12] 1310 	subb	a,r6
      0019F6 E4               [12] 1311 	clr	a
      0019F7 33               [12] 1312 	rlc	a
      0019F8 90 01 BB         [24] 1313 	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_141
      0019FB B4 01 00         [24] 1314 	cjne	a,#0x01,00103$
      0019FE                       1315 00103$:
      0019FE E4               [12] 1316 	clr	a
      0019FF 33               [12] 1317 	rlc	a
      001A00 F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:192: EA = 1;
                                   1320 ;	assignBit
      001A01 D2 AF            [12] 1321 	setb	_EA
                                   1322 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:194: return rc;
      001A03 90 01 BB         [24] 1323 	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_141
      001A06 E0               [24] 1324 	movx	a,@dptr
                                   1325 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:195: }
      001A07 F5 82            [12] 1326 	mov	dpl,a
      001A09 22               [24] 1327 	ret
                                   1328 ;------------------------------------------------------------
                                   1329 ;Allocation info for local variables in function 'uartReceiveBufferBytes'
                                   1330 ;------------------------------------------------------------
                                   1331 ;uart                      Allocated with name '_uartReceiveBufferBytes_uart_65536_142'
                                   1332 ;__1310720008              Allocated with name '_uartReceiveBufferBytes___1310720008_131072_144'
                                   1333 ;rc                        Allocated with name '_uartReceiveBufferBytes_rc_65537_144'
                                   1334 ;__1310730009              Allocated with name '_uartReceiveBufferBytes___1310730009_131073_145'
                                   1335 ;buffer                    Allocated with name '_uartReceiveBufferBytes_buffer_196609_146'
                                   1336 ;------------------------------------------------------------
                                   1337 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:197: uint8_t uartReceiveBufferBytes(Uart uart) {
                                   1338 ;	-----------------------------------------
                                   1339 ;	 function uartReceiveBufferBytes
                                   1340 ;	-----------------------------------------
      001A0A                       1341 _uartReceiveBufferBytes:
      001A0A E5 82            [12] 1342 	mov	a,dpl
      001A0C 90 01 BC         [24] 1343 	mov	dptr,#_uartReceiveBufferBytes_uart_65536_142
      001A0F F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:198: EA = 0;
                                   1346 ;	assignBit
      001A10 C2 AF            [12] 1347 	clr	_EA
                                   1348 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:199: uint8_t rc = fifoBytesUsed(_uartReceiveBuffer(uart));
      001A12 90 01 BC         [24] 1349 	mov	dptr,#_uartReceiveBufferBytes_uart_65536_142
      001A15 E0               [24] 1350 	movx	a,@dptr
      001A16 F5 82            [12] 1351 	mov	dpl,a
      001A18 12 19 16         [24] 1352 	lcall	__uartReceiveBuffer
      001A1B AD 82            [24] 1353 	mov	r5,dpl
      001A1D AE 83            [24] 1354 	mov	r6,dph
      001A1F AF F0            [24] 1355 	mov	r7,b
      001A21 0D               [12] 1356 	inc	r5
      001A22 BD 00 01         [24] 1357 	cjne	r5,#0x00,00104$
      001A25 0E               [12] 1358 	inc	r6
      001A26                       1359 00104$:
      001A26 8D 82            [24] 1360 	mov	dpl,r5
      001A28 8E 83            [24] 1361 	mov	dph,r6
      001A2A 8F F0            [24] 1362 	mov	b,r7
      001A2C 12 4A 06         [24] 1363 	lcall	__gptrget
      001A2F FD               [12] 1364 	mov	r5,a
                                   1365 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:200: EA = 1;
                                   1366 ;	assignBit
      001A30 D2 AF            [12] 1367 	setb	_EA
                                   1368 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:202: return rc;
      001A32 8D 82            [24] 1369 	mov	dpl,r5
                                   1370 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:203: }
      001A34 22               [24] 1371 	ret
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'uartFlushReceiveBuffer'
                                   1374 ;------------------------------------------------------------
                                   1375 ;uart                      Allocated with name '_uartFlushReceiveBuffer_uart_65536_148'
                                   1376 ;------------------------------------------------------------
                                   1377 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:205: void uartFlushReceiveBuffer(Uart uart) {
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function uartFlushReceiveBuffer
                                   1380 ;	-----------------------------------------
      001A35                       1381 _uartFlushReceiveBuffer:
      001A35 E5 82            [12] 1382 	mov	a,dpl
      001A37 90 01 BD         [24] 1383 	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_148
      001A3A F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:206: EA = 0;
                                   1386 ;	assignBit
      001A3B C2 AF            [12] 1387 	clr	_EA
                                   1388 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:207: fifoClear(_uartReceiveBuffer(uart));
      001A3D 90 01 BD         [24] 1389 	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_148
      001A40 E0               [24] 1390 	movx	a,@dptr
      001A41 F5 82            [12] 1391 	mov	dpl,a
      001A43 12 19 16         [24] 1392 	lcall	__uartReceiveBuffer
      001A46 12 0C 73         [24] 1393 	lcall	_fifoClear
                                   1394 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:208: EA = 1;
                                   1395 ;	assignBit
      001A49 D2 AF            [12] 1396 	setb	_EA
                                   1397 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:209: }
      001A4B 22               [24] 1398 	ret
                                   1399 ;------------------------------------------------------------
                                   1400 ;Allocation info for local variables in function 'uartInitialise'
                                   1401 ;------------------------------------------------------------
                                   1402 ;baudRate                  Allocated with name '_uartInitialise_PARM_2'
                                   1403 ;baudRateTimer             Allocated with name '_uartInitialise_PARM_3'
                                   1404 ;mode                      Allocated with name '_uartInitialise_PARM_4'
                                   1405 ;pinSwitch                 Allocated with name '_uartInitialise_PARM_5'
                                   1406 ;uart                      Allocated with name '_uartInitialise_uart_65536_150'
                                   1407 ;rc                        Allocated with name '_uartInitialise_rc_65536_151'
                                   1408 ;timer                     Allocated with name '_uartInitialise_timer_65536_151'
                                   1409 ;operationMode             Allocated with name '_uartInitialise_operationMode_131072_154'
                                   1410 ;scon                      Allocated with name '_uartInitialise_scon_131073_159'
                                   1411 ;------------------------------------------------------------
                                   1412 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:224: TimerStatus uartInitialise(Uart uart, uint32_t baudRate, UartBaudRateTimer baudRateTimer, UartMode mode, uint8_t pinSwitch) {
                                   1413 ;	-----------------------------------------
                                   1414 ;	 function uartInitialise
                                   1415 ;	-----------------------------------------
      001A4C                       1416 _uartInitialise:
      001A4C E5 82            [12] 1417 	mov	a,dpl
      001A4E 90 01 C5         [24] 1418 	mov	dptr,#_uartInitialise_uart_65536_150
      001A51 F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:225: TimerStatus rc = TIMER_FREQUENCY_OK;
      001A52 90 01 C6         [24] 1421 	mov	dptr,#_uartInitialise_rc_65536_151
      001A55 E4               [12] 1422 	clr	a
      001A56 F0               [24] 1423 	movx	@dptr,a
                                   1424 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:227: Timer timer = TIMER2;
      001A57 90 01 C7         [24] 1425 	mov	dptr,#_uartInitialise_timer_65536_151
      001A5A 74 02            [12] 1426 	mov	a,#0x02
      001A5C F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:236: if (uart != UART1 || mode == UART_8N1) {
      001A5D 90 01 C5         [24] 1429 	mov	dptr,#_uartInitialise_uart_65536_150
      001A60 E0               [24] 1430 	movx	a,@dptr
      001A61 FF               [12] 1431 	mov	r7,a
      001A62 BF 01 09         [24] 1432 	cjne	r7,#0x01,00103$
      001A65 90 01 C3         [24] 1433 	mov	dptr,#_uartInitialise_PARM_4
      001A68 E0               [24] 1434 	movx	a,@dptr
      001A69 60 03            [24] 1435 	jz	00212$
      001A6B 02 1A F0         [24] 1436 	ljmp	00104$
      001A6E                       1437 00212$:
      001A6E                       1438 00103$:
                                   1439 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:242: if (baudRateTimer == UART_USE_OWN_TIMER) {
      001A6E 90 01 C2         [24] 1440 	mov	dptr,#_uartInitialise_PARM_3
      001A71 E0               [24] 1441 	movx	a,@dptr
      001A72 FE               [12] 1442 	mov	r6,a
      001A73 BE 01 05         [24] 1443 	cjne	r6,#0x01,00102$
                                   1444 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:245: timer =  (Timer) uart;
      001A76 90 01 C7         [24] 1445 	mov	dptr,#_uartInitialise_timer_65536_151
      001A79 EF               [12] 1446 	mov	a,r7
      001A7A F0               [24] 1447 	movx	@dptr,a
      001A7B                       1448 00102$:
                                   1449 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:257: timer, 
      001A7B 90 01 C7         [24] 1450 	mov	dptr,#_uartInitialise_timer_65536_151
      001A7E E0               [24] 1451 	movx	a,@dptr
      001A7F FF               [12] 1452 	mov	r7,a
                                   1453 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:258: baudRateToSysclkDivisor(baudRate), 
      001A80 90 01 BE         [24] 1454 	mov	dptr,#_uartInitialise_PARM_2
      001A83 E0               [24] 1455 	movx	a,@dptr
      001A84 FB               [12] 1456 	mov	r3,a
      001A85 A3               [24] 1457 	inc	dptr
      001A86 E0               [24] 1458 	movx	a,@dptr
      001A87 FC               [12] 1459 	mov	r4,a
      001A88 A3               [24] 1460 	inc	dptr
      001A89 E0               [24] 1461 	movx	a,@dptr
      001A8A FD               [12] 1462 	mov	r5,a
      001A8B A3               [24] 1463 	inc	dptr
      001A8C E0               [24] 1464 	movx	a,@dptr
      001A8D FE               [12] 1465 	mov	r6,a
      001A8E 90 02 CD         [24] 1466 	mov	dptr,#__divulong_PARM_2
      001A91 EB               [12] 1467 	mov	a,r3
      001A92 F0               [24] 1468 	movx	@dptr,a
      001A93 EC               [12] 1469 	mov	a,r4
      001A94 A3               [24] 1470 	inc	dptr
      001A95 F0               [24] 1471 	movx	@dptr,a
      001A96 ED               [12] 1472 	mov	a,r5
      001A97 A3               [24] 1473 	inc	dptr
      001A98 F0               [24] 1474 	movx	@dptr,a
      001A99 EE               [12] 1475 	mov	a,r6
      001A9A A3               [24] 1476 	inc	dptr
      001A9B F0               [24] 1477 	movx	@dptr,a
      001A9C 90 0E C0         [24] 1478 	mov	dptr,#0x0ec0
      001A9F 75 F0 16         [24] 1479 	mov	b,#0x16
      001AA2 74 02            [12] 1480 	mov	a,#0x02
      001AA4 C0 07            [24] 1481 	push	ar7
      001AA6 12 3B F6         [24] 1482 	lcall	__divulong
      001AA9 AB 82            [24] 1483 	mov	r3,dpl
      001AAB AC 83            [24] 1484 	mov	r4,dph
      001AAD AD F0            [24] 1485 	mov	r5,b
      001AAF FE               [12] 1486 	mov	r6,a
      001AB0 D0 07            [24] 1487 	pop	ar7
      001AB2 EE               [12] 1488 	mov	a,r6
      001AB3 C3               [12] 1489 	clr	c
      001AB4 13               [12] 1490 	rrc	a
      001AB5 FE               [12] 1491 	mov	r6,a
      001AB6 ED               [12] 1492 	mov	a,r5
      001AB7 13               [12] 1493 	rrc	a
      001AB8 FD               [12] 1494 	mov	r5,a
      001AB9 EC               [12] 1495 	mov	a,r4
      001ABA 13               [12] 1496 	rrc	a
      001ABB FC               [12] 1497 	mov	r4,a
      001ABC EB               [12] 1498 	mov	a,r3
      001ABD 13               [12] 1499 	rrc	a
      001ABE FB               [12] 1500 	mov	r3,a
      001ABF EE               [12] 1501 	mov	a,r6
      001AC0 C3               [12] 1502 	clr	c
      001AC1 13               [12] 1503 	rrc	a
      001AC2 FE               [12] 1504 	mov	r6,a
      001AC3 ED               [12] 1505 	mov	a,r5
      001AC4 13               [12] 1506 	rrc	a
      001AC5 FD               [12] 1507 	mov	r5,a
      001AC6 EC               [12] 1508 	mov	a,r4
      001AC7 13               [12] 1509 	rrc	a
      001AC8 FC               [12] 1510 	mov	r4,a
      001AC9 EB               [12] 1511 	mov	a,r3
      001ACA 13               [12] 1512 	rrc	a
                                   1513 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:261: FREE_RUNNING
      001ACB 90 00 87         [24] 1514 	mov	dptr,#_startTimer_PARM_2
      001ACE F0               [24] 1515 	movx	@dptr,a
      001ACF EC               [12] 1516 	mov	a,r4
      001AD0 A3               [24] 1517 	inc	dptr
      001AD1 F0               [24] 1518 	movx	@dptr,a
      001AD2 ED               [12] 1519 	mov	a,r5
      001AD3 A3               [24] 1520 	inc	dptr
      001AD4 F0               [24] 1521 	movx	@dptr,a
      001AD5 EE               [12] 1522 	mov	a,r6
      001AD6 A3               [24] 1523 	inc	dptr
      001AD7 F0               [24] 1524 	movx	@dptr,a
      001AD8 90 00 8B         [24] 1525 	mov	dptr,#_startTimer_PARM_3
      001ADB E4               [12] 1526 	clr	a
      001ADC F0               [24] 1527 	movx	@dptr,a
      001ADD 90 00 8C         [24] 1528 	mov	dptr,#_startTimer_PARM_4
      001AE0 F0               [24] 1529 	movx	@dptr,a
      001AE1 90 00 8D         [24] 1530 	mov	dptr,#_startTimer_PARM_5
      001AE4 F0               [24] 1531 	movx	@dptr,a
      001AE5 8F 82            [24] 1532 	mov	dpl,r7
      001AE7 12 15 23         [24] 1533 	lcall	_startTimer
      001AEA E5 82            [12] 1534 	mov	a,dpl
      001AEC 90 01 C6         [24] 1535 	mov	dptr,#_uartInitialise_rc_65536_151
      001AEF F0               [24] 1536 	movx	@dptr,a
      001AF0                       1537 00104$:
                                   1538 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:265: if (rc == TIMER_FREQUENCY_OK) {
      001AF0 90 01 C6         [24] 1539 	mov	dptr,#_uartInitialise_rc_65536_151
      001AF3 E0               [24] 1540 	movx	a,@dptr
      001AF4 60 03            [24] 1541 	jz	00215$
      001AF6 02 1C 48         [24] 1542 	ljmp	00133$
      001AF9                       1543 00215$:
                                   1544 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:266: uint8_t operationMode = 0;
      001AF9 90 01 C8         [24] 1545 	mov	dptr,#_uartInitialise_operationMode_131072_154
      001AFC E4               [12] 1546 	clr	a
      001AFD F0               [24] 1547 	movx	@dptr,a
                                   1548 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:268: switch (mode) {
      001AFE 90 01 C3         [24] 1549 	mov	dptr,#_uartInitialise_PARM_4
      001B01 E0               [24] 1550 	movx	a,@dptr
      001B02 FF               [12] 1551 	mov  r7,a
      001B03 24 FC            [12] 1552 	add	a,#0xff - 0x03
      001B05 40 4C            [24] 1553 	jc	00115$
      001B07 EF               [12] 1554 	mov	a,r7
      001B08 2F               [12] 1555 	add	a,r7
                                   1556 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:269: case UART_8N1:
      001B09 90 1B 0D         [24] 1557 	mov	dptr,#00217$
      001B0C 73               [24] 1558 	jmp	@a+dptr
      001B0D                       1559 00217$:
      001B0D 80 06            [24] 1560 	sjmp	00106$
      001B0F 80 14            [24] 1561 	sjmp	00111$
      001B11 80 12            [24] 1562 	sjmp	00111$
      001B13 80 10            [24] 1563 	sjmp	00111$
      001B15                       1564 00106$:
                                   1565 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:270: if (uart == UART1) {
      001B15 90 01 C5         [24] 1566 	mov	dptr,#_uartInitialise_uart_65536_150
      001B18 E0               [24] 1567 	movx	a,@dptr
      001B19 FE               [12] 1568 	mov	r6,a
      001B1A BE 01 36         [24] 1569 	cjne	r6,#0x01,00115$
                                   1570 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:271: operationMode = 1;
      001B1D 90 01 C8         [24] 1571 	mov	dptr,#_uartInitialise_operationMode_131072_154
      001B20 74 01            [12] 1572 	mov	a,#0x01
      001B22 F0               [24] 1573 	movx	@dptr,a
                                   1574 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:273: break;
                                   1575 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:277: case UART_MULTI_MACHINE:
      001B23 80 2E            [24] 1576 	sjmp	00115$
      001B25                       1577 00111$:
                                   1578 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:278: if (uart == UART1) {
      001B25 90 01 C5         [24] 1579 	mov	dptr,#_uartInitialise_uart_65536_150
      001B28 E0               [24] 1580 	movx	a,@dptr
      001B29 FE               [12] 1581 	mov	r6,a
      001B2A BE 01 20         [24] 1582 	cjne	r6,#0x01,00113$
                                   1583 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:279: operationMode = 2 | ((baudRate & 2) >> 1);
      001B2D 90 01 BE         [24] 1584 	mov	dptr,#_uartInitialise_PARM_2
      001B30 E0               [24] 1585 	movx	a,@dptr
      001B31 FB               [12] 1586 	mov	r3,a
      001B32 A3               [24] 1587 	inc	dptr
      001B33 E0               [24] 1588 	movx	a,@dptr
      001B34 A3               [24] 1589 	inc	dptr
      001B35 E0               [24] 1590 	movx	a,@dptr
      001B36 FD               [12] 1591 	mov	r5,a
      001B37 A3               [24] 1592 	inc	dptr
      001B38 E0               [24] 1593 	movx	a,@dptr
      001B39 FE               [12] 1594 	mov	r6,a
      001B3A 53 03 02         [24] 1595 	anl	ar3,#0x02
      001B3D E4               [12] 1596 	clr	a
      001B3E C3               [12] 1597 	clr	c
      001B3F 13               [12] 1598 	rrc	a
      001B40 CB               [12] 1599 	xch	a,r3
      001B41 13               [12] 1600 	rrc	a
      001B42 CB               [12] 1601 	xch	a,r3
      001B43 FC               [12] 1602 	mov	r4,a
      001B44 90 01 C8         [24] 1603 	mov	dptr,#_uartInitialise_operationMode_131072_154
      001B47 74 02            [12] 1604 	mov	a,#0x02
      001B49 4B               [12] 1605 	orl	a,r3
      001B4A F0               [24] 1606 	movx	@dptr,a
      001B4B 80 06            [24] 1607 	sjmp	00115$
      001B4D                       1608 00113$:
                                   1609 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:281: operationMode = 1;
      001B4D 90 01 C8         [24] 1610 	mov	dptr,#_uartInitialise_operationMode_131072_154
      001B50 74 01            [12] 1611 	mov	a,#0x01
      001B52 F0               [24] 1612 	movx	@dptr,a
                                   1613 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:284: }
      001B53                       1614 00115$:
                                   1615 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:286: uint8_t scon = ((mode == UART_MULTI_MACHINE) ? M_SM2 : 0)
      001B53 BF 03 06         [24] 1616 	cjne	r7,#0x03,00136$
      001B56 7E 20            [12] 1617 	mov	r6,#0x20
      001B58 7F 00            [12] 1618 	mov	r7,#0x00
      001B5A 80 04            [24] 1619 	sjmp	00137$
      001B5C                       1620 00136$:
      001B5C 7E 00            [12] 1621 	mov	r6,#0x00
      001B5E 7F 00            [12] 1622 	mov	r7,#0x00
      001B60                       1623 00137$:
      001B60 90 01 C8         [24] 1624 	mov	dptr,#_uartInitialise_operationMode_131072_154
      001B63 E0               [24] 1625 	movx	a,@dptr
      001B64 30 E1 06         [24] 1626 	jnb	acc.1,00138$
      001B67 7C 80            [12] 1627 	mov	r4,#0x80
      001B69 7D 00            [12] 1628 	mov	r5,#0x00
      001B6B 80 04            [24] 1629 	sjmp	00139$
      001B6D                       1630 00138$:
      001B6D 7C 00            [12] 1631 	mov	r4,#0x00
      001B6F 7D 00            [12] 1632 	mov	r5,#0x00
      001B71                       1633 00139$:
      001B71 EC               [12] 1634 	mov	a,r4
      001B72 4E               [12] 1635 	orl	a,r6
      001B73 44 10            [12] 1636 	orl	a,#0x10
      001B75 FF               [12] 1637 	mov	r7,a
                                   1638 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:289: switch (uart) {
      001B76 90 01 C5         [24] 1639 	mov	dptr,#_uartInitialise_uart_65536_150
      001B79 E0               [24] 1640 	movx	a,@dptr
      001B7A FE               [12] 1641 	mov	r6,a
      001B7B BE 01 02         [24] 1642 	cjne	r6,#0x01,00225$
      001B7E 80 09            [24] 1643 	sjmp	00116$
      001B80                       1644 00225$:
      001B80 BE 02 03         [24] 1645 	cjne	r6,#0x02,00226$
      001B83 02 1C 13         [24] 1646 	ljmp	00130$
      001B86                       1647 00226$:
      001B86 02 1C 28         [24] 1648 	ljmp	00131$
                                   1649 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:290: case UART1:
      001B89                       1650 00116$:
                                   1651 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:292: switch (operationMode) {
      001B89 90 01 C8         [24] 1652 	mov	dptr,#_uartInitialise_operationMode_131072_154
      001B8C E0               [24] 1653 	movx	a,@dptr
      001B8D FE               [12] 1654 	mov	r6,a
      001B8E BE 01 02         [24] 1655 	cjne	r6,#0x01,00227$
      001B91 80 0A            [24] 1656 	sjmp	00117$
      001B93                       1657 00227$:
      001B93 BE 02 02         [24] 1658 	cjne	r6,#0x02,00228$
      001B96 80 17            [24] 1659 	sjmp	00121$
      001B98                       1660 00228$:
                                   1661 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:293: case 1:
      001B98 BE 03 4A         [24] 1662 	cjne	r6,#0x03,00129$
      001B9B 80 2E            [24] 1663 	sjmp	00125$
      001B9D                       1664 00117$:
                                   1665 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:295: if (timer == TIMER2) {
      001B9D 90 01 C7         [24] 1666 	mov	dptr,#_uartInitialise_timer_65536_151
      001BA0 E0               [24] 1667 	movx	a,@dptr
      001BA1 FE               [12] 1668 	mov	r6,a
      001BA2 BE 02 05         [24] 1669 	cjne	r6,#0x02,00119$
                                   1670 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:296: AUXR |= M_S1ST2;
      001BA5 43 8E 01         [24] 1671 	orl	_AUXR,#0x01
      001BA8 80 3B            [24] 1672 	sjmp	00129$
      001BAA                       1673 00119$:
                                   1674 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:298: AUXR &= ~M_S1ST2;
      001BAA 53 8E FE         [24] 1675 	anl	_AUXR,#0xfe
                                   1676 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:301: break;
                                   1677 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:303: case 2:
      001BAD 80 36            [24] 1678 	sjmp	00129$
      001BAF                       1679 00121$:
                                   1680 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:305: if (baudRate & 1) {
      001BAF 90 01 BE         [24] 1681 	mov	dptr,#_uartInitialise_PARM_2
      001BB2 E0               [24] 1682 	movx	a,@dptr
      001BB3 FB               [12] 1683 	mov	r3,a
      001BB4 A3               [24] 1684 	inc	dptr
      001BB5 E0               [24] 1685 	movx	a,@dptr
      001BB6 FC               [12] 1686 	mov	r4,a
      001BB7 A3               [24] 1687 	inc	dptr
      001BB8 E0               [24] 1688 	movx	a,@dptr
      001BB9 FD               [12] 1689 	mov	r5,a
      001BBA A3               [24] 1690 	inc	dptr
      001BBB E0               [24] 1691 	movx	a,@dptr
      001BBC FE               [12] 1692 	mov	r6,a
      001BBD EB               [12] 1693 	mov	a,r3
      001BBE 30 E0 05         [24] 1694 	jnb	acc.0,00123$
                                   1695 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:306: PCON |= M_SMOD;
      001BC1 43 87 80         [24] 1696 	orl	_PCON,#0x80
      001BC4 80 1F            [24] 1697 	sjmp	00129$
      001BC6                       1698 00123$:
                                   1699 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:308: PCON &= ~M_SMOD;
      001BC6 53 87 7F         [24] 1700 	anl	_PCON,#0x7f
                                   1701 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:310: break;
                                   1702 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:313: case 3:
      001BC9 80 1A            [24] 1703 	sjmp	00129$
      001BCB                       1704 00125$:
                                   1705 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:315: if (baudRate & 1) {
      001BCB 90 01 BE         [24] 1706 	mov	dptr,#_uartInitialise_PARM_2
      001BCE E0               [24] 1707 	movx	a,@dptr
      001BCF FB               [12] 1708 	mov	r3,a
      001BD0 A3               [24] 1709 	inc	dptr
      001BD1 E0               [24] 1710 	movx	a,@dptr
      001BD2 FC               [12] 1711 	mov	r4,a
      001BD3 A3               [24] 1712 	inc	dptr
      001BD4 E0               [24] 1713 	movx	a,@dptr
      001BD5 FD               [12] 1714 	mov	r5,a
      001BD6 A3               [24] 1715 	inc	dptr
      001BD7 E0               [24] 1716 	movx	a,@dptr
      001BD8 FE               [12] 1717 	mov	r6,a
      001BD9 EB               [12] 1718 	mov	a,r3
      001BDA 30 E0 05         [24] 1719 	jnb	acc.0,00127$
                                   1720 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:316: AUXR |= M_UART_M0x6;
      001BDD 43 8E 20         [24] 1721 	orl	_AUXR,#0x20
      001BE0 80 03            [24] 1722 	sjmp	00129$
      001BE2                       1723 00127$:
                                   1724 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:318: AUXR &= ~M_UART_M0x6;
      001BE2 53 8E DF         [24] 1725 	anl	_AUXR,#0xdf
                                   1726 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:322: }
      001BE5                       1727 00129$:
                                   1728 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:326: P_SW1 = (P_SW1 & ~M_S1_S) | ((pinSwitch << P_S1_S) & M_S1_S);
      001BE5 74 3F            [12] 1729 	mov	a,#0x3f
      001BE7 55 A2            [12] 1730 	anl	a,_P_SW1
      001BE9 FE               [12] 1731 	mov	r6,a
      001BEA 90 01 C4         [24] 1732 	mov	dptr,#_uartInitialise_PARM_5
      001BED E0               [24] 1733 	movx	a,@dptr
      001BEE 03               [12] 1734 	rr	a
      001BEF 03               [12] 1735 	rr	a
      001BF0 54 C0            [12] 1736 	anl	a,#0xc0
      001BF2 FD               [12] 1737 	mov	r5,a
      001BF3 74 C0            [12] 1738 	mov	a,#0xc0
      001BF5 5D               [12] 1739 	anl	a,r5
      001BF6 4E               [12] 1740 	orl	a,r6
      001BF7 F5 A2            [12] 1741 	mov	_P_SW1,a
                                   1742 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:330: S1CON = scon | ((operationMode & 1) ? M_SM1 : 0);
      001BF9 90 01 C8         [24] 1743 	mov	dptr,#_uartInitialise_operationMode_131072_154
      001BFC E0               [24] 1744 	movx	a,@dptr
      001BFD 30 E0 06         [24] 1745 	jnb	acc.0,00140$
      001C00 7D 40            [12] 1746 	mov	r5,#0x40
      001C02 7E 00            [12] 1747 	mov	r6,#0x00
      001C04 80 04            [24] 1748 	sjmp	00141$
      001C06                       1749 00140$:
      001C06 7D 00            [12] 1750 	mov	r5,#0x00
      001C08 7E 00            [12] 1751 	mov	r6,#0x00
      001C0A                       1752 00141$:
      001C0A ED               [12] 1753 	mov	a,r5
      001C0B 4F               [12] 1754 	orl	a,r7
      001C0C F5 98            [12] 1755 	mov	_S1CON,a
                                   1756 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:333: IE1 |= M_S1IE;
      001C0E 43 A8 10         [24] 1757 	orl	_IE1,#0x10
                                   1758 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:334: break;
                                   1759 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:337: case UART2:
      001C11 80 15            [24] 1760 	sjmp	00131$
      001C13                       1761 00130$:
                                   1762 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:343: P_SW2 = (P_SW2 & ~M_S2_S) | ((pinSwitch << P_S2_S) & M_S2_S);
      001C13 74 FE            [12] 1763 	mov	a,#0xfe
      001C15 55 BA            [12] 1764 	anl	a,_P_SW2
      001C17 FE               [12] 1765 	mov	r6,a
      001C18 90 01 C4         [24] 1766 	mov	dptr,#_uartInitialise_PARM_5
      001C1B E0               [24] 1767 	movx	a,@dptr
      001C1C FD               [12] 1768 	mov	r5,a
      001C1D 74 01            [12] 1769 	mov	a,#0x01
      001C1F 5D               [12] 1770 	anl	a,r5
      001C20 4E               [12] 1771 	orl	a,r6
      001C21 F5 BA            [12] 1772 	mov	_P_SW2,a
                                   1773 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:346: S2CON = scon;
      001C23 8F 9A            [24] 1774 	mov	_S2CON,r7
                                   1775 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:357: IE2 |= M_S2IE;
      001C25 43 AF 01         [24] 1776 	orl	_IE2,#0x01
                                   1777 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:398: }
      001C28                       1778 00131$:
                                   1779 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:400: _uartTransmitBuffer(uart)->status = STATUS_CLEAR;
      001C28 90 01 C5         [24] 1780 	mov	dptr,#_uartInitialise_uart_65536_150
      001C2B E0               [24] 1781 	movx	a,@dptr
      001C2C F5 82            [12] 1782 	mov	dpl,a
      001C2E 12 19 62         [24] 1783 	lcall	__uartTransmitBuffer
      001C31 AD 82            [24] 1784 	mov	r5,dpl
      001C33 AE 83            [24] 1785 	mov	r6,dph
      001C35 AF F0            [24] 1786 	mov	r7,b
      001C37 74 04            [12] 1787 	mov	a,#0x04
      001C39 2D               [12] 1788 	add	a,r5
      001C3A FD               [12] 1789 	mov	r5,a
      001C3B E4               [12] 1790 	clr	a
      001C3C 3E               [12] 1791 	addc	a,r6
      001C3D FE               [12] 1792 	mov	r6,a
      001C3E 8D 82            [24] 1793 	mov	dpl,r5
      001C40 8E 83            [24] 1794 	mov	dph,r6
      001C42 8F F0            [24] 1795 	mov	b,r7
      001C44 E4               [12] 1796 	clr	a
      001C45 12 3D DF         [24] 1797 	lcall	__gptrput
      001C48                       1798 00133$:
                                   1799 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:403: return rc;
      001C48 90 01 C6         [24] 1800 	mov	dptr,#_uartInitialise_rc_65536_151
      001C4B E0               [24] 1801 	movx	a,@dptr
                                   1802 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:404: }
      001C4C F5 82            [12] 1803 	mov	dpl,a
      001C4E 22               [24] 1804 	ret
                                   1805 ;------------------------------------------------------------
                                   1806 ;Allocation info for local variables in function 'uart1_isr'
                                   1807 ;------------------------------------------------------------
                                   1808 ;c                         Allocated with name '_uart1_isr_c_65536_169'
                                   1809 ;------------------------------------------------------------
                                   1810 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:411: INTERRUPT(uart1_isr, UART1_INTERRUPT) {
                                   1811 ;	-----------------------------------------
                                   1812 ;	 function uart1_isr
                                   1813 ;	-----------------------------------------
      001C4F                       1814 _uart1_isr:
      001C4F C0 20            [24] 1815 	push	bits
      001C51 C0 E0            [24] 1816 	push	acc
      001C53 C0 F0            [24] 1817 	push	b
      001C55 C0 82            [24] 1818 	push	dpl
      001C57 C0 83            [24] 1819 	push	dph
      001C59 C0 07            [24] 1820 	push	(0+7)
      001C5B C0 06            [24] 1821 	push	(0+6)
      001C5D C0 05            [24] 1822 	push	(0+5)
      001C5F C0 04            [24] 1823 	push	(0+4)
      001C61 C0 03            [24] 1824 	push	(0+3)
      001C63 C0 02            [24] 1825 	push	(0+2)
      001C65 C0 01            [24] 1826 	push	(0+1)
      001C67 C0 00            [24] 1827 	push	(0+0)
      001C69 C0 D0            [24] 1828 	push	psw
      001C6B 75 D0 00         [24] 1829 	mov	psw,#0x00
                                   1830 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:414: EA = 0;
                                   1831 ;	assignBit
      001C6E C2 AF            [12] 1832 	clr	_EA
                                   1833 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:416: if (S1CON & M_UART_TXIF) {
      001C70 E5 98            [12] 1834 	mov	a,_S1CON
      001C72 30 E1 33         [24] 1835 	jnb	acc.1,00105$
                                   1836 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:417: S1CON &= ~M_UART_TXIF;
      001C75 53 98 FD         [24] 1837 	anl	_S1CON,#0xfd
                                   1838 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:419: if (fifoRead(&_UART1_transmitBuffer, &c, 1)) {
      001C78 74 01            [12] 1839 	mov	a,#0x01
      001C7A C0 E0            [24] 1840 	push	acc
      001C7C 74 C9            [12] 1841 	mov	a,#_uart1_isr_c_65536_169
      001C7E C0 E0            [24] 1842 	push	acc
      001C80 74 01            [12] 1843 	mov	a,#(_uart1_isr_c_65536_169 >> 8)
      001C82 C0 E0            [24] 1844 	push	acc
      001C84 E4               [12] 1845 	clr	a
      001C85 C0 E0            [24] 1846 	push	acc
      001C87 90 03 26         [24] 1847 	mov	dptr,#__UART1_transmitBuffer
      001C8A 75 F0 00         [24] 1848 	mov	b,#0x00
      001C8D 12 0E B8         [24] 1849 	lcall	_fifoRead
      001C90 AF 82            [24] 1850 	mov	r7,dpl
      001C92 E5 81            [12] 1851 	mov	a,sp
      001C94 24 FC            [12] 1852 	add	a,#0xfc
      001C96 F5 81            [12] 1853 	mov	sp,a
      001C98 EF               [12] 1854 	mov	a,r7
      001C99 60 08            [24] 1855 	jz	00102$
                                   1856 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:420: S1BUF = c;
      001C9B 90 01 C9         [24] 1857 	mov	dptr,#_uart1_isr_c_65536_169
      001C9E E0               [24] 1858 	movx	a,@dptr
      001C9F F5 99            [12] 1859 	mov	_S1BUF,a
      001CA1 80 05            [24] 1860 	sjmp	00105$
      001CA3                       1861 00102$:
                                   1862 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:422: _UART1_transmitBuffer.status = STATUS_CLEAR;
      001CA3 90 03 2A         [24] 1863 	mov	dptr,#(__UART1_transmitBuffer + 0x0004)
      001CA6 E4               [12] 1864 	clr	a
      001CA7 F0               [24] 1865 	movx	@dptr,a
      001CA8                       1866 00105$:
                                   1867 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:426: if (S1CON & M_UART_RXIF) {
      001CA8 E5 98            [12] 1868 	mov	a,_S1CON
      001CAA 30 E0 27         [24] 1869 	jnb	acc.0,00107$
                                   1870 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:427: S1CON &= ~M_UART_RXIF;
      001CAD 53 98 FE         [24] 1871 	anl	_S1CON,#0xfe
                                   1872 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:428: c = S1BUF;
      001CB0 90 01 C9         [24] 1873 	mov	dptr,#_uart1_isr_c_65536_169
      001CB3 E5 99            [12] 1874 	mov	a,_S1BUF
      001CB5 F0               [24] 1875 	movx	@dptr,a
                                   1876 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:429: fifoWrite(&_UART1_receiveBuffer, &c, 1);
      001CB6 74 01            [12] 1877 	mov	a,#0x01
      001CB8 C0 E0            [24] 1878 	push	acc
      001CBA 74 C9            [12] 1879 	mov	a,#_uart1_isr_c_65536_169
      001CBC C0 E0            [24] 1880 	push	acc
      001CBE 74 01            [12] 1881 	mov	a,#(_uart1_isr_c_65536_169 >> 8)
      001CC0 C0 E0            [24] 1882 	push	acc
      001CC2 E4               [12] 1883 	clr	a
      001CC3 C0 E0            [24] 1884 	push	acc
      001CC5 90 03 1E         [24] 1885 	mov	dptr,#__UART1_receiveBuffer
      001CC8 75 F0 00         [24] 1886 	mov	b,#0x00
      001CCB 12 0D 56         [24] 1887 	lcall	_fifoWrite
      001CCE E5 81            [12] 1888 	mov	a,sp
      001CD0 24 FC            [12] 1889 	add	a,#0xfc
      001CD2 F5 81            [12] 1890 	mov	sp,a
      001CD4                       1891 00107$:
                                   1892 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:432: EA = 1;
                                   1893 ;	assignBit
      001CD4 D2 AF            [12] 1894 	setb	_EA
                                   1895 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:433: }
      001CD6 D0 D0            [24] 1896 	pop	psw
      001CD8 D0 00            [24] 1897 	pop	(0+0)
      001CDA D0 01            [24] 1898 	pop	(0+1)
      001CDC D0 02            [24] 1899 	pop	(0+2)
      001CDE D0 03            [24] 1900 	pop	(0+3)
      001CE0 D0 04            [24] 1901 	pop	(0+4)
      001CE2 D0 05            [24] 1902 	pop	(0+5)
      001CE4 D0 06            [24] 1903 	pop	(0+6)
      001CE6 D0 07            [24] 1904 	pop	(0+7)
      001CE8 D0 83            [24] 1905 	pop	dph
      001CEA D0 82            [24] 1906 	pop	dpl
      001CEC D0 F0            [24] 1907 	pop	b
      001CEE D0 E0            [24] 1908 	pop	acc
      001CF0 D0 20            [24] 1909 	pop	bits
      001CF2 32               [24] 1910 	reti
                                   1911 ;------------------------------------------------------------
                                   1912 ;Allocation info for local variables in function 'uart2_isr'
                                   1913 ;------------------------------------------------------------
                                   1914 ;c                         Allocated with name '_uart2_isr_c_65536_175'
                                   1915 ;------------------------------------------------------------
                                   1916 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:436: INTERRUPT(uart2_isr, UART2_INTERRUPT) {
                                   1917 ;	-----------------------------------------
                                   1918 ;	 function uart2_isr
                                   1919 ;	-----------------------------------------
      001CF3                       1920 _uart2_isr:
      001CF3 C0 20            [24] 1921 	push	bits
      001CF5 C0 E0            [24] 1922 	push	acc
      001CF7 C0 F0            [24] 1923 	push	b
      001CF9 C0 82            [24] 1924 	push	dpl
      001CFB C0 83            [24] 1925 	push	dph
      001CFD C0 07            [24] 1926 	push	(0+7)
      001CFF C0 06            [24] 1927 	push	(0+6)
      001D01 C0 05            [24] 1928 	push	(0+5)
      001D03 C0 04            [24] 1929 	push	(0+4)
      001D05 C0 03            [24] 1930 	push	(0+3)
      001D07 C0 02            [24] 1931 	push	(0+2)
      001D09 C0 01            [24] 1932 	push	(0+1)
      001D0B C0 00            [24] 1933 	push	(0+0)
      001D0D C0 D0            [24] 1934 	push	psw
      001D0F 75 D0 00         [24] 1935 	mov	psw,#0x00
                                   1936 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:439: EA = 0;
                                   1937 ;	assignBit
      001D12 C2 AF            [12] 1938 	clr	_EA
                                   1939 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:441: if (S2CON & M_UART_TXIF) {
      001D14 E5 9A            [12] 1940 	mov	a,_S2CON
      001D16 30 E1 33         [24] 1941 	jnb	acc.1,00105$
                                   1942 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:442: S2CON &= ~M_UART_TXIF;
      001D19 53 9A FD         [24] 1943 	anl	_S2CON,#0xfd
                                   1944 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:444: if (fifoRead(&_UART2_transmitBuffer, &c, 1)) {
      001D1C 74 01            [12] 1945 	mov	a,#0x01
      001D1E C0 E0            [24] 1946 	push	acc
      001D20 74 CA            [12] 1947 	mov	a,#_uart2_isr_c_65536_175
      001D22 C0 E0            [24] 1948 	push	acc
      001D24 74 01            [12] 1949 	mov	a,#(_uart2_isr_c_65536_175 >> 8)
      001D26 C0 E0            [24] 1950 	push	acc
      001D28 E4               [12] 1951 	clr	a
      001D29 C0 E0            [24] 1952 	push	acc
      001D2B 90 03 36         [24] 1953 	mov	dptr,#__UART2_transmitBuffer
      001D2E 75 F0 00         [24] 1954 	mov	b,#0x00
      001D31 12 0E B8         [24] 1955 	lcall	_fifoRead
      001D34 AF 82            [24] 1956 	mov	r7,dpl
      001D36 E5 81            [12] 1957 	mov	a,sp
      001D38 24 FC            [12] 1958 	add	a,#0xfc
      001D3A F5 81            [12] 1959 	mov	sp,a
      001D3C EF               [12] 1960 	mov	a,r7
      001D3D 60 08            [24] 1961 	jz	00102$
                                   1962 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:445: S2BUF = c;
      001D3F 90 01 CA         [24] 1963 	mov	dptr,#_uart2_isr_c_65536_175
      001D42 E0               [24] 1964 	movx	a,@dptr
      001D43 F5 9B            [12] 1965 	mov	_S2BUF,a
      001D45 80 05            [24] 1966 	sjmp	00105$
      001D47                       1967 00102$:
                                   1968 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:447: _UART2_transmitBuffer.status = STATUS_CLEAR;
      001D47 90 03 3A         [24] 1969 	mov	dptr,#(__UART2_transmitBuffer + 0x0004)
      001D4A E4               [12] 1970 	clr	a
      001D4B F0               [24] 1971 	movx	@dptr,a
      001D4C                       1972 00105$:
                                   1973 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:451: if (S2CON & M_UART_RXIF) {
      001D4C E5 9A            [12] 1974 	mov	a,_S2CON
      001D4E 30 E0 27         [24] 1975 	jnb	acc.0,00107$
                                   1976 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:452: S2CON &= ~M_UART_RXIF;
      001D51 53 9A FE         [24] 1977 	anl	_S2CON,#0xfe
                                   1978 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:453: c = S2BUF;
      001D54 90 01 CA         [24] 1979 	mov	dptr,#_uart2_isr_c_65536_175
      001D57 E5 9B            [12] 1980 	mov	a,_S2BUF
      001D59 F0               [24] 1981 	movx	@dptr,a
                                   1982 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:454: fifoWrite(&_UART2_receiveBuffer, &c, 1);
      001D5A 74 01            [12] 1983 	mov	a,#0x01
      001D5C C0 E0            [24] 1984 	push	acc
      001D5E 74 CA            [12] 1985 	mov	a,#_uart2_isr_c_65536_175
      001D60 C0 E0            [24] 1986 	push	acc
      001D62 74 01            [12] 1987 	mov	a,#(_uart2_isr_c_65536_175 >> 8)
      001D64 C0 E0            [24] 1988 	push	acc
      001D66 E4               [12] 1989 	clr	a
      001D67 C0 E0            [24] 1990 	push	acc
      001D69 90 03 2E         [24] 1991 	mov	dptr,#__UART2_receiveBuffer
      001D6C 75 F0 00         [24] 1992 	mov	b,#0x00
      001D6F 12 0D 56         [24] 1993 	lcall	_fifoWrite
      001D72 E5 81            [12] 1994 	mov	a,sp
      001D74 24 FC            [12] 1995 	add	a,#0xfc
      001D76 F5 81            [12] 1996 	mov	sp,a
      001D78                       1997 00107$:
                                   1998 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:457: EA = 1;
                                   1999 ;	assignBit
      001D78 D2 AF            [12] 2000 	setb	_EA
                                   2001 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:458: }
      001D7A D0 D0            [24] 2002 	pop	psw
      001D7C D0 00            [24] 2003 	pop	(0+0)
      001D7E D0 01            [24] 2004 	pop	(0+1)
      001D80 D0 02            [24] 2005 	pop	(0+2)
      001D82 D0 03            [24] 2006 	pop	(0+3)
      001D84 D0 04            [24] 2007 	pop	(0+4)
      001D86 D0 05            [24] 2008 	pop	(0+5)
      001D88 D0 06            [24] 2009 	pop	(0+6)
      001D8A D0 07            [24] 2010 	pop	(0+7)
      001D8C D0 83            [24] 2011 	pop	dph
      001D8E D0 82            [24] 2012 	pop	dpl
      001D90 D0 F0            [24] 2013 	pop	b
      001D92 D0 E0            [24] 2014 	pop	acc
      001D94 D0 20            [24] 2015 	pop	bits
      001D96 32               [24] 2016 	reti
                                   2017 ;------------------------------------------------------------
                                   2018 ;Allocation info for local variables in function 'uartGetBlock'
                                   2019 ;------------------------------------------------------------
                                   2020 ;sloc0                     Allocated with name '_uartGetBlock_sloc0_1_0'
                                   2021 ;sloc1                     Allocated with name '_uartGetBlock_sloc1_1_0'
                                   2022 ;data                      Allocated with name '_uartGetBlock_PARM_2'
                                   2023 ;size                      Allocated with name '_uartGetBlock_PARM_3'
                                   2024 ;blocking                  Allocated with name '_uartGetBlock_PARM_4'
                                   2025 ;uart                      Allocated with name '_uartGetBlock_uart_65536_180'
                                   2026 ;rc                        Allocated with name '_uartGetBlock_rc_65536_181'
                                   2027 ;buffer                    Allocated with name '_uartGetBlock_buffer_65536_181'
                                   2028 ;------------------------------------------------------------
                                   2029 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:511: bool uartGetBlock(Uart uart, uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   2030 ;	-----------------------------------------
                                   2031 ;	 function uartGetBlock
                                   2032 ;	-----------------------------------------
      001D97                       2033 _uartGetBlock:
      001D97 E5 82            [12] 2034 	mov	a,dpl
      001D99 90 01 D0         [24] 2035 	mov	dptr,#_uartGetBlock_uart_65536_180
      001D9C F0               [24] 2036 	movx	@dptr,a
                                   2037 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:513: FifoState *buffer = _uartReceiveBuffer(uart);
      001D9D E0               [24] 2038 	movx	a,@dptr
      001D9E F5 82            [12] 2039 	mov	dpl,a
      001DA0 12 19 16         [24] 2040 	lcall	__uartReceiveBuffer
      001DA3 AD 82            [24] 2041 	mov	r5,dpl
      001DA5 AE 83            [24] 2042 	mov	r6,dph
      001DA7 AF F0            [24] 2043 	mov	r7,b
                                   2044 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:515: do {
      001DA9 90 01 CB         [24] 2045 	mov	dptr,#_uartGetBlock_PARM_2
      001DAC E0               [24] 2046 	movx	a,@dptr
      001DAD F5 0E            [12] 2047 	mov	_uartGetBlock_sloc1_1_0,a
      001DAF A3               [24] 2048 	inc	dptr
      001DB0 E0               [24] 2049 	movx	a,@dptr
      001DB1 F5 0F            [12] 2050 	mov	(_uartGetBlock_sloc1_1_0 + 1),a
      001DB3 A3               [24] 2051 	inc	dptr
      001DB4 E0               [24] 2052 	movx	a,@dptr
      001DB5 F5 10            [12] 2053 	mov	(_uartGetBlock_sloc1_1_0 + 2),a
      001DB7 90 01 CF         [24] 2054 	mov	dptr,#_uartGetBlock_PARM_4
      001DBA E0               [24] 2055 	movx	a,@dptr
      001DBB F9               [12] 2056 	mov	r1,a
      001DBC B9 01 03         [24] 2057 	cjne	r1,#0x01,00115$
      001DBF E9               [12] 2058 	mov	a,r1
      001DC0 80 01            [24] 2059 	sjmp	00116$
      001DC2                       2060 00115$:
      001DC2 E4               [12] 2061 	clr	a
      001DC3                       2062 00116$:
      001DC3 F5 0D            [12] 2063 	mov	_uartGetBlock_sloc0_1_0,a
      001DC5                       2064 00102$:
                                   2065 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:516: EA = 0;
                                   2066 ;	assignBit
      001DC5 C2 AF            [12] 2067 	clr	_EA
                                   2068 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:517: rc = fifoRead(buffer, data, size);
      001DC7 A8 0E            [24] 2069 	mov	r0,_uartGetBlock_sloc1_1_0
      001DC9 A9 0F            [24] 2070 	mov	r1,(_uartGetBlock_sloc1_1_0 + 1)
      001DCB AC 10            [24] 2071 	mov	r4,(_uartGetBlock_sloc1_1_0 + 2)
      001DCD C0 07            [24] 2072 	push	ar7
      001DCF C0 06            [24] 2073 	push	ar6
      001DD1 C0 05            [24] 2074 	push	ar5
      001DD3 90 01 CE         [24] 2075 	mov	dptr,#_uartGetBlock_PARM_3
      001DD6 E0               [24] 2076 	movx	a,@dptr
      001DD7 C0 E0            [24] 2077 	push	acc
      001DD9 C0 00            [24] 2078 	push	ar0
      001DDB C0 01            [24] 2079 	push	ar1
      001DDD C0 04            [24] 2080 	push	ar4
      001DDF 8D 82            [24] 2081 	mov	dpl,r5
      001DE1 8E 83            [24] 2082 	mov	dph,r6
      001DE3 8F F0            [24] 2083 	mov	b,r7
      001DE5 12 0E B8         [24] 2084 	lcall	_fifoRead
      001DE8 AC 82            [24] 2085 	mov	r4,dpl
      001DEA E5 81            [12] 2086 	mov	a,sp
      001DEC 24 FC            [12] 2087 	add	a,#0xfc
      001DEE F5 81            [12] 2088 	mov	sp,a
      001DF0 D0 05            [24] 2089 	pop	ar5
      001DF2 D0 06            [24] 2090 	pop	ar6
      001DF4 D0 07            [24] 2091 	pop	ar7
                                   2092 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:518: EA = 1;
                                   2093 ;	assignBit
      001DF6 D2 AF            [12] 2094 	setb	_EA
                                   2095 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:519: } while (blocking == BLOCKING && !rc);
      001DF8 E5 0D            [12] 2096 	mov	a,_uartGetBlock_sloc0_1_0
      001DFA 60 03            [24] 2097 	jz	00104$
      001DFC EC               [12] 2098 	mov	a,r4
      001DFD 60 C6            [24] 2099 	jz	00102$
      001DFF                       2100 00104$:
                                   2101 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:521: return rc;
      001DFF 8C 82            [24] 2102 	mov	dpl,r4
                                   2103 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:522: }
      001E01 22               [24] 2104 	ret
                                   2105 ;------------------------------------------------------------
                                   2106 ;Allocation info for local variables in function 'uartSendBlock'
                                   2107 ;------------------------------------------------------------
                                   2108 ;sloc0                     Allocated with name '_uartSendBlock_sloc0_1_0'
                                   2109 ;sloc1                     Allocated with name '_uartSendBlock_sloc1_1_0'
                                   2110 ;data                      Allocated with name '_uartSendBlock_PARM_2'
                                   2111 ;size                      Allocated with name '_uartSendBlock_PARM_3'
                                   2112 ;blocking                  Allocated with name '_uartSendBlock_PARM_4'
                                   2113 ;uart                      Allocated with name '_uartSendBlock_uart_65536_183'
                                   2114 ;buffer                    Allocated with name '_uartSendBlock_buffer_65536_184'
                                   2115 ;rc                        Allocated with name '_uartSendBlock_rc_65536_184'
                                   2116 ;data                      Allocated with name '_uartSendBlock_data_131073_187'
                                   2117 ;------------------------------------------------------------
                                   2118 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:524: bool uartSendBlock(Uart uart, const uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   2119 ;	-----------------------------------------
                                   2120 ;	 function uartSendBlock
                                   2121 ;	-----------------------------------------
      001E02                       2122 _uartSendBlock:
      001E02 E5 82            [12] 2123 	mov	a,dpl
      001E04 90 01 D6         [24] 2124 	mov	dptr,#_uartSendBlock_uart_65536_183
      001E07 F0               [24] 2125 	movx	@dptr,a
                                   2126 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:525: FifoState *buffer = _uartTransmitBuffer(uart);
      001E08 E0               [24] 2127 	movx	a,@dptr
      001E09 F5 82            [12] 2128 	mov	dpl,a
      001E0B 12 19 62         [24] 2129 	lcall	__uartTransmitBuffer
      001E0E AD 82            [24] 2130 	mov	r5,dpl
      001E10 AE 83            [24] 2131 	mov	r6,dph
      001E12 AF F0            [24] 2132 	mov	r7,b
                                   2133 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:528: do {
      001E14 90 01 D1         [24] 2134 	mov	dptr,#_uartSendBlock_PARM_2
      001E17 E0               [24] 2135 	movx	a,@dptr
      001E18 F5 12            [12] 2136 	mov	_uartSendBlock_sloc1_1_0,a
      001E1A A3               [24] 2137 	inc	dptr
      001E1B E0               [24] 2138 	movx	a,@dptr
      001E1C F5 13            [12] 2139 	mov	(_uartSendBlock_sloc1_1_0 + 1),a
      001E1E A3               [24] 2140 	inc	dptr
      001E1F E0               [24] 2141 	movx	a,@dptr
      001E20 F5 14            [12] 2142 	mov	(_uartSendBlock_sloc1_1_0 + 2),a
      001E22 90 01 D5         [24] 2143 	mov	dptr,#_uartSendBlock_PARM_4
      001E25 E0               [24] 2144 	movx	a,@dptr
      001E26 F9               [12] 2145 	mov	r1,a
      001E27 B9 01 03         [24] 2146 	cjne	r1,#0x01,00137$
      001E2A E9               [12] 2147 	mov	a,r1
      001E2B 80 01            [24] 2148 	sjmp	00138$
      001E2D                       2149 00137$:
      001E2D E4               [12] 2150 	clr	a
      001E2E                       2151 00138$:
      001E2E F5 11            [12] 2152 	mov	_uartSendBlock_sloc0_1_0,a
      001E30                       2153 00102$:
                                   2154 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:529: EA = 0;
                                   2155 ;	assignBit
      001E30 C2 AF            [12] 2156 	clr	_EA
                                   2157 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:530: rc = fifoWrite(buffer, data, size);
      001E32 A8 12            [24] 2158 	mov	r0,_uartSendBlock_sloc1_1_0
      001E34 A9 13            [24] 2159 	mov	r1,(_uartSendBlock_sloc1_1_0 + 1)
      001E36 AC 14            [24] 2160 	mov	r4,(_uartSendBlock_sloc1_1_0 + 2)
      001E38 C0 07            [24] 2161 	push	ar7
      001E3A C0 06            [24] 2162 	push	ar6
      001E3C C0 05            [24] 2163 	push	ar5
      001E3E 90 01 D4         [24] 2164 	mov	dptr,#_uartSendBlock_PARM_3
      001E41 E0               [24] 2165 	movx	a,@dptr
      001E42 C0 E0            [24] 2166 	push	acc
      001E44 C0 00            [24] 2167 	push	ar0
      001E46 C0 01            [24] 2168 	push	ar1
      001E48 C0 04            [24] 2169 	push	ar4
      001E4A 8D 82            [24] 2170 	mov	dpl,r5
      001E4C 8E 83            [24] 2171 	mov	dph,r6
      001E4E 8F F0            [24] 2172 	mov	b,r7
      001E50 12 0D 56         [24] 2173 	lcall	_fifoWrite
      001E53 AC 82            [24] 2174 	mov	r4,dpl
      001E55 E5 81            [12] 2175 	mov	a,sp
      001E57 24 FC            [12] 2176 	add	a,#0xfc
      001E59 F5 81            [12] 2177 	mov	sp,a
      001E5B D0 05            [24] 2178 	pop	ar5
      001E5D D0 06            [24] 2179 	pop	ar6
      001E5F D0 07            [24] 2180 	pop	ar7
                                   2181 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:531: EA = 1;
                                   2182 ;	assignBit
      001E61 D2 AF            [12] 2183 	setb	_EA
                                   2184 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:532: } while (blocking == BLOCKING && !rc);
      001E63 E5 11            [12] 2185 	mov	a,_uartSendBlock_sloc0_1_0
      001E65 60 03            [24] 2186 	jz	00104$
      001E67 EC               [12] 2187 	mov	a,r4
      001E68 60 C6            [24] 2188 	jz	00102$
      001E6A                       2189 00104$:
                                   2190 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:534: if (rc && buffer->status == STATUS_CLEAR) {
      001E6A EC               [12] 2191 	mov	a,r4
      001E6B 60 5C            [24] 2192 	jz	00109$
      001E6D 74 04            [12] 2193 	mov	a,#0x04
      001E6F 2D               [12] 2194 	add	a,r5
      001E70 F9               [12] 2195 	mov	r1,a
      001E71 E4               [12] 2196 	clr	a
      001E72 3E               [12] 2197 	addc	a,r6
      001E73 FA               [12] 2198 	mov	r2,a
      001E74 8F 03            [24] 2199 	mov	ar3,r7
      001E76 89 82            [24] 2200 	mov	dpl,r1
      001E78 8A 83            [24] 2201 	mov	dph,r2
      001E7A 8B F0            [24] 2202 	mov	b,r3
      001E7C 12 4A 06         [24] 2203 	lcall	__gptrget
      001E7F 70 48            [24] 2204 	jnz	00109$
                                   2205 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:535: buffer->status = STATUS_SENDING;
      001E81 89 82            [24] 2206 	mov	dpl,r1
      001E83 8A 83            [24] 2207 	mov	dph,r2
      001E85 8B F0            [24] 2208 	mov	b,r3
      001E87 74 01            [12] 2209 	mov	a,#0x01
      001E89 12 3D DF         [24] 2210 	lcall	__gptrput
                                   2211 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:537: fifoRead(buffer, &data, 1);
      001E8C C0 04            [24] 2212 	push	ar4
      001E8E C0 E0            [24] 2213 	push	acc
      001E90 74 D7            [12] 2214 	mov	a,#_uartSendBlock_data_131073_187
      001E92 C0 E0            [24] 2215 	push	acc
      001E94 74 01            [12] 2216 	mov	a,#(_uartSendBlock_data_131073_187 >> 8)
      001E96 C0 E0            [24] 2217 	push	acc
      001E98 E4               [12] 2218 	clr	a
      001E99 C0 E0            [24] 2219 	push	acc
      001E9B 8D 82            [24] 2220 	mov	dpl,r5
      001E9D 8E 83            [24] 2221 	mov	dph,r6
      001E9F 8F F0            [24] 2222 	mov	b,r7
      001EA1 12 0E B8         [24] 2223 	lcall	_fifoRead
      001EA4 E5 81            [12] 2224 	mov	a,sp
      001EA6 24 FC            [12] 2225 	add	a,#0xfc
      001EA8 F5 81            [12] 2226 	mov	sp,a
      001EAA D0 04            [24] 2227 	pop	ar4
                                   2228 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:539: switch (uart) {
      001EAC 90 01 D6         [24] 2229 	mov	dptr,#_uartSendBlock_uart_65536_183
      001EAF E0               [24] 2230 	movx	a,@dptr
      001EB0 FF               [12] 2231 	mov	r7,a
      001EB1 BF 01 02         [24] 2232 	cjne	r7,#0x01,00143$
      001EB4 80 05            [24] 2233 	sjmp	00105$
      001EB6                       2234 00143$:
                                   2235 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:540: case UART1:
      001EB6 BF 02 10         [24] 2236 	cjne	r7,#0x02,00109$
      001EB9 80 08            [24] 2237 	sjmp	00106$
      001EBB                       2238 00105$:
                                   2239 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:541: S1BUF = data;
      001EBB 90 01 D7         [24] 2240 	mov	dptr,#_uartSendBlock_data_131073_187
      001EBE E0               [24] 2241 	movx	a,@dptr
      001EBF F5 99            [12] 2242 	mov	_S1BUF,a
                                   2243 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:542: break;
                                   2244 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:545: case UART2:
      001EC1 80 06            [24] 2245 	sjmp	00109$
      001EC3                       2246 00106$:
                                   2247 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:546: S2BUF = data;
      001EC3 90 01 D7         [24] 2248 	mov	dptr,#_uartSendBlock_data_131073_187
      001EC6 E0               [24] 2249 	movx	a,@dptr
      001EC7 F5 9B            [12] 2250 	mov	_S2BUF,a
                                   2251 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:559: }
      001EC9                       2252 00109$:
                                   2253 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:562: return rc;
      001EC9 8C 82            [24] 2254 	mov	dpl,r4
                                   2255 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:563: }
      001ECB 22               [24] 2256 	ret
                                   2257 	.area CSEG    (CODE)
                                   2258 	.area CONST   (CODE)
                                   2259 	.area XINIT   (CODE)
      004CE9                       2260 __xinit___UART1_receiveBuffer:
      004CE9 10                    2261 	.db #0x10	; 16
      004CEA 00                    2262 	.db #0x00	; 0
      004CEB 00                    2263 	.db #0x00	; 0
      004CEC 00                    2264 	.db #0x00	; 0
      004CED 00                    2265 	.db #0x00	; 0
      004CEE 97 00 00              2266 	.byte __UART1_receiveBufferData, (__UART1_receiveBufferData >> 8),#0x00
      004CF1                       2267 __xinit___UART1_transmitBuffer:
      004CF1 10                    2268 	.db #0x10	; 16
      004CF2 00                    2269 	.db #0x00	; 0
      004CF3 00                    2270 	.db #0x00	; 0
      004CF4 00                    2271 	.db #0x00	; 0
      004CF5 00                    2272 	.db #0x00	; 0
      004CF6 A7 00 00              2273 	.byte __UART1_transmitBufferData, (__UART1_transmitBufferData >> 8),#0x00
      004CF9                       2274 __xinit___UART2_receiveBuffer:
      004CF9 E9                    2275 	.db #0xe9	; 233
      004CFA 00                    2276 	.db #0x00	; 0
      004CFB 00                    2277 	.db #0x00	; 0
      004CFC 00                    2278 	.db #0x00	; 0
      004CFD 00                    2279 	.db #0x00	; 0
      004CFE B7 00 00              2280 	.byte __UART2_receiveBufferData, (__UART2_receiveBufferData >> 8),#0x00
      004D01                       2281 __xinit___UART2_transmitBuffer:
      004D01 10                    2282 	.db #0x10	; 16
      004D02 00                    2283 	.db #0x00	; 0
      004D03 00                    2284 	.db #0x00	; 0
      004D04 00                    2285 	.db #0x00	; 0
      004D05 00                    2286 	.db #0x00	; 0
      004D06 A0 01 00              2287 	.byte __UART2_transmitBufferData, (__UART2_transmitBufferData >> 8),#0x00
                                   2288 	.area CABS    (ABS,CODE)
