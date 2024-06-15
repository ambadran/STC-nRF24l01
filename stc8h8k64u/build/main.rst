                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _nrf24_receive
                                     13 	.globl _nrf24_device
                                     14 	.globl _nrf24_read
                                     15 	.globl _gpio_init
                                     16 	.globl _serialConsoleInitialise
                                     17 	.globl _uartSendBlock
                                     18 	.globl _uartGetBlock
                                     19 	.globl _delay1ms
                                     20 	.globl _printf
                                     21 	.globl _S1SM0_FE
                                     22 	.globl _T1IE
                                     23 	.globl _T0IE
                                     24 	.globl _T1RUN
                                     25 	.globl _T0RUN
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _F1
                                     33 	.globl _P
                                     34 	.globl _EA
                                     35 	.globl _INT1IE
                                     36 	.globl _INT0IE
                                     37 	.globl _INT1TR
                                     38 	.globl _INT0TR
                                     39 	.globl _P5_5
                                     40 	.globl _P5_4
                                     41 	.globl _P5_3
                                     42 	.globl _P5_2
                                     43 	.globl _P5_1
                                     44 	.globl _P5_0
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _P1_7
                                     62 	.globl _P1_6
                                     63 	.globl _P1_5
                                     64 	.globl _P1_4
                                     65 	.globl _P1_3
                                     66 	.globl _P1_2
                                     67 	.globl _P1_1
                                     68 	.globl _P1_0
                                     69 	.globl _USBADR
                                     70 	.globl _USBCON
                                     71 	.globl _USBDAT
                                     72 	.globl _USBCLK
                                     73 	.globl _S4BUF
                                     74 	.globl _S4CON
                                     75 	.globl _S3BUF
                                     76 	.globl _S3CON
                                     77 	.globl _S2BUF
                                     78 	.globl _S2CON
                                     79 	.globl _S1BUF
                                     80 	.globl _S1CON
                                     81 	.globl _SADEN
                                     82 	.globl _SADDR
                                     83 	.globl _AUXINTIF
                                     84 	.globl _T3
                                     85 	.globl _T3L
                                     86 	.globl _T3H
                                     87 	.globl _T4
                                     88 	.globl _T4L
                                     89 	.globl _T4H
                                     90 	.globl _T4T3M
                                     91 	.globl _WDT_CONTR
                                     92 	.globl _AUXR
                                     93 	.globl _T2
                                     94 	.globl _T2H
                                     95 	.globl _T2L
                                     96 	.globl _T1
                                     97 	.globl _T1H
                                     98 	.globl _T1L
                                     99 	.globl _T0
                                    100 	.globl _T0H
                                    101 	.globl _T0L
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _IRTRIM
                                    105 	.globl _LIRTRIM
                                    106 	.globl _IRCBAND
                                    107 	.globl _SPDAT
                                    108 	.globl _SPCTL
                                    109 	.globl _SPSTAT
                                    110 	.globl _WKTC
                                    111 	.globl _WKTCH
                                    112 	.globl _WKTCL
                                    113 	.globl _BUS_SPEED
                                    114 	.globl _P_SW2
                                    115 	.globl _P_SW1
                                    116 	.globl _RSTCFG
                                    117 	.globl _PCON
                                    118 	.globl _B
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _SP
                                    122 	.globl _IP3H
                                    123 	.globl _IP3L
                                    124 	.globl _IP2H
                                    125 	.globl _IP2L
                                    126 	.globl _IE2
                                    127 	.globl _IP1H
                                    128 	.globl _IP1L
                                    129 	.globl _IE1
                                    130 	.globl _INT_CLKO
                                    131 	.globl _IAP_TPS
                                    132 	.globl _IAP_CONTR
                                    133 	.globl _IAP_TRIG
                                    134 	.globl _IAP_CMD
                                    135 	.globl _IAP_ADDR
                                    136 	.globl _IAP_ADDRL
                                    137 	.globl _IAP_ADDRH
                                    138 	.globl _IAP_DATA
                                    139 	.globl _P5M0
                                    140 	.globl _P5M1
                                    141 	.globl _P5
                                    142 	.globl _P3M0
                                    143 	.globl _P3M1
                                    144 	.globl _P3
                                    145 	.globl _P2M0
                                    146 	.globl _P2M1
                                    147 	.globl _P2
                                    148 	.globl _P1M0
                                    149 	.globl _P1M1
                                    150 	.globl _P1
                                    151 	.globl _TA
                                    152 	.globl _DPH1
                                    153 	.globl _DPL1
                                    154 	.globl _DPS
                                    155 	.globl _DP
                                    156 	.globl _DPH
                                    157 	.globl _DPL
                                    158 	.globl _CMPCR2
                                    159 	.globl _CMPCR1
                                    160 	.globl _DMA_ADC_AMT
                                    161 	.globl _ADCCFG
                                    162 	.globl _ADC_RES
                                    163 	.globl _ADC_RESL
                                    164 	.globl _ADC_RESH
                                    165 	.globl _ADC_CONTR
                                    166 	.globl _DMA_UR4R_TXAL
                                    167 	.globl _DMA_UR4R_TXAH
                                    168 	.globl _DMA_UR4R_DONE
                                    169 	.globl _DMA_UR4R_AMT
                                    170 	.globl _DMA_UR4R_STA
                                    171 	.globl _DMA_UR4R_CR
                                    172 	.globl _DMA_UR4R_CFG
                                    173 	.globl _DMA_UR4T_TXAL
                                    174 	.globl _DMA_UR4T_TXAH
                                    175 	.globl _DMA_UR4T_DONE
                                    176 	.globl _DMA_UR4T_AMT
                                    177 	.globl _DMA_UR4T_STA
                                    178 	.globl _DMA_UR4T_CR
                                    179 	.globl _DMA_UR4T_CFG
                                    180 	.globl _DMA_UR3R_TXAL
                                    181 	.globl _DMA_UR3R_TXAH
                                    182 	.globl _DMA_UR3R_DONE
                                    183 	.globl _DMA_UR3R_AMT
                                    184 	.globl _DMA_UR3R_STA
                                    185 	.globl _DMA_UR3R_CR
                                    186 	.globl _DMA_UR3R_CFG
                                    187 	.globl _DMA_UR3T_TXAL
                                    188 	.globl _DMA_UR3T_TXAH
                                    189 	.globl _DMA_UR3T_DONE
                                    190 	.globl _DMA_UR3T_AMT
                                    191 	.globl _DMA_UR3T_STA
                                    192 	.globl _DMA_UR3T_CR
                                    193 	.globl _DMA_UR3T_CFG
                                    194 	.globl _DMA_UR2R_TXAL
                                    195 	.globl _DMA_UR2R_TXAH
                                    196 	.globl _DMA_UR2R_DONE
                                    197 	.globl _DMA_UR2R_AMT
                                    198 	.globl _DMA_UR2R_STA
                                    199 	.globl _DMA_UR2R_CR
                                    200 	.globl _DMA_UR2R_CFG
                                    201 	.globl _DMA_UR2T_TXAL
                                    202 	.globl _DMA_UR2T_TXAH
                                    203 	.globl _DMA_UR2T_DONE
                                    204 	.globl _DMA_UR2T_AMT
                                    205 	.globl _DMA_UR2T_STA
                                    206 	.globl _DMA_UR2T_CR
                                    207 	.globl _DMA_UR2T_CFG
                                    208 	.globl _DMA_UR1R_TXAL
                                    209 	.globl _DMA_UR1R_TXAH
                                    210 	.globl _DMA_UR1R_DONE
                                    211 	.globl _DMA_UR1R_AMT
                                    212 	.globl _DMA_UR1R_STA
                                    213 	.globl _DMA_UR1R_CR
                                    214 	.globl _DMA_UR1R_CFG
                                    215 	.globl _DMA_UR1T_TXAL
                                    216 	.globl _DMA_UR1T_TXAH
                                    217 	.globl _DMA_UR1T_DONE
                                    218 	.globl _DMA_URTX_AMT
                                    219 	.globl _DMA_UR1T_STA
                                    220 	.globl _DMA_UR1T_CR
                                    221 	.globl _DMA_UR1T_CFG
                                    222 	.globl _TM4PS
                                    223 	.globl _TM3PS
                                    224 	.globl _TM2PS
                                    225 	.globl _IRC48MCR
                                    226 	.globl _IRCDB
                                    227 	.globl _MCLKOCR
                                    228 	.globl _CKSEL
                                    229 	.globl _IRC32KCR
                                    230 	.globl _XOSCCR
                                    231 	.globl _HIRCCR
                                    232 	.globl _CLKDIV
                                    233 	.globl _DMA_SPI_CFG2
                                    234 	.globl _DMA_SPI_RXAL
                                    235 	.globl _DMA_SPI_RXAH
                                    236 	.globl _DMA_SPI_TXAL
                                    237 	.globl _DMA_SPI_TXAH
                                    238 	.globl _DMA_SPI_DONE
                                    239 	.globl _DMA_SPI_AMT
                                    240 	.globl _DMA_SPI_STA
                                    241 	.globl _DMA_SPI_CR
                                    242 	.globl _DMA_SPI_CFG
                                    243 	.globl _SSEC
                                    244 	.globl _SEC
                                    245 	.globl _MIN
                                    246 	.globl _HOUR
                                    247 	.globl _DAY
                                    248 	.globl _MONTH
                                    249 	.globl _YEAR
                                    250 	.globl _INISSEC
                                    251 	.globl _INISEC
                                    252 	.globl _INIMIN
                                    253 	.globl _INIHOUR
                                    254 	.globl _INIDAY
                                    255 	.globl _INIMONTH
                                    256 	.globl _INIYEAR
                                    257 	.globl _ALASSEC
                                    258 	.globl _ALASEC
                                    259 	.globl _ALAMIN
                                    260 	.globl _ALAHOUR
                                    261 	.globl _RTCIF
                                    262 	.globl _RTCIEN
                                    263 	.globl _RTCCFG
                                    264 	.globl _RTCCR
                                    265 	.globl _PWMB_OISR
                                    266 	.globl _PWMB_DTR
                                    267 	.globl _PWMB_BKR
                                    268 	.globl _PWMB_CCR4L
                                    269 	.globl _PWMB_CCR4H
                                    270 	.globl _PWMB_CCR3L
                                    271 	.globl _PWMB_CCR3H
                                    272 	.globl _PWMB_CCR2L
                                    273 	.globl _PWMB_CCR2H
                                    274 	.globl _PWMB_CCR1L
                                    275 	.globl _PWMB_CCR1H
                                    276 	.globl _PWMB_RCR
                                    277 	.globl _PWMB_ARRL
                                    278 	.globl _PWMB_ARRH
                                    279 	.globl _PWMB_PSCRL
                                    280 	.globl _PWMB_PSCRH
                                    281 	.globl _PWMB_CNTRL
                                    282 	.globl _PWMB_CNTRH
                                    283 	.globl _PWMB_CCER2
                                    284 	.globl _PWMB_CCER1
                                    285 	.globl _PWMB_CCMR4
                                    286 	.globl _PWMB_CCMR3
                                    287 	.globl _PWMB_CCMR2
                                    288 	.globl _PWMB_CCMR1
                                    289 	.globl _PWMB_EGR
                                    290 	.globl _PWMB_SR2
                                    291 	.globl _PWMB_SR1
                                    292 	.globl _PWMB_IER
                                    293 	.globl _PWMB_ETR
                                    294 	.globl _PWMB_SMCR
                                    295 	.globl _PWMB_CR2
                                    296 	.globl _PWMB_CR1
                                    297 	.globl _PWMA_OISR
                                    298 	.globl _PWMA_DTR
                                    299 	.globl _PWMA_BKR
                                    300 	.globl _PWMA_CCR4L
                                    301 	.globl _PWMA_CCR4H
                                    302 	.globl _PWMA_CCR3L
                                    303 	.globl _PWMA_CCR3H
                                    304 	.globl _PWMA_CCR2L
                                    305 	.globl _PWMA_CCR2H
                                    306 	.globl _PWMA_CCR1L
                                    307 	.globl _PWMA_CCR1H
                                    308 	.globl _PWMA_RCR
                                    309 	.globl _PWMA_ARRL
                                    310 	.globl _PWMA_ARRH
                                    311 	.globl _PWMA_PSCRL
                                    312 	.globl _PWMA_PSCRH
                                    313 	.globl _PWMA_CNTRL
                                    314 	.globl _PWMA_CNTRH
                                    315 	.globl _PWMA_CCER2
                                    316 	.globl _PWMA_CCER1
                                    317 	.globl _PWMA_CCMR4
                                    318 	.globl _PWMA_CCMR3
                                    319 	.globl _PWMA_CCMR2
                                    320 	.globl _PWMA_CCMR1
                                    321 	.globl _PWMA_EGR
                                    322 	.globl _PWMA_SR2
                                    323 	.globl _PWMA_SR1
                                    324 	.globl _PWMA_IER
                                    325 	.globl _PWMA_ETR
                                    326 	.globl _PWMA_SMCR
                                    327 	.globl _PWMA_CR2
                                    328 	.globl _PWMA_CR1
                                    329 	.globl _PWMB_IOAUX
                                    330 	.globl _PWMB_PS
                                    331 	.globl _PWMB_ENO
                                    332 	.globl _PWMB_ETRPS
                                    333 	.globl _PWMA_IOAUX
                                    334 	.globl _PWMA_PS
                                    335 	.globl _PWMA_ENO
                                    336 	.globl _PWMA_ETRPS
                                    337 	.globl _RSTFLAG
                                    338 	.globl _SPFUNC
                                    339 	.globl _OPCON
                                    340 	.globl _ARCON
                                    341 	.globl _MD4
                                    342 	.globl _MD5
                                    343 	.globl _MD0
                                    344 	.globl _MD1
                                    345 	.globl _MD2
                                    346 	.globl _MD3
                                    347 	.globl _DMA_LCM_RXAL
                                    348 	.globl _DMA_LCM_RXAH
                                    349 	.globl _DMA_LCM_TXAL
                                    350 	.globl _DMA_LCM_TXAH
                                    351 	.globl _DMA_LCM_DONE
                                    352 	.globl _DMA_LCM_AMT
                                    353 	.globl _DMA_LCM_STA
                                    354 	.globl _DMA_LCM_CR
                                    355 	.globl _DMA_LCM_CFG
                                    356 	.globl _LCMIDDAT
                                    357 	.globl _LCMIDDATH
                                    358 	.globl _LCMIDDATL
                                    359 	.globl _LCMSTA
                                    360 	.globl _LCMCR
                                    361 	.globl _LCMCFG2
                                    362 	.globl _LCMCFG
                                    363 	.globl _I2CMSAUX
                                    364 	.globl _I2CRXD
                                    365 	.globl _I2CTXD
                                    366 	.globl _I2CSLADR
                                    367 	.globl _I2CSLST
                                    368 	.globl _I2CSLCR
                                    369 	.globl _I2CMSST
                                    370 	.globl _I2CMSCR
                                    371 	.globl _I2CCFG
                                    372 	.globl _PINIPH
                                    373 	.globl _PINIPL
                                    374 	.globl _P5IE
                                    375 	.globl _P5DR
                                    376 	.globl _P5SR
                                    377 	.globl _P5NCS
                                    378 	.globl _P5PU
                                    379 	.globl _P5WKUE
                                    380 	.globl _P5IM1
                                    381 	.globl _P5IM0
                                    382 	.globl _P5INTF
                                    383 	.globl _P5INTE
                                    384 	.globl _P3IE
                                    385 	.globl _P3DR
                                    386 	.globl _P3SR
                                    387 	.globl _P3NCS
                                    388 	.globl _P3PU
                                    389 	.globl _P3WKUE
                                    390 	.globl _P3IM1
                                    391 	.globl _P3IM0
                                    392 	.globl _P3INTF
                                    393 	.globl _P3INTE
                                    394 	.globl _P2IE
                                    395 	.globl _P2DR
                                    396 	.globl _P2SR
                                    397 	.globl _P2NCS
                                    398 	.globl _P2PU
                                    399 	.globl _P2WKUE
                                    400 	.globl _P2IM1
                                    401 	.globl _P2IM0
                                    402 	.globl _P2INTF
                                    403 	.globl _P2INTE
                                    404 	.globl _P1IE
                                    405 	.globl _P1DR
                                    406 	.globl _P1SR
                                    407 	.globl _P1NCS
                                    408 	.globl _P1PU
                                    409 	.globl _P1WKUE
                                    410 	.globl _P1IM1
                                    411 	.globl _P1IM0
                                    412 	.globl _P1INTF
                                    413 	.globl _P1INTE
                                    414 	.globl _DMA_M2M_RXAL
                                    415 	.globl _DMA_M2M_RXAH
                                    416 	.globl _DMA_M2M_TXAL
                                    417 	.globl _DMA_M2M_TXAH
                                    418 	.globl _DMA_M2M_DONE
                                    419 	.globl _DMA_M2M_AMT
                                    420 	.globl _DMA_M2M_STA
                                    421 	.globl _DMA_M2M_CR
                                    422 	.globl _DMA_M2M_CFG
                                    423 	.globl _CMPEXCFG
                                    424 	.globl _DMA_ADC_CHSW1
                                    425 	.globl _DMA_ADC_CHSW0
                                    426 	.globl _DMA_ADC_CFG2
                                    427 	.globl _DMA_ADC_RXAL
                                    428 	.globl _DMA_ADC_RXAH
                                    429 	.globl _DMA_ADC_STA
                                    430 	.globl _DMA_ADC_CR
                                    431 	.globl _DMA_ADC_CFG
                                    432 	.globl _ADCEXCFG
                                    433 	.globl _ADCTIM
                                    434 ;--------------------------------------------------------
                                    435 ; special function registers
                                    436 ;--------------------------------------------------------
                                    437 	.area RSEG    (ABS,DATA)
      000000                        438 	.org 0x0000
                           0000BC   439 _ADC_CONTR	=	0x00bc
                           0000BD   440 _ADC_RESH	=	0x00bd
                           0000BE   441 _ADC_RESL	=	0x00be
                           00BDBE   442 _ADC_RES	=	0xbdbe
                           0000DE   443 _ADCCFG	=	0x00de
                           0000FA   444 _DMA_ADC_AMT	=	0x00fa
                           0000E6   445 _CMPCR1	=	0x00e6
                           0000E7   446 _CMPCR2	=	0x00e7
                           000082   447 _DPL	=	0x0082
                           000083   448 _DPH	=	0x0083
                           008382   449 _DP	=	0x8382
                           0000E3   450 _DPS	=	0x00e3
                           0000E4   451 _DPL1	=	0x00e4
                           0000E5   452 _DPH1	=	0x00e5
                           0000AE   453 _TA	=	0x00ae
                           000090   454 _P1	=	0x0090
                           000091   455 _P1M1	=	0x0091
                           000092   456 _P1M0	=	0x0092
                           0000A0   457 _P2	=	0x00a0
                           000095   458 _P2M1	=	0x0095
                           000096   459 _P2M0	=	0x0096
                           0000B0   460 _P3	=	0x00b0
                           0000B1   461 _P3M1	=	0x00b1
                           0000B2   462 _P3M0	=	0x00b2
                           0000C8   463 _P5	=	0x00c8
                           0000C9   464 _P5M1	=	0x00c9
                           0000CA   465 _P5M0	=	0x00ca
                           0000C2   466 _IAP_DATA	=	0x00c2
                           0000C3   467 _IAP_ADDRH	=	0x00c3
                           0000C4   468 _IAP_ADDRL	=	0x00c4
                           00C3C4   469 _IAP_ADDR	=	0xc3c4
                           0000C5   470 _IAP_CMD	=	0x00c5
                           0000C6   471 _IAP_TRIG	=	0x00c6
                           0000C7   472 _IAP_CONTR	=	0x00c7
                           0000F5   473 _IAP_TPS	=	0x00f5
                           00008F   474 _INT_CLKO	=	0x008f
                           0000A8   475 _IE1	=	0x00a8
                           0000B8   476 _IP1L	=	0x00b8
                           0000B7   477 _IP1H	=	0x00b7
                           0000AF   478 _IE2	=	0x00af
                           0000B5   479 _IP2L	=	0x00b5
                           0000B6   480 _IP2H	=	0x00b6
                           0000DF   481 _IP3L	=	0x00df
                           0000EE   482 _IP3H	=	0x00ee
                           000081   483 _SP	=	0x0081
                           0000D0   484 _PSW	=	0x00d0
                           0000E0   485 _ACC	=	0x00e0
                           0000F0   486 _B	=	0x00f0
                           000087   487 _PCON	=	0x0087
                           0000FF   488 _RSTCFG	=	0x00ff
                           0000A2   489 _P_SW1	=	0x00a2
                           0000BA   490 _P_SW2	=	0x00ba
                           0000A1   491 _BUS_SPEED	=	0x00a1
                           0000AA   492 _WKTCL	=	0x00aa
                           0000AB   493 _WKTCH	=	0x00ab
                           00ABAA   494 _WKTC	=	0xabaa
                           0000CD   495 _SPSTAT	=	0x00cd
                           0000CE   496 _SPCTL	=	0x00ce
                           0000CF   497 _SPDAT	=	0x00cf
                           00009D   498 _IRCBAND	=	0x009d
                           00009E   499 _LIRTRIM	=	0x009e
                           00009F   500 _IRTRIM	=	0x009f
                           000088   501 _TCON	=	0x0088
                           000089   502 _TMOD	=	0x0089
                           00008A   503 _T0L	=	0x008a
                           00008C   504 _T0H	=	0x008c
                           008C8A   505 _T0	=	0x8c8a
                           00008B   506 _T1L	=	0x008b
                           00008D   507 _T1H	=	0x008d
                           008D8B   508 _T1	=	0x8d8b
                           0000D7   509 _T2L	=	0x00d7
                           0000D6   510 _T2H	=	0x00d6
                           00D6D7   511 _T2	=	0xd6d7
                           00008E   512 _AUXR	=	0x008e
                           0000C1   513 _WDT_CONTR	=	0x00c1
                           0000D1   514 _T4T3M	=	0x00d1
                           0000D2   515 _T4H	=	0x00d2
                           0000D3   516 _T4L	=	0x00d3
                           00D2D3   517 _T4	=	0xd2d3
                           0000D4   518 _T3H	=	0x00d4
                           0000D5   519 _T3L	=	0x00d5
                           00D4D5   520 _T3	=	0xd4d5
                           0000EF   521 _AUXINTIF	=	0x00ef
                           0000A9   522 _SADDR	=	0x00a9
                           0000B9   523 _SADEN	=	0x00b9
                           000098   524 _S1CON	=	0x0098
                           000099   525 _S1BUF	=	0x0099
                           00009A   526 _S2CON	=	0x009a
                           00009B   527 _S2BUF	=	0x009b
                           0000AC   528 _S3CON	=	0x00ac
                           0000AD   529 _S3BUF	=	0x00ad
                           000084   530 _S4CON	=	0x0084
                           000085   531 _S4BUF	=	0x0085
                           0000DC   532 _USBCLK	=	0x00dc
                           0000EC   533 _USBDAT	=	0x00ec
                           0000F4   534 _USBCON	=	0x00f4
                           0000FC   535 _USBADR	=	0x00fc
                                    536 ;--------------------------------------------------------
                                    537 ; special function bits
                                    538 ;--------------------------------------------------------
                                    539 	.area RSEG    (ABS,DATA)
      000000                        540 	.org 0x0000
                           000090   541 _P1_0	=	0x0090
                           000091   542 _P1_1	=	0x0091
                           000092   543 _P1_2	=	0x0092
                           000093   544 _P1_3	=	0x0093
                           000094   545 _P1_4	=	0x0094
                           000095   546 _P1_5	=	0x0095
                           000096   547 _P1_6	=	0x0096
                           000097   548 _P1_7	=	0x0097
                           0000A0   549 _P2_0	=	0x00a0
                           0000A1   550 _P2_1	=	0x00a1
                           0000A2   551 _P2_2	=	0x00a2
                           0000A3   552 _P2_3	=	0x00a3
                           0000A4   553 _P2_4	=	0x00a4
                           0000A5   554 _P2_5	=	0x00a5
                           0000A6   555 _P2_6	=	0x00a6
                           0000A7   556 _P2_7	=	0x00a7
                           0000B0   557 _P3_0	=	0x00b0
                           0000B1   558 _P3_1	=	0x00b1
                           0000B2   559 _P3_2	=	0x00b2
                           0000B3   560 _P3_3	=	0x00b3
                           0000B4   561 _P3_4	=	0x00b4
                           0000B5   562 _P3_5	=	0x00b5
                           0000B6   563 _P3_6	=	0x00b6
                           0000B7   564 _P3_7	=	0x00b7
                           0000C8   565 _P5_0	=	0x00c8
                           0000C9   566 _P5_1	=	0x00c9
                           0000CA   567 _P5_2	=	0x00ca
                           0000CB   568 _P5_3	=	0x00cb
                           0000CC   569 _P5_4	=	0x00cc
                           0000CD   570 _P5_5	=	0x00cd
                           000088   571 _INT0TR	=	0x0088
                           00008A   572 _INT1TR	=	0x008a
                           0000A8   573 _INT0IE	=	0x00a8
                           0000AA   574 _INT1IE	=	0x00aa
                           0000AF   575 _EA	=	0x00af
                           0000D0   576 _P	=	0x00d0
                           0000D1   577 _F1	=	0x00d1
                           0000D2   578 _OV	=	0x00d2
                           0000D3   579 _RS0	=	0x00d3
                           0000D4   580 _RS1	=	0x00d4
                           0000D5   581 _F0	=	0x00d5
                           0000D6   582 _AC	=	0x00d6
                           0000D7   583 _CY	=	0x00d7
                           00008C   584 _T0RUN	=	0x008c
                           00008E   585 _T1RUN	=	0x008e
                           0000A9   586 _T0IE	=	0x00a9
                           0000AB   587 _T1IE	=	0x00ab
                           00009F   588 _S1SM0_FE	=	0x009f
                                    589 ;--------------------------------------------------------
                                    590 ; overlayable register banks
                                    591 ;--------------------------------------------------------
                                    592 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        593 	.ds 8
                                    594 ;--------------------------------------------------------
                                    595 ; internal ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area DSEG    (DATA)
                                    598 ;--------------------------------------------------------
                                    599 ; overlayable items in internal ram
                                    600 ;--------------------------------------------------------
                                    601 ;--------------------------------------------------------
                                    602 ; Stack segment in internal ram
                                    603 ;--------------------------------------------------------
                                    604 	.area SSEG
      00006A                        605 __start__stack:
      00006A                        606 	.ds	1
                                    607 
                                    608 ;--------------------------------------------------------
                                    609 ; indirectly addressable internal ram data
                                    610 ;--------------------------------------------------------
                                    611 	.area ISEG    (DATA)
                                    612 ;--------------------------------------------------------
                                    613 ; absolute internal ram data
                                    614 ;--------------------------------------------------------
                                    615 	.area IABS    (ABS,DATA)
                                    616 	.area IABS    (ABS,DATA)
                                    617 ;--------------------------------------------------------
                                    618 ; bit data
                                    619 ;--------------------------------------------------------
                                    620 	.area BSEG    (BIT)
                                    621 ;--------------------------------------------------------
                                    622 ; paged external ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area PSEG    (PAG,XDATA)
                                    625 ;--------------------------------------------------------
                                    626 ; uninitialized external ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area XSEG    (XDATA)
                           00FEA8   629 _ADCTIM	=	0xfea8
                           00FEAD   630 _ADCEXCFG	=	0xfead
                           00FA10   631 _DMA_ADC_CFG	=	0xfa10
                           00FA11   632 _DMA_ADC_CR	=	0xfa11
                           00FA12   633 _DMA_ADC_STA	=	0xfa12
                           00FA17   634 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   635 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   636 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   637 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   638 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   639 _CMPEXCFG	=	0xfeae
                           00FA00   640 _DMA_M2M_CFG	=	0xfa00
                           00FA01   641 _DMA_M2M_CR	=	0xfa01
                           00FA02   642 _DMA_M2M_STA	=	0xfa02
                           00FA03   643 _DMA_M2M_AMT	=	0xfa03
                           00FA04   644 _DMA_M2M_DONE	=	0xfa04
                           00FA05   645 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   646 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   647 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   648 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   649 _P1INTE	=	0xfd01
                           00FD11   650 _P1INTF	=	0xfd11
                           00FD21   651 _P1IM0	=	0xfd21
                           00FD31   652 _P1IM1	=	0xfd31
                           00FD41   653 _P1WKUE	=	0xfd41
                           00FE11   654 _P1PU	=	0xfe11
                           00FE19   655 _P1NCS	=	0xfe19
                           00FE21   656 _P1SR	=	0xfe21
                           00FE29   657 _P1DR	=	0xfe29
                           00FE31   658 _P1IE	=	0xfe31
                           00FD02   659 _P2INTE	=	0xfd02
                           00FD12   660 _P2INTF	=	0xfd12
                           00FD22   661 _P2IM0	=	0xfd22
                           00FD32   662 _P2IM1	=	0xfd32
                           00FD42   663 _P2WKUE	=	0xfd42
                           00FE12   664 _P2PU	=	0xfe12
                           00FE1A   665 _P2NCS	=	0xfe1a
                           00FE22   666 _P2SR	=	0xfe22
                           00FE2A   667 _P2DR	=	0xfe2a
                           00FE32   668 _P2IE	=	0xfe32
                           00FD03   669 _P3INTE	=	0xfd03
                           00FD13   670 _P3INTF	=	0xfd13
                           00FD23   671 _P3IM0	=	0xfd23
                           00FD33   672 _P3IM1	=	0xfd33
                           00FD43   673 _P3WKUE	=	0xfd43
                           00FE13   674 _P3PU	=	0xfe13
                           00FE1B   675 _P3NCS	=	0xfe1b
                           00FE23   676 _P3SR	=	0xfe23
                           00FE2B   677 _P3DR	=	0xfe2b
                           00FE33   678 _P3IE	=	0xfe33
                           00FD05   679 _P5INTE	=	0xfd05
                           00FD15   680 _P5INTF	=	0xfd15
                           00FD25   681 _P5IM0	=	0xfd25
                           00FD35   682 _P5IM1	=	0xfd35
                           00FD45   683 _P5WKUE	=	0xfd45
                           00FE15   684 _P5PU	=	0xfe15
                           00FE1D   685 _P5NCS	=	0xfe1d
                           00FE25   686 _P5SR	=	0xfe25
                           00FE2D   687 _P5DR	=	0xfe2d
                           00FE35   688 _P5IE	=	0xfe35
                           00FD60   689 _PINIPL	=	0xfd60
                           00FD61   690 _PINIPH	=	0xfd61
                           00FE80   691 _I2CCFG	=	0xfe80
                           00FE81   692 _I2CMSCR	=	0xfe81
                           00FE82   693 _I2CMSST	=	0xfe82
                           00FE83   694 _I2CSLCR	=	0xfe83
                           00FE84   695 _I2CSLST	=	0xfe84
                           00FE85   696 _I2CSLADR	=	0xfe85
                           00FE86   697 _I2CTXD	=	0xfe86
                           00FE87   698 _I2CRXD	=	0xfe87
                           00FE88   699 _I2CMSAUX	=	0xfe88
                           00FE50   700 _LCMCFG	=	0xfe50
                           00FE51   701 _LCMCFG2	=	0xfe51
                           00FE52   702 _LCMCR	=	0xfe52
                           00FE53   703 _LCMSTA	=	0xfe53
                           00FE54   704 _LCMIDDATL	=	0xfe54
                           00FE55   705 _LCMIDDATH	=	0xfe55
                           00FE54   706 _LCMIDDAT	=	0xfe54
                           00FA70   707 _DMA_LCM_CFG	=	0xfa70
                           00FA71   708 _DMA_LCM_CR	=	0xfa71
                           00FA72   709 _DMA_LCM_STA	=	0xfa72
                           00FA73   710 _DMA_LCM_AMT	=	0xfa73
                           00FA74   711 _DMA_LCM_DONE	=	0xfa74
                           00FA75   712 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   713 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   714 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   715 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   716 _MD3	=	0xfcf0
                           00FCF1   717 _MD2	=	0xfcf1
                           00FCF2   718 _MD1	=	0xfcf2
                           00FCF3   719 _MD0	=	0xfcf3
                           00FCF4   720 _MD5	=	0xfcf4
                           00FCF5   721 _MD4	=	0xfcf5
                           00FCF6   722 _ARCON	=	0xfcf6
                           00FCF7   723 _OPCON	=	0xfcf7
                           00FE08   724 _SPFUNC	=	0xfe08
                           00FE09   725 _RSTFLAG	=	0xfe09
                           00FEB0   726 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   727 _PWMA_ENO	=	0xfeb1
                           00FEB2   728 _PWMA_PS	=	0xfeb2
                           00FEB3   729 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   730 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   731 _PWMB_ENO	=	0xfeb5
                           00FEB6   732 _PWMB_PS	=	0xfeb6
                           00FEB7   733 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   734 _PWMA_CR1	=	0xfec0
                           00FEC1   735 _PWMA_CR2	=	0xfec1
                           00FEC2   736 _PWMA_SMCR	=	0xfec2
                           00FEC3   737 _PWMA_ETR	=	0xfec3
                           00FEC4   738 _PWMA_IER	=	0xfec4
                           00FEC5   739 _PWMA_SR1	=	0xfec5
                           00FEC6   740 _PWMA_SR2	=	0xfec6
                           00FEC7   741 _PWMA_EGR	=	0xfec7
                           00FEC8   742 _PWMA_CCMR1	=	0xfec8
                           00FEC9   743 _PWMA_CCMR2	=	0xfec9
                           00FECA   744 _PWMA_CCMR3	=	0xfeca
                           00FECB   745 _PWMA_CCMR4	=	0xfecb
                           00FECC   746 _PWMA_CCER1	=	0xfecc
                           00FECD   747 _PWMA_CCER2	=	0xfecd
                           00FECE   748 _PWMA_CNTRH	=	0xfece
                           00FECF   749 _PWMA_CNTRL	=	0xfecf
                           00FED0   750 _PWMA_PSCRH	=	0xfed0
                           00FED1   751 _PWMA_PSCRL	=	0xfed1
                           00FED2   752 _PWMA_ARRH	=	0xfed2
                           00FED3   753 _PWMA_ARRL	=	0xfed3
                           00FED4   754 _PWMA_RCR	=	0xfed4
                           00FED5   755 _PWMA_CCR1H	=	0xfed5
                           00FED6   756 _PWMA_CCR1L	=	0xfed6
                           00FED7   757 _PWMA_CCR2H	=	0xfed7
                           00FED8   758 _PWMA_CCR2L	=	0xfed8
                           00FED9   759 _PWMA_CCR3H	=	0xfed9
                           00FEDA   760 _PWMA_CCR3L	=	0xfeda
                           00FEDB   761 _PWMA_CCR4H	=	0xfedb
                           00FEDC   762 _PWMA_CCR4L	=	0xfedc
                           00FEDD   763 _PWMA_BKR	=	0xfedd
                           00FEDE   764 _PWMA_DTR	=	0xfede
                           00FEDF   765 _PWMA_OISR	=	0xfedf
                           00FEE0   766 _PWMB_CR1	=	0xfee0
                           00FEE1   767 _PWMB_CR2	=	0xfee1
                           00FEE2   768 _PWMB_SMCR	=	0xfee2
                           00FEE3   769 _PWMB_ETR	=	0xfee3
                           00FEE4   770 _PWMB_IER	=	0xfee4
                           00FEE5   771 _PWMB_SR1	=	0xfee5
                           00FEE6   772 _PWMB_SR2	=	0xfee6
                           00FEE7   773 _PWMB_EGR	=	0xfee7
                           00FEE8   774 _PWMB_CCMR1	=	0xfee8
                           00FEE9   775 _PWMB_CCMR2	=	0xfee9
                           00FEEA   776 _PWMB_CCMR3	=	0xfeea
                           00FEEB   777 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   778 _PWMB_CCER1	=	0xfeec
                           00FEED   779 _PWMB_CCER2	=	0xfeed
                           00FEEE   780 _PWMB_CNTRH	=	0xfeee
                           00FEEF   781 _PWMB_CNTRL	=	0xfeef
                           00FEF0   782 _PWMB_PSCRH	=	0xfef0
                           00FEF1   783 _PWMB_PSCRL	=	0xfef1
                           00FEF2   784 _PWMB_ARRH	=	0xfef2
                           00FEF3   785 _PWMB_ARRL	=	0xfef3
                           00FEF4   786 _PWMB_RCR	=	0xfef4
                           00FEF5   787 _PWMB_CCR1H	=	0xfef5
                           00FEF6   788 _PWMB_CCR1L	=	0xfef6
                           00FEF7   789 _PWMB_CCR2H	=	0xfef7
                           00FEF8   790 _PWMB_CCR2L	=	0xfef8
                           00FEF9   791 _PWMB_CCR3H	=	0xfef9
                           00FEFA   792 _PWMB_CCR3L	=	0xfefa
                           00FEFB   793 _PWMB_CCR4H	=	0xfefb
                           00FEFC   794 _PWMB_CCR4L	=	0xfefc
                           00FEFD   795 _PWMB_BKR	=	0xfefd
                           00FEFE   796 _PWMB_DTR	=	0xfefe
                           00FEFF   797 _PWMB_OISR	=	0xfeff
                           00FE60   798 _RTCCR	=	0xfe60
                           00FE61   799 _RTCCFG	=	0xfe61
                           00FE62   800 _RTCIEN	=	0xfe62
                           00FE63   801 _RTCIF	=	0xfe63
                           00FE64   802 _ALAHOUR	=	0xfe64
                           00FE65   803 _ALAMIN	=	0xfe65
                           00FE66   804 _ALASEC	=	0xfe66
                           00FE67   805 _ALASSEC	=	0xfe67
                           00FE68   806 _INIYEAR	=	0xfe68
                           00FE69   807 _INIMONTH	=	0xfe69
                           00FE6A   808 _INIDAY	=	0xfe6a
                           00FE6B   809 _INIHOUR	=	0xfe6b
                           00FE6C   810 _INIMIN	=	0xfe6c
                           00FE6D   811 _INISEC	=	0xfe6d
                           00FE6E   812 _INISSEC	=	0xfe6e
                           00FE70   813 _YEAR	=	0xfe70
                           00FE71   814 _MONTH	=	0xfe71
                           00FE72   815 _DAY	=	0xfe72
                           00FE73   816 _HOUR	=	0xfe73
                           00FE74   817 _MIN	=	0xfe74
                           00FE75   818 _SEC	=	0xfe75
                           00FE76   819 _SSEC	=	0xfe76
                           00FA20   820 _DMA_SPI_CFG	=	0xfa20
                           00FA21   821 _DMA_SPI_CR	=	0xfa21
                           00FA22   822 _DMA_SPI_STA	=	0xfa22
                           00FA23   823 _DMA_SPI_AMT	=	0xfa23
                           00FA24   824 _DMA_SPI_DONE	=	0xfa24
                           00FA25   825 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   826 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   827 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   828 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   829 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   830 _CLKDIV	=	0xfe01
                           00FE02   831 _HIRCCR	=	0xfe02
                           00FE03   832 _XOSCCR	=	0xfe03
                           00FE04   833 _IRC32KCR	=	0xfe04
                           00FE00   834 _CKSEL	=	0xfe00
                           00FE05   835 _MCLKOCR	=	0xfe05
                           00FE06   836 _IRCDB	=	0xfe06
                           00FE07   837 _IRC48MCR	=	0xfe07
                           00FEA2   838 _TM2PS	=	0xfea2
                           00FEA3   839 _TM3PS	=	0xfea3
                           00FEA4   840 _TM4PS	=	0xfea4
                           00FA30   841 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   842 _DMA_UR1T_CR	=	0xfa31
                           00FA32   843 _DMA_UR1T_STA	=	0xfa32
                           00FA33   844 _DMA_URTX_AMT	=	0xfa33
                           00FA34   845 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   846 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   847 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   848 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   849 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   850 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   851 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   852 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   853 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   854 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   855 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   856 _DMA_UR2T_CR	=	0xfa31
                           00FA32   857 _DMA_UR2T_STA	=	0xfa32
                           00FA33   858 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   859 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   860 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   861 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   862 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   863 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   864 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   865 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   866 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   867 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   868 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   869 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   870 _DMA_UR3T_CR	=	0xfa31
                           00FA32   871 _DMA_UR3T_STA	=	0xfa32
                           00FA33   872 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   873 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   874 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   875 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   876 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   877 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   878 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   879 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   880 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   881 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   882 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   883 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   884 _DMA_UR4T_CR	=	0xfa31
                           00FA32   885 _DMA_UR4T_STA	=	0xfa32
                           00FA33   886 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   887 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   888 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   889 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   890 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   891 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   892 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   893 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   894 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   895 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   896 _DMA_UR4R_TXAL	=	0xfa3e
      0000EB                        897 _uartGetCharacter_result_10000_75:
      0000EB                        898 	.ds 1
      0000EC                        899 _main_initial_char_10001_116:
      0000EC                        900 	.ds 1
      0000ED                        901 _main_result_50001_126:
      0000ED                        902 	.ds 1
      0000EE                        903 _main_received_payload_10002_118:
      0000EE                        904 	.ds 1
      0000EF                        905 _main_register_current_value_10002_118:
      0000EF                        906 	.ds 1
                                    907 ;--------------------------------------------------------
                                    908 ; absolute external ram data
                                    909 ;--------------------------------------------------------
                                    910 	.area XABS    (ABS,XDATA)
                                    911 ;--------------------------------------------------------
                                    912 ; initialized external ram data
                                    913 ;--------------------------------------------------------
                                    914 	.area XISEG   (XDATA)
                                    915 	.area HOME    (CODE)
                                    916 	.area GSINIT0 (CODE)
                                    917 	.area GSINIT1 (CODE)
                                    918 	.area GSINIT2 (CODE)
                                    919 	.area GSINIT3 (CODE)
                                    920 	.area GSINIT4 (CODE)
                                    921 	.area GSINIT5 (CODE)
                                    922 	.area GSINIT  (CODE)
                                    923 	.area GSFINAL (CODE)
                                    924 	.area CSEG    (CODE)
                                    925 ;--------------------------------------------------------
                                    926 ; interrupt vector
                                    927 ;--------------------------------------------------------
                                    928 	.area HOME    (CODE)
      000000                        929 __interrupt_vect:
      000000 02 00 51         [24]  930 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  931 	reti
      000004                        932 	.ds	7
      00000B 32               [24]  933 	reti
      00000C                        934 	.ds	7
      000013 32               [24]  935 	reti
      000014                        936 	.ds	7
      00001B 32               [24]  937 	reti
      00001C                        938 	.ds	7
      000023 02 09 20         [24]  939 	ljmp	_uart1_isr
      000026                        940 	.ds	5
      00002B 32               [24]  941 	reti
      00002C                        942 	.ds	7
      000033 32               [24]  943 	reti
      000034                        944 	.ds	7
      00003B 32               [24]  945 	reti
      00003C                        946 	.ds	7
      000043 32               [24]  947 	reti
      000044                        948 	.ds	7
      00004B 02 05 A2         [24]  949 	ljmp	_spi_isr
                                    950 ;--------------------------------------------------------
                                    951 ; global & static initialisations
                                    952 ;--------------------------------------------------------
                                    953 	.area HOME    (CODE)
                                    954 	.area GSINIT  (CODE)
                                    955 	.area GSFINAL (CODE)
                                    956 	.area GSINIT  (CODE)
                                    957 	.globl __sdcc_gsinit_startup
                                    958 	.globl __sdcc_program_startup
                                    959 	.globl __start__stack
                                    960 	.globl __mcs51_genXINIT
                                    961 	.globl __mcs51_genXRAMCLEAR
                                    962 	.globl __mcs51_genRAMCLEAR
                                    963 	.area GSFINAL (CODE)
      0000E5 02 00 4E         [24]  964 	ljmp	__sdcc_program_startup
                                    965 ;--------------------------------------------------------
                                    966 ; Home
                                    967 ;--------------------------------------------------------
                                    968 	.area HOME    (CODE)
                                    969 	.area HOME    (CODE)
      00004E                        970 __sdcc_program_startup:
      00004E 02 2B E0         [24]  971 	ljmp	_main
                                    972 ;	return from main will return to caller
                                    973 ;--------------------------------------------------------
                                    974 ; code
                                    975 ;--------------------------------------------------------
                                    976 	.area CSEG    (CODE)
                                    977 ;------------------------------------------------------------
                                    978 ;Allocation info for local variables in function 'main'
                                    979 ;------------------------------------------------------------
                                    980 ;initial_char              Allocated with name '_main_initial_char_10001_116'
                                    981 ;__300010007               Allocated with name '_main___300010007_30001_117'
                                    982 ;__300010008               Allocated with name '_main___300010008_30001_124'
                                    983 ;__300010009               Allocated with name '_main___300010009_30001_124'
                                    984 ;uart                      Allocated with name '_main_uart_40001_125'
                                    985 ;blocking                  Allocated with name '_main_blocking_40001_125'
                                    986 ;result                    Allocated with name '_main_result_50001_126'
                                    987 ;received_payload          Allocated with name '_main_received_payload_10002_118'
                                    988 ;register_current_value    Allocated with name '_main_register_current_value_10002_118'
                                    989 ;i                         Allocated with name '_main_i_20002_119'
                                    990 ;------------------------------------------------------------
                                    991 ;	main.c:3: void main(void) {
                                    992 ;	-----------------------------------------
                                    993 ;	 function main
                                    994 ;	-----------------------------------------
      002BE0                        995 _main:
                           000007   996 	ar7 = 0x07
                           000006   997 	ar6 = 0x06
                           000005   998 	ar5 = 0x05
                           000004   999 	ar4 = 0x04
                           000003  1000 	ar3 = 0x03
                           000002  1001 	ar2 = 0x02
                           000001  1002 	ar1 = 0x01
                           000000  1003 	ar0 = 0x00
                                   1004 ;	main.c:6: INIT_EXTENDED_SFR();
      002BE0 43 BA 80         [24] 1005 	orl	_P_SW2,#0x80
                                   1006 ;	main.c:7: EA = 1; // enable interrupts
                                   1007 ;	assignBit
      002BE3 D2 AF            [12] 1008 	setb	_EA
                                   1009 ;	main.c:11: CONSOLE_PIN_CONFIG
      002BE5 90 00 08         [24] 1010 	mov	dptr,#_serialConsoleInitialise_PARM_2
      002BE8 E4               [12] 1011 	clr	a
      002BE9 F0               [24] 1012 	movx	@dptr,a
      002BEA 74 C2            [12] 1013 	mov	a,#0xc2
      002BEC A3               [24] 1014 	inc	dptr
      002BED F0               [24] 1015 	movx	@dptr,a
      002BEE 74 01            [12] 1016 	mov	a,#0x01
      002BF0 A3               [24] 1017 	inc	dptr
      002BF1 F0               [24] 1018 	movx	@dptr,a
      002BF2 E4               [12] 1019 	clr	a
      002BF3 A3               [24] 1020 	inc	dptr
      002BF4 F0               [24] 1021 	movx	@dptr,a
      002BF5 90 00 0C         [24] 1022 	mov	dptr,#_serialConsoleInitialise_PARM_3
      002BF8 F0               [24] 1023 	movx	@dptr,a
      002BF9 75 82 01         [24] 1024 	mov	dpl, #0x01
      002BFC 12 01 58         [24] 1025 	lcall	_serialConsoleInitialise
                                   1026 ;	main.c:13: gpio_init();
      002BFF 12 1B D3         [24] 1027 	lcall	_gpio_init
                                   1028 ;	main.c:16: uint8_t initial_char = '0';
      002C02 90 00 EC         [24] 1029 	mov	dptr,#_main_initial_char_10001_116
      002C05 74 30            [12] 1030 	mov	a,#0x30
      002C07 F0               [24] 1031 	movx	@dptr,a
                                   1032 ;	main.c:17: while (initial_char != 's') {
      002C08                       1033 00101$:
      002C08 90 00 EC         [24] 1034 	mov	dptr,#_main_initial_char_10001_116
      002C0B E0               [24] 1035 	movx	a,@dptr
      002C0C FF               [12] 1036 	mov	r7,a
      002C0D BF 73 02         [24] 1037 	cjne	r7,#0x73,00154$
      002C10 80 2C            [24] 1038 	sjmp	00103$
      002C12                       1039 00154$:
                                   1040 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.h:186: uint8_t result = 0;
      002C12 90 00 ED         [24] 1041 	mov	dptr,#_main_result_50001_126
      002C15 E4               [12] 1042 	clr	a
      002C16 F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.h:187: uartGetBlock(uart, &result, 1, blocking);
      002C17 90 00 5C         [24] 1045 	mov	dptr,#_uartGetBlock_PARM_2
      002C1A 74 ED            [12] 1046 	mov	a,#_main_result_50001_126
      002C1C F0               [24] 1047 	movx	@dptr,a
      002C1D 74 00            [12] 1048 	mov	a,#(_main_result_50001_126 >> 8)
      002C1F A3               [24] 1049 	inc	dptr
      002C20 F0               [24] 1050 	movx	@dptr,a
      002C21 E4               [12] 1051 	clr	a
      002C22 A3               [24] 1052 	inc	dptr
      002C23 F0               [24] 1053 	movx	@dptr,a
      002C24 90 00 5F         [24] 1054 	mov	dptr,#_uartGetBlock_PARM_3
      002C27 04               [12] 1055 	inc	a
      002C28 F0               [24] 1056 	movx	@dptr,a
      002C29 90 00 60         [24] 1057 	mov	dptr,#_uartGetBlock_PARM_4
      002C2C E4               [12] 1058 	clr	a
      002C2D F0               [24] 1059 	movx	@dptr,a
      002C2E 75 82 01         [24] 1060 	mov	dpl, #0x01
      002C31 12 09 C3         [24] 1061 	lcall	_uartGetBlock
                                   1062 ;	/Users/ambadran717/.stc/uni-stc/hal/uart-hal.h:189: return result;
      002C34 90 00 ED         [24] 1063 	mov	dptr,#_main_result_50001_126
      002C37 E0               [24] 1064 	movx	a,@dptr
                                   1065 ;	main.c:18: initial_char = uartGetCharacter(CONSOLE_UART, NON_BLOCKING);
      002C38 90 00 EC         [24] 1066 	mov	dptr,#_main_initial_char_10001_116
      002C3B F0               [24] 1067 	movx	@dptr,a
      002C3C 80 CA            [24] 1068 	sjmp	00101$
      002C3E                       1069 00103$:
                                   1070 ;	main.c:20: uartSendBlock(CONSOLE_UART, "Starting..\n", 12, NON_BLOCKING);
      002C3E 90 00 62         [24] 1071 	mov	dptr,#_uartSendBlock_PARM_2
      002C41 74 7B            [12] 1072 	mov	a,#___str_0
      002C43 F0               [24] 1073 	movx	@dptr,a
      002C44 74 3C            [12] 1074 	mov	a,#(___str_0 >> 8)
      002C46 A3               [24] 1075 	inc	dptr
      002C47 F0               [24] 1076 	movx	@dptr,a
      002C48 74 80            [12] 1077 	mov	a,#0x80
      002C4A A3               [24] 1078 	inc	dptr
      002C4B F0               [24] 1079 	movx	@dptr,a
      002C4C 90 00 65         [24] 1080 	mov	dptr,#_uartSendBlock_PARM_3
      002C4F 74 0C            [12] 1081 	mov	a,#0x0c
      002C51 F0               [24] 1082 	movx	@dptr,a
      002C52 90 00 66         [24] 1083 	mov	dptr,#_uartSendBlock_PARM_4
      002C55 E4               [12] 1084 	clr	a
      002C56 F0               [24] 1085 	movx	@dptr,a
      002C57 75 82 01         [24] 1086 	mov	dpl, #0x01
      002C5A 12 0A 26         [24] 1087 	lcall	_uartSendBlock
                                   1088 ;	main.c:23: nrf24_device(RECEIVER, RESET);
      002C5D 90 00 C4         [24] 1089 	mov	dptr,#_nrf24_device_PARM_2
      002C60 74 01            [12] 1090 	mov	a,#0x01
      002C62 F0               [24] 1091 	movx	@dptr,a
      002C63 75 82 01         [24] 1092 	mov	dpl, #0x01
      002C66 12 22 45         [24] 1093 	lcall	_nrf24_device
                                   1094 ;	main.c:30: for (int i=0; i<24; i++) {
      002C69 7E 00            [12] 1095 	mov	r6,#0x00
      002C6B 7F 00            [12] 1096 	mov	r7,#0x00
      002C6D                       1097 00113$:
      002C6D C3               [12] 1098 	clr	c
      002C6E EE               [12] 1099 	mov	a,r6
      002C6F 94 18            [12] 1100 	subb	a,#0x18
      002C71 EF               [12] 1101 	mov	a,r7
      002C72 64 80            [12] 1102 	xrl	a,#0x80
      002C74 94 80            [12] 1103 	subb	a,#0x80
      002C76 50 5F            [24] 1104 	jnc	00109$
                                   1105 ;	main.c:31: nrf24_read(i, &register_current_value, 1, CLOSE);
      002C78 8E 05            [24] 1106 	mov	ar5,r6
      002C7A 90 00 DF         [24] 1107 	mov	dptr,#_nrf24_read_PARM_2
      002C7D 74 EF            [12] 1108 	mov	a,#_main_register_current_value_10002_118
      002C7F F0               [24] 1109 	movx	@dptr,a
      002C80 74 00            [12] 1110 	mov	a,#(_main_register_current_value_10002_118 >> 8)
      002C82 A3               [24] 1111 	inc	dptr
      002C83 F0               [24] 1112 	movx	@dptr,a
      002C84 E4               [12] 1113 	clr	a
      002C85 A3               [24] 1114 	inc	dptr
      002C86 F0               [24] 1115 	movx	@dptr,a
      002C87 90 00 E2         [24] 1116 	mov	dptr,#_nrf24_read_PARM_3
      002C8A 04               [12] 1117 	inc	a
      002C8B F0               [24] 1118 	movx	@dptr,a
      002C8C 90 00 E3         [24] 1119 	mov	dptr,#_nrf24_read_PARM_4
      002C8F E4               [12] 1120 	clr	a
      002C90 F0               [24] 1121 	movx	@dptr,a
      002C91 8D 82            [24] 1122 	mov	dpl, r5
      002C93 C0 07            [24] 1123 	push	ar7
      002C95 C0 06            [24] 1124 	push	ar6
      002C97 12 2B 0B         [24] 1125 	lcall	_nrf24_read
      002C9A D0 06            [24] 1126 	pop	ar6
      002C9C D0 07            [24] 1127 	pop	ar7
                                   1128 ;	main.c:32: printf("\rRegister %d: %d\n", i, register_current_value);
      002C9E 90 00 EF         [24] 1129 	mov	dptr,#_main_register_current_value_10002_118
      002CA1 E0               [24] 1130 	movx	a,@dptr
      002CA2 FD               [12] 1131 	mov	r5,a
      002CA3 7C 00            [12] 1132 	mov	r4,#0x00
      002CA5 C0 07            [24] 1133 	push	ar7
      002CA7 C0 06            [24] 1134 	push	ar6
      002CA9 C0 05            [24] 1135 	push	ar5
      002CAB C0 04            [24] 1136 	push	ar4
      002CAD C0 06            [24] 1137 	push	ar6
      002CAF C0 07            [24] 1138 	push	ar7
      002CB1 74 87            [12] 1139 	mov	a,#___str_1
      002CB3 C0 E0            [24] 1140 	push	acc
      002CB5 74 3C            [12] 1141 	mov	a,#(___str_1 >> 8)
      002CB7 C0 E0            [24] 1142 	push	acc
      002CB9 74 80            [12] 1143 	mov	a,#0x80
      002CBB C0 E0            [24] 1144 	push	acc
      002CBD 12 30 5E         [24] 1145 	lcall	_printf
      002CC0 E5 81            [12] 1146 	mov	a,sp
      002CC2 24 F9            [12] 1147 	add	a,#0xf9
      002CC4 F5 81            [12] 1148 	mov	sp,a
                                   1149 ;	main.c:33: delay1ms(250);
      002CC6 90 00 FA         [24] 1150 	mov	dptr,#0x00fa
      002CC9 12 00 E8         [24] 1151 	lcall	_delay1ms
      002CCC D0 06            [24] 1152 	pop	ar6
      002CCE D0 07            [24] 1153 	pop	ar7
                                   1154 ;	main.c:30: for (int i=0; i<24; i++) {
      002CD0 0E               [12] 1155 	inc	r6
                                   1156 ;	main.c:36: while (1) {
      002CD1 BE 00 99         [24] 1157 	cjne	r6,#0x00,00113$
      002CD4 0F               [12] 1158 	inc	r7
      002CD5 80 96            [24] 1159 	sjmp	00113$
      002CD7                       1160 00109$:
                                   1161 ;	main.c:42: if (nrf24_receive(&received_payload, 1) != RECEIVE_FIFO_EMPTY) {  
      002CD7 90 00 BF         [24] 1162 	mov	dptr,#_nrf24_receive_PARM_2
      002CDA 74 01            [12] 1163 	mov	a,#0x01
      002CDC F0               [24] 1164 	movx	@dptr,a
      002CDD 90 00 EE         [24] 1165 	mov	dptr,#_main_received_payload_10002_118
      002CE0 75 F0 00         [24] 1166 	mov	b, #0x00
      002CE3 12 1E E6         [24] 1167 	lcall	_nrf24_receive
      002CE6 AF 82            [24] 1168 	mov	r7, dpl
      002CE8 BF 02 EC         [24] 1169 	cjne	r7,#0x02,00109$
                                   1170 ;	main.c:48: printf("\rReceived Value: %d  ", received_payload);
      002CEB 90 00 EE         [24] 1171 	mov	dptr,#_main_received_payload_10002_118
      002CEE E0               [24] 1172 	movx	a,@dptr
      002CEF FF               [12] 1173 	mov	r7,a
      002CF0 7E 00            [12] 1174 	mov	r6,#0x00
      002CF2 C0 07            [24] 1175 	push	ar7
      002CF4 C0 06            [24] 1176 	push	ar6
      002CF6 74 99            [12] 1177 	mov	a,#___str_2
      002CF8 C0 E0            [24] 1178 	push	acc
      002CFA 74 3C            [12] 1179 	mov	a,#(___str_2 >> 8)
      002CFC C0 E0            [24] 1180 	push	acc
      002CFE 74 80            [12] 1181 	mov	a,#0x80
      002D00 C0 E0            [24] 1182 	push	acc
      002D02 12 30 5E         [24] 1183 	lcall	_printf
      002D05 E5 81            [12] 1184 	mov	a,sp
      002D07 24 FB            [12] 1185 	add	a,#0xfb
      002D09 F5 81            [12] 1186 	mov	sp,a
                                   1187 ;	main.c:54: }
      002D0B 80 CA            [24] 1188 	sjmp	00109$
                                   1189 	.area CSEG    (CODE)
                                   1190 	.area CONST   (CODE)
                                   1191 	.area CONST   (CODE)
      003C7B                       1192 ___str_0:
      003C7B 53 74 61 72 74 69 6E  1193 	.ascii "Starting.."
             67 2E 2E
      003C85 0A                    1194 	.db 0x0a
      003C86 00                    1195 	.db 0x00
                                   1196 	.area CSEG    (CODE)
                                   1197 	.area CONST   (CODE)
      003C87                       1198 ___str_1:
      003C87 0D                    1199 	.db 0x0d
      003C88 52 65 67 69 73 74 65  1200 	.ascii "Register %d: %d"
             72 20 25 64 3A 20 25
             64
      003C97 0A                    1201 	.db 0x0a
      003C98 00                    1202 	.db 0x00
                                   1203 	.area CSEG    (CODE)
                                   1204 	.area CONST   (CODE)
      003C99                       1205 ___str_2:
      003C99 0D                    1206 	.db 0x0d
      003C9A 52 65 63 65 69 76 65  1207 	.ascii "Received Value: %d  "
             64 20 56 61 6C 75 65
             3A 20 25 64 20 20
      003CAE 00                    1208 	.db 0x00
                                   1209 	.area CSEG    (CODE)
                                   1210 	.area XINIT   (CODE)
                                   1211 	.area CABS    (ABS,CODE)
