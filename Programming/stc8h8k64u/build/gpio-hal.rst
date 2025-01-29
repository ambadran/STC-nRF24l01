                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module gpio_hal
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
                                    156 	.globl _gpioWrite_PARM_2
                                    157 	.globl _gpio_pin_init_PARM_4
                                    158 	.globl _gpio_pin_init_PARM_3
                                    159 	.globl _gpio_pin_init_PARM_2
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
                                    418 	.globl _DMA_ADC_CHSW1
                                    419 	.globl _DMA_ADC_CHSW0
                                    420 	.globl _DMA_ADC_CFG2
                                    421 	.globl _DMA_ADC_RXAL
                                    422 	.globl _DMA_ADC_RXAH
                                    423 	.globl _DMA_ADC_STA
                                    424 	.globl _DMA_ADC_CR
                                    425 	.globl _DMA_ADC_CFG
                                    426 	.globl _ADCEXCFG
                                    427 	.globl _ADCTIM
                                    428 	.globl _gpio_pin_init
                                    429 	.globl _gpioConfigure
                                    430 	.globl _gpioRead
                                    431 	.globl _gpioWrite
                                    432 ;--------------------------------------------------------
                                    433 ; special function registers
                                    434 ;--------------------------------------------------------
                                    435 	.area RSEG    (ABS,DATA)
      000000                        436 	.org 0x0000
                           0000BC   437 _ADC_CONTR	=	0x00bc
                           0000BD   438 _ADC_RESH	=	0x00bd
                           0000BE   439 _ADC_RESL	=	0x00be
                           00BDBE   440 _ADC_RES	=	0xbdbe
                           0000DE   441 _ADCCFG	=	0x00de
                           0000FA   442 _DMA_ADC_AMT	=	0x00fa
                           0000E6   443 _CMPCR1	=	0x00e6
                           0000E7   444 _CMPCR2	=	0x00e7
                           000082   445 _DPL	=	0x0082
                           000083   446 _DPH	=	0x0083
                           008382   447 _DP	=	0x8382
                           0000E3   448 _DPS	=	0x00e3
                           0000E4   449 _DPL1	=	0x00e4
                           0000E5   450 _DPH1	=	0x00e5
                           0000AE   451 _TA	=	0x00ae
                           000090   452 _P1	=	0x0090
                           000091   453 _P1M1	=	0x0091
                           000092   454 _P1M0	=	0x0092
                           0000A0   455 _P2	=	0x00a0
                           000095   456 _P2M1	=	0x0095
                           000096   457 _P2M0	=	0x0096
                           0000B0   458 _P3	=	0x00b0
                           0000B1   459 _P3M1	=	0x00b1
                           0000B2   460 _P3M0	=	0x00b2
                           0000C8   461 _P5	=	0x00c8
                           0000C9   462 _P5M1	=	0x00c9
                           0000CA   463 _P5M0	=	0x00ca
                           0000C2   464 _IAP_DATA	=	0x00c2
                           0000C3   465 _IAP_ADDRH	=	0x00c3
                           0000C4   466 _IAP_ADDRL	=	0x00c4
                           00C3C4   467 _IAP_ADDR	=	0xc3c4
                           0000C5   468 _IAP_CMD	=	0x00c5
                           0000C6   469 _IAP_TRIG	=	0x00c6
                           0000C7   470 _IAP_CONTR	=	0x00c7
                           0000F5   471 _IAP_TPS	=	0x00f5
                           00008F   472 _INT_CLKO	=	0x008f
                           0000A8   473 _IE1	=	0x00a8
                           0000B8   474 _IP1L	=	0x00b8
                           0000B7   475 _IP1H	=	0x00b7
                           0000AF   476 _IE2	=	0x00af
                           0000B5   477 _IP2L	=	0x00b5
                           0000B6   478 _IP2H	=	0x00b6
                           0000DF   479 _IP3L	=	0x00df
                           0000EE   480 _IP3H	=	0x00ee
                           000081   481 _SP	=	0x0081
                           0000D0   482 _PSW	=	0x00d0
                           0000E0   483 _ACC	=	0x00e0
                           0000F0   484 _B	=	0x00f0
                           000087   485 _PCON	=	0x0087
                           0000FF   486 _RSTCFG	=	0x00ff
                           0000A2   487 _P_SW1	=	0x00a2
                           0000BA   488 _P_SW2	=	0x00ba
                           0000A1   489 _BUS_SPEED	=	0x00a1
                           0000AA   490 _WKTCL	=	0x00aa
                           0000AB   491 _WKTCH	=	0x00ab
                           00ABAA   492 _WKTC	=	0xabaa
                           0000CD   493 _SPSTAT	=	0x00cd
                           0000CE   494 _SPCTL	=	0x00ce
                           0000CF   495 _SPDAT	=	0x00cf
                           00009D   496 _IRCBAND	=	0x009d
                           00009E   497 _LIRTRIM	=	0x009e
                           00009F   498 _IRTRIM	=	0x009f
                           000088   499 _TCON	=	0x0088
                           000089   500 _TMOD	=	0x0089
                           00008A   501 _T0L	=	0x008a
                           00008C   502 _T0H	=	0x008c
                           008C8A   503 _T0	=	0x8c8a
                           00008B   504 _T1L	=	0x008b
                           00008D   505 _T1H	=	0x008d
                           008D8B   506 _T1	=	0x8d8b
                           0000D7   507 _T2L	=	0x00d7
                           0000D6   508 _T2H	=	0x00d6
                           00D6D7   509 _T2	=	0xd6d7
                           00008E   510 _AUXR	=	0x008e
                           0000C1   511 _WDT_CONTR	=	0x00c1
                           0000D1   512 _T4T3M	=	0x00d1
                           0000D2   513 _T4H	=	0x00d2
                           0000D3   514 _T4L	=	0x00d3
                           00D2D3   515 _T4	=	0xd2d3
                           0000D4   516 _T3H	=	0x00d4
                           0000D5   517 _T3L	=	0x00d5
                           00D4D5   518 _T3	=	0xd4d5
                           0000EF   519 _AUXINTIF	=	0x00ef
                           0000A9   520 _SADDR	=	0x00a9
                           0000B9   521 _SADEN	=	0x00b9
                           000098   522 _S1CON	=	0x0098
                           000099   523 _S1BUF	=	0x0099
                           00009A   524 _S2CON	=	0x009a
                           00009B   525 _S2BUF	=	0x009b
                           0000AC   526 _S3CON	=	0x00ac
                           0000AD   527 _S3BUF	=	0x00ad
                           000084   528 _S4CON	=	0x0084
                           000085   529 _S4BUF	=	0x0085
                           0000DC   530 _USBCLK	=	0x00dc
                           0000EC   531 _USBDAT	=	0x00ec
                           0000F4   532 _USBCON	=	0x00f4
                           0000FC   533 _USBADR	=	0x00fc
                                    534 ;--------------------------------------------------------
                                    535 ; special function bits
                                    536 ;--------------------------------------------------------
                                    537 	.area RSEG    (ABS,DATA)
      000000                        538 	.org 0x0000
                           000090   539 _P1_0	=	0x0090
                           000091   540 _P1_1	=	0x0091
                           000092   541 _P1_2	=	0x0092
                           000093   542 _P1_3	=	0x0093
                           000094   543 _P1_4	=	0x0094
                           000095   544 _P1_5	=	0x0095
                           000096   545 _P1_6	=	0x0096
                           000097   546 _P1_7	=	0x0097
                           0000A0   547 _P2_0	=	0x00a0
                           0000A1   548 _P2_1	=	0x00a1
                           0000A2   549 _P2_2	=	0x00a2
                           0000A3   550 _P2_3	=	0x00a3
                           0000A4   551 _P2_4	=	0x00a4
                           0000A5   552 _P2_5	=	0x00a5
                           0000A6   553 _P2_6	=	0x00a6
                           0000A7   554 _P2_7	=	0x00a7
                           0000B0   555 _P3_0	=	0x00b0
                           0000B1   556 _P3_1	=	0x00b1
                           0000B2   557 _P3_2	=	0x00b2
                           0000B3   558 _P3_3	=	0x00b3
                           0000B4   559 _P3_4	=	0x00b4
                           0000B5   560 _P3_5	=	0x00b5
                           0000B6   561 _P3_6	=	0x00b6
                           0000B7   562 _P3_7	=	0x00b7
                           0000C8   563 _P5_0	=	0x00c8
                           0000C9   564 _P5_1	=	0x00c9
                           0000CA   565 _P5_2	=	0x00ca
                           0000CB   566 _P5_3	=	0x00cb
                           0000CC   567 _P5_4	=	0x00cc
                           0000CD   568 _P5_5	=	0x00cd
                           000088   569 _INT0TR	=	0x0088
                           00008A   570 _INT1TR	=	0x008a
                           0000A8   571 _INT0IE	=	0x00a8
                           0000AA   572 _INT1IE	=	0x00aa
                           0000AF   573 _EA	=	0x00af
                           0000D0   574 _P	=	0x00d0
                           0000D1   575 _F1	=	0x00d1
                           0000D2   576 _OV	=	0x00d2
                           0000D3   577 _RS0	=	0x00d3
                           0000D4   578 _RS1	=	0x00d4
                           0000D5   579 _F0	=	0x00d5
                           0000D6   580 _AC	=	0x00d6
                           0000D7   581 _CY	=	0x00d7
                           00008C   582 _T0RUN	=	0x008c
                           00008E   583 _T1RUN	=	0x008e
                           0000A9   584 _T0IE	=	0x00a9
                           0000AB   585 _T1IE	=	0x00ab
                           00009F   586 _S1SM0_FE	=	0x009f
                                    587 ;--------------------------------------------------------
                                    588 ; overlayable register banks
                                    589 ;--------------------------------------------------------
                                    590 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        591 	.ds 8
                                    592 ;--------------------------------------------------------
                                    593 ; internal ram data
                                    594 ;--------------------------------------------------------
                                    595 	.area DSEG    (DATA)
      000012                        596 _gpioConfigure_sloc0_1_0:
      000012                        597 	.ds 3
      000015                        598 _gpioConfigure_sloc1_1_0:
      000015                        599 	.ds 3
      000018                        600 _gpioConfigure_sloc2_1_0:
      000018                        601 	.ds 3
      00001B                        602 _gpioConfigure_sloc3_1_0:
      00001B                        603 	.ds 1
      00001C                        604 _gpioConfigure_sloc4_1_0:
      00001C                        605 	.ds 3
                                    606 ;--------------------------------------------------------
                                    607 ; overlayable items in internal ram 
                                    608 ;--------------------------------------------------------
                                    609 ;--------------------------------------------------------
                                    610 ; indirectly addressable internal ram data
                                    611 ;--------------------------------------------------------
                                    612 	.area ISEG    (DATA)
                                    613 ;--------------------------------------------------------
                                    614 ; absolute internal ram data
                                    615 ;--------------------------------------------------------
                                    616 	.area IABS    (ABS,DATA)
                                    617 	.area IABS    (ABS,DATA)
                                    618 ;--------------------------------------------------------
                                    619 ; bit data
                                    620 ;--------------------------------------------------------
                                    621 	.area BSEG    (BIT)
                                    622 ;--------------------------------------------------------
                                    623 ; paged external ram data
                                    624 ;--------------------------------------------------------
                                    625 	.area PSEG    (PAG,XDATA)
                                    626 ;--------------------------------------------------------
                                    627 ; external ram data
                                    628 ;--------------------------------------------------------
                                    629 	.area XSEG    (XDATA)
                           00FEA8   630 _ADCTIM	=	0xfea8
                           00FEAD   631 _ADCEXCFG	=	0xfead
                           00FA10   632 _DMA_ADC_CFG	=	0xfa10
                           00FA11   633 _DMA_ADC_CR	=	0xfa11
                           00FA12   634 _DMA_ADC_STA	=	0xfa12
                           00FA17   635 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   636 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   637 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   638 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   639 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   640 _CMPEXCFG	=	0xfeae
                           00FA00   641 _DMA_M2M_CFG	=	0xfa00
                           00FA01   642 _DMA_M2M_CR	=	0xfa01
                           00FA02   643 _DMA_M2M_STA	=	0xfa02
                           00FA03   644 _DMA_M2M_AMT	=	0xfa03
                           00FA04   645 _DMA_M2M_DONE	=	0xfa04
                           00FA05   646 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   647 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   648 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   649 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   650 _P1INTE	=	0xfd01
                           00FD11   651 _P1INTF	=	0xfd11
                           00FD21   652 _P1IM0	=	0xfd21
                           00FD31   653 _P1IM1	=	0xfd31
                           00FD41   654 _P1WKUE	=	0xfd41
                           00FE11   655 _P1PU	=	0xfe11
                           00FE19   656 _P1NCS	=	0xfe19
                           00FE21   657 _P1SR	=	0xfe21
                           00FE29   658 _P1DR	=	0xfe29
                           00FE31   659 _P1IE	=	0xfe31
                           00FD02   660 _P2INTE	=	0xfd02
                           00FD12   661 _P2INTF	=	0xfd12
                           00FD22   662 _P2IM0	=	0xfd22
                           00FD32   663 _P2IM1	=	0xfd32
                           00FD42   664 _P2WKUE	=	0xfd42
                           00FE12   665 _P2PU	=	0xfe12
                           00FE1A   666 _P2NCS	=	0xfe1a
                           00FE22   667 _P2SR	=	0xfe22
                           00FE2A   668 _P2DR	=	0xfe2a
                           00FE32   669 _P2IE	=	0xfe32
                           00FD03   670 _P3INTE	=	0xfd03
                           00FD13   671 _P3INTF	=	0xfd13
                           00FD23   672 _P3IM0	=	0xfd23
                           00FD33   673 _P3IM1	=	0xfd33
                           00FD43   674 _P3WKUE	=	0xfd43
                           00FE13   675 _P3PU	=	0xfe13
                           00FE1B   676 _P3NCS	=	0xfe1b
                           00FE23   677 _P3SR	=	0xfe23
                           00FE2B   678 _P3DR	=	0xfe2b
                           00FE33   679 _P3IE	=	0xfe33
                           00FD05   680 _P5INTE	=	0xfd05
                           00FD15   681 _P5INTF	=	0xfd15
                           00FD25   682 _P5IM0	=	0xfd25
                           00FD35   683 _P5IM1	=	0xfd35
                           00FD45   684 _P5WKUE	=	0xfd45
                           00FE15   685 _P5PU	=	0xfe15
                           00FE1D   686 _P5NCS	=	0xfe1d
                           00FE25   687 _P5SR	=	0xfe25
                           00FE2D   688 _P5DR	=	0xfe2d
                           00FE35   689 _P5IE	=	0xfe35
                           00FD60   690 _PINIPL	=	0xfd60
                           00FD61   691 _PINIPH	=	0xfd61
                           00FE80   692 _I2CCFG	=	0xfe80
                           00FE81   693 _I2CMSCR	=	0xfe81
                           00FE82   694 _I2CMSST	=	0xfe82
                           00FE83   695 _I2CSLCR	=	0xfe83
                           00FE84   696 _I2CSLST	=	0xfe84
                           00FE85   697 _I2CSLADR	=	0xfe85
                           00FE86   698 _I2CTXD	=	0xfe86
                           00FE87   699 _I2CRXD	=	0xfe87
                           00FE88   700 _I2CMSAUX	=	0xfe88
                           00FE50   701 _LCMCFG	=	0xfe50
                           00FE51   702 _LCMCFG2	=	0xfe51
                           00FE52   703 _LCMCR	=	0xfe52
                           00FE53   704 _LCMSTA	=	0xfe53
                           00FE54   705 _LCMIDDATL	=	0xfe54
                           00FE55   706 _LCMIDDATH	=	0xfe55
                           00FE54   707 _LCMIDDAT	=	0xfe54
                           00FA70   708 _DMA_LCM_CFG	=	0xfa70
                           00FA71   709 _DMA_LCM_CR	=	0xfa71
                           00FA72   710 _DMA_LCM_STA	=	0xfa72
                           00FA73   711 _DMA_LCM_AMT	=	0xfa73
                           00FA74   712 _DMA_LCM_DONE	=	0xfa74
                           00FA75   713 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   714 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   715 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   716 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   717 _MD3	=	0xfcf0
                           00FCF1   718 _MD2	=	0xfcf1
                           00FCF2   719 _MD1	=	0xfcf2
                           00FCF3   720 _MD0	=	0xfcf3
                           00FCF4   721 _MD5	=	0xfcf4
                           00FCF5   722 _MD4	=	0xfcf5
                           00FCF6   723 _ARCON	=	0xfcf6
                           00FCF7   724 _OPCON	=	0xfcf7
                           00FE08   725 _SPFUNC	=	0xfe08
                           00FE09   726 _RSTFLAG	=	0xfe09
                           00FEB0   727 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   728 _PWMA_ENO	=	0xfeb1
                           00FEB2   729 _PWMA_PS	=	0xfeb2
                           00FEB3   730 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   731 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   732 _PWMB_ENO	=	0xfeb5
                           00FEB6   733 _PWMB_PS	=	0xfeb6
                           00FEB7   734 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   735 _PWMA_CR1	=	0xfec0
                           00FEC1   736 _PWMA_CR2	=	0xfec1
                           00FEC2   737 _PWMA_SMCR	=	0xfec2
                           00FEC3   738 _PWMA_ETR	=	0xfec3
                           00FEC4   739 _PWMA_IER	=	0xfec4
                           00FEC5   740 _PWMA_SR1	=	0xfec5
                           00FEC6   741 _PWMA_SR2	=	0xfec6
                           00FEC7   742 _PWMA_EGR	=	0xfec7
                           00FEC8   743 _PWMA_CCMR1	=	0xfec8
                           00FEC9   744 _PWMA_CCMR2	=	0xfec9
                           00FECA   745 _PWMA_CCMR3	=	0xfeca
                           00FECB   746 _PWMA_CCMR4	=	0xfecb
                           00FECC   747 _PWMA_CCER1	=	0xfecc
                           00FECD   748 _PWMA_CCER2	=	0xfecd
                           00FECE   749 _PWMA_CNTRH	=	0xfece
                           00FECF   750 _PWMA_CNTRL	=	0xfecf
                           00FED0   751 _PWMA_PSCRH	=	0xfed0
                           00FED1   752 _PWMA_PSCRL	=	0xfed1
                           00FED2   753 _PWMA_ARRH	=	0xfed2
                           00FED3   754 _PWMA_ARRL	=	0xfed3
                           00FED4   755 _PWMA_RCR	=	0xfed4
                           00FED5   756 _PWMA_CCR1H	=	0xfed5
                           00FED6   757 _PWMA_CCR1L	=	0xfed6
                           00FED7   758 _PWMA_CCR2H	=	0xfed7
                           00FED8   759 _PWMA_CCR2L	=	0xfed8
                           00FED9   760 _PWMA_CCR3H	=	0xfed9
                           00FEDA   761 _PWMA_CCR3L	=	0xfeda
                           00FEDB   762 _PWMA_CCR4H	=	0xfedb
                           00FEDC   763 _PWMA_CCR4L	=	0xfedc
                           00FEDD   764 _PWMA_BKR	=	0xfedd
                           00FEDE   765 _PWMA_DTR	=	0xfede
                           00FEDF   766 _PWMA_OISR	=	0xfedf
                           00FEE0   767 _PWMB_CR1	=	0xfee0
                           00FEE1   768 _PWMB_CR2	=	0xfee1
                           00FEE2   769 _PWMB_SMCR	=	0xfee2
                           00FEE3   770 _PWMB_ETR	=	0xfee3
                           00FEE4   771 _PWMB_IER	=	0xfee4
                           00FEE5   772 _PWMB_SR1	=	0xfee5
                           00FEE6   773 _PWMB_SR2	=	0xfee6
                           00FEE7   774 _PWMB_EGR	=	0xfee7
                           00FEE8   775 _PWMB_CCMR1	=	0xfee8
                           00FEE9   776 _PWMB_CCMR2	=	0xfee9
                           00FEEA   777 _PWMB_CCMR3	=	0xfeea
                           00FEEB   778 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   779 _PWMB_CCER1	=	0xfeec
                           00FEED   780 _PWMB_CCER2	=	0xfeed
                           00FEEE   781 _PWMB_CNTRH	=	0xfeee
                           00FEEF   782 _PWMB_CNTRL	=	0xfeef
                           00FEF0   783 _PWMB_PSCRH	=	0xfef0
                           00FEF1   784 _PWMB_PSCRL	=	0xfef1
                           00FEF2   785 _PWMB_ARRH	=	0xfef2
                           00FEF3   786 _PWMB_ARRL	=	0xfef3
                           00FEF4   787 _PWMB_RCR	=	0xfef4
                           00FEF5   788 _PWMB_CCR1H	=	0xfef5
                           00FEF6   789 _PWMB_CCR1L	=	0xfef6
                           00FEF7   790 _PWMB_CCR2H	=	0xfef7
                           00FEF8   791 _PWMB_CCR2L	=	0xfef8
                           00FEF9   792 _PWMB_CCR3H	=	0xfef9
                           00FEFA   793 _PWMB_CCR3L	=	0xfefa
                           00FEFB   794 _PWMB_CCR4H	=	0xfefb
                           00FEFC   795 _PWMB_CCR4L	=	0xfefc
                           00FEFD   796 _PWMB_BKR	=	0xfefd
                           00FEFE   797 _PWMB_DTR	=	0xfefe
                           00FEFF   798 _PWMB_OISR	=	0xfeff
                           00FE60   799 _RTCCR	=	0xfe60
                           00FE61   800 _RTCCFG	=	0xfe61
                           00FE62   801 _RTCIEN	=	0xfe62
                           00FE63   802 _RTCIF	=	0xfe63
                           00FE64   803 _ALAHOUR	=	0xfe64
                           00FE65   804 _ALAMIN	=	0xfe65
                           00FE66   805 _ALASEC	=	0xfe66
                           00FE67   806 _ALASSEC	=	0xfe67
                           00FE68   807 _INIYEAR	=	0xfe68
                           00FE69   808 _INIMONTH	=	0xfe69
                           00FE6A   809 _INIDAY	=	0xfe6a
                           00FE6B   810 _INIHOUR	=	0xfe6b
                           00FE6C   811 _INIMIN	=	0xfe6c
                           00FE6D   812 _INISEC	=	0xfe6d
                           00FE6E   813 _INISSEC	=	0xfe6e
                           00FE70   814 _YEAR	=	0xfe70
                           00FE71   815 _MONTH	=	0xfe71
                           00FE72   816 _DAY	=	0xfe72
                           00FE73   817 _HOUR	=	0xfe73
                           00FE74   818 _MIN	=	0xfe74
                           00FE75   819 _SEC	=	0xfe75
                           00FE76   820 _SSEC	=	0xfe76
                           00FA20   821 _DMA_SPI_CFG	=	0xfa20
                           00FA21   822 _DMA_SPI_CR	=	0xfa21
                           00FA22   823 _DMA_SPI_STA	=	0xfa22
                           00FA23   824 _DMA_SPI_AMT	=	0xfa23
                           00FA24   825 _DMA_SPI_DONE	=	0xfa24
                           00FA25   826 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   827 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   828 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   829 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   830 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   831 _CLKDIV	=	0xfe01
                           00FE02   832 _HIRCCR	=	0xfe02
                           00FE03   833 _XOSCCR	=	0xfe03
                           00FE04   834 _IRC32KCR	=	0xfe04
                           00FE00   835 _CKSEL	=	0xfe00
                           00FE05   836 _MCLKOCR	=	0xfe05
                           00FE06   837 _IRCDB	=	0xfe06
                           00FE07   838 _IRC48MCR	=	0xfe07
                           00FEA2   839 _TM2PS	=	0xfea2
                           00FEA3   840 _TM3PS	=	0xfea3
                           00FEA4   841 _TM4PS	=	0xfea4
                           00FA30   842 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   843 _DMA_UR1T_CR	=	0xfa31
                           00FA32   844 _DMA_UR1T_STA	=	0xfa32
                           00FA33   845 _DMA_URTX_AMT	=	0xfa33
                           00FA34   846 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   847 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   848 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   849 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   850 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   851 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   852 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   853 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   854 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   855 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   856 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   857 _DMA_UR2T_CR	=	0xfa31
                           00FA32   858 _DMA_UR2T_STA	=	0xfa32
                           00FA33   859 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   860 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   861 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   862 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   863 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   864 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   865 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   866 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   867 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   868 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   869 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   870 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   871 _DMA_UR3T_CR	=	0xfa31
                           00FA32   872 _DMA_UR3T_STA	=	0xfa32
                           00FA33   873 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   874 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   875 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   876 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   877 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   878 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   879 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   880 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   881 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   882 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   883 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   884 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   885 _DMA_UR4T_CR	=	0xfa31
                           00FA32   886 _DMA_UR4T_STA	=	0xfa32
                           00FA33   887 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   888 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   889 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   890 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   891 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   892 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   893 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   894 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   895 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   896 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   897 _DMA_UR4R_TXAL	=	0xfa3e
      000052                        898 _uartGetCharacter_result_65536_74:
      000052                        899 	.ds 1
      000053                        900 ___gpio_setBits_PARM_2:
      000053                        901 	.ds 1
      000054                        902 ___gpio_setBits_PARM_3:
      000054                        903 	.ds 3
      000057                        904 ___gpio_setBits_portValue_65536_113:
      000057                        905 	.ds 1
      000058                        906 ___isOutput_gpioConfig_65536_115:
      000058                        907 	.ds 3
      00005B                        908 ___isInput_gpioConfig_65536_117:
      00005B                        909 	.ds 3
      00005E                        910 _gpio_pin_init_PARM_2:
      00005E                        911 	.ds 1
      00005F                        912 _gpio_pin_init_PARM_3:
      00005F                        913 	.ds 1
      000060                        914 _gpio_pin_init_PARM_4:
      000060                        915 	.ds 1
      000061                        916 _gpio_pin_init_config_65536_119:
      000061                        917 	.ds 3
      000064                        918 _gpioConfigure_gpioConfig_65536_121:
      000064                        919 	.ds 3
      000067                        920 _gpioConfigure_mask_65536_122:
      000067                        921 	.ds 1
      000068                        922 _gpioConfigure_pm1_65537_125:
      000068                        923 	.ds 1
      000069                        924 _gpioConfigure_pm0_65537_125:
      000069                        925 	.ds 1
      00006A                        926 _gpioConfigure_pncs_65537_125:
      00006A                        927 	.ds 1
      00006B                        928 _gpioConfigure_ppu_65537_125:
      00006B                        929 	.ds 1
      00006C                        930 _gpioConfigure_pdr_65537_125:
      00006C                        931 	.ds 1
      00006D                        932 _gpioConfigure_psr_65537_125:
      00006D                        933 	.ds 1
      00006E                        934 _gpioConfigure_pie_65537_125:
      00006E                        935 	.ds 1
      00006F                        936 _gpioConfigure_pim1_65537_125:
      00006F                        937 	.ds 1
      000070                        938 _gpioConfigure_pim0_65537_125:
      000070                        939 	.ds 1
      000071                        940 _gpioConfigure_pintf_65537_125:
      000071                        941 	.ds 1
      000072                        942 _gpioConfigure_pinte_65537_125:
      000072                        943 	.ds 1
      000073                        944 _gpioConfigure_pwkue_65537_125:
      000073                        945 	.ds 1
      000074                        946 ___getPort_port_65536_130:
      000074                        947 	.ds 1
      000075                        948 ___getPort_value_65536_131:
      000075                        949 	.ds 1
      000076                        950 _gpioRead_gpioConfig_65536_133:
      000076                        951 	.ds 3
      000079                        952 _gpioWrite_PARM_2:
      000079                        953 	.ds 1
      00007A                        954 _gpioWrite_gpioConfig_65536_135:
      00007A                        955 	.ds 3
                                    956 ;--------------------------------------------------------
                                    957 ; absolute external ram data
                                    958 ;--------------------------------------------------------
                                    959 	.area XABS    (ABS,XDATA)
                                    960 ;--------------------------------------------------------
                                    961 ; external initialized ram data
                                    962 ;--------------------------------------------------------
                                    963 	.area XISEG   (XDATA)
                                    964 	.area HOME    (CODE)
                                    965 	.area GSINIT0 (CODE)
                                    966 	.area GSINIT1 (CODE)
                                    967 	.area GSINIT2 (CODE)
                                    968 	.area GSINIT3 (CODE)
                                    969 	.area GSINIT4 (CODE)
                                    970 	.area GSINIT5 (CODE)
                                    971 	.area GSINIT  (CODE)
                                    972 	.area GSFINAL (CODE)
                                    973 	.area CSEG    (CODE)
                                    974 ;--------------------------------------------------------
                                    975 ; global & static initialisations
                                    976 ;--------------------------------------------------------
                                    977 	.area HOME    (CODE)
                                    978 	.area GSINIT  (CODE)
                                    979 	.area GSFINAL (CODE)
                                    980 	.area GSINIT  (CODE)
                                    981 ;--------------------------------------------------------
                                    982 ; Home
                                    983 ;--------------------------------------------------------
                                    984 	.area HOME    (CODE)
                                    985 	.area HOME    (CODE)
                                    986 ;--------------------------------------------------------
                                    987 ; code
                                    988 ;--------------------------------------------------------
                                    989 	.area CSEG    (CODE)
                                    990 ;------------------------------------------------------------
                                    991 ;Allocation info for local variables in function '__gpio_setBits'
                                    992 ;------------------------------------------------------------
                                    993 ;cfgValue                  Allocated with name '___gpio_setBits_PARM_2'
                                    994 ;gpioConfig                Allocated with name '___gpio_setBits_PARM_3'
                                    995 ;portValue                 Allocated with name '___gpio_setBits_portValue_65536_113'
                                    996 ;------------------------------------------------------------
                                    997 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:39: static uint8_t __gpio_setBits(uint8_t portValue, uint8_t cfgValue, GpioConfig *gpioConfig) {
                                    998 ;	-----------------------------------------
                                    999 ;	 function __gpio_setBits
                                   1000 ;	-----------------------------------------
      000E63                       1001 ___gpio_setBits:
                           000007  1002 	ar7 = 0x07
                           000006  1003 	ar6 = 0x06
                           000005  1004 	ar5 = 0x05
                           000004  1005 	ar4 = 0x04
                           000003  1006 	ar3 = 0x03
                           000002  1007 	ar2 = 0x02
                           000001  1008 	ar1 = 0x01
                           000000  1009 	ar0 = 0x00
      000E63 E5 82            [12] 1010 	mov	a,dpl
      000E65 90 00 57         [24] 1011 	mov	dptr,#___gpio_setBits_portValue_65536_113
      000E68 F0               [24] 1012 	movx	@dptr,a
                                   1013 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:40: return cfgValue ? (portValue | gpioConfig->__setMask) : (portValue & gpioConfig->__clearMask);
      000E69 90 00 53         [24] 1014 	mov	dptr,#___gpio_setBits_PARM_2
      000E6C E0               [24] 1015 	movx	a,@dptr
      000E6D 60 24            [24] 1016 	jz	00103$
      000E6F 90 00 54         [24] 1017 	mov	dptr,#___gpio_setBits_PARM_3
      000E72 E0               [24] 1018 	movx	a,@dptr
      000E73 FD               [12] 1019 	mov	r5,a
      000E74 A3               [24] 1020 	inc	dptr
      000E75 E0               [24] 1021 	movx	a,@dptr
      000E76 FE               [12] 1022 	mov	r6,a
      000E77 A3               [24] 1023 	inc	dptr
      000E78 E0               [24] 1024 	movx	a,@dptr
      000E79 FF               [12] 1025 	mov	r7,a
      000E7A 74 0B            [12] 1026 	mov	a,#0x0b
      000E7C 2D               [12] 1027 	add	a,r5
      000E7D FD               [12] 1028 	mov	r5,a
      000E7E E4               [12] 1029 	clr	a
      000E7F 3E               [12] 1030 	addc	a,r6
      000E80 FE               [12] 1031 	mov	r6,a
      000E81 8D 82            [24] 1032 	mov	dpl,r5
      000E83 8E 83            [24] 1033 	mov	dph,r6
      000E85 8F F0            [24] 1034 	mov	b,r7
      000E87 12 3C 18         [24] 1035 	lcall	__gptrget
      000E8A FD               [12] 1036 	mov	r5,a
      000E8B 90 00 57         [24] 1037 	mov	dptr,#___gpio_setBits_portValue_65536_113
      000E8E E0               [24] 1038 	movx	a,@dptr
      000E8F 4D               [12] 1039 	orl	a,r5
      000E90 FF               [12] 1040 	mov	r7,a
      000E91 80 22            [24] 1041 	sjmp	00104$
      000E93                       1042 00103$:
      000E93 90 00 54         [24] 1043 	mov	dptr,#___gpio_setBits_PARM_3
      000E96 E0               [24] 1044 	movx	a,@dptr
      000E97 FC               [12] 1045 	mov	r4,a
      000E98 A3               [24] 1046 	inc	dptr
      000E99 E0               [24] 1047 	movx	a,@dptr
      000E9A FD               [12] 1048 	mov	r5,a
      000E9B A3               [24] 1049 	inc	dptr
      000E9C E0               [24] 1050 	movx	a,@dptr
      000E9D FE               [12] 1051 	mov	r6,a
      000E9E 74 0C            [12] 1052 	mov	a,#0x0c
      000EA0 2C               [12] 1053 	add	a,r4
      000EA1 FC               [12] 1054 	mov	r4,a
      000EA2 E4               [12] 1055 	clr	a
      000EA3 3D               [12] 1056 	addc	a,r5
      000EA4 FD               [12] 1057 	mov	r5,a
      000EA5 8C 82            [24] 1058 	mov	dpl,r4
      000EA7 8D 83            [24] 1059 	mov	dph,r5
      000EA9 8E F0            [24] 1060 	mov	b,r6
      000EAB 12 3C 18         [24] 1061 	lcall	__gptrget
      000EAE FC               [12] 1062 	mov	r4,a
      000EAF 90 00 57         [24] 1063 	mov	dptr,#___gpio_setBits_portValue_65536_113
      000EB2 E0               [24] 1064 	movx	a,@dptr
      000EB3 5C               [12] 1065 	anl	a,r4
      000EB4 FF               [12] 1066 	mov	r7,a
      000EB5                       1067 00104$:
      000EB5 8F 82            [24] 1068 	mov	dpl,r7
                                   1069 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:41: }
      000EB7 22               [24] 1070 	ret
                                   1071 ;------------------------------------------------------------
                                   1072 ;Allocation info for local variables in function '__isOutput'
                                   1073 ;------------------------------------------------------------
                                   1074 ;gpioConfig                Allocated with name '___isOutput_gpioConfig_65536_115'
                                   1075 ;------------------------------------------------------------
                                   1076 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:43: static uint8_t __isOutput(GpioConfig *gpioConfig) {
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function __isOutput
                                   1079 ;	-----------------------------------------
      000EB8                       1080 ___isOutput:
      000EB8 AF F0            [24] 1081 	mov	r7,b
      000EBA AE 83            [24] 1082 	mov	r6,dph
      000EBC E5 82            [12] 1083 	mov	a,dpl
      000EBE 90 00 58         [24] 1084 	mov	dptr,#___isOutput_gpioConfig_65536_115
      000EC1 F0               [24] 1085 	movx	@dptr,a
      000EC2 EE               [12] 1086 	mov	a,r6
      000EC3 A3               [24] 1087 	inc	dptr
      000EC4 F0               [24] 1088 	movx	@dptr,a
      000EC5 EF               [12] 1089 	mov	a,r7
      000EC6 A3               [24] 1090 	inc	dptr
      000EC7 F0               [24] 1091 	movx	@dptr,a
                                   1092 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:44: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_PUSH_PULL_MODE || gpioConfig->pinMode == GPIO_OPEN_DRAIN_MODE;
      000EC8 90 00 58         [24] 1093 	mov	dptr,#___isOutput_gpioConfig_65536_115
      000ECB E0               [24] 1094 	movx	a,@dptr
      000ECC FD               [12] 1095 	mov	r5,a
      000ECD A3               [24] 1096 	inc	dptr
      000ECE E0               [24] 1097 	movx	a,@dptr
      000ECF FE               [12] 1098 	mov	r6,a
      000ED0 A3               [24] 1099 	inc	dptr
      000ED1 E0               [24] 1100 	movx	a,@dptr
      000ED2 FF               [12] 1101 	mov	r7,a
      000ED3 74 03            [12] 1102 	mov	a,#0x03
      000ED5 2D               [12] 1103 	add	a,r5
      000ED6 FD               [12] 1104 	mov	r5,a
      000ED7 E4               [12] 1105 	clr	a
      000ED8 3E               [12] 1106 	addc	a,r6
      000ED9 FE               [12] 1107 	mov	r6,a
      000EDA 8D 82            [24] 1108 	mov	dpl,r5
      000EDC 8E 83            [24] 1109 	mov	dph,r6
      000EDE 8F F0            [24] 1110 	mov	b,r7
      000EE0 12 3C 18         [24] 1111 	lcall	__gptrget
      000EE3 FF               [12] 1112 	mov	r7,a
      000EE4 60 0E            [24] 1113 	jz	00104$
      000EE6 BF 01 02         [24] 1114 	cjne	r7,#0x01,00122$
      000EE9 80 09            [24] 1115 	sjmp	00104$
      000EEB                       1116 00122$:
      000EEB BF 03 02         [24] 1117 	cjne	r7,#0x03,00123$
      000EEE 80 04            [24] 1118 	sjmp	00104$
      000EF0                       1119 00123$:
      000EF0 7F 00            [12] 1120 	mov	r7,#0x00
      000EF2 80 02            [24] 1121 	sjmp	00105$
      000EF4                       1122 00104$:
      000EF4 7F 01            [12] 1123 	mov	r7,#0x01
      000EF6                       1124 00105$:
      000EF6 8F 82            [24] 1125 	mov	dpl,r7
                                   1126 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:45: }
      000EF8 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function '__isInput'
                                   1130 ;------------------------------------------------------------
                                   1131 ;gpioConfig                Allocated with name '___isInput_gpioConfig_65536_117'
                                   1132 ;------------------------------------------------------------
                                   1133 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:47: static uint8_t __isInput(GpioConfig *gpioConfig) {
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function __isInput
                                   1136 ;	-----------------------------------------
      000EF9                       1137 ___isInput:
      000EF9 AF F0            [24] 1138 	mov	r7,b
      000EFB AE 83            [24] 1139 	mov	r6,dph
      000EFD E5 82            [12] 1140 	mov	a,dpl
      000EFF 90 00 5B         [24] 1141 	mov	dptr,#___isInput_gpioConfig_65536_117
      000F02 F0               [24] 1142 	movx	@dptr,a
      000F03 EE               [12] 1143 	mov	a,r6
      000F04 A3               [24] 1144 	inc	dptr
      000F05 F0               [24] 1145 	movx	@dptr,a
      000F06 EF               [12] 1146 	mov	a,r7
      000F07 A3               [24] 1147 	inc	dptr
      000F08 F0               [24] 1148 	movx	@dptr,a
                                   1149 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:48: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_HIGH_IMPEDANCE_MODE;
      000F09 90 00 5B         [24] 1150 	mov	dptr,#___isInput_gpioConfig_65536_117
      000F0C E0               [24] 1151 	movx	a,@dptr
      000F0D FD               [12] 1152 	mov	r5,a
      000F0E A3               [24] 1153 	inc	dptr
      000F0F E0               [24] 1154 	movx	a,@dptr
      000F10 FE               [12] 1155 	mov	r6,a
      000F11 A3               [24] 1156 	inc	dptr
      000F12 E0               [24] 1157 	movx	a,@dptr
      000F13 FF               [12] 1158 	mov	r7,a
      000F14 74 03            [12] 1159 	mov	a,#0x03
      000F16 2D               [12] 1160 	add	a,r5
      000F17 FD               [12] 1161 	mov	r5,a
      000F18 E4               [12] 1162 	clr	a
      000F19 3E               [12] 1163 	addc	a,r6
      000F1A FE               [12] 1164 	mov	r6,a
      000F1B 8D 82            [24] 1165 	mov	dpl,r5
      000F1D 8E 83            [24] 1166 	mov	dph,r6
      000F1F 8F F0            [24] 1167 	mov	b,r7
      000F21 12 3C 18         [24] 1168 	lcall	__gptrget
      000F24 FF               [12] 1169 	mov	r7,a
      000F25 60 09            [24] 1170 	jz	00104$
      000F27 BF 02 02         [24] 1171 	cjne	r7,#0x02,00115$
      000F2A 80 04            [24] 1172 	sjmp	00104$
      000F2C                       1173 00115$:
      000F2C 7F 00            [12] 1174 	mov	r7,#0x00
      000F2E 80 02            [24] 1175 	sjmp	00105$
      000F30                       1176 00104$:
      000F30 7F 01            [12] 1177 	mov	r7,#0x01
      000F32                       1178 00105$:
      000F32 8F 82            [24] 1179 	mov	dpl,r7
                                   1180 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:49: }
      000F34 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'gpio_pin_init'
                                   1184 ;------------------------------------------------------------
                                   1185 ;gpioPort                  Allocated with name '_gpio_pin_init_PARM_2'
                                   1186 ;gpioPin                   Allocated with name '_gpio_pin_init_PARM_3'
                                   1187 ;gpioMode                  Allocated with name '_gpio_pin_init_PARM_4'
                                   1188 ;config                    Allocated with name '_gpio_pin_init_config_65536_119'
                                   1189 ;------------------------------------------------------------
                                   1190 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:51: void gpio_pin_init(GpioConfig *config, GpioPort gpioPort, GpioPin gpioPin, GpioPinMode gpioMode) {
                                   1191 ;	-----------------------------------------
                                   1192 ;	 function gpio_pin_init
                                   1193 ;	-----------------------------------------
      000F35                       1194 _gpio_pin_init:
      000F35 AF F0            [24] 1195 	mov	r7,b
      000F37 AE 83            [24] 1196 	mov	r6,dph
      000F39 E5 82            [12] 1197 	mov	a,dpl
      000F3B 90 00 61         [24] 1198 	mov	dptr,#_gpio_pin_init_config_65536_119
      000F3E F0               [24] 1199 	movx	@dptr,a
      000F3F EE               [12] 1200 	mov	a,r6
      000F40 A3               [24] 1201 	inc	dptr
      000F41 F0               [24] 1202 	movx	@dptr,a
      000F42 EF               [12] 1203 	mov	a,r7
      000F43 A3               [24] 1204 	inc	dptr
      000F44 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:53: config->port = gpioPort;
      000F45 90 00 61         [24] 1207 	mov	dptr,#_gpio_pin_init_config_65536_119
      000F48 E0               [24] 1208 	movx	a,@dptr
      000F49 FD               [12] 1209 	mov	r5,a
      000F4A A3               [24] 1210 	inc	dptr
      000F4B E0               [24] 1211 	movx	a,@dptr
      000F4C FE               [12] 1212 	mov	r6,a
      000F4D A3               [24] 1213 	inc	dptr
      000F4E E0               [24] 1214 	movx	a,@dptr
      000F4F FF               [12] 1215 	mov	r7,a
      000F50 90 00 5E         [24] 1216 	mov	dptr,#_gpio_pin_init_PARM_2
      000F53 E0               [24] 1217 	movx	a,@dptr
      000F54 8D 82            [24] 1218 	mov	dpl,r5
      000F56 8E 83            [24] 1219 	mov	dph,r6
      000F58 8F F0            [24] 1220 	mov	b,r7
      000F5A 12 31 6D         [24] 1221 	lcall	__gptrput
                                   1222 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:54: config->pin = gpioPin;
      000F5D 74 01            [12] 1223 	mov	a,#0x01
      000F5F 2D               [12] 1224 	add	a,r5
      000F60 FA               [12] 1225 	mov	r2,a
      000F61 E4               [12] 1226 	clr	a
      000F62 3E               [12] 1227 	addc	a,r6
      000F63 FB               [12] 1228 	mov	r3,a
      000F64 8F 04            [24] 1229 	mov	ar4,r7
      000F66 90 00 5F         [24] 1230 	mov	dptr,#_gpio_pin_init_PARM_3
      000F69 E0               [24] 1231 	movx	a,@dptr
      000F6A 8A 82            [24] 1232 	mov	dpl,r2
      000F6C 8B 83            [24] 1233 	mov	dph,r3
      000F6E 8C F0            [24] 1234 	mov	b,r4
      000F70 12 31 6D         [24] 1235 	lcall	__gptrput
                                   1236 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:55: config->pinMode = gpioMode;
      000F73 74 03            [12] 1237 	mov	a,#0x03
      000F75 2D               [12] 1238 	add	a,r5
      000F76 FA               [12] 1239 	mov	r2,a
      000F77 E4               [12] 1240 	clr	a
      000F78 3E               [12] 1241 	addc	a,r6
      000F79 FB               [12] 1242 	mov	r3,a
      000F7A 8F 04            [24] 1243 	mov	ar4,r7
      000F7C 90 00 60         [24] 1244 	mov	dptr,#_gpio_pin_init_PARM_4
      000F7F E0               [24] 1245 	movx	a,@dptr
      000F80 8A 82            [24] 1246 	mov	dpl,r2
      000F82 8B 83            [24] 1247 	mov	dph,r3
      000F84 8C F0            [24] 1248 	mov	b,r4
      000F86 12 31 6D         [24] 1249 	lcall	__gptrput
                                   1250 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:58: config->schmidtTrigger = DISABLE_SCHMIDT_TRIGGER;
      000F89 74 04            [12] 1251 	mov	a,#0x04
      000F8B 2D               [12] 1252 	add	a,r5
      000F8C FA               [12] 1253 	mov	r2,a
      000F8D E4               [12] 1254 	clr	a
      000F8E 3E               [12] 1255 	addc	a,r6
      000F8F FB               [12] 1256 	mov	r3,a
      000F90 8F 04            [24] 1257 	mov	ar4,r7
      000F92 8A 82            [24] 1258 	mov	dpl,r2
      000F94 8B 83            [24] 1259 	mov	dph,r3
      000F96 8C F0            [24] 1260 	mov	b,r4
      000F98 E4               [12] 1261 	clr	a
      000F99 12 31 6D         [24] 1262 	lcall	__gptrput
                                   1263 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:59: config->internalPullUp = DISABLE_INTERNAL_PULL_UP;
      000F9C 74 05            [12] 1264 	mov	a,#0x05
      000F9E 2D               [12] 1265 	add	a,r5
      000F9F FA               [12] 1266 	mov	r2,a
      000FA0 E4               [12] 1267 	clr	a
      000FA1 3E               [12] 1268 	addc	a,r6
      000FA2 FB               [12] 1269 	mov	r3,a
      000FA3 8F 04            [24] 1270 	mov	ar4,r7
      000FA5 8A 82            [24] 1271 	mov	dpl,r2
      000FA7 8B 83            [24] 1272 	mov	dph,r3
      000FA9 8C F0            [24] 1273 	mov	b,r4
      000FAB E4               [12] 1274 	clr	a
      000FAC 12 31 6D         [24] 1275 	lcall	__gptrput
                                   1276 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:63: config->speed = GPIO_SPEED_SLOWEST;
      000FAF 74 06            [12] 1277 	mov	a,#0x06
      000FB1 2D               [12] 1278 	add	a,r5
      000FB2 FA               [12] 1279 	mov	r2,a
      000FB3 E4               [12] 1280 	clr	a
      000FB4 3E               [12] 1281 	addc	a,r6
      000FB5 FB               [12] 1282 	mov	r3,a
      000FB6 8F 04            [24] 1283 	mov	ar4,r7
      000FB8 8A 82            [24] 1284 	mov	dpl,r2
      000FBA 8B 83            [24] 1285 	mov	dph,r3
      000FBC 8C F0            [24] 1286 	mov	b,r4
      000FBE 74 03            [12] 1287 	mov	a,#0x03
      000FC0 12 31 6D         [24] 1288 	lcall	__gptrput
                                   1289 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:64: config->digitalInput = ENABLE_GPIO_DIGITAL_INPUT;
      000FC3 74 07            [12] 1290 	mov	a,#0x07
      000FC5 2D               [12] 1291 	add	a,r5
      000FC6 FA               [12] 1292 	mov	r2,a
      000FC7 E4               [12] 1293 	clr	a
      000FC8 3E               [12] 1294 	addc	a,r6
      000FC9 FB               [12] 1295 	mov	r3,a
      000FCA 8F 04            [24] 1296 	mov	ar4,r7
      000FCC 8A 82            [24] 1297 	mov	dpl,r2
      000FCE 8B 83            [24] 1298 	mov	dph,r3
      000FD0 8C F0            [24] 1299 	mov	b,r4
      000FD2 74 01            [12] 1300 	mov	a,#0x01
      000FD4 12 31 6D         [24] 1301 	lcall	__gptrput
                                   1302 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:68: config->pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT;
      000FD7 74 08            [12] 1303 	mov	a,#0x08
      000FD9 2D               [12] 1304 	add	a,r5
      000FDA FA               [12] 1305 	mov	r2,a
      000FDB E4               [12] 1306 	clr	a
      000FDC 3E               [12] 1307 	addc	a,r6
      000FDD FB               [12] 1308 	mov	r3,a
      000FDE 8F 04            [24] 1309 	mov	ar4,r7
      000FE0 8A 82            [24] 1310 	mov	dpl,r2
      000FE2 8B 83            [24] 1311 	mov	dph,r3
      000FE4 8C F0            [24] 1312 	mov	b,r4
      000FE6 E4               [12] 1313 	clr	a
      000FE7 12 31 6D         [24] 1314 	lcall	__gptrput
                                   1315 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:69: config->interruptTrigger = GPIO_FALLING_EDGE;
      000FEA 74 09            [12] 1316 	mov	a,#0x09
      000FEC 2D               [12] 1317 	add	a,r5
      000FED FA               [12] 1318 	mov	r2,a
      000FEE E4               [12] 1319 	clr	a
      000FEF 3E               [12] 1320 	addc	a,r6
      000FF0 FB               [12] 1321 	mov	r3,a
      000FF1 8F 04            [24] 1322 	mov	ar4,r7
      000FF3 8A 82            [24] 1323 	mov	dpl,r2
      000FF5 8B 83            [24] 1324 	mov	dph,r3
      000FF7 8C F0            [24] 1325 	mov	b,r4
      000FF9 E4               [12] 1326 	clr	a
      000FFA 12 31 6D         [24] 1327 	lcall	__gptrput
                                   1328 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:70: config->wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP;
      000FFD 74 0A            [12] 1329 	mov	a,#0x0a
      000FFF 2D               [12] 1330 	add	a,r5
      001000 FD               [12] 1331 	mov	r5,a
      001001 E4               [12] 1332 	clr	a
      001002 3E               [12] 1333 	addc	a,r6
      001003 FE               [12] 1334 	mov	r6,a
      001004 8D 82            [24] 1335 	mov	dpl,r5
      001006 8E 83            [24] 1336 	mov	dph,r6
      001008 8F F0            [24] 1337 	mov	b,r7
      00100A E4               [12] 1338 	clr	a
                                   1339 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:73: return;
                                   1340 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:74: }
      00100B 02 31 6D         [24] 1341 	ljmp	__gptrput
                                   1342 ;------------------------------------------------------------
                                   1343 ;Allocation info for local variables in function 'gpioConfigure'
                                   1344 ;------------------------------------------------------------
                                   1345 ;sloc0                     Allocated with name '_gpioConfigure_sloc0_1_0'
                                   1346 ;sloc1                     Allocated with name '_gpioConfigure_sloc1_1_0'
                                   1347 ;sloc2                     Allocated with name '_gpioConfigure_sloc2_1_0'
                                   1348 ;sloc3                     Allocated with name '_gpioConfigure_sloc3_1_0'
                                   1349 ;sloc4                     Allocated with name '_gpioConfigure_sloc4_1_0'
                                   1350 ;gpioConfig                Allocated with name '_gpioConfigure_gpioConfig_65536_121'
                                   1351 ;mask                      Allocated with name '_gpioConfigure_mask_65536_122'
                                   1352 ;n                         Allocated with name '_gpioConfigure_n_131072_123'
                                   1353 ;pm1                       Allocated with name '_gpioConfigure_pm1_65537_125'
                                   1354 ;pm0                       Allocated with name '_gpioConfigure_pm0_65537_125'
                                   1355 ;pncs                      Allocated with name '_gpioConfigure_pncs_65537_125'
                                   1356 ;ppu                       Allocated with name '_gpioConfigure_ppu_65537_125'
                                   1357 ;pdr                       Allocated with name '_gpioConfigure_pdr_65537_125'
                                   1358 ;psr                       Allocated with name '_gpioConfigure_psr_65537_125'
                                   1359 ;pie                       Allocated with name '_gpioConfigure_pie_65537_125'
                                   1360 ;pim1                      Allocated with name '_gpioConfigure_pim1_65537_125'
                                   1361 ;pim0                      Allocated with name '_gpioConfigure_pim0_65537_125'
                                   1362 ;pintf                     Allocated with name '_gpioConfigure_pintf_65537_125'
                                   1363 ;pinte                     Allocated with name '_gpioConfigure_pinte_65537_125'
                                   1364 ;pwkue                     Allocated with name '_gpioConfigure_pwkue_65537_125'
                                   1365 ;------------------------------------------------------------
                                   1366 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:76: void gpioConfigure(GpioConfig *gpioConfig) {
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function gpioConfigure
                                   1369 ;	-----------------------------------------
      00100E                       1370 _gpioConfigure:
      00100E AF F0            [24] 1371 	mov	r7,b
      001010 AE 83            [24] 1372 	mov	r6,dph
      001012 E5 82            [12] 1373 	mov	a,dpl
      001014 90 00 64         [24] 1374 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      001017 F0               [24] 1375 	movx	@dptr,a
      001018 EE               [12] 1376 	mov	a,r6
      001019 A3               [24] 1377 	inc	dptr
      00101A F0               [24] 1378 	movx	@dptr,a
      00101B EF               [12] 1379 	mov	a,r7
      00101C A3               [24] 1380 	inc	dptr
      00101D F0               [24] 1381 	movx	@dptr,a
                                   1382 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:78: uint8_t mask = 0;
      00101E 90 00 67         [24] 1383 	mov	dptr,#_gpioConfigure_mask_65536_122
      001021 E4               [12] 1384 	clr	a
      001022 F0               [24] 1385 	movx	@dptr,a
                                   1386 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:80: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      001023 90 00 64         [24] 1387 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      001026 E0               [24] 1388 	movx	a,@dptr
      001027 FD               [12] 1389 	mov	r5,a
      001028 A3               [24] 1390 	inc	dptr
      001029 E0               [24] 1391 	movx	a,@dptr
      00102A FE               [12] 1392 	mov	r6,a
      00102B A3               [24] 1393 	inc	dptr
      00102C E0               [24] 1394 	movx	a,@dptr
      00102D FF               [12] 1395 	mov	r7,a
      00102E 74 02            [12] 1396 	mov	a,#0x02
      001030 2D               [12] 1397 	add	a,r5
      001031 FA               [12] 1398 	mov	r2,a
      001032 E4               [12] 1399 	clr	a
      001033 3E               [12] 1400 	addc	a,r6
      001034 FB               [12] 1401 	mov	r3,a
      001035 8F 04            [24] 1402 	mov	ar4,r7
      001037 8A 82            [24] 1403 	mov	dpl,r2
      001039 8B 83            [24] 1404 	mov	dph,r3
      00103B 8C F0            [24] 1405 	mov	b,r4
      00103D 12 3C 18         [24] 1406 	lcall	__gptrget
      001040 FC               [12] 1407 	mov	r4,a
      001041                       1408 00117$:
      001041 EC               [12] 1409 	mov	a,r4
      001042 60 10            [24] 1410 	jz	00101$
                                   1411 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:81: mask = mask << 1;
      001044 90 00 67         [24] 1412 	mov	dptr,#_gpioConfigure_mask_65536_122
      001047 E0               [24] 1413 	movx	a,@dptr
      001048 25 E0            [12] 1414 	add	a,acc
      00104A FB               [12] 1415 	mov	r3,a
      00104B F0               [24] 1416 	movx	@dptr,a
                                   1417 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:82: mask |= 1;
      00104C E0               [24] 1418 	movx	a,@dptr
      00104D 43 E0 01         [24] 1419 	orl	acc,#0x01
      001050 F0               [24] 1420 	movx	@dptr,a
                                   1421 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:80: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      001051 1C               [12] 1422 	dec	r4
      001052 80 ED            [24] 1423 	sjmp	00117$
      001054                       1424 00101$:
                                   1425 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:85: gpioConfig->__setMask = mask << gpioConfig->pin;
      001054 74 0B            [12] 1426 	mov	a,#0x0b
      001056 2D               [12] 1427 	add	a,r5
      001057 F5 12            [12] 1428 	mov	_gpioConfigure_sloc0_1_0,a
      001059 E4               [12] 1429 	clr	a
      00105A 3E               [12] 1430 	addc	a,r6
      00105B F5 13            [12] 1431 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      00105D 8F 14            [24] 1432 	mov	(_gpioConfigure_sloc0_1_0 + 2),r7
      00105F 74 01            [12] 1433 	mov	a,#0x01
      001061 2D               [12] 1434 	add	a,r5
      001062 F8               [12] 1435 	mov	r0,a
      001063 E4               [12] 1436 	clr	a
      001064 3E               [12] 1437 	addc	a,r6
      001065 F9               [12] 1438 	mov	r1,a
      001066 8F 04            [24] 1439 	mov	ar4,r7
      001068 88 82            [24] 1440 	mov	dpl,r0
      00106A 89 83            [24] 1441 	mov	dph,r1
      00106C 8C F0            [24] 1442 	mov	b,r4
      00106E 12 3C 18         [24] 1443 	lcall	__gptrget
      001071 F8               [12] 1444 	mov	r0,a
      001072 90 00 67         [24] 1445 	mov	dptr,#_gpioConfigure_mask_65536_122
      001075 E0               [24] 1446 	movx	a,@dptr
      001076 88 F0            [24] 1447 	mov	b,r0
      001078 05 F0            [12] 1448 	inc	b
      00107A 80 02            [24] 1449 	sjmp	00175$
      00107C                       1450 00173$:
      00107C 25 E0            [12] 1451 	add	a,acc
      00107E                       1452 00175$:
      00107E D5 F0 FB         [24] 1453 	djnz	b,00173$
      001081 F8               [12] 1454 	mov	r0,a
      001082 85 12 82         [24] 1455 	mov	dpl,_gpioConfigure_sloc0_1_0
      001085 85 13 83         [24] 1456 	mov	dph,(_gpioConfigure_sloc0_1_0 + 1)
      001088 85 14 F0         [24] 1457 	mov	b,(_gpioConfigure_sloc0_1_0 + 2)
      00108B 12 31 6D         [24] 1458 	lcall	__gptrput
                                   1459 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:86: gpioConfig->__clearMask = ~gpioConfig->__setMask;
      00108E 74 0C            [12] 1460 	mov	a,#0x0c
      001090 2D               [12] 1461 	add	a,r5
      001091 FA               [12] 1462 	mov	r2,a
      001092 E4               [12] 1463 	clr	a
      001093 3E               [12] 1464 	addc	a,r6
      001094 FB               [12] 1465 	mov	r3,a
      001095 8F 04            [24] 1466 	mov	ar4,r7
      001097 E8               [12] 1467 	mov	a,r0
      001098 F4               [12] 1468 	cpl	a
      001099 F8               [12] 1469 	mov	r0,a
      00109A 8A 82            [24] 1470 	mov	dpl,r2
      00109C 8B 83            [24] 1471 	mov	dph,r3
      00109E 8C F0            [24] 1472 	mov	b,r4
      0010A0 12 31 6D         [24] 1473 	lcall	__gptrput
                                   1474 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:88: uint8_t pm1 = 0;
      0010A3 90 00 68         [24] 1475 	mov	dptr,#_gpioConfigure_pm1_65537_125
      0010A6 E4               [12] 1476 	clr	a
      0010A7 F0               [24] 1477 	movx	@dptr,a
                                   1478 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:89: uint8_t pm0 = 0;
      0010A8 90 00 69         [24] 1479 	mov	dptr,#_gpioConfigure_pm0_65537_125
      0010AB F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:92: uint8_t pncs = 0;
      0010AC 90 00 6A         [24] 1482 	mov	dptr,#_gpioConfigure_pncs_65537_125
      0010AF F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:93: uint8_t ppu = 0;
      0010B0 90 00 6B         [24] 1485 	mov	dptr,#_gpioConfigure_ppu_65537_125
      0010B3 F0               [24] 1486 	movx	@dptr,a
                                   1487 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:97: uint8_t pdr = 0;
      0010B4 90 00 6C         [24] 1488 	mov	dptr,#_gpioConfigure_pdr_65537_125
      0010B7 F0               [24] 1489 	movx	@dptr,a
                                   1490 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:98: uint8_t psr = 0;
      0010B8 90 00 6D         [24] 1491 	mov	dptr,#_gpioConfigure_psr_65537_125
      0010BB F0               [24] 1492 	movx	@dptr,a
                                   1493 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:99: uint8_t pie = 0;
      0010BC 90 00 6E         [24] 1494 	mov	dptr,#_gpioConfigure_pie_65537_125
      0010BF F0               [24] 1495 	movx	@dptr,a
                                   1496 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:103: uint8_t pim1 = 0;
      0010C0 90 00 6F         [24] 1497 	mov	dptr,#_gpioConfigure_pim1_65537_125
      0010C3 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:104: uint8_t pim0 = 0;
      0010C4 90 00 70         [24] 1500 	mov	dptr,#_gpioConfigure_pim0_65537_125
      0010C7 F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:105: uint8_t pintf = 0;
      0010C8 90 00 71         [24] 1503 	mov	dptr,#_gpioConfigure_pintf_65537_125
      0010CB F0               [24] 1504 	movx	@dptr,a
                                   1505 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:106: uint8_t pinte = 0;
      0010CC 90 00 72         [24] 1506 	mov	dptr,#_gpioConfigure_pinte_65537_125
      0010CF F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:107: uint8_t pwkue = 0;
      0010D0 90 00 73         [24] 1509 	mov	dptr,#_gpioConfigure_pwkue_65537_125
      0010D3 F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:110: switch (gpioConfig->port) {
      0010D4 8D 82            [24] 1512 	mov	dpl,r5
      0010D6 8E 83            [24] 1513 	mov	dph,r6
      0010D8 8F F0            [24] 1514 	mov	b,r7
      0010DA 12 3C 18         [24] 1515 	lcall	__gptrget
      0010DD FF               [12] 1516 	mov	r7,a
      0010DE BF 01 02         [24] 1517 	cjne	r7,#0x01,00176$
      0010E1 80 14            [24] 1518 	sjmp	00102$
      0010E3                       1519 00176$:
      0010E3 BF 02 02         [24] 1520 	cjne	r7,#0x02,00177$
      0010E6 80 6E            [24] 1521 	sjmp	00103$
      0010E8                       1522 00177$:
      0010E8 BF 03 03         [24] 1523 	cjne	r7,#0x03,00178$
      0010EB 02 11 B5         [24] 1524 	ljmp	00104$
      0010EE                       1525 00178$:
      0010EE BF 05 03         [24] 1526 	cjne	r7,#0x05,00179$
      0010F1 02 12 13         [24] 1527 	ljmp	00105$
      0010F4                       1528 00179$:
      0010F4 02 12 6F         [24] 1529 	ljmp	00106$
                                   1530 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:142: case GPIO_PORT1:
      0010F7                       1531 00102$:
                                   1532 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:143: pm1 = P1M1;
      0010F7 90 00 68         [24] 1533 	mov	dptr,#_gpioConfigure_pm1_65537_125
      0010FA E5 91            [12] 1534 	mov	a,_P1M1
      0010FC F0               [24] 1535 	movx	@dptr,a
                                   1536 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:144: pm0 = P1M0;
      0010FD 90 00 69         [24] 1537 	mov	dptr,#_gpioConfigure_pm0_65537_125
      001100 E5 92            [12] 1538 	mov	a,_P1M0
      001102 F0               [24] 1539 	movx	@dptr,a
                                   1540 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:147: pncs = P1NCS;
      001103 90 FE 19         [24] 1541 	mov	dptr,#_P1NCS
      001106 E0               [24] 1542 	movx	a,@dptr
      001107 90 00 6A         [24] 1543 	mov	dptr,#_gpioConfigure_pncs_65537_125
      00110A F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:148: ppu = P1PU;
      00110B 90 FE 11         [24] 1546 	mov	dptr,#_P1PU
      00110E E0               [24] 1547 	movx	a,@dptr
      00110F 90 00 6B         [24] 1548 	mov	dptr,#_gpioConfigure_ppu_65537_125
      001112 F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:152: pdr = P1DR;
      001113 90 FE 29         [24] 1551 	mov	dptr,#_P1DR
      001116 E0               [24] 1552 	movx	a,@dptr
      001117 90 00 6C         [24] 1553 	mov	dptr,#_gpioConfigure_pdr_65537_125
      00111A F0               [24] 1554 	movx	@dptr,a
                                   1555 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:153: psr = P1SR;
      00111B 90 FE 21         [24] 1556 	mov	dptr,#_P1SR
      00111E E0               [24] 1557 	movx	a,@dptr
      00111F 90 00 6D         [24] 1558 	mov	dptr,#_gpioConfigure_psr_65537_125
      001122 F0               [24] 1559 	movx	@dptr,a
                                   1560 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:154: pie = P1IE;
      001123 90 FE 31         [24] 1561 	mov	dptr,#_P1IE
      001126 E0               [24] 1562 	movx	a,@dptr
      001127 90 00 6E         [24] 1563 	mov	dptr,#_gpioConfigure_pie_65537_125
      00112A F0               [24] 1564 	movx	@dptr,a
                                   1565 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:158: pim1 = P1IM1;
      00112B 90 FD 31         [24] 1566 	mov	dptr,#_P1IM1
      00112E E0               [24] 1567 	movx	a,@dptr
      00112F 90 00 6F         [24] 1568 	mov	dptr,#_gpioConfigure_pim1_65537_125
      001132 F0               [24] 1569 	movx	@dptr,a
                                   1570 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:159: pim0 = P1IM0;
      001133 90 FD 21         [24] 1571 	mov	dptr,#_P1IM0
      001136 E0               [24] 1572 	movx	a,@dptr
      001137 90 00 70         [24] 1573 	mov	dptr,#_gpioConfigure_pim0_65537_125
      00113A F0               [24] 1574 	movx	@dptr,a
                                   1575 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:160: pintf = P1INTF;
      00113B 90 FD 11         [24] 1576 	mov	dptr,#_P1INTF
      00113E E0               [24] 1577 	movx	a,@dptr
      00113F 90 00 71         [24] 1578 	mov	dptr,#_gpioConfigure_pintf_65537_125
      001142 F0               [24] 1579 	movx	@dptr,a
                                   1580 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:161: pinte = P1INTE;
      001143 90 FD 01         [24] 1581 	mov	dptr,#_P1INTE
      001146 E0               [24] 1582 	movx	a,@dptr
      001147 90 00 72         [24] 1583 	mov	dptr,#_gpioConfigure_pinte_65537_125
      00114A F0               [24] 1584 	movx	@dptr,a
                                   1585 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:162: pwkue = P1WKUE;
      00114B 90 FD 41         [24] 1586 	mov	dptr,#_P1WKUE
      00114E E0               [24] 1587 	movx	a,@dptr
      00114F 90 00 73         [24] 1588 	mov	dptr,#_gpioConfigure_pwkue_65537_125
      001152 F0               [24] 1589 	movx	@dptr,a
                                   1590 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:164: break;
      001153 02 12 6F         [24] 1591 	ljmp	00106$
                                   1592 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:170: case GPIO_PORT2:
      001156                       1593 00103$:
                                   1594 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:171: pm1 = P2M1;
      001156 90 00 68         [24] 1595 	mov	dptr,#_gpioConfigure_pm1_65537_125
      001159 E5 95            [12] 1596 	mov	a,_P2M1
      00115B F0               [24] 1597 	movx	@dptr,a
                                   1598 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:172: pm0 = P2M0;
      00115C 90 00 69         [24] 1599 	mov	dptr,#_gpioConfigure_pm0_65537_125
      00115F E5 96            [12] 1600 	mov	a,_P2M0
      001161 F0               [24] 1601 	movx	@dptr,a
                                   1602 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:175: pncs = P2NCS;
      001162 90 FE 1A         [24] 1603 	mov	dptr,#_P2NCS
      001165 E0               [24] 1604 	movx	a,@dptr
      001166 90 00 6A         [24] 1605 	mov	dptr,#_gpioConfigure_pncs_65537_125
      001169 F0               [24] 1606 	movx	@dptr,a
                                   1607 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:176: ppu = P2PU;
      00116A 90 FE 12         [24] 1608 	mov	dptr,#_P2PU
      00116D E0               [24] 1609 	movx	a,@dptr
      00116E 90 00 6B         [24] 1610 	mov	dptr,#_gpioConfigure_ppu_65537_125
      001171 F0               [24] 1611 	movx	@dptr,a
                                   1612 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:180: pdr = P2DR;
      001172 90 FE 2A         [24] 1613 	mov	dptr,#_P2DR
      001175 E0               [24] 1614 	movx	a,@dptr
      001176 90 00 6C         [24] 1615 	mov	dptr,#_gpioConfigure_pdr_65537_125
      001179 F0               [24] 1616 	movx	@dptr,a
                                   1617 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:181: psr = P2SR;
      00117A 90 FE 22         [24] 1618 	mov	dptr,#_P2SR
      00117D E0               [24] 1619 	movx	a,@dptr
      00117E 90 00 6D         [24] 1620 	mov	dptr,#_gpioConfigure_psr_65537_125
      001181 F0               [24] 1621 	movx	@dptr,a
                                   1622 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:182: pie = P2IE;
      001182 90 FE 32         [24] 1623 	mov	dptr,#_P2IE
      001185 E0               [24] 1624 	movx	a,@dptr
      001186 90 00 6E         [24] 1625 	mov	dptr,#_gpioConfigure_pie_65537_125
      001189 F0               [24] 1626 	movx	@dptr,a
                                   1627 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:186: pim1 = P2IM1;
      00118A 90 FD 32         [24] 1628 	mov	dptr,#_P2IM1
      00118D E0               [24] 1629 	movx	a,@dptr
      00118E 90 00 6F         [24] 1630 	mov	dptr,#_gpioConfigure_pim1_65537_125
      001191 F0               [24] 1631 	movx	@dptr,a
                                   1632 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:187: pim0 = P2IM0;
      001192 90 FD 22         [24] 1633 	mov	dptr,#_P2IM0
      001195 E0               [24] 1634 	movx	a,@dptr
      001196 90 00 70         [24] 1635 	mov	dptr,#_gpioConfigure_pim0_65537_125
      001199 F0               [24] 1636 	movx	@dptr,a
                                   1637 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:188: pintf = P2INTF;
      00119A 90 FD 12         [24] 1638 	mov	dptr,#_P2INTF
      00119D E0               [24] 1639 	movx	a,@dptr
      00119E 90 00 71         [24] 1640 	mov	dptr,#_gpioConfigure_pintf_65537_125
      0011A1 F0               [24] 1641 	movx	@dptr,a
                                   1642 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:189: pinte = P2INTE;
      0011A2 90 FD 02         [24] 1643 	mov	dptr,#_P2INTE
      0011A5 E0               [24] 1644 	movx	a,@dptr
      0011A6 90 00 72         [24] 1645 	mov	dptr,#_gpioConfigure_pinte_65537_125
      0011A9 F0               [24] 1646 	movx	@dptr,a
                                   1647 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:190: pwkue = P2WKUE;
      0011AA 90 FD 42         [24] 1648 	mov	dptr,#_P2WKUE
      0011AD E0               [24] 1649 	movx	a,@dptr
      0011AE 90 00 73         [24] 1650 	mov	dptr,#_gpioConfigure_pwkue_65537_125
      0011B1 F0               [24] 1651 	movx	@dptr,a
                                   1652 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:192: break;
      0011B2 02 12 6F         [24] 1653 	ljmp	00106$
                                   1654 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:197: case GPIO_PORT3:
      0011B5                       1655 00104$:
                                   1656 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:198: pm1 = P3M1;
      0011B5 90 00 68         [24] 1657 	mov	dptr,#_gpioConfigure_pm1_65537_125
      0011B8 E5 B1            [12] 1658 	mov	a,_P3M1
      0011BA F0               [24] 1659 	movx	@dptr,a
                                   1660 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:199: pm0 = P3M0;
      0011BB 90 00 69         [24] 1661 	mov	dptr,#_gpioConfigure_pm0_65537_125
      0011BE E5 B2            [12] 1662 	mov	a,_P3M0
      0011C0 F0               [24] 1663 	movx	@dptr,a
                                   1664 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:202: pncs = P3NCS;
      0011C1 90 FE 1B         [24] 1665 	mov	dptr,#_P3NCS
      0011C4 E0               [24] 1666 	movx	a,@dptr
      0011C5 90 00 6A         [24] 1667 	mov	dptr,#_gpioConfigure_pncs_65537_125
      0011C8 F0               [24] 1668 	movx	@dptr,a
                                   1669 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:203: ppu = P3PU;
      0011C9 90 FE 13         [24] 1670 	mov	dptr,#_P3PU
      0011CC E0               [24] 1671 	movx	a,@dptr
      0011CD 90 00 6B         [24] 1672 	mov	dptr,#_gpioConfigure_ppu_65537_125
      0011D0 F0               [24] 1673 	movx	@dptr,a
                                   1674 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:207: pdr = P3DR;
      0011D1 90 FE 2B         [24] 1675 	mov	dptr,#_P3DR
      0011D4 E0               [24] 1676 	movx	a,@dptr
      0011D5 90 00 6C         [24] 1677 	mov	dptr,#_gpioConfigure_pdr_65537_125
      0011D8 F0               [24] 1678 	movx	@dptr,a
                                   1679 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:208: psr = P3SR;
      0011D9 90 FE 23         [24] 1680 	mov	dptr,#_P3SR
      0011DC E0               [24] 1681 	movx	a,@dptr
      0011DD 90 00 6D         [24] 1682 	mov	dptr,#_gpioConfigure_psr_65537_125
      0011E0 F0               [24] 1683 	movx	@dptr,a
                                   1684 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:209: pie = P3IE;
      0011E1 90 FE 33         [24] 1685 	mov	dptr,#_P3IE
      0011E4 E0               [24] 1686 	movx	a,@dptr
      0011E5 90 00 6E         [24] 1687 	mov	dptr,#_gpioConfigure_pie_65537_125
      0011E8 F0               [24] 1688 	movx	@dptr,a
                                   1689 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:213: pim1 = P3IM1;
      0011E9 90 FD 33         [24] 1690 	mov	dptr,#_P3IM1
      0011EC E0               [24] 1691 	movx	a,@dptr
      0011ED 90 00 6F         [24] 1692 	mov	dptr,#_gpioConfigure_pim1_65537_125
      0011F0 F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:214: pim0 = P3IM0;
      0011F1 90 FD 23         [24] 1695 	mov	dptr,#_P3IM0
      0011F4 E0               [24] 1696 	movx	a,@dptr
      0011F5 90 00 70         [24] 1697 	mov	dptr,#_gpioConfigure_pim0_65537_125
      0011F8 F0               [24] 1698 	movx	@dptr,a
                                   1699 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:215: pintf = P3INTF;
      0011F9 90 FD 13         [24] 1700 	mov	dptr,#_P3INTF
      0011FC E0               [24] 1701 	movx	a,@dptr
      0011FD 90 00 71         [24] 1702 	mov	dptr,#_gpioConfigure_pintf_65537_125
      001200 F0               [24] 1703 	movx	@dptr,a
                                   1704 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:216: pinte = P3INTE;
      001201 90 FD 03         [24] 1705 	mov	dptr,#_P3INTE
      001204 E0               [24] 1706 	movx	a,@dptr
      001205 90 00 72         [24] 1707 	mov	dptr,#_gpioConfigure_pinte_65537_125
      001208 F0               [24] 1708 	movx	@dptr,a
                                   1709 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:217: pwkue = P3WKUE;
      001209 90 FD 43         [24] 1710 	mov	dptr,#_P3WKUE
      00120C E0               [24] 1711 	movx	a,@dptr
      00120D 90 00 73         [24] 1712 	mov	dptr,#_gpioConfigure_pwkue_65537_125
      001210 F0               [24] 1713 	movx	@dptr,a
                                   1714 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:219: break;
                                   1715 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:252: case GPIO_PORT5:
      001211 80 5C            [24] 1716 	sjmp	00106$
      001213                       1717 00105$:
                                   1718 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:253: pm1 = P5M1;
      001213 90 00 68         [24] 1719 	mov	dptr,#_gpioConfigure_pm1_65537_125
      001216 E5 C9            [12] 1720 	mov	a,_P5M1
      001218 F0               [24] 1721 	movx	@dptr,a
                                   1722 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:254: pm0 = P5M0;
      001219 90 00 69         [24] 1723 	mov	dptr,#_gpioConfigure_pm0_65537_125
      00121C E5 CA            [12] 1724 	mov	a,_P5M0
      00121E F0               [24] 1725 	movx	@dptr,a
                                   1726 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:257: pncs = P5NCS;
      00121F 90 FE 1D         [24] 1727 	mov	dptr,#_P5NCS
      001222 E0               [24] 1728 	movx	a,@dptr
      001223 90 00 6A         [24] 1729 	mov	dptr,#_gpioConfigure_pncs_65537_125
      001226 F0               [24] 1730 	movx	@dptr,a
                                   1731 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:258: ppu = P5PU;
      001227 90 FE 15         [24] 1732 	mov	dptr,#_P5PU
      00122A E0               [24] 1733 	movx	a,@dptr
      00122B 90 00 6B         [24] 1734 	mov	dptr,#_gpioConfigure_ppu_65537_125
      00122E F0               [24] 1735 	movx	@dptr,a
                                   1736 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:262: pdr = P5DR;
      00122F 90 FE 2D         [24] 1737 	mov	dptr,#_P5DR
      001232 E0               [24] 1738 	movx	a,@dptr
      001233 90 00 6C         [24] 1739 	mov	dptr,#_gpioConfigure_pdr_65537_125
      001236 F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:263: psr = P5SR;
      001237 90 FE 25         [24] 1742 	mov	dptr,#_P5SR
      00123A E0               [24] 1743 	movx	a,@dptr
      00123B 90 00 6D         [24] 1744 	mov	dptr,#_gpioConfigure_psr_65537_125
      00123E F0               [24] 1745 	movx	@dptr,a
                                   1746 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:264: pie = P5IE;
      00123F 90 FE 35         [24] 1747 	mov	dptr,#_P5IE
      001242 E0               [24] 1748 	movx	a,@dptr
      001243 90 00 6E         [24] 1749 	mov	dptr,#_gpioConfigure_pie_65537_125
      001246 F0               [24] 1750 	movx	@dptr,a
                                   1751 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:268: pim1 = P5IM1;
      001247 90 FD 35         [24] 1752 	mov	dptr,#_P5IM1
      00124A E0               [24] 1753 	movx	a,@dptr
      00124B 90 00 6F         [24] 1754 	mov	dptr,#_gpioConfigure_pim1_65537_125
      00124E F0               [24] 1755 	movx	@dptr,a
                                   1756 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:269: pim0 = P5IM0;
      00124F 90 FD 25         [24] 1757 	mov	dptr,#_P5IM0
      001252 E0               [24] 1758 	movx	a,@dptr
      001253 90 00 70         [24] 1759 	mov	dptr,#_gpioConfigure_pim0_65537_125
      001256 F0               [24] 1760 	movx	@dptr,a
                                   1761 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:270: pintf = P5INTF;
      001257 90 FD 15         [24] 1762 	mov	dptr,#_P5INTF
      00125A E0               [24] 1763 	movx	a,@dptr
      00125B 90 00 71         [24] 1764 	mov	dptr,#_gpioConfigure_pintf_65537_125
      00125E F0               [24] 1765 	movx	@dptr,a
                                   1766 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:271: pinte = P5INTE;
      00125F 90 FD 05         [24] 1767 	mov	dptr,#_P5INTE
      001262 E0               [24] 1768 	movx	a,@dptr
      001263 90 00 72         [24] 1769 	mov	dptr,#_gpioConfigure_pinte_65537_125
      001266 F0               [24] 1770 	movx	@dptr,a
                                   1771 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:272: pwkue = P5WKUE;
      001267 90 FD 45         [24] 1772 	mov	dptr,#_P5WKUE
      00126A E0               [24] 1773 	movx	a,@dptr
      00126B 90 00 73         [24] 1774 	mov	dptr,#_gpioConfigure_pwkue_65537_125
      00126E F0               [24] 1775 	movx	@dptr,a
                                   1776 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:332: }
      00126F                       1777 00106$:
                                   1778 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:334: pm1 = __gpio_setBits(pm1, gpioConfig->pinMode & 2, gpioConfig);
      00126F 90 00 68         [24] 1779 	mov	dptr,#_gpioConfigure_pm1_65537_125
      001272 E0               [24] 1780 	movx	a,@dptr
      001273 FF               [12] 1781 	mov	r7,a
      001274 90 00 64         [24] 1782 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      001277 E0               [24] 1783 	movx	a,@dptr
      001278 FC               [12] 1784 	mov	r4,a
      001279 A3               [24] 1785 	inc	dptr
      00127A E0               [24] 1786 	movx	a,@dptr
      00127B FD               [12] 1787 	mov	r5,a
      00127C A3               [24] 1788 	inc	dptr
      00127D E0               [24] 1789 	movx	a,@dptr
      00127E FE               [12] 1790 	mov	r6,a
      00127F 74 03            [12] 1791 	mov	a,#0x03
      001281 2C               [12] 1792 	add	a,r4
      001282 F9               [12] 1793 	mov	r1,a
      001283 E4               [12] 1794 	clr	a
      001284 3D               [12] 1795 	addc	a,r5
      001285 FA               [12] 1796 	mov	r2,a
      001286 8E 03            [24] 1797 	mov	ar3,r6
      001288 89 82            [24] 1798 	mov	dpl,r1
      00128A 8A 83            [24] 1799 	mov	dph,r2
      00128C 8B F0            [24] 1800 	mov	b,r3
      00128E 12 3C 18         [24] 1801 	lcall	__gptrget
      001291 F9               [12] 1802 	mov	r1,a
      001292 90 00 53         [24] 1803 	mov	dptr,#___gpio_setBits_PARM_2
      001295 74 02            [12] 1804 	mov	a,#0x02
      001297 59               [12] 1805 	anl	a,r1
      001298 F0               [24] 1806 	movx	@dptr,a
      001299 90 00 54         [24] 1807 	mov	dptr,#___gpio_setBits_PARM_3
      00129C EC               [12] 1808 	mov	a,r4
      00129D F0               [24] 1809 	movx	@dptr,a
      00129E ED               [12] 1810 	mov	a,r5
      00129F A3               [24] 1811 	inc	dptr
      0012A0 F0               [24] 1812 	movx	@dptr,a
      0012A1 EE               [12] 1813 	mov	a,r6
      0012A2 A3               [24] 1814 	inc	dptr
      0012A3 F0               [24] 1815 	movx	@dptr,a
      0012A4 8F 82            [24] 1816 	mov	dpl,r7
      0012A6 12 0E 63         [24] 1817 	lcall	___gpio_setBits
      0012A9 AF 82            [24] 1818 	mov	r7,dpl
                                   1819 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:335: pm0 = __gpio_setBits(pm0, gpioConfig->pinMode & 1, gpioConfig);
      0012AB 90 00 69         [24] 1820 	mov	dptr,#_gpioConfigure_pm0_65537_125
      0012AE E0               [24] 1821 	movx	a,@dptr
      0012AF FE               [12] 1822 	mov	r6,a
      0012B0 90 00 64         [24] 1823 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      0012B3 E0               [24] 1824 	movx	a,@dptr
      0012B4 FB               [12] 1825 	mov	r3,a
      0012B5 A3               [24] 1826 	inc	dptr
      0012B6 E0               [24] 1827 	movx	a,@dptr
      0012B7 FC               [12] 1828 	mov	r4,a
      0012B8 A3               [24] 1829 	inc	dptr
      0012B9 E0               [24] 1830 	movx	a,@dptr
      0012BA FD               [12] 1831 	mov	r5,a
      0012BB 74 03            [12] 1832 	mov	a,#0x03
      0012BD 2B               [12] 1833 	add	a,r3
      0012BE F8               [12] 1834 	mov	r0,a
      0012BF E4               [12] 1835 	clr	a
      0012C0 3C               [12] 1836 	addc	a,r4
      0012C1 F9               [12] 1837 	mov	r1,a
      0012C2 8D 02            [24] 1838 	mov	ar2,r5
      0012C4 88 82            [24] 1839 	mov	dpl,r0
      0012C6 89 83            [24] 1840 	mov	dph,r1
      0012C8 8A F0            [24] 1841 	mov	b,r2
      0012CA 12 3C 18         [24] 1842 	lcall	__gptrget
      0012CD F8               [12] 1843 	mov	r0,a
      0012CE 90 00 53         [24] 1844 	mov	dptr,#___gpio_setBits_PARM_2
      0012D1 74 01            [12] 1845 	mov	a,#0x01
      0012D3 58               [12] 1846 	anl	a,r0
      0012D4 F0               [24] 1847 	movx	@dptr,a
      0012D5 90 00 54         [24] 1848 	mov	dptr,#___gpio_setBits_PARM_3
      0012D8 EB               [12] 1849 	mov	a,r3
      0012D9 F0               [24] 1850 	movx	@dptr,a
      0012DA EC               [12] 1851 	mov	a,r4
      0012DB A3               [24] 1852 	inc	dptr
      0012DC F0               [24] 1853 	movx	@dptr,a
      0012DD ED               [12] 1854 	mov	a,r5
      0012DE A3               [24] 1855 	inc	dptr
      0012DF F0               [24] 1856 	movx	@dptr,a
      0012E0 8E 82            [24] 1857 	mov	dpl,r6
      0012E2 C0 07            [24] 1858 	push	ar7
      0012E4 12 0E 63         [24] 1859 	lcall	___gpio_setBits
      0012E7 AE 82            [24] 1860 	mov	r6,dpl
                                   1861 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:338: pncs = __gpio_setBits(pncs, gpioConfig->schmidtTrigger, gpioConfig);
      0012E9 90 00 6A         [24] 1862 	mov	dptr,#_gpioConfigure_pncs_65537_125
      0012EC E0               [24] 1863 	movx	a,@dptr
      0012ED F5 12            [12] 1864 	mov	_gpioConfigure_sloc0_1_0,a
      0012EF 90 00 64         [24] 1865 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      0012F2 E0               [24] 1866 	movx	a,@dptr
      0012F3 FA               [12] 1867 	mov	r2,a
      0012F4 A3               [24] 1868 	inc	dptr
      0012F5 E0               [24] 1869 	movx	a,@dptr
      0012F6 FB               [12] 1870 	mov	r3,a
      0012F7 A3               [24] 1871 	inc	dptr
      0012F8 E0               [24] 1872 	movx	a,@dptr
      0012F9 FC               [12] 1873 	mov	r4,a
      0012FA 74 04            [12] 1874 	mov	a,#0x04
      0012FC 2A               [12] 1875 	add	a,r2
      0012FD F8               [12] 1876 	mov	r0,a
      0012FE E4               [12] 1877 	clr	a
      0012FF 3B               [12] 1878 	addc	a,r3
      001300 F9               [12] 1879 	mov	r1,a
      001301 8C 05            [24] 1880 	mov	ar5,r4
      001303 88 82            [24] 1881 	mov	dpl,r0
      001305 89 83            [24] 1882 	mov	dph,r1
      001307 8D F0            [24] 1883 	mov	b,r5
      001309 12 3C 18         [24] 1884 	lcall	__gptrget
      00130C 90 00 53         [24] 1885 	mov	dptr,#___gpio_setBits_PARM_2
      00130F F0               [24] 1886 	movx	@dptr,a
      001310 90 00 54         [24] 1887 	mov	dptr,#___gpio_setBits_PARM_3
      001313 EA               [12] 1888 	mov	a,r2
      001314 F0               [24] 1889 	movx	@dptr,a
      001315 EB               [12] 1890 	mov	a,r3
      001316 A3               [24] 1891 	inc	dptr
      001317 F0               [24] 1892 	movx	@dptr,a
      001318 EC               [12] 1893 	mov	a,r4
      001319 A3               [24] 1894 	inc	dptr
      00131A F0               [24] 1895 	movx	@dptr,a
      00131B 85 12 82         [24] 1896 	mov	dpl,_gpioConfigure_sloc0_1_0
      00131E C0 06            [24] 1897 	push	ar6
      001320 12 0E 63         [24] 1898 	lcall	___gpio_setBits
      001323 AD 82            [24] 1899 	mov	r5,dpl
                                   1900 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:339: ppu = __gpio_setBits(ppu, gpioConfig->internalPullUp, gpioConfig);
      001325 90 00 6B         [24] 1901 	mov	dptr,#_gpioConfigure_ppu_65537_125
      001328 E0               [24] 1902 	movx	a,@dptr
      001329 F5 12            [12] 1903 	mov	_gpioConfigure_sloc0_1_0,a
      00132B 90 00 64         [24] 1904 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      00132E E0               [24] 1905 	movx	a,@dptr
      00132F F5 15            [12] 1906 	mov	_gpioConfigure_sloc1_1_0,a
      001331 A3               [24] 1907 	inc	dptr
      001332 E0               [24] 1908 	movx	a,@dptr
      001333 F5 16            [12] 1909 	mov	(_gpioConfigure_sloc1_1_0 + 1),a
      001335 A3               [24] 1910 	inc	dptr
      001336 E0               [24] 1911 	movx	a,@dptr
      001337 F5 17            [12] 1912 	mov	(_gpioConfigure_sloc1_1_0 + 2),a
      001339 74 05            [12] 1913 	mov	a,#0x05
      00133B 25 15            [12] 1914 	add	a,_gpioConfigure_sloc1_1_0
      00133D F8               [12] 1915 	mov	r0,a
      00133E E4               [12] 1916 	clr	a
      00133F 35 16            [12] 1917 	addc	a,(_gpioConfigure_sloc1_1_0 + 1)
      001341 FB               [12] 1918 	mov	r3,a
      001342 AC 17            [24] 1919 	mov	r4,(_gpioConfigure_sloc1_1_0 + 2)
      001344 88 82            [24] 1920 	mov	dpl,r0
      001346 8B 83            [24] 1921 	mov	dph,r3
      001348 8C F0            [24] 1922 	mov	b,r4
      00134A 12 3C 18         [24] 1923 	lcall	__gptrget
      00134D 90 00 53         [24] 1924 	mov	dptr,#___gpio_setBits_PARM_2
      001350 F0               [24] 1925 	movx	@dptr,a
      001351 90 00 54         [24] 1926 	mov	dptr,#___gpio_setBits_PARM_3
      001354 E5 15            [12] 1927 	mov	a,_gpioConfigure_sloc1_1_0
      001356 F0               [24] 1928 	movx	@dptr,a
      001357 E5 16            [12] 1929 	mov	a,(_gpioConfigure_sloc1_1_0 + 1)
      001359 A3               [24] 1930 	inc	dptr
      00135A F0               [24] 1931 	movx	@dptr,a
      00135B E5 17            [12] 1932 	mov	a,(_gpioConfigure_sloc1_1_0 + 2)
      00135D A3               [24] 1933 	inc	dptr
      00135E F0               [24] 1934 	movx	@dptr,a
      00135F 85 12 82         [24] 1935 	mov	dpl,_gpioConfigure_sloc0_1_0
      001362 C0 05            [24] 1936 	push	ar5
      001364 12 0E 63         [24] 1937 	lcall	___gpio_setBits
      001367 AC 82            [24] 1938 	mov	r4,dpl
                                   1939 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:343: if (__isOutput(gpioConfig)) {
      001369 90 00 64         [24] 1940 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      00136C E0               [24] 1941 	movx	a,@dptr
      00136D F9               [12] 1942 	mov	r1,a
      00136E A3               [24] 1943 	inc	dptr
      00136F E0               [24] 1944 	movx	a,@dptr
      001370 FA               [12] 1945 	mov	r2,a
      001371 A3               [24] 1946 	inc	dptr
      001372 E0               [24] 1947 	movx	a,@dptr
      001373 FB               [12] 1948 	mov	r3,a
      001374 89 82            [24] 1949 	mov	dpl,r1
      001376 8A 83            [24] 1950 	mov	dph,r2
      001378 8B F0            [24] 1951 	mov	b,r3
      00137A C0 04            [24] 1952 	push	ar4
      00137C 12 0E B8         [24] 1953 	lcall	___isOutput
      00137F E5 82            [12] 1954 	mov	a,dpl
      001381 D0 04            [24] 1955 	pop	ar4
      001383 D0 05            [24] 1956 	pop	ar5
      001385 D0 06            [24] 1957 	pop	ar6
      001387 D0 07            [24] 1958 	pop	ar7
      001389 70 03            [24] 1959 	jnz	00180$
      00138B 02 14 3A         [24] 1960 	ljmp	00108$
      00138E                       1961 00180$:
                                   1962 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:344: pdr = __gpio_setBits(pdr, gpioConfig->speed & 1, gpioConfig);
      00138E C0 04            [24] 1963 	push	ar4
      001390 90 00 6C         [24] 1964 	mov	dptr,#_gpioConfigure_pdr_65537_125
      001393 E0               [24] 1965 	movx	a,@dptr
      001394 F5 15            [12] 1966 	mov	_gpioConfigure_sloc1_1_0,a
      001396 90 00 64         [24] 1967 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      001399 E0               [24] 1968 	movx	a,@dptr
      00139A F5 12            [12] 1969 	mov	_gpioConfigure_sloc0_1_0,a
      00139C A3               [24] 1970 	inc	dptr
      00139D E0               [24] 1971 	movx	a,@dptr
      00139E F5 13            [12] 1972 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0013A0 A3               [24] 1973 	inc	dptr
      0013A1 E0               [24] 1974 	movx	a,@dptr
      0013A2 F5 14            [12] 1975 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      0013A4 74 06            [12] 1976 	mov	a,#0x06
      0013A6 25 12            [12] 1977 	add	a,_gpioConfigure_sloc0_1_0
      0013A8 FA               [12] 1978 	mov	r2,a
      0013A9 E4               [12] 1979 	clr	a
      0013AA 35 13            [12] 1980 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      0013AC FB               [12] 1981 	mov	r3,a
      0013AD AC 14            [24] 1982 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      0013AF 8A 82            [24] 1983 	mov	dpl,r2
      0013B1 8B 83            [24] 1984 	mov	dph,r3
      0013B3 8C F0            [24] 1985 	mov	b,r4
      0013B5 12 3C 18         [24] 1986 	lcall	__gptrget
      0013B8 FA               [12] 1987 	mov	r2,a
      0013B9 90 00 53         [24] 1988 	mov	dptr,#___gpio_setBits_PARM_2
      0013BC 74 01            [12] 1989 	mov	a,#0x01
      0013BE 5A               [12] 1990 	anl	a,r2
      0013BF F0               [24] 1991 	movx	@dptr,a
      0013C0 90 00 54         [24] 1992 	mov	dptr,#___gpio_setBits_PARM_3
      0013C3 E5 12            [12] 1993 	mov	a,_gpioConfigure_sloc0_1_0
      0013C5 F0               [24] 1994 	movx	@dptr,a
      0013C6 E5 13            [12] 1995 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      0013C8 A3               [24] 1996 	inc	dptr
      0013C9 F0               [24] 1997 	movx	@dptr,a
      0013CA E5 14            [12] 1998 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      0013CC A3               [24] 1999 	inc	dptr
      0013CD F0               [24] 2000 	movx	@dptr,a
      0013CE 85 15 82         [24] 2001 	mov	dpl,_gpioConfigure_sloc1_1_0
      0013D1 C0 07            [24] 2002 	push	ar7
      0013D3 C0 06            [24] 2003 	push	ar6
      0013D5 C0 05            [24] 2004 	push	ar5
      0013D7 C0 04            [24] 2005 	push	ar4
      0013D9 12 0E 63         [24] 2006 	lcall	___gpio_setBits
      0013DC E5 82            [12] 2007 	mov	a,dpl
      0013DE D0 04            [24] 2008 	pop	ar4
      0013E0 90 00 6C         [24] 2009 	mov	dptr,#_gpioConfigure_pdr_65537_125
      0013E3 F0               [24] 2010 	movx	@dptr,a
                                   2011 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:345: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      0013E4 90 00 6D         [24] 2012 	mov	dptr,#_gpioConfigure_psr_65537_125
      0013E7 E0               [24] 2013 	movx	a,@dptr
      0013E8 F5 15            [12] 2014 	mov	_gpioConfigure_sloc1_1_0,a
      0013EA 90 00 64         [24] 2015 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      0013ED E0               [24] 2016 	movx	a,@dptr
      0013EE F5 12            [12] 2017 	mov	_gpioConfigure_sloc0_1_0,a
      0013F0 A3               [24] 2018 	inc	dptr
      0013F1 E0               [24] 2019 	movx	a,@dptr
      0013F2 F5 13            [12] 2020 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0013F4 A3               [24] 2021 	inc	dptr
      0013F5 E0               [24] 2022 	movx	a,@dptr
      0013F6 F5 14            [12] 2023 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      0013F8 74 06            [12] 2024 	mov	a,#0x06
      0013FA 25 12            [12] 2025 	add	a,_gpioConfigure_sloc0_1_0
      0013FC F8               [12] 2026 	mov	r0,a
      0013FD E4               [12] 2027 	clr	a
      0013FE 35 13            [12] 2028 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001400 FB               [12] 2029 	mov	r3,a
      001401 AC 14            [24] 2030 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001403 88 82            [24] 2031 	mov	dpl,r0
      001405 8B 83            [24] 2032 	mov	dph,r3
      001407 8C F0            [24] 2033 	mov	b,r4
      001409 12 3C 18         [24] 2034 	lcall	__gptrget
      00140C F8               [12] 2035 	mov	r0,a
      00140D 90 00 53         [24] 2036 	mov	dptr,#___gpio_setBits_PARM_2
      001410 74 02            [12] 2037 	mov	a,#0x02
      001412 58               [12] 2038 	anl	a,r0
      001413 F0               [24] 2039 	movx	@dptr,a
      001414 90 00 54         [24] 2040 	mov	dptr,#___gpio_setBits_PARM_3
      001417 E5 12            [12] 2041 	mov	a,_gpioConfigure_sloc0_1_0
      001419 F0               [24] 2042 	movx	@dptr,a
      00141A E5 13            [12] 2043 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      00141C A3               [24] 2044 	inc	dptr
      00141D F0               [24] 2045 	movx	@dptr,a
      00141E E5 14            [12] 2046 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001420 A3               [24] 2047 	inc	dptr
      001421 F0               [24] 2048 	movx	@dptr,a
      001422 85 15 82         [24] 2049 	mov	dpl,_gpioConfigure_sloc1_1_0
      001425 C0 04            [24] 2050 	push	ar4
      001427 12 0E 63         [24] 2051 	lcall	___gpio_setBits
      00142A E5 82            [12] 2052 	mov	a,dpl
      00142C D0 04            [24] 2053 	pop	ar4
      00142E D0 05            [24] 2054 	pop	ar5
      001430 D0 06            [24] 2055 	pop	ar6
      001432 D0 07            [24] 2056 	pop	ar7
      001434 90 00 6D         [24] 2057 	mov	dptr,#_gpioConfigure_psr_65537_125
      001437 F0               [24] 2058 	movx	@dptr,a
                                   2059 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
      001438 D0 04            [24] 2060 	pop	ar4
                                   2061 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:345: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      00143A                       2062 00108$:
                                   2063 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:348: if (__isInput(gpioConfig)) {
      00143A 90 00 64         [24] 2064 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      00143D E0               [24] 2065 	movx	a,@dptr
      00143E F9               [12] 2066 	mov	r1,a
      00143F A3               [24] 2067 	inc	dptr
      001440 E0               [24] 2068 	movx	a,@dptr
      001441 FA               [12] 2069 	mov	r2,a
      001442 A3               [24] 2070 	inc	dptr
      001443 E0               [24] 2071 	movx	a,@dptr
      001444 FB               [12] 2072 	mov	r3,a
      001445 89 82            [24] 2073 	mov	dpl,r1
      001447 8A 83            [24] 2074 	mov	dph,r2
      001449 8B F0            [24] 2075 	mov	b,r3
      00144B C0 07            [24] 2076 	push	ar7
      00144D C0 06            [24] 2077 	push	ar6
      00144F C0 05            [24] 2078 	push	ar5
      001451 C0 04            [24] 2079 	push	ar4
      001453 12 0E F9         [24] 2080 	lcall	___isInput
      001456 E5 82            [12] 2081 	mov	a,dpl
      001458 D0 04            [24] 2082 	pop	ar4
      00145A D0 05            [24] 2083 	pop	ar5
      00145C D0 06            [24] 2084 	pop	ar6
      00145E D0 07            [24] 2085 	pop	ar7
      001460 60 5A            [24] 2086 	jz	00110$
                                   2087 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:349: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      001462 C0 04            [24] 2088 	push	ar4
      001464 90 00 6E         [24] 2089 	mov	dptr,#_gpioConfigure_pie_65537_125
      001467 E0               [24] 2090 	movx	a,@dptr
      001468 F5 15            [12] 2091 	mov	_gpioConfigure_sloc1_1_0,a
      00146A 90 00 64         [24] 2092 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      00146D E0               [24] 2093 	movx	a,@dptr
      00146E F5 12            [12] 2094 	mov	_gpioConfigure_sloc0_1_0,a
      001470 A3               [24] 2095 	inc	dptr
      001471 E0               [24] 2096 	movx	a,@dptr
      001472 F5 13            [12] 2097 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001474 A3               [24] 2098 	inc	dptr
      001475 E0               [24] 2099 	movx	a,@dptr
      001476 F5 14            [12] 2100 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001478 74 07            [12] 2101 	mov	a,#0x07
      00147A 25 12            [12] 2102 	add	a,_gpioConfigure_sloc0_1_0
      00147C FA               [12] 2103 	mov	r2,a
      00147D E4               [12] 2104 	clr	a
      00147E 35 13            [12] 2105 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001480 FB               [12] 2106 	mov	r3,a
      001481 AC 14            [24] 2107 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001483 8A 82            [24] 2108 	mov	dpl,r2
      001485 8B 83            [24] 2109 	mov	dph,r3
      001487 8C F0            [24] 2110 	mov	b,r4
      001489 12 3C 18         [24] 2111 	lcall	__gptrget
      00148C 90 00 53         [24] 2112 	mov	dptr,#___gpio_setBits_PARM_2
      00148F F0               [24] 2113 	movx	@dptr,a
      001490 90 00 54         [24] 2114 	mov	dptr,#___gpio_setBits_PARM_3
      001493 E5 12            [12] 2115 	mov	a,_gpioConfigure_sloc0_1_0
      001495 F0               [24] 2116 	movx	@dptr,a
      001496 E5 13            [12] 2117 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001498 A3               [24] 2118 	inc	dptr
      001499 F0               [24] 2119 	movx	@dptr,a
      00149A E5 14            [12] 2120 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      00149C A3               [24] 2121 	inc	dptr
      00149D F0               [24] 2122 	movx	@dptr,a
      00149E 85 15 82         [24] 2123 	mov	dpl,_gpioConfigure_sloc1_1_0
      0014A1 C0 07            [24] 2124 	push	ar7
      0014A3 C0 06            [24] 2125 	push	ar6
      0014A5 C0 05            [24] 2126 	push	ar5
      0014A7 C0 04            [24] 2127 	push	ar4
      0014A9 12 0E 63         [24] 2128 	lcall	___gpio_setBits
      0014AC E5 82            [12] 2129 	mov	a,dpl
      0014AE D0 04            [24] 2130 	pop	ar4
      0014B0 D0 05            [24] 2131 	pop	ar5
      0014B2 D0 06            [24] 2132 	pop	ar6
      0014B4 D0 07            [24] 2133 	pop	ar7
      0014B6 90 00 6E         [24] 2134 	mov	dptr,#_gpioConfigure_pie_65537_125
      0014B9 F0               [24] 2135 	movx	@dptr,a
                                   2136 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
      0014BA D0 04            [24] 2137 	pop	ar4
                                   2138 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:349: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      0014BC                       2139 00110$:
                                   2140 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:354: pim1 = __gpio_setBits(pim1, gpioConfig->interruptTrigger & 2, gpioConfig);
      0014BC C0 04            [24] 2141 	push	ar4
      0014BE 90 00 6F         [24] 2142 	mov	dptr,#_gpioConfigure_pim1_65537_125
      0014C1 E0               [24] 2143 	movx	a,@dptr
      0014C2 F5 15            [12] 2144 	mov	_gpioConfigure_sloc1_1_0,a
      0014C4 90 00 64         [24] 2145 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      0014C7 E0               [24] 2146 	movx	a,@dptr
      0014C8 F5 12            [12] 2147 	mov	_gpioConfigure_sloc0_1_0,a
      0014CA A3               [24] 2148 	inc	dptr
      0014CB E0               [24] 2149 	movx	a,@dptr
      0014CC F5 13            [12] 2150 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0014CE A3               [24] 2151 	inc	dptr
      0014CF E0               [24] 2152 	movx	a,@dptr
      0014D0 F5 14            [12] 2153 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      0014D2 74 09            [12] 2154 	mov	a,#0x09
      0014D4 25 12            [12] 2155 	add	a,_gpioConfigure_sloc0_1_0
      0014D6 FA               [12] 2156 	mov	r2,a
      0014D7 E4               [12] 2157 	clr	a
      0014D8 35 13            [12] 2158 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      0014DA FB               [12] 2159 	mov	r3,a
      0014DB AC 14            [24] 2160 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      0014DD 8A 82            [24] 2161 	mov	dpl,r2
      0014DF 8B 83            [24] 2162 	mov	dph,r3
      0014E1 8C F0            [24] 2163 	mov	b,r4
      0014E3 12 3C 18         [24] 2164 	lcall	__gptrget
      0014E6 FA               [12] 2165 	mov	r2,a
      0014E7 90 00 53         [24] 2166 	mov	dptr,#___gpio_setBits_PARM_2
      0014EA 74 02            [12] 2167 	mov	a,#0x02
      0014EC 5A               [12] 2168 	anl	a,r2
      0014ED F0               [24] 2169 	movx	@dptr,a
      0014EE 90 00 54         [24] 2170 	mov	dptr,#___gpio_setBits_PARM_3
      0014F1 E5 12            [12] 2171 	mov	a,_gpioConfigure_sloc0_1_0
      0014F3 F0               [24] 2172 	movx	@dptr,a
      0014F4 E5 13            [12] 2173 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      0014F6 A3               [24] 2174 	inc	dptr
      0014F7 F0               [24] 2175 	movx	@dptr,a
      0014F8 E5 14            [12] 2176 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      0014FA A3               [24] 2177 	inc	dptr
      0014FB F0               [24] 2178 	movx	@dptr,a
      0014FC 85 15 82         [24] 2179 	mov	dpl,_gpioConfigure_sloc1_1_0
      0014FF C0 07            [24] 2180 	push	ar7
      001501 C0 06            [24] 2181 	push	ar6
      001503 C0 05            [24] 2182 	push	ar5
      001505 C0 04            [24] 2183 	push	ar4
      001507 12 0E 63         [24] 2184 	lcall	___gpio_setBits
      00150A 85 82 15         [24] 2185 	mov	_gpioConfigure_sloc1_1_0,dpl
      00150D D0 04            [24] 2186 	pop	ar4
                                   2187 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:355: pim0 = __gpio_setBits(pim0, gpioConfig->interruptTrigger & 1, gpioConfig);
      00150F 90 00 70         [24] 2188 	mov	dptr,#_gpioConfigure_pim0_65537_125
      001512 E0               [24] 2189 	movx	a,@dptr
      001513 F5 12            [12] 2190 	mov	_gpioConfigure_sloc0_1_0,a
      001515 90 00 64         [24] 2191 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      001518 E0               [24] 2192 	movx	a,@dptr
      001519 F5 18            [12] 2193 	mov	_gpioConfigure_sloc2_1_0,a
      00151B A3               [24] 2194 	inc	dptr
      00151C E0               [24] 2195 	movx	a,@dptr
      00151D F5 19            [12] 2196 	mov	(_gpioConfigure_sloc2_1_0 + 1),a
      00151F A3               [24] 2197 	inc	dptr
      001520 E0               [24] 2198 	movx	a,@dptr
      001521 F5 1A            [12] 2199 	mov	(_gpioConfigure_sloc2_1_0 + 2),a
      001523 74 09            [12] 2200 	mov	a,#0x09
      001525 25 18            [12] 2201 	add	a,_gpioConfigure_sloc2_1_0
      001527 F8               [12] 2202 	mov	r0,a
      001528 E4               [12] 2203 	clr	a
      001529 35 19            [12] 2204 	addc	a,(_gpioConfigure_sloc2_1_0 + 1)
      00152B FB               [12] 2205 	mov	r3,a
      00152C AC 1A            [24] 2206 	mov	r4,(_gpioConfigure_sloc2_1_0 + 2)
      00152E 88 82            [24] 2207 	mov	dpl,r0
      001530 8B 83            [24] 2208 	mov	dph,r3
      001532 8C F0            [24] 2209 	mov	b,r4
      001534 12 3C 18         [24] 2210 	lcall	__gptrget
      001537 F8               [12] 2211 	mov	r0,a
      001538 90 00 53         [24] 2212 	mov	dptr,#___gpio_setBits_PARM_2
      00153B 74 01            [12] 2213 	mov	a,#0x01
      00153D 58               [12] 2214 	anl	a,r0
      00153E F0               [24] 2215 	movx	@dptr,a
      00153F 90 00 54         [24] 2216 	mov	dptr,#___gpio_setBits_PARM_3
      001542 E5 18            [12] 2217 	mov	a,_gpioConfigure_sloc2_1_0
      001544 F0               [24] 2218 	movx	@dptr,a
      001545 E5 19            [12] 2219 	mov	a,(_gpioConfigure_sloc2_1_0 + 1)
      001547 A3               [24] 2220 	inc	dptr
      001548 F0               [24] 2221 	movx	@dptr,a
      001549 E5 1A            [12] 2222 	mov	a,(_gpioConfigure_sloc2_1_0 + 2)
      00154B A3               [24] 2223 	inc	dptr
      00154C F0               [24] 2224 	movx	@dptr,a
      00154D 85 12 82         [24] 2225 	mov	dpl,_gpioConfigure_sloc0_1_0
      001550 C0 04            [24] 2226 	push	ar4
      001552 12 0E 63         [24] 2227 	lcall	___gpio_setBits
      001555 85 82 18         [24] 2228 	mov	_gpioConfigure_sloc2_1_0,dpl
      001558 D0 04            [24] 2229 	pop	ar4
                                   2230 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:356: pintf &= gpioConfig->__clearMask;
      00155A 90 00 64         [24] 2231 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      00155D E0               [24] 2232 	movx	a,@dptr
      00155E F5 12            [12] 2233 	mov	_gpioConfigure_sloc0_1_0,a
      001560 A3               [24] 2234 	inc	dptr
      001561 E0               [24] 2235 	movx	a,@dptr
      001562 F5 13            [12] 2236 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001564 A3               [24] 2237 	inc	dptr
      001565 E0               [24] 2238 	movx	a,@dptr
      001566 F5 14            [12] 2239 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001568 74 0C            [12] 2240 	mov	a,#0x0c
      00156A 25 12            [12] 2241 	add	a,_gpioConfigure_sloc0_1_0
      00156C F8               [12] 2242 	mov	r0,a
      00156D E4               [12] 2243 	clr	a
      00156E 35 13            [12] 2244 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001570 F9               [12] 2245 	mov	r1,a
      001571 AC 14            [24] 2246 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001573 88 82            [24] 2247 	mov	dpl,r0
      001575 89 83            [24] 2248 	mov	dph,r1
      001577 8C F0            [24] 2249 	mov	b,r4
      001579 12 3C 18         [24] 2250 	lcall	__gptrget
      00157C F8               [12] 2251 	mov	r0,a
      00157D 90 00 71         [24] 2252 	mov	dptr,#_gpioConfigure_pintf_65537_125
      001580 E0               [24] 2253 	movx	a,@dptr
      001581 58               [12] 2254 	anl	a,r0
      001582 F0               [24] 2255 	movx	@dptr,a
                                   2256 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:357: pinte = __gpio_setBits(pinte, gpioConfig->pinInterrupt, gpioConfig);
      001583 90 00 72         [24] 2257 	mov	dptr,#_gpioConfigure_pinte_65537_125
      001586 E0               [24] 2258 	movx	a,@dptr
      001587 FC               [12] 2259 	mov	r4,a
      001588 74 08            [12] 2260 	mov	a,#0x08
      00158A 25 12            [12] 2261 	add	a,_gpioConfigure_sloc0_1_0
      00158C F9               [12] 2262 	mov	r1,a
      00158D E4               [12] 2263 	clr	a
      00158E 35 13            [12] 2264 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001590 FA               [12] 2265 	mov	r2,a
      001591 AB 14            [24] 2266 	mov	r3,(_gpioConfigure_sloc0_1_0 + 2)
      001593 89 82            [24] 2267 	mov	dpl,r1
      001595 8A 83            [24] 2268 	mov	dph,r2
      001597 8B F0            [24] 2269 	mov	b,r3
      001599 12 3C 18         [24] 2270 	lcall	__gptrget
      00159C 90 00 53         [24] 2271 	mov	dptr,#___gpio_setBits_PARM_2
      00159F F0               [24] 2272 	movx	@dptr,a
      0015A0 90 00 54         [24] 2273 	mov	dptr,#___gpio_setBits_PARM_3
      0015A3 E5 12            [12] 2274 	mov	a,_gpioConfigure_sloc0_1_0
      0015A5 F0               [24] 2275 	movx	@dptr,a
      0015A6 E5 13            [12] 2276 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      0015A8 A3               [24] 2277 	inc	dptr
      0015A9 F0               [24] 2278 	movx	@dptr,a
      0015AA E5 14            [12] 2279 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      0015AC A3               [24] 2280 	inc	dptr
      0015AD F0               [24] 2281 	movx	@dptr,a
      0015AE 8C 82            [24] 2282 	mov	dpl,r4
      0015B0 C0 04            [24] 2283 	push	ar4
      0015B2 12 0E 63         [24] 2284 	lcall	___gpio_setBits
      0015B5 85 82 12         [24] 2285 	mov	_gpioConfigure_sloc0_1_0,dpl
      0015B8 D0 04            [24] 2286 	pop	ar4
                                   2287 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:358: pwkue = __gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
      0015BA 90 00 73         [24] 2288 	mov	dptr,#_gpioConfigure_pwkue_65537_125
      0015BD E0               [24] 2289 	movx	a,@dptr
      0015BE F5 1B            [12] 2290 	mov	_gpioConfigure_sloc3_1_0,a
      0015C0 90 00 64         [24] 2291 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      0015C3 E0               [24] 2292 	movx	a,@dptr
      0015C4 F5 1C            [12] 2293 	mov	_gpioConfigure_sloc4_1_0,a
      0015C6 A3               [24] 2294 	inc	dptr
      0015C7 E0               [24] 2295 	movx	a,@dptr
      0015C8 F5 1D            [12] 2296 	mov	(_gpioConfigure_sloc4_1_0 + 1),a
      0015CA A3               [24] 2297 	inc	dptr
      0015CB E0               [24] 2298 	movx	a,@dptr
      0015CC F5 1E            [12] 2299 	mov	(_gpioConfigure_sloc4_1_0 + 2),a
      0015CE 74 0A            [12] 2300 	mov	a,#0x0a
      0015D0 25 1C            [12] 2301 	add	a,_gpioConfigure_sloc4_1_0
      0015D2 F8               [12] 2302 	mov	r0,a
      0015D3 E4               [12] 2303 	clr	a
      0015D4 35 1D            [12] 2304 	addc	a,(_gpioConfigure_sloc4_1_0 + 1)
      0015D6 FB               [12] 2305 	mov	r3,a
      0015D7 AC 1E            [24] 2306 	mov	r4,(_gpioConfigure_sloc4_1_0 + 2)
      0015D9 88 82            [24] 2307 	mov	dpl,r0
      0015DB 8B 83            [24] 2308 	mov	dph,r3
      0015DD 8C F0            [24] 2309 	mov	b,r4
      0015DF 12 3C 18         [24] 2310 	lcall	__gptrget
      0015E2 90 00 53         [24] 2311 	mov	dptr,#___gpio_setBits_PARM_2
      0015E5 F0               [24] 2312 	movx	@dptr,a
      0015E6 90 00 54         [24] 2313 	mov	dptr,#___gpio_setBits_PARM_3
      0015E9 E5 1C            [12] 2314 	mov	a,_gpioConfigure_sloc4_1_0
      0015EB F0               [24] 2315 	movx	@dptr,a
      0015EC E5 1D            [12] 2316 	mov	a,(_gpioConfigure_sloc4_1_0 + 1)
      0015EE A3               [24] 2317 	inc	dptr
      0015EF F0               [24] 2318 	movx	@dptr,a
      0015F0 E5 1E            [12] 2319 	mov	a,(_gpioConfigure_sloc4_1_0 + 2)
      0015F2 A3               [24] 2320 	inc	dptr
      0015F3 F0               [24] 2321 	movx	@dptr,a
      0015F4 85 1B 82         [24] 2322 	mov	dpl,_gpioConfigure_sloc3_1_0
      0015F7 C0 04            [24] 2323 	push	ar4
      0015F9 12 0E 63         [24] 2324 	lcall	___gpio_setBits
      0015FC 85 82 1C         [24] 2325 	mov	_gpioConfigure_sloc4_1_0,dpl
      0015FF D0 04            [24] 2326 	pop	ar4
      001601 D0 05            [24] 2327 	pop	ar5
      001603 D0 06            [24] 2328 	pop	ar6
      001605 D0 07            [24] 2329 	pop	ar7
                                   2330 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:361: switch (gpioConfig->port) {
      001607 90 00 64         [24] 2331 	mov	dptr,#_gpioConfigure_gpioConfig_65536_121
      00160A E0               [24] 2332 	movx	a,@dptr
      00160B FA               [12] 2333 	mov	r2,a
      00160C A3               [24] 2334 	inc	dptr
      00160D E0               [24] 2335 	movx	a,@dptr
      00160E FB               [12] 2336 	mov	r3,a
      00160F A3               [24] 2337 	inc	dptr
      001610 E0               [24] 2338 	movx	a,@dptr
      001611 FC               [12] 2339 	mov	r4,a
      001612 8A 82            [24] 2340 	mov	dpl,r2
      001614 8B 83            [24] 2341 	mov	dph,r3
      001616 8C F0            [24] 2342 	mov	b,r4
      001618 12 3C 18         [24] 2343 	lcall	__gptrget
      00161B F5 1B            [12] 2344 	mov	_gpioConfigure_sloc3_1_0,a
      00161D 74 01            [12] 2345 	mov	a,#0x01
      00161F B5 1B 04         [24] 2346 	cjne	a,_gpioConfigure_sloc3_1_0,00182$
      001622 D0 04            [24] 2347 	pop	ar4
      001624 80 1A            [24] 2348 	sjmp	00111$
      001626                       2349 00182$:
      001626 D0 04            [24] 2350 	pop	ar4
      001628 74 02            [12] 2351 	mov	a,#0x02
      00162A B5 1B 02         [24] 2352 	cjne	a,_gpioConfigure_sloc3_1_0,00183$
      00162D 80 58            [24] 2353 	sjmp	00112$
      00162F                       2354 00183$:
      00162F 74 03            [12] 2355 	mov	a,#0x03
      001631 B5 1B 03         [24] 2356 	cjne	a,_gpioConfigure_sloc3_1_0,00184$
      001634 02 16 CE         [24] 2357 	ljmp	00113$
      001637                       2358 00184$:
      001637 74 05            [12] 2359 	mov	a,#0x05
      001639 B5 1B 03         [24] 2360 	cjne	a,_gpioConfigure_sloc3_1_0,00185$
      00163C 02 17 15         [24] 2361 	ljmp	00114$
      00163F                       2362 00185$:
      00163F 22               [24] 2363 	ret
                                   2364 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:393: case GPIO_PORT1:
      001640                       2365 00111$:
                                   2366 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:394: P1M1 = pm1;
      001640 8F 91            [24] 2367 	mov	_P1M1,r7
                                   2368 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:395: P1M0 = pm0;
      001642 8E 92            [24] 2369 	mov	_P1M0,r6
                                   2370 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:398: P1NCS = pncs;
      001644 90 FE 19         [24] 2371 	mov	dptr,#_P1NCS
      001647 ED               [12] 2372 	mov	a,r5
      001648 F0               [24] 2373 	movx	@dptr,a
                                   2374 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:399: P1PU = ppu;
      001649 90 FE 11         [24] 2375 	mov	dptr,#_P1PU
      00164C EC               [12] 2376 	mov	a,r4
      00164D F0               [24] 2377 	movx	@dptr,a
                                   2378 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:403: P1DR = pdr;
      00164E 90 00 6C         [24] 2379 	mov	dptr,#_gpioConfigure_pdr_65537_125
      001651 E0               [24] 2380 	movx	a,@dptr
      001652 90 FE 29         [24] 2381 	mov	dptr,#_P1DR
      001655 F0               [24] 2382 	movx	@dptr,a
                                   2383 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:404: P1SR = psr;
      001656 90 00 6D         [24] 2384 	mov	dptr,#_gpioConfigure_psr_65537_125
      001659 E0               [24] 2385 	movx	a,@dptr
      00165A 90 FE 21         [24] 2386 	mov	dptr,#_P1SR
      00165D F0               [24] 2387 	movx	@dptr,a
                                   2388 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:405: P1IE = pie;
      00165E 90 00 6E         [24] 2389 	mov	dptr,#_gpioConfigure_pie_65537_125
      001661 E0               [24] 2390 	movx	a,@dptr
      001662 90 FE 31         [24] 2391 	mov	dptr,#_P1IE
      001665 F0               [24] 2392 	movx	@dptr,a
                                   2393 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:409: P1IM1 = pim1;
      001666 90 FD 31         [24] 2394 	mov	dptr,#_P1IM1
      001669 E5 15            [12] 2395 	mov	a,_gpioConfigure_sloc1_1_0
      00166B F0               [24] 2396 	movx	@dptr,a
                                   2397 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:410: P1IM0 = pim0;
      00166C 90 FD 21         [24] 2398 	mov	dptr,#_P1IM0
      00166F E5 18            [12] 2399 	mov	a,_gpioConfigure_sloc2_1_0
      001671 F0               [24] 2400 	movx	@dptr,a
                                   2401 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:411: P1INTF = pintf;
      001672 90 00 71         [24] 2402 	mov	dptr,#_gpioConfigure_pintf_65537_125
      001675 E0               [24] 2403 	movx	a,@dptr
      001676 90 FD 11         [24] 2404 	mov	dptr,#_P1INTF
      001679 F0               [24] 2405 	movx	@dptr,a
                                   2406 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:412: P1INTE = pinte;
      00167A 90 FD 01         [24] 2407 	mov	dptr,#_P1INTE
      00167D E5 12            [12] 2408 	mov	a,_gpioConfigure_sloc0_1_0
      00167F F0               [24] 2409 	movx	@dptr,a
                                   2410 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:413: P1WKUE = pwkue;
      001680 90 FD 41         [24] 2411 	mov	dptr,#_P1WKUE
      001683 E5 1C            [12] 2412 	mov	a,_gpioConfigure_sloc4_1_0
      001685 F0               [24] 2413 	movx	@dptr,a
                                   2414 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:415: break;
      001686 22               [24] 2415 	ret
                                   2416 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:421: case GPIO_PORT2:
      001687                       2417 00112$:
                                   2418 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:422: P2M1 = pm1;
      001687 8F 95            [24] 2419 	mov	_P2M1,r7
                                   2420 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:423: P2M0 = pm0;
      001689 8E 96            [24] 2421 	mov	_P2M0,r6
                                   2422 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:426: P2NCS = pncs;
      00168B 90 FE 1A         [24] 2423 	mov	dptr,#_P2NCS
      00168E ED               [12] 2424 	mov	a,r5
      00168F F0               [24] 2425 	movx	@dptr,a
                                   2426 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:427: P2PU = ppu;
      001690 90 FE 12         [24] 2427 	mov	dptr,#_P2PU
      001693 EC               [12] 2428 	mov	a,r4
      001694 F0               [24] 2429 	movx	@dptr,a
                                   2430 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:431: P2DR = pdr;
      001695 90 00 6C         [24] 2431 	mov	dptr,#_gpioConfigure_pdr_65537_125
      001698 E0               [24] 2432 	movx	a,@dptr
      001699 90 FE 2A         [24] 2433 	mov	dptr,#_P2DR
      00169C F0               [24] 2434 	movx	@dptr,a
                                   2435 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:432: P2SR = psr;
      00169D 90 00 6D         [24] 2436 	mov	dptr,#_gpioConfigure_psr_65537_125
      0016A0 E0               [24] 2437 	movx	a,@dptr
      0016A1 90 FE 22         [24] 2438 	mov	dptr,#_P2SR
      0016A4 F0               [24] 2439 	movx	@dptr,a
                                   2440 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:433: P2IE = pie;
      0016A5 90 00 6E         [24] 2441 	mov	dptr,#_gpioConfigure_pie_65537_125
      0016A8 E0               [24] 2442 	movx	a,@dptr
      0016A9 90 FE 32         [24] 2443 	mov	dptr,#_P2IE
      0016AC F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:437: P2IM1 = pim1;
      0016AD 90 FD 32         [24] 2446 	mov	dptr,#_P2IM1
      0016B0 E5 15            [12] 2447 	mov	a,_gpioConfigure_sloc1_1_0
      0016B2 F0               [24] 2448 	movx	@dptr,a
                                   2449 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:438: P2IM0 = pim0;
      0016B3 90 FD 22         [24] 2450 	mov	dptr,#_P2IM0
      0016B6 E5 18            [12] 2451 	mov	a,_gpioConfigure_sloc2_1_0
      0016B8 F0               [24] 2452 	movx	@dptr,a
                                   2453 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:439: P2INTF = pintf;
      0016B9 90 00 71         [24] 2454 	mov	dptr,#_gpioConfigure_pintf_65537_125
      0016BC E0               [24] 2455 	movx	a,@dptr
      0016BD 90 FD 12         [24] 2456 	mov	dptr,#_P2INTF
      0016C0 F0               [24] 2457 	movx	@dptr,a
                                   2458 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:440: P2INTE = pinte;
      0016C1 90 FD 02         [24] 2459 	mov	dptr,#_P2INTE
      0016C4 E5 12            [12] 2460 	mov	a,_gpioConfigure_sloc0_1_0
      0016C6 F0               [24] 2461 	movx	@dptr,a
                                   2462 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:441: P2WKUE = pwkue;
      0016C7 90 FD 42         [24] 2463 	mov	dptr,#_P2WKUE
      0016CA E5 1C            [12] 2464 	mov	a,_gpioConfigure_sloc4_1_0
      0016CC F0               [24] 2465 	movx	@dptr,a
                                   2466 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:443: break;
      0016CD 22               [24] 2467 	ret
                                   2468 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:448: case GPIO_PORT3:
      0016CE                       2469 00113$:
                                   2470 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:449: P3M1 = pm1;
      0016CE 8F B1            [24] 2471 	mov	_P3M1,r7
                                   2472 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:450: P3M0 = pm0;
      0016D0 8E B2            [24] 2473 	mov	_P3M0,r6
                                   2474 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:453: P3NCS = pncs;
      0016D2 90 FE 1B         [24] 2475 	mov	dptr,#_P3NCS
      0016D5 ED               [12] 2476 	mov	a,r5
      0016D6 F0               [24] 2477 	movx	@dptr,a
                                   2478 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:454: P3PU = ppu;
      0016D7 90 FE 13         [24] 2479 	mov	dptr,#_P3PU
      0016DA EC               [12] 2480 	mov	a,r4
      0016DB F0               [24] 2481 	movx	@dptr,a
                                   2482 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:458: P3DR = pdr;
      0016DC 90 00 6C         [24] 2483 	mov	dptr,#_gpioConfigure_pdr_65537_125
      0016DF E0               [24] 2484 	movx	a,@dptr
      0016E0 90 FE 2B         [24] 2485 	mov	dptr,#_P3DR
      0016E3 F0               [24] 2486 	movx	@dptr,a
                                   2487 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:459: P3SR = psr;
      0016E4 90 00 6D         [24] 2488 	mov	dptr,#_gpioConfigure_psr_65537_125
      0016E7 E0               [24] 2489 	movx	a,@dptr
      0016E8 90 FE 23         [24] 2490 	mov	dptr,#_P3SR
      0016EB F0               [24] 2491 	movx	@dptr,a
                                   2492 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:460: P3IE = pie;
      0016EC 90 00 6E         [24] 2493 	mov	dptr,#_gpioConfigure_pie_65537_125
      0016EF E0               [24] 2494 	movx	a,@dptr
      0016F0 90 FE 33         [24] 2495 	mov	dptr,#_P3IE
      0016F3 F0               [24] 2496 	movx	@dptr,a
                                   2497 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:464: P3IM1 = pim1;
      0016F4 90 FD 33         [24] 2498 	mov	dptr,#_P3IM1
      0016F7 E5 15            [12] 2499 	mov	a,_gpioConfigure_sloc1_1_0
      0016F9 F0               [24] 2500 	movx	@dptr,a
                                   2501 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:465: P3IM0 = pim0;
      0016FA 90 FD 23         [24] 2502 	mov	dptr,#_P3IM0
      0016FD E5 18            [12] 2503 	mov	a,_gpioConfigure_sloc2_1_0
      0016FF F0               [24] 2504 	movx	@dptr,a
                                   2505 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:466: P3INTF = pintf;
      001700 90 00 71         [24] 2506 	mov	dptr,#_gpioConfigure_pintf_65537_125
      001703 E0               [24] 2507 	movx	a,@dptr
      001704 90 FD 13         [24] 2508 	mov	dptr,#_P3INTF
      001707 F0               [24] 2509 	movx	@dptr,a
                                   2510 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:467: P3INTE = pinte;
      001708 90 FD 03         [24] 2511 	mov	dptr,#_P3INTE
      00170B E5 12            [12] 2512 	mov	a,_gpioConfigure_sloc0_1_0
      00170D F0               [24] 2513 	movx	@dptr,a
                                   2514 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:468: P3WKUE = pwkue;
      00170E 90 FD 43         [24] 2515 	mov	dptr,#_P3WKUE
      001711 E5 1C            [12] 2516 	mov	a,_gpioConfigure_sloc4_1_0
      001713 F0               [24] 2517 	movx	@dptr,a
                                   2518 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:470: break;
                                   2519 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:503: case GPIO_PORT5:
      001714 22               [24] 2520 	ret
      001715                       2521 00114$:
                                   2522 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:504: P5M1 = pm1;
      001715 8F C9            [24] 2523 	mov	_P5M1,r7
                                   2524 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:505: P5M0 = pm0;
      001717 8E CA            [24] 2525 	mov	_P5M0,r6
                                   2526 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:508: P5NCS = pncs;
      001719 90 FE 1D         [24] 2527 	mov	dptr,#_P5NCS
      00171C ED               [12] 2528 	mov	a,r5
      00171D F0               [24] 2529 	movx	@dptr,a
                                   2530 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:509: P5PU = ppu;
      00171E 90 FE 15         [24] 2531 	mov	dptr,#_P5PU
      001721 EC               [12] 2532 	mov	a,r4
      001722 F0               [24] 2533 	movx	@dptr,a
                                   2534 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:513: P5DR = pdr;
      001723 90 00 6C         [24] 2535 	mov	dptr,#_gpioConfigure_pdr_65537_125
      001726 E0               [24] 2536 	movx	a,@dptr
      001727 90 FE 2D         [24] 2537 	mov	dptr,#_P5DR
      00172A F0               [24] 2538 	movx	@dptr,a
                                   2539 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:514: P5SR = psr;
      00172B 90 00 6D         [24] 2540 	mov	dptr,#_gpioConfigure_psr_65537_125
      00172E E0               [24] 2541 	movx	a,@dptr
      00172F 90 FE 25         [24] 2542 	mov	dptr,#_P5SR
      001732 F0               [24] 2543 	movx	@dptr,a
                                   2544 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:515: P5IE = pie;
      001733 90 00 6E         [24] 2545 	mov	dptr,#_gpioConfigure_pie_65537_125
      001736 E0               [24] 2546 	movx	a,@dptr
      001737 90 FE 35         [24] 2547 	mov	dptr,#_P5IE
      00173A F0               [24] 2548 	movx	@dptr,a
                                   2549 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:519: P5IM1 = pim1;
      00173B 90 FD 35         [24] 2550 	mov	dptr,#_P5IM1
      00173E E5 15            [12] 2551 	mov	a,_gpioConfigure_sloc1_1_0
      001740 F0               [24] 2552 	movx	@dptr,a
                                   2553 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:520: P5IM0 = pim0;
      001741 90 FD 25         [24] 2554 	mov	dptr,#_P5IM0
      001744 E5 18            [12] 2555 	mov	a,_gpioConfigure_sloc2_1_0
      001746 F0               [24] 2556 	movx	@dptr,a
                                   2557 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:521: P5INTF = pintf;
      001747 90 00 71         [24] 2558 	mov	dptr,#_gpioConfigure_pintf_65537_125
      00174A E0               [24] 2559 	movx	a,@dptr
      00174B 90 FD 15         [24] 2560 	mov	dptr,#_P5INTF
      00174E F0               [24] 2561 	movx	@dptr,a
                                   2562 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:522: P5INTE = pinte;
      00174F 90 FD 05         [24] 2563 	mov	dptr,#_P5INTE
      001752 E5 12            [12] 2564 	mov	a,_gpioConfigure_sloc0_1_0
      001754 F0               [24] 2565 	movx	@dptr,a
                                   2566 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:523: P5WKUE = pwkue;
      001755 90 FD 45         [24] 2567 	mov	dptr,#_P5WKUE
      001758 E5 1C            [12] 2568 	mov	a,_gpioConfigure_sloc4_1_0
      00175A F0               [24] 2569 	movx	@dptr,a
                                   2570 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
                                   2571 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:584: }
      00175B 22               [24] 2572 	ret
                                   2573 ;------------------------------------------------------------
                                   2574 ;Allocation info for local variables in function '__getPort'
                                   2575 ;------------------------------------------------------------
                                   2576 ;port                      Allocated with name '___getPort_port_65536_130'
                                   2577 ;value                     Allocated with name '___getPort_value_65536_131'
                                   2578 ;------------------------------------------------------------
                                   2579 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:586: static uint8_t __getPort(GpioPort port) {
                                   2580 ;	-----------------------------------------
                                   2581 ;	 function __getPort
                                   2582 ;	-----------------------------------------
      00175C                       2583 ___getPort:
      00175C E5 82            [12] 2584 	mov	a,dpl
      00175E 90 00 74         [24] 2585 	mov	dptr,#___getPort_port_65536_130
      001761 F0               [24] 2586 	movx	@dptr,a
                                   2587 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:587: uint8_t value = 0;
      001762 90 00 75         [24] 2588 	mov	dptr,#___getPort_value_65536_131
      001765 E4               [12] 2589 	clr	a
      001766 F0               [24] 2590 	movx	@dptr,a
                                   2591 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:589: switch (port) {
      001767 90 00 74         [24] 2592 	mov	dptr,#___getPort_port_65536_130
      00176A E0               [24] 2593 	movx	a,@dptr
      00176B FF               [12] 2594 	mov	r7,a
      00176C BF 01 02         [24] 2595 	cjne	r7,#0x01,00124$
      00176F 80 0F            [24] 2596 	sjmp	00101$
      001771                       2597 00124$:
      001771 BF 02 02         [24] 2598 	cjne	r7,#0x02,00125$
      001774 80 12            [24] 2599 	sjmp	00102$
      001776                       2600 00125$:
      001776 BF 03 02         [24] 2601 	cjne	r7,#0x03,00126$
      001779 80 15            [24] 2602 	sjmp	00103$
      00177B                       2603 00126$:
                                   2604 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:599: case GPIO_PORT1:
      00177B BF 05 20         [24] 2605 	cjne	r7,#0x05,00105$
      00177E 80 18            [24] 2606 	sjmp	00104$
      001780                       2607 00101$:
                                   2608 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:600: value = P1;
      001780 90 00 75         [24] 2609 	mov	dptr,#___getPort_value_65536_131
      001783 E5 90            [12] 2610 	mov	a,_P1
      001785 F0               [24] 2611 	movx	@dptr,a
                                   2612 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:601: break;
                                   2613 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:606: case GPIO_PORT2:
      001786 80 16            [24] 2614 	sjmp	00105$
      001788                       2615 00102$:
                                   2616 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:607: value = P2;
      001788 90 00 75         [24] 2617 	mov	dptr,#___getPort_value_65536_131
      00178B E5 A0            [12] 2618 	mov	a,_P2
      00178D F0               [24] 2619 	movx	@dptr,a
                                   2620 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:608: break;
                                   2621 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:612: case GPIO_PORT3:
      00178E 80 0E            [24] 2622 	sjmp	00105$
      001790                       2623 00103$:
                                   2624 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:613: value = P3;
      001790 90 00 75         [24] 2625 	mov	dptr,#___getPort_value_65536_131
      001793 E5 B0            [12] 2626 	mov	a,_P3
      001795 F0               [24] 2627 	movx	@dptr,a
                                   2628 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:614: break;
                                   2629 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:625: case GPIO_PORT5:
      001796 80 06            [24] 2630 	sjmp	00105$
      001798                       2631 00104$:
                                   2632 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:626: value = P5;
      001798 90 00 75         [24] 2633 	mov	dptr,#___getPort_value_65536_131
      00179B E5 C8            [12] 2634 	mov	a,_P5
      00179D F0               [24] 2635 	movx	@dptr,a
                                   2636 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:644: }
      00179E                       2637 00105$:
                                   2638 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:646: return value;
      00179E 90 00 75         [24] 2639 	mov	dptr,#___getPort_value_65536_131
      0017A1 E0               [24] 2640 	movx	a,@dptr
                                   2641 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:647: }
      0017A2 F5 82            [12] 2642 	mov	dpl,a
      0017A4 22               [24] 2643 	ret
                                   2644 ;------------------------------------------------------------
                                   2645 ;Allocation info for local variables in function 'gpioRead'
                                   2646 ;------------------------------------------------------------
                                   2647 ;gpioConfig                Allocated with name '_gpioRead_gpioConfig_65536_133'
                                   2648 ;------------------------------------------------------------
                                   2649 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:649: uint8_t gpioRead(GpioConfig *gpioConfig) {
                                   2650 ;	-----------------------------------------
                                   2651 ;	 function gpioRead
                                   2652 ;	-----------------------------------------
      0017A5                       2653 _gpioRead:
      0017A5 AF F0            [24] 2654 	mov	r7,b
      0017A7 AE 83            [24] 2655 	mov	r6,dph
      0017A9 E5 82            [12] 2656 	mov	a,dpl
      0017AB 90 00 76         [24] 2657 	mov	dptr,#_gpioRead_gpioConfig_65536_133
      0017AE F0               [24] 2658 	movx	@dptr,a
      0017AF EE               [12] 2659 	mov	a,r6
      0017B0 A3               [24] 2660 	inc	dptr
      0017B1 F0               [24] 2661 	movx	@dptr,a
      0017B2 EF               [12] 2662 	mov	a,r7
      0017B3 A3               [24] 2663 	inc	dptr
      0017B4 F0               [24] 2664 	movx	@dptr,a
                                   2665 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:650: return (__getPort(gpioConfig->port) & gpioConfig->__setMask) >> gpioConfig->pin;
      0017B5 90 00 76         [24] 2666 	mov	dptr,#_gpioRead_gpioConfig_65536_133
      0017B8 E0               [24] 2667 	movx	a,@dptr
      0017B9 FD               [12] 2668 	mov	r5,a
      0017BA A3               [24] 2669 	inc	dptr
      0017BB E0               [24] 2670 	movx	a,@dptr
      0017BC FE               [12] 2671 	mov	r6,a
      0017BD A3               [24] 2672 	inc	dptr
      0017BE E0               [24] 2673 	movx	a,@dptr
      0017BF FF               [12] 2674 	mov	r7,a
      0017C0 8D 82            [24] 2675 	mov	dpl,r5
      0017C2 8E 83            [24] 2676 	mov	dph,r6
      0017C4 8F F0            [24] 2677 	mov	b,r7
      0017C6 12 3C 18         [24] 2678 	lcall	__gptrget
      0017C9 F5 82            [12] 2679 	mov	dpl,a
      0017CB C0 07            [24] 2680 	push	ar7
      0017CD C0 06            [24] 2681 	push	ar6
      0017CF C0 05            [24] 2682 	push	ar5
      0017D1 12 17 5C         [24] 2683 	lcall	___getPort
      0017D4 AC 82            [24] 2684 	mov	r4,dpl
      0017D6 D0 05            [24] 2685 	pop	ar5
      0017D8 D0 06            [24] 2686 	pop	ar6
      0017DA D0 07            [24] 2687 	pop	ar7
      0017DC 74 0B            [12] 2688 	mov	a,#0x0b
      0017DE 2D               [12] 2689 	add	a,r5
      0017DF F9               [12] 2690 	mov	r1,a
      0017E0 E4               [12] 2691 	clr	a
      0017E1 3E               [12] 2692 	addc	a,r6
      0017E2 FA               [12] 2693 	mov	r2,a
      0017E3 8F 03            [24] 2694 	mov	ar3,r7
      0017E5 89 82            [24] 2695 	mov	dpl,r1
      0017E7 8A 83            [24] 2696 	mov	dph,r2
      0017E9 8B F0            [24] 2697 	mov	b,r3
      0017EB 12 3C 18         [24] 2698 	lcall	__gptrget
      0017EE 52 04            [12] 2699 	anl	ar4,a
      0017F0 0D               [12] 2700 	inc	r5
      0017F1 BD 00 01         [24] 2701 	cjne	r5,#0x00,00103$
      0017F4 0E               [12] 2702 	inc	r6
      0017F5                       2703 00103$:
      0017F5 8D 82            [24] 2704 	mov	dpl,r5
      0017F7 8E 83            [24] 2705 	mov	dph,r6
      0017F9 8F F0            [24] 2706 	mov	b,r7
      0017FB 12 3C 18         [24] 2707 	lcall	__gptrget
      0017FE FD               [12] 2708 	mov	r5,a
      0017FF 8D F0            [24] 2709 	mov	b,r5
      001801 05 F0            [12] 2710 	inc	b
      001803 EC               [12] 2711 	mov	a,r4
      001804 80 02            [24] 2712 	sjmp	00105$
      001806                       2713 00104$:
      001806 C3               [12] 2714 	clr	c
      001807 13               [12] 2715 	rrc	a
      001808                       2716 00105$:
      001808 D5 F0 FB         [24] 2717 	djnz	b,00104$
                                   2718 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:651: }
      00180B F5 82            [12] 2719 	mov	dpl,a
      00180D 22               [24] 2720 	ret
                                   2721 ;------------------------------------------------------------
                                   2722 ;Allocation info for local variables in function 'gpioWrite'
                                   2723 ;------------------------------------------------------------
                                   2724 ;value                     Allocated with name '_gpioWrite_PARM_2'
                                   2725 ;gpioConfig                Allocated with name '_gpioWrite_gpioConfig_65536_135'
                                   2726 ;------------------------------------------------------------
                                   2727 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:653: void gpioWrite(GpioConfig *gpioConfig, uint8_t value) {
                                   2728 ;	-----------------------------------------
                                   2729 ;	 function gpioWrite
                                   2730 ;	-----------------------------------------
      00180E                       2731 _gpioWrite:
      00180E AF F0            [24] 2732 	mov	r7,b
      001810 AE 83            [24] 2733 	mov	r6,dph
      001812 E5 82            [12] 2734 	mov	a,dpl
      001814 90 00 7A         [24] 2735 	mov	dptr,#_gpioWrite_gpioConfig_65536_135
      001817 F0               [24] 2736 	movx	@dptr,a
      001818 EE               [12] 2737 	mov	a,r6
      001819 A3               [24] 2738 	inc	dptr
      00181A F0               [24] 2739 	movx	@dptr,a
      00181B EF               [12] 2740 	mov	a,r7
      00181C A3               [24] 2741 	inc	dptr
      00181D F0               [24] 2742 	movx	@dptr,a
                                   2743 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:654: if (gpioConfig->count == 1) {
      00181E 90 00 7A         [24] 2744 	mov	dptr,#_gpioWrite_gpioConfig_65536_135
      001821 E0               [24] 2745 	movx	a,@dptr
      001822 FD               [12] 2746 	mov	r5,a
      001823 A3               [24] 2747 	inc	dptr
      001824 E0               [24] 2748 	movx	a,@dptr
      001825 FE               [12] 2749 	mov	r6,a
      001826 A3               [24] 2750 	inc	dptr
      001827 E0               [24] 2751 	movx	a,@dptr
      001828 FF               [12] 2752 	mov	r7,a
      001829 74 02            [12] 2753 	mov	a,#0x02
      00182B 2D               [12] 2754 	add	a,r5
      00182C FA               [12] 2755 	mov	r2,a
      00182D E4               [12] 2756 	clr	a
      00182E 3E               [12] 2757 	addc	a,r6
      00182F FB               [12] 2758 	mov	r3,a
      001830 8F 04            [24] 2759 	mov	ar4,r7
      001832 8A 82            [24] 2760 	mov	dpl,r2
      001834 8B 83            [24] 2761 	mov	dph,r3
      001836 8C F0            [24] 2762 	mov	b,r4
      001838 12 3C 18         [24] 2763 	lcall	__gptrget
      00183B FA               [12] 2764 	mov	r2,a
      00183C BA 01 15         [24] 2765 	cjne	r2,#0x01,00102$
                                   2766 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:658: value = value ? 1 : 0;
      00183F 90 00 79         [24] 2767 	mov	dptr,#_gpioWrite_PARM_2
      001842 E0               [24] 2768 	movx	a,@dptr
      001843 60 06            [24] 2769 	jz	00110$
      001845 7B 01            [12] 2770 	mov	r3,#0x01
      001847 7C 00            [12] 2771 	mov	r4,#0x00
      001849 80 04            [24] 2772 	sjmp	00111$
      00184B                       2773 00110$:
      00184B 7B 00            [12] 2774 	mov	r3,#0x00
      00184D 7C 00            [12] 2775 	mov	r4,#0x00
      00184F                       2776 00111$:
      00184F 90 00 79         [24] 2777 	mov	dptr,#_gpioWrite_PARM_2
      001852 EB               [12] 2778 	mov	a,r3
      001853 F0               [24] 2779 	movx	@dptr,a
      001854                       2780 00102$:
                                   2781 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:661: value = (value << gpioConfig->pin) & gpioConfig->__setMask;
      001854 74 01            [12] 2782 	mov	a,#0x01
      001856 2D               [12] 2783 	add	a,r5
      001857 FA               [12] 2784 	mov	r2,a
      001858 E4               [12] 2785 	clr	a
      001859 3E               [12] 2786 	addc	a,r6
      00185A FB               [12] 2787 	mov	r3,a
      00185B 8F 04            [24] 2788 	mov	ar4,r7
      00185D 8A 82            [24] 2789 	mov	dpl,r2
      00185F 8B 83            [24] 2790 	mov	dph,r3
      001861 8C F0            [24] 2791 	mov	b,r4
      001863 12 3C 18         [24] 2792 	lcall	__gptrget
      001866 FA               [12] 2793 	mov	r2,a
      001867 90 00 79         [24] 2794 	mov	dptr,#_gpioWrite_PARM_2
      00186A E0               [24] 2795 	movx	a,@dptr
      00186B 8A F0            [24] 2796 	mov	b,r2
      00186D 05 F0            [12] 2797 	inc	b
      00186F 80 02            [24] 2798 	sjmp	00141$
      001871                       2799 00139$:
      001871 25 E0            [12] 2800 	add	a,acc
      001873                       2801 00141$:
      001873 D5 F0 FB         [24] 2802 	djnz	b,00139$
      001876 FA               [12] 2803 	mov	r2,a
      001877 74 0B            [12] 2804 	mov	a,#0x0b
      001879 2D               [12] 2805 	add	a,r5
      00187A F9               [12] 2806 	mov	r1,a
      00187B E4               [12] 2807 	clr	a
      00187C 3E               [12] 2808 	addc	a,r6
      00187D FB               [12] 2809 	mov	r3,a
      00187E 8F 04            [24] 2810 	mov	ar4,r7
      001880 89 82            [24] 2811 	mov	dpl,r1
      001882 8B 83            [24] 2812 	mov	dph,r3
      001884 8C F0            [24] 2813 	mov	b,r4
      001886 12 3C 18         [24] 2814 	lcall	__gptrget
      001889 90 00 79         [24] 2815 	mov	dptr,#_gpioWrite_PARM_2
      00188C 5A               [12] 2816 	anl	a,r2
      00188D F0               [24] 2817 	movx	@dptr,a
                                   2818 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:662: value |= __getPort(gpioConfig->port) & gpioConfig->__clearMask;
      00188E 8D 82            [24] 2819 	mov	dpl,r5
      001890 8E 83            [24] 2820 	mov	dph,r6
      001892 8F F0            [24] 2821 	mov	b,r7
      001894 12 3C 18         [24] 2822 	lcall	__gptrget
      001897 F5 82            [12] 2823 	mov	dpl,a
      001899 C0 07            [24] 2824 	push	ar7
      00189B C0 06            [24] 2825 	push	ar6
      00189D C0 05            [24] 2826 	push	ar5
      00189F 12 17 5C         [24] 2827 	lcall	___getPort
      0018A2 AC 82            [24] 2828 	mov	r4,dpl
      0018A4 D0 05            [24] 2829 	pop	ar5
      0018A6 D0 06            [24] 2830 	pop	ar6
      0018A8 D0 07            [24] 2831 	pop	ar7
      0018AA 74 0C            [12] 2832 	mov	a,#0x0c
      0018AC 2D               [12] 2833 	add	a,r5
      0018AD F9               [12] 2834 	mov	r1,a
      0018AE E4               [12] 2835 	clr	a
      0018AF 3E               [12] 2836 	addc	a,r6
      0018B0 FA               [12] 2837 	mov	r2,a
      0018B1 8F 03            [24] 2838 	mov	ar3,r7
      0018B3 89 82            [24] 2839 	mov	dpl,r1
      0018B5 8A 83            [24] 2840 	mov	dph,r2
      0018B7 8B F0            [24] 2841 	mov	b,r3
      0018B9 12 3C 18         [24] 2842 	lcall	__gptrget
      0018BC F9               [12] 2843 	mov	r1,a
      0018BD 52 04            [12] 2844 	anl	ar4,a
      0018BF 90 00 79         [24] 2845 	mov	dptr,#_gpioWrite_PARM_2
      0018C2 E0               [24] 2846 	movx	a,@dptr
      0018C3 4C               [12] 2847 	orl	a,r4
      0018C4 F0               [24] 2848 	movx	@dptr,a
                                   2849 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:664: switch (gpioConfig->port) {
      0018C5 8D 82            [24] 2850 	mov	dpl,r5
      0018C7 8E 83            [24] 2851 	mov	dph,r6
      0018C9 8F F0            [24] 2852 	mov	b,r7
      0018CB 12 3C 18         [24] 2853 	lcall	__gptrget
      0018CE FF               [12] 2854 	mov	r7,a
      0018CF BF 01 02         [24] 2855 	cjne	r7,#0x01,00142$
      0018D2 80 0F            [24] 2856 	sjmp	00103$
      0018D4                       2857 00142$:
      0018D4 BF 02 02         [24] 2858 	cjne	r7,#0x02,00143$
      0018D7 80 11            [24] 2859 	sjmp	00104$
      0018D9                       2860 00143$:
      0018D9 BF 03 02         [24] 2861 	cjne	r7,#0x03,00144$
      0018DC 80 13            [24] 2862 	sjmp	00105$
      0018DE                       2863 00144$:
                                   2864 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:674: case GPIO_PORT1:
      0018DE BF 05 1D         [24] 2865 	cjne	r7,#0x05,00108$
      0018E1 80 15            [24] 2866 	sjmp	00106$
      0018E3                       2867 00103$:
                                   2868 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:675: P1 = value;
      0018E3 90 00 79         [24] 2869 	mov	dptr,#_gpioWrite_PARM_2
      0018E6 E0               [24] 2870 	movx	a,@dptr
      0018E7 F5 90            [12] 2871 	mov	_P1,a
                                   2872 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:676: break;
                                   2873 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:681: case GPIO_PORT2:
      0018E9 22               [24] 2874 	ret
      0018EA                       2875 00104$:
                                   2876 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:682: P2 = value;
      0018EA 90 00 79         [24] 2877 	mov	dptr,#_gpioWrite_PARM_2
      0018ED E0               [24] 2878 	movx	a,@dptr
      0018EE F5 A0            [12] 2879 	mov	_P2,a
                                   2880 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:683: break;
                                   2881 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:687: case GPIO_PORT3:
      0018F0 22               [24] 2882 	ret
      0018F1                       2883 00105$:
                                   2884 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:688: P3 = value;
      0018F1 90 00 79         [24] 2885 	mov	dptr,#_gpioWrite_PARM_2
      0018F4 E0               [24] 2886 	movx	a,@dptr
      0018F5 F5 B0            [12] 2887 	mov	_P3,a
                                   2888 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:689: break;
                                   2889 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:700: case GPIO_PORT5:
      0018F7 22               [24] 2890 	ret
      0018F8                       2891 00106$:
                                   2892 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:701: P5 = value;
      0018F8 90 00 79         [24] 2893 	mov	dptr,#_gpioWrite_PARM_2
      0018FB E0               [24] 2894 	movx	a,@dptr
      0018FC F5 C8            [12] 2895 	mov	_P5,a
                                   2896 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:718: }
      0018FE                       2897 00108$:
                                   2898 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:719: }
      0018FE 22               [24] 2899 	ret
                                   2900 	.area CSEG    (CODE)
                                   2901 	.area CONST   (CODE)
                                   2902 	.area XINIT   (CODE)
                                   2903 	.area CABS    (ABS,CODE)
