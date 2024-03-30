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
      00004C                        898 _uartGetCharacter_result_65536_32:
      00004C                        899 	.ds 1
      00004D                        900 ___gpio_setBits_PARM_2:
      00004D                        901 	.ds 1
      00004E                        902 ___gpio_setBits_PARM_3:
      00004E                        903 	.ds 3
      000051                        904 ___gpio_setBits_portValue_65536_51:
      000051                        905 	.ds 1
      000052                        906 ___isOutput_gpioConfig_65536_53:
      000052                        907 	.ds 3
      000055                        908 ___isInput_gpioConfig_65536_55:
      000055                        909 	.ds 3
      000058                        910 _gpio_pin_init_PARM_2:
      000058                        911 	.ds 1
      000059                        912 _gpio_pin_init_PARM_3:
      000059                        913 	.ds 1
      00005A                        914 _gpio_pin_init_PARM_4:
      00005A                        915 	.ds 1
      00005B                        916 _gpio_pin_init_config_65536_57:
      00005B                        917 	.ds 3
      00005E                        918 _gpioConfigure_gpioConfig_65536_59:
      00005E                        919 	.ds 3
      000061                        920 _gpioConfigure_mask_65536_60:
      000061                        921 	.ds 1
      000062                        922 _gpioConfigure_pm1_65537_63:
      000062                        923 	.ds 1
      000063                        924 _gpioConfigure_pm0_65537_63:
      000063                        925 	.ds 1
      000064                        926 _gpioConfigure_pncs_65537_63:
      000064                        927 	.ds 1
      000065                        928 _gpioConfigure_ppu_65537_63:
      000065                        929 	.ds 1
      000066                        930 _gpioConfigure_pdr_65537_63:
      000066                        931 	.ds 1
      000067                        932 _gpioConfigure_psr_65537_63:
      000067                        933 	.ds 1
      000068                        934 _gpioConfigure_pie_65537_63:
      000068                        935 	.ds 1
      000069                        936 _gpioConfigure_pim1_65537_63:
      000069                        937 	.ds 1
      00006A                        938 _gpioConfigure_pim0_65537_63:
      00006A                        939 	.ds 1
      00006B                        940 _gpioConfigure_pintf_65537_63:
      00006B                        941 	.ds 1
      00006C                        942 _gpioConfigure_pinte_65537_63:
      00006C                        943 	.ds 1
      00006D                        944 _gpioConfigure_pwkue_65537_63:
      00006D                        945 	.ds 1
      00006E                        946 ___getPort_port_65536_68:
      00006E                        947 	.ds 1
      00006F                        948 ___getPort_value_65536_69:
      00006F                        949 	.ds 1
      000070                        950 _gpioRead_gpioConfig_65536_71:
      000070                        951 	.ds 3
      000073                        952 _gpioWrite_PARM_2:
      000073                        953 	.ds 1
      000074                        954 _gpioWrite_gpioConfig_65536_73:
      000074                        955 	.ds 3
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
                                    995 ;portValue                 Allocated with name '___gpio_setBits_portValue_65536_51'
                                    996 ;------------------------------------------------------------
                                    997 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:39: static uint8_t __gpio_setBits(uint8_t portValue, uint8_t cfgValue, GpioConfig *gpioConfig) {
                                    998 ;	-----------------------------------------
                                    999 ;	 function __gpio_setBits
                                   1000 ;	-----------------------------------------
      000DCB                       1001 ___gpio_setBits:
                           000007  1002 	ar7 = 0x07
                           000006  1003 	ar6 = 0x06
                           000005  1004 	ar5 = 0x05
                           000004  1005 	ar4 = 0x04
                           000003  1006 	ar3 = 0x03
                           000002  1007 	ar2 = 0x02
                           000001  1008 	ar1 = 0x01
                           000000  1009 	ar0 = 0x00
      000DCB E5 82            [12] 1010 	mov	a,dpl
      000DCD 90 00 51         [24] 1011 	mov	dptr,#___gpio_setBits_portValue_65536_51
      000DD0 F0               [24] 1012 	movx	@dptr,a
                                   1013 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:40: return cfgValue ? (portValue | gpioConfig->__setMask) : (portValue & gpioConfig->__clearMask);
      000DD1 90 00 4D         [24] 1014 	mov	dptr,#___gpio_setBits_PARM_2
      000DD4 E0               [24] 1015 	movx	a,@dptr
      000DD5 60 24            [24] 1016 	jz	00103$
      000DD7 90 00 4E         [24] 1017 	mov	dptr,#___gpio_setBits_PARM_3
      000DDA E0               [24] 1018 	movx	a,@dptr
      000DDB FD               [12] 1019 	mov	r5,a
      000DDC A3               [24] 1020 	inc	dptr
      000DDD E0               [24] 1021 	movx	a,@dptr
      000DDE FE               [12] 1022 	mov	r6,a
      000DDF A3               [24] 1023 	inc	dptr
      000DE0 E0               [24] 1024 	movx	a,@dptr
      000DE1 FF               [12] 1025 	mov	r7,a
      000DE2 74 0B            [12] 1026 	mov	a,#0x0b
      000DE4 2D               [12] 1027 	add	a,r5
      000DE5 FD               [12] 1028 	mov	r5,a
      000DE6 E4               [12] 1029 	clr	a
      000DE7 3E               [12] 1030 	addc	a,r6
      000DE8 FE               [12] 1031 	mov	r6,a
      000DE9 8D 82            [24] 1032 	mov	dpl,r5
      000DEB 8E 83            [24] 1033 	mov	dph,r6
      000DED 8F F0            [24] 1034 	mov	b,r7
      000DEF 12 1C 2A         [24] 1035 	lcall	__gptrget
      000DF2 FD               [12] 1036 	mov	r5,a
      000DF3 90 00 51         [24] 1037 	mov	dptr,#___gpio_setBits_portValue_65536_51
      000DF6 E0               [24] 1038 	movx	a,@dptr
      000DF7 4D               [12] 1039 	orl	a,r5
      000DF8 FF               [12] 1040 	mov	r7,a
      000DF9 80 22            [24] 1041 	sjmp	00104$
      000DFB                       1042 00103$:
      000DFB 90 00 4E         [24] 1043 	mov	dptr,#___gpio_setBits_PARM_3
      000DFE E0               [24] 1044 	movx	a,@dptr
      000DFF FC               [12] 1045 	mov	r4,a
      000E00 A3               [24] 1046 	inc	dptr
      000E01 E0               [24] 1047 	movx	a,@dptr
      000E02 FD               [12] 1048 	mov	r5,a
      000E03 A3               [24] 1049 	inc	dptr
      000E04 E0               [24] 1050 	movx	a,@dptr
      000E05 FE               [12] 1051 	mov	r6,a
      000E06 74 0C            [12] 1052 	mov	a,#0x0c
      000E08 2C               [12] 1053 	add	a,r4
      000E09 FC               [12] 1054 	mov	r4,a
      000E0A E4               [12] 1055 	clr	a
      000E0B 3D               [12] 1056 	addc	a,r5
      000E0C FD               [12] 1057 	mov	r5,a
      000E0D 8C 82            [24] 1058 	mov	dpl,r4
      000E0F 8D 83            [24] 1059 	mov	dph,r5
      000E11 8E F0            [24] 1060 	mov	b,r6
      000E13 12 1C 2A         [24] 1061 	lcall	__gptrget
      000E16 FC               [12] 1062 	mov	r4,a
      000E17 90 00 51         [24] 1063 	mov	dptr,#___gpio_setBits_portValue_65536_51
      000E1A E0               [24] 1064 	movx	a,@dptr
      000E1B 5C               [12] 1065 	anl	a,r4
      000E1C FF               [12] 1066 	mov	r7,a
      000E1D                       1067 00104$:
      000E1D 8F 82            [24] 1068 	mov	dpl,r7
                                   1069 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:41: }
      000E1F 22               [24] 1070 	ret
                                   1071 ;------------------------------------------------------------
                                   1072 ;Allocation info for local variables in function '__isOutput'
                                   1073 ;------------------------------------------------------------
                                   1074 ;gpioConfig                Allocated with name '___isOutput_gpioConfig_65536_53'
                                   1075 ;------------------------------------------------------------
                                   1076 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:43: static uint8_t __isOutput(GpioConfig *gpioConfig) {
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function __isOutput
                                   1079 ;	-----------------------------------------
      000E20                       1080 ___isOutput:
      000E20 AF F0            [24] 1081 	mov	r7,b
      000E22 AE 83            [24] 1082 	mov	r6,dph
      000E24 E5 82            [12] 1083 	mov	a,dpl
      000E26 90 00 52         [24] 1084 	mov	dptr,#___isOutput_gpioConfig_65536_53
      000E29 F0               [24] 1085 	movx	@dptr,a
      000E2A EE               [12] 1086 	mov	a,r6
      000E2B A3               [24] 1087 	inc	dptr
      000E2C F0               [24] 1088 	movx	@dptr,a
      000E2D EF               [12] 1089 	mov	a,r7
      000E2E A3               [24] 1090 	inc	dptr
      000E2F F0               [24] 1091 	movx	@dptr,a
                                   1092 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:44: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_PUSH_PULL_MODE || gpioConfig->pinMode == GPIO_OPEN_DRAIN_MODE;
      000E30 90 00 52         [24] 1093 	mov	dptr,#___isOutput_gpioConfig_65536_53
      000E33 E0               [24] 1094 	movx	a,@dptr
      000E34 FD               [12] 1095 	mov	r5,a
      000E35 A3               [24] 1096 	inc	dptr
      000E36 E0               [24] 1097 	movx	a,@dptr
      000E37 FE               [12] 1098 	mov	r6,a
      000E38 A3               [24] 1099 	inc	dptr
      000E39 E0               [24] 1100 	movx	a,@dptr
      000E3A FF               [12] 1101 	mov	r7,a
      000E3B 74 03            [12] 1102 	mov	a,#0x03
      000E3D 2D               [12] 1103 	add	a,r5
      000E3E FD               [12] 1104 	mov	r5,a
      000E3F E4               [12] 1105 	clr	a
      000E40 3E               [12] 1106 	addc	a,r6
      000E41 FE               [12] 1107 	mov	r6,a
      000E42 8D 82            [24] 1108 	mov	dpl,r5
      000E44 8E 83            [24] 1109 	mov	dph,r6
      000E46 8F F0            [24] 1110 	mov	b,r7
      000E48 12 1C 2A         [24] 1111 	lcall	__gptrget
      000E4B FF               [12] 1112 	mov	r7,a
      000E4C 60 0E            [24] 1113 	jz	00104$
      000E4E BF 01 02         [24] 1114 	cjne	r7,#0x01,00122$
      000E51 80 09            [24] 1115 	sjmp	00104$
      000E53                       1116 00122$:
      000E53 BF 03 02         [24] 1117 	cjne	r7,#0x03,00123$
      000E56 80 04            [24] 1118 	sjmp	00104$
      000E58                       1119 00123$:
      000E58 7F 00            [12] 1120 	mov	r7,#0x00
      000E5A 80 02            [24] 1121 	sjmp	00105$
      000E5C                       1122 00104$:
      000E5C 7F 01            [12] 1123 	mov	r7,#0x01
      000E5E                       1124 00105$:
      000E5E 8F 82            [24] 1125 	mov	dpl,r7
                                   1126 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:45: }
      000E60 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function '__isInput'
                                   1130 ;------------------------------------------------------------
                                   1131 ;gpioConfig                Allocated with name '___isInput_gpioConfig_65536_55'
                                   1132 ;------------------------------------------------------------
                                   1133 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:47: static uint8_t __isInput(GpioConfig *gpioConfig) {
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function __isInput
                                   1136 ;	-----------------------------------------
      000E61                       1137 ___isInput:
      000E61 AF F0            [24] 1138 	mov	r7,b
      000E63 AE 83            [24] 1139 	mov	r6,dph
      000E65 E5 82            [12] 1140 	mov	a,dpl
      000E67 90 00 55         [24] 1141 	mov	dptr,#___isInput_gpioConfig_65536_55
      000E6A F0               [24] 1142 	movx	@dptr,a
      000E6B EE               [12] 1143 	mov	a,r6
      000E6C A3               [24] 1144 	inc	dptr
      000E6D F0               [24] 1145 	movx	@dptr,a
      000E6E EF               [12] 1146 	mov	a,r7
      000E6F A3               [24] 1147 	inc	dptr
      000E70 F0               [24] 1148 	movx	@dptr,a
                                   1149 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:48: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_HIGH_IMPEDANCE_MODE;
      000E71 90 00 55         [24] 1150 	mov	dptr,#___isInput_gpioConfig_65536_55
      000E74 E0               [24] 1151 	movx	a,@dptr
      000E75 FD               [12] 1152 	mov	r5,a
      000E76 A3               [24] 1153 	inc	dptr
      000E77 E0               [24] 1154 	movx	a,@dptr
      000E78 FE               [12] 1155 	mov	r6,a
      000E79 A3               [24] 1156 	inc	dptr
      000E7A E0               [24] 1157 	movx	a,@dptr
      000E7B FF               [12] 1158 	mov	r7,a
      000E7C 74 03            [12] 1159 	mov	a,#0x03
      000E7E 2D               [12] 1160 	add	a,r5
      000E7F FD               [12] 1161 	mov	r5,a
      000E80 E4               [12] 1162 	clr	a
      000E81 3E               [12] 1163 	addc	a,r6
      000E82 FE               [12] 1164 	mov	r6,a
      000E83 8D 82            [24] 1165 	mov	dpl,r5
      000E85 8E 83            [24] 1166 	mov	dph,r6
      000E87 8F F0            [24] 1167 	mov	b,r7
      000E89 12 1C 2A         [24] 1168 	lcall	__gptrget
      000E8C FF               [12] 1169 	mov	r7,a
      000E8D 60 09            [24] 1170 	jz	00104$
      000E8F BF 02 02         [24] 1171 	cjne	r7,#0x02,00115$
      000E92 80 04            [24] 1172 	sjmp	00104$
      000E94                       1173 00115$:
      000E94 7F 00            [12] 1174 	mov	r7,#0x00
      000E96 80 02            [24] 1175 	sjmp	00105$
      000E98                       1176 00104$:
      000E98 7F 01            [12] 1177 	mov	r7,#0x01
      000E9A                       1178 00105$:
      000E9A 8F 82            [24] 1179 	mov	dpl,r7
                                   1180 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:49: }
      000E9C 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'gpio_pin_init'
                                   1184 ;------------------------------------------------------------
                                   1185 ;gpioPort                  Allocated with name '_gpio_pin_init_PARM_2'
                                   1186 ;gpioPin                   Allocated with name '_gpio_pin_init_PARM_3'
                                   1187 ;gpioMode                  Allocated with name '_gpio_pin_init_PARM_4'
                                   1188 ;config                    Allocated with name '_gpio_pin_init_config_65536_57'
                                   1189 ;------------------------------------------------------------
                                   1190 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:51: void gpio_pin_init(GpioConfig *config, GpioPort gpioPort, GpioPin gpioPin, GpioPinMode gpioMode) {
                                   1191 ;	-----------------------------------------
                                   1192 ;	 function gpio_pin_init
                                   1193 ;	-----------------------------------------
      000E9D                       1194 _gpio_pin_init:
      000E9D AF F0            [24] 1195 	mov	r7,b
      000E9F AE 83            [24] 1196 	mov	r6,dph
      000EA1 E5 82            [12] 1197 	mov	a,dpl
      000EA3 90 00 5B         [24] 1198 	mov	dptr,#_gpio_pin_init_config_65536_57
      000EA6 F0               [24] 1199 	movx	@dptr,a
      000EA7 EE               [12] 1200 	mov	a,r6
      000EA8 A3               [24] 1201 	inc	dptr
      000EA9 F0               [24] 1202 	movx	@dptr,a
      000EAA EF               [12] 1203 	mov	a,r7
      000EAB A3               [24] 1204 	inc	dptr
      000EAC F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:53: config->port = gpioPort;
      000EAD 90 00 5B         [24] 1207 	mov	dptr,#_gpio_pin_init_config_65536_57
      000EB0 E0               [24] 1208 	movx	a,@dptr
      000EB1 FD               [12] 1209 	mov	r5,a
      000EB2 A3               [24] 1210 	inc	dptr
      000EB3 E0               [24] 1211 	movx	a,@dptr
      000EB4 FE               [12] 1212 	mov	r6,a
      000EB5 A3               [24] 1213 	inc	dptr
      000EB6 E0               [24] 1214 	movx	a,@dptr
      000EB7 FF               [12] 1215 	mov	r7,a
      000EB8 90 00 58         [24] 1216 	mov	dptr,#_gpio_pin_init_PARM_2
      000EBB E0               [24] 1217 	movx	a,@dptr
      000EBC 8D 82            [24] 1218 	mov	dpl,r5
      000EBE 8E 83            [24] 1219 	mov	dph,r6
      000EC0 8F F0            [24] 1220 	mov	b,r7
      000EC2 12 1C 0F         [24] 1221 	lcall	__gptrput
                                   1222 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:54: config->pin = gpioPin;
      000EC5 74 01            [12] 1223 	mov	a,#0x01
      000EC7 2D               [12] 1224 	add	a,r5
      000EC8 FA               [12] 1225 	mov	r2,a
      000EC9 E4               [12] 1226 	clr	a
      000ECA 3E               [12] 1227 	addc	a,r6
      000ECB FB               [12] 1228 	mov	r3,a
      000ECC 8F 04            [24] 1229 	mov	ar4,r7
      000ECE 90 00 59         [24] 1230 	mov	dptr,#_gpio_pin_init_PARM_3
      000ED1 E0               [24] 1231 	movx	a,@dptr
      000ED2 8A 82            [24] 1232 	mov	dpl,r2
      000ED4 8B 83            [24] 1233 	mov	dph,r3
      000ED6 8C F0            [24] 1234 	mov	b,r4
      000ED8 12 1C 0F         [24] 1235 	lcall	__gptrput
                                   1236 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:55: config->pinMode = gpioMode;
      000EDB 74 03            [12] 1237 	mov	a,#0x03
      000EDD 2D               [12] 1238 	add	a,r5
      000EDE FA               [12] 1239 	mov	r2,a
      000EDF E4               [12] 1240 	clr	a
      000EE0 3E               [12] 1241 	addc	a,r6
      000EE1 FB               [12] 1242 	mov	r3,a
      000EE2 8F 04            [24] 1243 	mov	ar4,r7
      000EE4 90 00 5A         [24] 1244 	mov	dptr,#_gpio_pin_init_PARM_4
      000EE7 E0               [24] 1245 	movx	a,@dptr
      000EE8 8A 82            [24] 1246 	mov	dpl,r2
      000EEA 8B 83            [24] 1247 	mov	dph,r3
      000EEC 8C F0            [24] 1248 	mov	b,r4
      000EEE 12 1C 0F         [24] 1249 	lcall	__gptrput
                                   1250 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:58: config->schmidtTrigger = DISABLE_SCHMIDT_TRIGGER;
      000EF1 74 04            [12] 1251 	mov	a,#0x04
      000EF3 2D               [12] 1252 	add	a,r5
      000EF4 FA               [12] 1253 	mov	r2,a
      000EF5 E4               [12] 1254 	clr	a
      000EF6 3E               [12] 1255 	addc	a,r6
      000EF7 FB               [12] 1256 	mov	r3,a
      000EF8 8F 04            [24] 1257 	mov	ar4,r7
      000EFA 8A 82            [24] 1258 	mov	dpl,r2
      000EFC 8B 83            [24] 1259 	mov	dph,r3
      000EFE 8C F0            [24] 1260 	mov	b,r4
      000F00 E4               [12] 1261 	clr	a
      000F01 12 1C 0F         [24] 1262 	lcall	__gptrput
                                   1263 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:59: config->internalPullUp = DISABLE_INTERNAL_PULL_UP;
      000F04 74 05            [12] 1264 	mov	a,#0x05
      000F06 2D               [12] 1265 	add	a,r5
      000F07 FA               [12] 1266 	mov	r2,a
      000F08 E4               [12] 1267 	clr	a
      000F09 3E               [12] 1268 	addc	a,r6
      000F0A FB               [12] 1269 	mov	r3,a
      000F0B 8F 04            [24] 1270 	mov	ar4,r7
      000F0D 8A 82            [24] 1271 	mov	dpl,r2
      000F0F 8B 83            [24] 1272 	mov	dph,r3
      000F11 8C F0            [24] 1273 	mov	b,r4
      000F13 E4               [12] 1274 	clr	a
      000F14 12 1C 0F         [24] 1275 	lcall	__gptrput
                                   1276 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:63: config->speed = GPIO_SPEED_SLOWEST;
      000F17 74 06            [12] 1277 	mov	a,#0x06
      000F19 2D               [12] 1278 	add	a,r5
      000F1A FA               [12] 1279 	mov	r2,a
      000F1B E4               [12] 1280 	clr	a
      000F1C 3E               [12] 1281 	addc	a,r6
      000F1D FB               [12] 1282 	mov	r3,a
      000F1E 8F 04            [24] 1283 	mov	ar4,r7
      000F20 8A 82            [24] 1284 	mov	dpl,r2
      000F22 8B 83            [24] 1285 	mov	dph,r3
      000F24 8C F0            [24] 1286 	mov	b,r4
      000F26 74 03            [12] 1287 	mov	a,#0x03
      000F28 12 1C 0F         [24] 1288 	lcall	__gptrput
                                   1289 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:64: config->digitalInput = ENABLE_GPIO_DIGITAL_INPUT;
      000F2B 74 07            [12] 1290 	mov	a,#0x07
      000F2D 2D               [12] 1291 	add	a,r5
      000F2E FA               [12] 1292 	mov	r2,a
      000F2F E4               [12] 1293 	clr	a
      000F30 3E               [12] 1294 	addc	a,r6
      000F31 FB               [12] 1295 	mov	r3,a
      000F32 8F 04            [24] 1296 	mov	ar4,r7
      000F34 8A 82            [24] 1297 	mov	dpl,r2
      000F36 8B 83            [24] 1298 	mov	dph,r3
      000F38 8C F0            [24] 1299 	mov	b,r4
      000F3A 74 01            [12] 1300 	mov	a,#0x01
      000F3C 12 1C 0F         [24] 1301 	lcall	__gptrput
                                   1302 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:68: config->pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT;
      000F3F 74 08            [12] 1303 	mov	a,#0x08
      000F41 2D               [12] 1304 	add	a,r5
      000F42 FA               [12] 1305 	mov	r2,a
      000F43 E4               [12] 1306 	clr	a
      000F44 3E               [12] 1307 	addc	a,r6
      000F45 FB               [12] 1308 	mov	r3,a
      000F46 8F 04            [24] 1309 	mov	ar4,r7
      000F48 8A 82            [24] 1310 	mov	dpl,r2
      000F4A 8B 83            [24] 1311 	mov	dph,r3
      000F4C 8C F0            [24] 1312 	mov	b,r4
      000F4E E4               [12] 1313 	clr	a
      000F4F 12 1C 0F         [24] 1314 	lcall	__gptrput
                                   1315 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:69: config->interruptTrigger = GPIO_FALLING_EDGE;
      000F52 74 09            [12] 1316 	mov	a,#0x09
      000F54 2D               [12] 1317 	add	a,r5
      000F55 FA               [12] 1318 	mov	r2,a
      000F56 E4               [12] 1319 	clr	a
      000F57 3E               [12] 1320 	addc	a,r6
      000F58 FB               [12] 1321 	mov	r3,a
      000F59 8F 04            [24] 1322 	mov	ar4,r7
      000F5B 8A 82            [24] 1323 	mov	dpl,r2
      000F5D 8B 83            [24] 1324 	mov	dph,r3
      000F5F 8C F0            [24] 1325 	mov	b,r4
      000F61 E4               [12] 1326 	clr	a
      000F62 12 1C 0F         [24] 1327 	lcall	__gptrput
                                   1328 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:70: config->wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP;
      000F65 74 0A            [12] 1329 	mov	a,#0x0a
      000F67 2D               [12] 1330 	add	a,r5
      000F68 FD               [12] 1331 	mov	r5,a
      000F69 E4               [12] 1332 	clr	a
      000F6A 3E               [12] 1333 	addc	a,r6
      000F6B FE               [12] 1334 	mov	r6,a
      000F6C 8D 82            [24] 1335 	mov	dpl,r5
      000F6E 8E 83            [24] 1336 	mov	dph,r6
      000F70 8F F0            [24] 1337 	mov	b,r7
      000F72 E4               [12] 1338 	clr	a
                                   1339 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:73: return;
                                   1340 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:74: }
      000F73 02 1C 0F         [24] 1341 	ljmp	__gptrput
                                   1342 ;------------------------------------------------------------
                                   1343 ;Allocation info for local variables in function 'gpioConfigure'
                                   1344 ;------------------------------------------------------------
                                   1345 ;sloc0                     Allocated with name '_gpioConfigure_sloc0_1_0'
                                   1346 ;sloc1                     Allocated with name '_gpioConfigure_sloc1_1_0'
                                   1347 ;sloc2                     Allocated with name '_gpioConfigure_sloc2_1_0'
                                   1348 ;sloc3                     Allocated with name '_gpioConfigure_sloc3_1_0'
                                   1349 ;sloc4                     Allocated with name '_gpioConfigure_sloc4_1_0'
                                   1350 ;gpioConfig                Allocated with name '_gpioConfigure_gpioConfig_65536_59'
                                   1351 ;mask                      Allocated with name '_gpioConfigure_mask_65536_60'
                                   1352 ;n                         Allocated with name '_gpioConfigure_n_131072_61'
                                   1353 ;pm1                       Allocated with name '_gpioConfigure_pm1_65537_63'
                                   1354 ;pm0                       Allocated with name '_gpioConfigure_pm0_65537_63'
                                   1355 ;pncs                      Allocated with name '_gpioConfigure_pncs_65537_63'
                                   1356 ;ppu                       Allocated with name '_gpioConfigure_ppu_65537_63'
                                   1357 ;pdr                       Allocated with name '_gpioConfigure_pdr_65537_63'
                                   1358 ;psr                       Allocated with name '_gpioConfigure_psr_65537_63'
                                   1359 ;pie                       Allocated with name '_gpioConfigure_pie_65537_63'
                                   1360 ;pim1                      Allocated with name '_gpioConfigure_pim1_65537_63'
                                   1361 ;pim0                      Allocated with name '_gpioConfigure_pim0_65537_63'
                                   1362 ;pintf                     Allocated with name '_gpioConfigure_pintf_65537_63'
                                   1363 ;pinte                     Allocated with name '_gpioConfigure_pinte_65537_63'
                                   1364 ;pwkue                     Allocated with name '_gpioConfigure_pwkue_65537_63'
                                   1365 ;------------------------------------------------------------
                                   1366 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:76: void gpioConfigure(GpioConfig *gpioConfig) {
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function gpioConfigure
                                   1369 ;	-----------------------------------------
      000F76                       1370 _gpioConfigure:
      000F76 AF F0            [24] 1371 	mov	r7,b
      000F78 AE 83            [24] 1372 	mov	r6,dph
      000F7A E5 82            [12] 1373 	mov	a,dpl
      000F7C 90 00 5E         [24] 1374 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      000F7F F0               [24] 1375 	movx	@dptr,a
      000F80 EE               [12] 1376 	mov	a,r6
      000F81 A3               [24] 1377 	inc	dptr
      000F82 F0               [24] 1378 	movx	@dptr,a
      000F83 EF               [12] 1379 	mov	a,r7
      000F84 A3               [24] 1380 	inc	dptr
      000F85 F0               [24] 1381 	movx	@dptr,a
                                   1382 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:78: uint8_t mask = 0;
      000F86 90 00 61         [24] 1383 	mov	dptr,#_gpioConfigure_mask_65536_60
      000F89 E4               [12] 1384 	clr	a
      000F8A F0               [24] 1385 	movx	@dptr,a
                                   1386 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:80: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      000F8B 90 00 5E         [24] 1387 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      000F8E E0               [24] 1388 	movx	a,@dptr
      000F8F FD               [12] 1389 	mov	r5,a
      000F90 A3               [24] 1390 	inc	dptr
      000F91 E0               [24] 1391 	movx	a,@dptr
      000F92 FE               [12] 1392 	mov	r6,a
      000F93 A3               [24] 1393 	inc	dptr
      000F94 E0               [24] 1394 	movx	a,@dptr
      000F95 FF               [12] 1395 	mov	r7,a
      000F96 74 02            [12] 1396 	mov	a,#0x02
      000F98 2D               [12] 1397 	add	a,r5
      000F99 FA               [12] 1398 	mov	r2,a
      000F9A E4               [12] 1399 	clr	a
      000F9B 3E               [12] 1400 	addc	a,r6
      000F9C FB               [12] 1401 	mov	r3,a
      000F9D 8F 04            [24] 1402 	mov	ar4,r7
      000F9F 8A 82            [24] 1403 	mov	dpl,r2
      000FA1 8B 83            [24] 1404 	mov	dph,r3
      000FA3 8C F0            [24] 1405 	mov	b,r4
      000FA5 12 1C 2A         [24] 1406 	lcall	__gptrget
      000FA8 FC               [12] 1407 	mov	r4,a
      000FA9                       1408 00117$:
      000FA9 EC               [12] 1409 	mov	a,r4
      000FAA 60 10            [24] 1410 	jz	00101$
                                   1411 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:81: mask = mask << 1;
      000FAC 90 00 61         [24] 1412 	mov	dptr,#_gpioConfigure_mask_65536_60
      000FAF E0               [24] 1413 	movx	a,@dptr
      000FB0 25 E0            [12] 1414 	add	a,acc
      000FB2 FB               [12] 1415 	mov	r3,a
      000FB3 F0               [24] 1416 	movx	@dptr,a
                                   1417 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:82: mask |= 1;
      000FB4 E0               [24] 1418 	movx	a,@dptr
      000FB5 43 E0 01         [24] 1419 	orl	acc,#0x01
      000FB8 F0               [24] 1420 	movx	@dptr,a
                                   1421 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:80: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      000FB9 1C               [12] 1422 	dec	r4
      000FBA 80 ED            [24] 1423 	sjmp	00117$
      000FBC                       1424 00101$:
                                   1425 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:85: gpioConfig->__setMask = mask << gpioConfig->pin;
      000FBC 74 0B            [12] 1426 	mov	a,#0x0b
      000FBE 2D               [12] 1427 	add	a,r5
      000FBF F5 12            [12] 1428 	mov	_gpioConfigure_sloc0_1_0,a
      000FC1 E4               [12] 1429 	clr	a
      000FC2 3E               [12] 1430 	addc	a,r6
      000FC3 F5 13            [12] 1431 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      000FC5 8F 14            [24] 1432 	mov	(_gpioConfigure_sloc0_1_0 + 2),r7
      000FC7 74 01            [12] 1433 	mov	a,#0x01
      000FC9 2D               [12] 1434 	add	a,r5
      000FCA F8               [12] 1435 	mov	r0,a
      000FCB E4               [12] 1436 	clr	a
      000FCC 3E               [12] 1437 	addc	a,r6
      000FCD F9               [12] 1438 	mov	r1,a
      000FCE 8F 04            [24] 1439 	mov	ar4,r7
      000FD0 88 82            [24] 1440 	mov	dpl,r0
      000FD2 89 83            [24] 1441 	mov	dph,r1
      000FD4 8C F0            [24] 1442 	mov	b,r4
      000FD6 12 1C 2A         [24] 1443 	lcall	__gptrget
      000FD9 F8               [12] 1444 	mov	r0,a
      000FDA 90 00 61         [24] 1445 	mov	dptr,#_gpioConfigure_mask_65536_60
      000FDD E0               [24] 1446 	movx	a,@dptr
      000FDE 88 F0            [24] 1447 	mov	b,r0
      000FE0 05 F0            [12] 1448 	inc	b
      000FE2 80 02            [24] 1449 	sjmp	00175$
      000FE4                       1450 00173$:
      000FE4 25 E0            [12] 1451 	add	a,acc
      000FE6                       1452 00175$:
      000FE6 D5 F0 FB         [24] 1453 	djnz	b,00173$
      000FE9 F8               [12] 1454 	mov	r0,a
      000FEA 85 12 82         [24] 1455 	mov	dpl,_gpioConfigure_sloc0_1_0
      000FED 85 13 83         [24] 1456 	mov	dph,(_gpioConfigure_sloc0_1_0 + 1)
      000FF0 85 14 F0         [24] 1457 	mov	b,(_gpioConfigure_sloc0_1_0 + 2)
      000FF3 12 1C 0F         [24] 1458 	lcall	__gptrput
                                   1459 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:86: gpioConfig->__clearMask = ~gpioConfig->__setMask;
      000FF6 74 0C            [12] 1460 	mov	a,#0x0c
      000FF8 2D               [12] 1461 	add	a,r5
      000FF9 FA               [12] 1462 	mov	r2,a
      000FFA E4               [12] 1463 	clr	a
      000FFB 3E               [12] 1464 	addc	a,r6
      000FFC FB               [12] 1465 	mov	r3,a
      000FFD 8F 04            [24] 1466 	mov	ar4,r7
      000FFF E8               [12] 1467 	mov	a,r0
      001000 F4               [12] 1468 	cpl	a
      001001 F8               [12] 1469 	mov	r0,a
      001002 8A 82            [24] 1470 	mov	dpl,r2
      001004 8B 83            [24] 1471 	mov	dph,r3
      001006 8C F0            [24] 1472 	mov	b,r4
      001008 12 1C 0F         [24] 1473 	lcall	__gptrput
                                   1474 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:88: uint8_t pm1 = 0;
      00100B 90 00 62         [24] 1475 	mov	dptr,#_gpioConfigure_pm1_65537_63
      00100E E4               [12] 1476 	clr	a
      00100F F0               [24] 1477 	movx	@dptr,a
                                   1478 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:89: uint8_t pm0 = 0;
      001010 90 00 63         [24] 1479 	mov	dptr,#_gpioConfigure_pm0_65537_63
      001013 F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:92: uint8_t pncs = 0;
      001014 90 00 64         [24] 1482 	mov	dptr,#_gpioConfigure_pncs_65537_63
      001017 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:93: uint8_t ppu = 0;
      001018 90 00 65         [24] 1485 	mov	dptr,#_gpioConfigure_ppu_65537_63
      00101B F0               [24] 1486 	movx	@dptr,a
                                   1487 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:97: uint8_t pdr = 0;
      00101C 90 00 66         [24] 1488 	mov	dptr,#_gpioConfigure_pdr_65537_63
      00101F F0               [24] 1489 	movx	@dptr,a
                                   1490 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:98: uint8_t psr = 0;
      001020 90 00 67         [24] 1491 	mov	dptr,#_gpioConfigure_psr_65537_63
      001023 F0               [24] 1492 	movx	@dptr,a
                                   1493 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:99: uint8_t pie = 0;
      001024 90 00 68         [24] 1494 	mov	dptr,#_gpioConfigure_pie_65537_63
      001027 F0               [24] 1495 	movx	@dptr,a
                                   1496 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:103: uint8_t pim1 = 0;
      001028 90 00 69         [24] 1497 	mov	dptr,#_gpioConfigure_pim1_65537_63
      00102B F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:104: uint8_t pim0 = 0;
      00102C 90 00 6A         [24] 1500 	mov	dptr,#_gpioConfigure_pim0_65537_63
      00102F F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:105: uint8_t pintf = 0;
      001030 90 00 6B         [24] 1503 	mov	dptr,#_gpioConfigure_pintf_65537_63
      001033 F0               [24] 1504 	movx	@dptr,a
                                   1505 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:106: uint8_t pinte = 0;
      001034 90 00 6C         [24] 1506 	mov	dptr,#_gpioConfigure_pinte_65537_63
      001037 F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:107: uint8_t pwkue = 0;
      001038 90 00 6D         [24] 1509 	mov	dptr,#_gpioConfigure_pwkue_65537_63
      00103B F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:110: switch (gpioConfig->port) {
      00103C 8D 82            [24] 1512 	mov	dpl,r5
      00103E 8E 83            [24] 1513 	mov	dph,r6
      001040 8F F0            [24] 1514 	mov	b,r7
      001042 12 1C 2A         [24] 1515 	lcall	__gptrget
      001045 FF               [12] 1516 	mov	r7,a
      001046 BF 01 02         [24] 1517 	cjne	r7,#0x01,00176$
      001049 80 14            [24] 1518 	sjmp	00102$
      00104B                       1519 00176$:
      00104B BF 02 02         [24] 1520 	cjne	r7,#0x02,00177$
      00104E 80 6E            [24] 1521 	sjmp	00103$
      001050                       1522 00177$:
      001050 BF 03 03         [24] 1523 	cjne	r7,#0x03,00178$
      001053 02 11 1D         [24] 1524 	ljmp	00104$
      001056                       1525 00178$:
      001056 BF 05 03         [24] 1526 	cjne	r7,#0x05,00179$
      001059 02 11 7B         [24] 1527 	ljmp	00105$
      00105C                       1528 00179$:
      00105C 02 11 D7         [24] 1529 	ljmp	00106$
                                   1530 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:142: case GPIO_PORT1:
      00105F                       1531 00102$:
                                   1532 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:143: pm1 = P1M1;
      00105F 90 00 62         [24] 1533 	mov	dptr,#_gpioConfigure_pm1_65537_63
      001062 E5 91            [12] 1534 	mov	a,_P1M1
      001064 F0               [24] 1535 	movx	@dptr,a
                                   1536 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:144: pm0 = P1M0;
      001065 90 00 63         [24] 1537 	mov	dptr,#_gpioConfigure_pm0_65537_63
      001068 E5 92            [12] 1538 	mov	a,_P1M0
      00106A F0               [24] 1539 	movx	@dptr,a
                                   1540 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:147: pncs = P1NCS;
      00106B 90 FE 19         [24] 1541 	mov	dptr,#_P1NCS
      00106E E0               [24] 1542 	movx	a,@dptr
      00106F 90 00 64         [24] 1543 	mov	dptr,#_gpioConfigure_pncs_65537_63
      001072 F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:148: ppu = P1PU;
      001073 90 FE 11         [24] 1546 	mov	dptr,#_P1PU
      001076 E0               [24] 1547 	movx	a,@dptr
      001077 90 00 65         [24] 1548 	mov	dptr,#_gpioConfigure_ppu_65537_63
      00107A F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:152: pdr = P1DR;
      00107B 90 FE 29         [24] 1551 	mov	dptr,#_P1DR
      00107E E0               [24] 1552 	movx	a,@dptr
      00107F 90 00 66         [24] 1553 	mov	dptr,#_gpioConfigure_pdr_65537_63
      001082 F0               [24] 1554 	movx	@dptr,a
                                   1555 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:153: psr = P1SR;
      001083 90 FE 21         [24] 1556 	mov	dptr,#_P1SR
      001086 E0               [24] 1557 	movx	a,@dptr
      001087 90 00 67         [24] 1558 	mov	dptr,#_gpioConfigure_psr_65537_63
      00108A F0               [24] 1559 	movx	@dptr,a
                                   1560 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:154: pie = P1IE;
      00108B 90 FE 31         [24] 1561 	mov	dptr,#_P1IE
      00108E E0               [24] 1562 	movx	a,@dptr
      00108F 90 00 68         [24] 1563 	mov	dptr,#_gpioConfigure_pie_65537_63
      001092 F0               [24] 1564 	movx	@dptr,a
                                   1565 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:158: pim1 = P1IM1;
      001093 90 FD 31         [24] 1566 	mov	dptr,#_P1IM1
      001096 E0               [24] 1567 	movx	a,@dptr
      001097 90 00 69         [24] 1568 	mov	dptr,#_gpioConfigure_pim1_65537_63
      00109A F0               [24] 1569 	movx	@dptr,a
                                   1570 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:159: pim0 = P1IM0;
      00109B 90 FD 21         [24] 1571 	mov	dptr,#_P1IM0
      00109E E0               [24] 1572 	movx	a,@dptr
      00109F 90 00 6A         [24] 1573 	mov	dptr,#_gpioConfigure_pim0_65537_63
      0010A2 F0               [24] 1574 	movx	@dptr,a
                                   1575 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:160: pintf = P1INTF;
      0010A3 90 FD 11         [24] 1576 	mov	dptr,#_P1INTF
      0010A6 E0               [24] 1577 	movx	a,@dptr
      0010A7 90 00 6B         [24] 1578 	mov	dptr,#_gpioConfigure_pintf_65537_63
      0010AA F0               [24] 1579 	movx	@dptr,a
                                   1580 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:161: pinte = P1INTE;
      0010AB 90 FD 01         [24] 1581 	mov	dptr,#_P1INTE
      0010AE E0               [24] 1582 	movx	a,@dptr
      0010AF 90 00 6C         [24] 1583 	mov	dptr,#_gpioConfigure_pinte_65537_63
      0010B2 F0               [24] 1584 	movx	@dptr,a
                                   1585 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:162: pwkue = P1WKUE;
      0010B3 90 FD 41         [24] 1586 	mov	dptr,#_P1WKUE
      0010B6 E0               [24] 1587 	movx	a,@dptr
      0010B7 90 00 6D         [24] 1588 	mov	dptr,#_gpioConfigure_pwkue_65537_63
      0010BA F0               [24] 1589 	movx	@dptr,a
                                   1590 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:164: break;
      0010BB 02 11 D7         [24] 1591 	ljmp	00106$
                                   1592 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:170: case GPIO_PORT2:
      0010BE                       1593 00103$:
                                   1594 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:171: pm1 = P2M1;
      0010BE 90 00 62         [24] 1595 	mov	dptr,#_gpioConfigure_pm1_65537_63
      0010C1 E5 95            [12] 1596 	mov	a,_P2M1
      0010C3 F0               [24] 1597 	movx	@dptr,a
                                   1598 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:172: pm0 = P2M0;
      0010C4 90 00 63         [24] 1599 	mov	dptr,#_gpioConfigure_pm0_65537_63
      0010C7 E5 96            [12] 1600 	mov	a,_P2M0
      0010C9 F0               [24] 1601 	movx	@dptr,a
                                   1602 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:175: pncs = P2NCS;
      0010CA 90 FE 1A         [24] 1603 	mov	dptr,#_P2NCS
      0010CD E0               [24] 1604 	movx	a,@dptr
      0010CE 90 00 64         [24] 1605 	mov	dptr,#_gpioConfigure_pncs_65537_63
      0010D1 F0               [24] 1606 	movx	@dptr,a
                                   1607 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:176: ppu = P2PU;
      0010D2 90 FE 12         [24] 1608 	mov	dptr,#_P2PU
      0010D5 E0               [24] 1609 	movx	a,@dptr
      0010D6 90 00 65         [24] 1610 	mov	dptr,#_gpioConfigure_ppu_65537_63
      0010D9 F0               [24] 1611 	movx	@dptr,a
                                   1612 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:180: pdr = P2DR;
      0010DA 90 FE 2A         [24] 1613 	mov	dptr,#_P2DR
      0010DD E0               [24] 1614 	movx	a,@dptr
      0010DE 90 00 66         [24] 1615 	mov	dptr,#_gpioConfigure_pdr_65537_63
      0010E1 F0               [24] 1616 	movx	@dptr,a
                                   1617 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:181: psr = P2SR;
      0010E2 90 FE 22         [24] 1618 	mov	dptr,#_P2SR
      0010E5 E0               [24] 1619 	movx	a,@dptr
      0010E6 90 00 67         [24] 1620 	mov	dptr,#_gpioConfigure_psr_65537_63
      0010E9 F0               [24] 1621 	movx	@dptr,a
                                   1622 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:182: pie = P2IE;
      0010EA 90 FE 32         [24] 1623 	mov	dptr,#_P2IE
      0010ED E0               [24] 1624 	movx	a,@dptr
      0010EE 90 00 68         [24] 1625 	mov	dptr,#_gpioConfigure_pie_65537_63
      0010F1 F0               [24] 1626 	movx	@dptr,a
                                   1627 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:186: pim1 = P2IM1;
      0010F2 90 FD 32         [24] 1628 	mov	dptr,#_P2IM1
      0010F5 E0               [24] 1629 	movx	a,@dptr
      0010F6 90 00 69         [24] 1630 	mov	dptr,#_gpioConfigure_pim1_65537_63
      0010F9 F0               [24] 1631 	movx	@dptr,a
                                   1632 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:187: pim0 = P2IM0;
      0010FA 90 FD 22         [24] 1633 	mov	dptr,#_P2IM0
      0010FD E0               [24] 1634 	movx	a,@dptr
      0010FE 90 00 6A         [24] 1635 	mov	dptr,#_gpioConfigure_pim0_65537_63
      001101 F0               [24] 1636 	movx	@dptr,a
                                   1637 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:188: pintf = P2INTF;
      001102 90 FD 12         [24] 1638 	mov	dptr,#_P2INTF
      001105 E0               [24] 1639 	movx	a,@dptr
      001106 90 00 6B         [24] 1640 	mov	dptr,#_gpioConfigure_pintf_65537_63
      001109 F0               [24] 1641 	movx	@dptr,a
                                   1642 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:189: pinte = P2INTE;
      00110A 90 FD 02         [24] 1643 	mov	dptr,#_P2INTE
      00110D E0               [24] 1644 	movx	a,@dptr
      00110E 90 00 6C         [24] 1645 	mov	dptr,#_gpioConfigure_pinte_65537_63
      001111 F0               [24] 1646 	movx	@dptr,a
                                   1647 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:190: pwkue = P2WKUE;
      001112 90 FD 42         [24] 1648 	mov	dptr,#_P2WKUE
      001115 E0               [24] 1649 	movx	a,@dptr
      001116 90 00 6D         [24] 1650 	mov	dptr,#_gpioConfigure_pwkue_65537_63
      001119 F0               [24] 1651 	movx	@dptr,a
                                   1652 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:192: break;
      00111A 02 11 D7         [24] 1653 	ljmp	00106$
                                   1654 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:197: case GPIO_PORT3:
      00111D                       1655 00104$:
                                   1656 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:198: pm1 = P3M1;
      00111D 90 00 62         [24] 1657 	mov	dptr,#_gpioConfigure_pm1_65537_63
      001120 E5 B1            [12] 1658 	mov	a,_P3M1
      001122 F0               [24] 1659 	movx	@dptr,a
                                   1660 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:199: pm0 = P3M0;
      001123 90 00 63         [24] 1661 	mov	dptr,#_gpioConfigure_pm0_65537_63
      001126 E5 B2            [12] 1662 	mov	a,_P3M0
      001128 F0               [24] 1663 	movx	@dptr,a
                                   1664 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:202: pncs = P3NCS;
      001129 90 FE 1B         [24] 1665 	mov	dptr,#_P3NCS
      00112C E0               [24] 1666 	movx	a,@dptr
      00112D 90 00 64         [24] 1667 	mov	dptr,#_gpioConfigure_pncs_65537_63
      001130 F0               [24] 1668 	movx	@dptr,a
                                   1669 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:203: ppu = P3PU;
      001131 90 FE 13         [24] 1670 	mov	dptr,#_P3PU
      001134 E0               [24] 1671 	movx	a,@dptr
      001135 90 00 65         [24] 1672 	mov	dptr,#_gpioConfigure_ppu_65537_63
      001138 F0               [24] 1673 	movx	@dptr,a
                                   1674 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:207: pdr = P3DR;
      001139 90 FE 2B         [24] 1675 	mov	dptr,#_P3DR
      00113C E0               [24] 1676 	movx	a,@dptr
      00113D 90 00 66         [24] 1677 	mov	dptr,#_gpioConfigure_pdr_65537_63
      001140 F0               [24] 1678 	movx	@dptr,a
                                   1679 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:208: psr = P3SR;
      001141 90 FE 23         [24] 1680 	mov	dptr,#_P3SR
      001144 E0               [24] 1681 	movx	a,@dptr
      001145 90 00 67         [24] 1682 	mov	dptr,#_gpioConfigure_psr_65537_63
      001148 F0               [24] 1683 	movx	@dptr,a
                                   1684 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:209: pie = P3IE;
      001149 90 FE 33         [24] 1685 	mov	dptr,#_P3IE
      00114C E0               [24] 1686 	movx	a,@dptr
      00114D 90 00 68         [24] 1687 	mov	dptr,#_gpioConfigure_pie_65537_63
      001150 F0               [24] 1688 	movx	@dptr,a
                                   1689 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:213: pim1 = P3IM1;
      001151 90 FD 33         [24] 1690 	mov	dptr,#_P3IM1
      001154 E0               [24] 1691 	movx	a,@dptr
      001155 90 00 69         [24] 1692 	mov	dptr,#_gpioConfigure_pim1_65537_63
      001158 F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:214: pim0 = P3IM0;
      001159 90 FD 23         [24] 1695 	mov	dptr,#_P3IM0
      00115C E0               [24] 1696 	movx	a,@dptr
      00115D 90 00 6A         [24] 1697 	mov	dptr,#_gpioConfigure_pim0_65537_63
      001160 F0               [24] 1698 	movx	@dptr,a
                                   1699 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:215: pintf = P3INTF;
      001161 90 FD 13         [24] 1700 	mov	dptr,#_P3INTF
      001164 E0               [24] 1701 	movx	a,@dptr
      001165 90 00 6B         [24] 1702 	mov	dptr,#_gpioConfigure_pintf_65537_63
      001168 F0               [24] 1703 	movx	@dptr,a
                                   1704 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:216: pinte = P3INTE;
      001169 90 FD 03         [24] 1705 	mov	dptr,#_P3INTE
      00116C E0               [24] 1706 	movx	a,@dptr
      00116D 90 00 6C         [24] 1707 	mov	dptr,#_gpioConfigure_pinte_65537_63
      001170 F0               [24] 1708 	movx	@dptr,a
                                   1709 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:217: pwkue = P3WKUE;
      001171 90 FD 43         [24] 1710 	mov	dptr,#_P3WKUE
      001174 E0               [24] 1711 	movx	a,@dptr
      001175 90 00 6D         [24] 1712 	mov	dptr,#_gpioConfigure_pwkue_65537_63
      001178 F0               [24] 1713 	movx	@dptr,a
                                   1714 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:219: break;
                                   1715 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:252: case GPIO_PORT5:
      001179 80 5C            [24] 1716 	sjmp	00106$
      00117B                       1717 00105$:
                                   1718 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:253: pm1 = P5M1;
      00117B 90 00 62         [24] 1719 	mov	dptr,#_gpioConfigure_pm1_65537_63
      00117E E5 C9            [12] 1720 	mov	a,_P5M1
      001180 F0               [24] 1721 	movx	@dptr,a
                                   1722 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:254: pm0 = P5M0;
      001181 90 00 63         [24] 1723 	mov	dptr,#_gpioConfigure_pm0_65537_63
      001184 E5 CA            [12] 1724 	mov	a,_P5M0
      001186 F0               [24] 1725 	movx	@dptr,a
                                   1726 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:257: pncs = P5NCS;
      001187 90 FE 1D         [24] 1727 	mov	dptr,#_P5NCS
      00118A E0               [24] 1728 	movx	a,@dptr
      00118B 90 00 64         [24] 1729 	mov	dptr,#_gpioConfigure_pncs_65537_63
      00118E F0               [24] 1730 	movx	@dptr,a
                                   1731 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:258: ppu = P5PU;
      00118F 90 FE 15         [24] 1732 	mov	dptr,#_P5PU
      001192 E0               [24] 1733 	movx	a,@dptr
      001193 90 00 65         [24] 1734 	mov	dptr,#_gpioConfigure_ppu_65537_63
      001196 F0               [24] 1735 	movx	@dptr,a
                                   1736 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:262: pdr = P5DR;
      001197 90 FE 2D         [24] 1737 	mov	dptr,#_P5DR
      00119A E0               [24] 1738 	movx	a,@dptr
      00119B 90 00 66         [24] 1739 	mov	dptr,#_gpioConfigure_pdr_65537_63
      00119E F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:263: psr = P5SR;
      00119F 90 FE 25         [24] 1742 	mov	dptr,#_P5SR
      0011A2 E0               [24] 1743 	movx	a,@dptr
      0011A3 90 00 67         [24] 1744 	mov	dptr,#_gpioConfigure_psr_65537_63
      0011A6 F0               [24] 1745 	movx	@dptr,a
                                   1746 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:264: pie = P5IE;
      0011A7 90 FE 35         [24] 1747 	mov	dptr,#_P5IE
      0011AA E0               [24] 1748 	movx	a,@dptr
      0011AB 90 00 68         [24] 1749 	mov	dptr,#_gpioConfigure_pie_65537_63
      0011AE F0               [24] 1750 	movx	@dptr,a
                                   1751 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:268: pim1 = P5IM1;
      0011AF 90 FD 35         [24] 1752 	mov	dptr,#_P5IM1
      0011B2 E0               [24] 1753 	movx	a,@dptr
      0011B3 90 00 69         [24] 1754 	mov	dptr,#_gpioConfigure_pim1_65537_63
      0011B6 F0               [24] 1755 	movx	@dptr,a
                                   1756 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:269: pim0 = P5IM0;
      0011B7 90 FD 25         [24] 1757 	mov	dptr,#_P5IM0
      0011BA E0               [24] 1758 	movx	a,@dptr
      0011BB 90 00 6A         [24] 1759 	mov	dptr,#_gpioConfigure_pim0_65537_63
      0011BE F0               [24] 1760 	movx	@dptr,a
                                   1761 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:270: pintf = P5INTF;
      0011BF 90 FD 15         [24] 1762 	mov	dptr,#_P5INTF
      0011C2 E0               [24] 1763 	movx	a,@dptr
      0011C3 90 00 6B         [24] 1764 	mov	dptr,#_gpioConfigure_pintf_65537_63
      0011C6 F0               [24] 1765 	movx	@dptr,a
                                   1766 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:271: pinte = P5INTE;
      0011C7 90 FD 05         [24] 1767 	mov	dptr,#_P5INTE
      0011CA E0               [24] 1768 	movx	a,@dptr
      0011CB 90 00 6C         [24] 1769 	mov	dptr,#_gpioConfigure_pinte_65537_63
      0011CE F0               [24] 1770 	movx	@dptr,a
                                   1771 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:272: pwkue = P5WKUE;
      0011CF 90 FD 45         [24] 1772 	mov	dptr,#_P5WKUE
      0011D2 E0               [24] 1773 	movx	a,@dptr
      0011D3 90 00 6D         [24] 1774 	mov	dptr,#_gpioConfigure_pwkue_65537_63
      0011D6 F0               [24] 1775 	movx	@dptr,a
                                   1776 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:332: }
      0011D7                       1777 00106$:
                                   1778 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:334: pm1 = __gpio_setBits(pm1, gpioConfig->pinMode & 2, gpioConfig);
      0011D7 90 00 62         [24] 1779 	mov	dptr,#_gpioConfigure_pm1_65537_63
      0011DA E0               [24] 1780 	movx	a,@dptr
      0011DB FF               [12] 1781 	mov	r7,a
      0011DC 90 00 5E         [24] 1782 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      0011DF E0               [24] 1783 	movx	a,@dptr
      0011E0 FC               [12] 1784 	mov	r4,a
      0011E1 A3               [24] 1785 	inc	dptr
      0011E2 E0               [24] 1786 	movx	a,@dptr
      0011E3 FD               [12] 1787 	mov	r5,a
      0011E4 A3               [24] 1788 	inc	dptr
      0011E5 E0               [24] 1789 	movx	a,@dptr
      0011E6 FE               [12] 1790 	mov	r6,a
      0011E7 74 03            [12] 1791 	mov	a,#0x03
      0011E9 2C               [12] 1792 	add	a,r4
      0011EA F9               [12] 1793 	mov	r1,a
      0011EB E4               [12] 1794 	clr	a
      0011EC 3D               [12] 1795 	addc	a,r5
      0011ED FA               [12] 1796 	mov	r2,a
      0011EE 8E 03            [24] 1797 	mov	ar3,r6
      0011F0 89 82            [24] 1798 	mov	dpl,r1
      0011F2 8A 83            [24] 1799 	mov	dph,r2
      0011F4 8B F0            [24] 1800 	mov	b,r3
      0011F6 12 1C 2A         [24] 1801 	lcall	__gptrget
      0011F9 F9               [12] 1802 	mov	r1,a
      0011FA 90 00 4D         [24] 1803 	mov	dptr,#___gpio_setBits_PARM_2
      0011FD 74 02            [12] 1804 	mov	a,#0x02
      0011FF 59               [12] 1805 	anl	a,r1
      001200 F0               [24] 1806 	movx	@dptr,a
      001201 90 00 4E         [24] 1807 	mov	dptr,#___gpio_setBits_PARM_3
      001204 EC               [12] 1808 	mov	a,r4
      001205 F0               [24] 1809 	movx	@dptr,a
      001206 ED               [12] 1810 	mov	a,r5
      001207 A3               [24] 1811 	inc	dptr
      001208 F0               [24] 1812 	movx	@dptr,a
      001209 EE               [12] 1813 	mov	a,r6
      00120A A3               [24] 1814 	inc	dptr
      00120B F0               [24] 1815 	movx	@dptr,a
      00120C 8F 82            [24] 1816 	mov	dpl,r7
      00120E 12 0D CB         [24] 1817 	lcall	___gpio_setBits
      001211 AF 82            [24] 1818 	mov	r7,dpl
                                   1819 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:335: pm0 = __gpio_setBits(pm0, gpioConfig->pinMode & 1, gpioConfig);
      001213 90 00 63         [24] 1820 	mov	dptr,#_gpioConfigure_pm0_65537_63
      001216 E0               [24] 1821 	movx	a,@dptr
      001217 FE               [12] 1822 	mov	r6,a
      001218 90 00 5E         [24] 1823 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      00121B E0               [24] 1824 	movx	a,@dptr
      00121C FB               [12] 1825 	mov	r3,a
      00121D A3               [24] 1826 	inc	dptr
      00121E E0               [24] 1827 	movx	a,@dptr
      00121F FC               [12] 1828 	mov	r4,a
      001220 A3               [24] 1829 	inc	dptr
      001221 E0               [24] 1830 	movx	a,@dptr
      001222 FD               [12] 1831 	mov	r5,a
      001223 74 03            [12] 1832 	mov	a,#0x03
      001225 2B               [12] 1833 	add	a,r3
      001226 F8               [12] 1834 	mov	r0,a
      001227 E4               [12] 1835 	clr	a
      001228 3C               [12] 1836 	addc	a,r4
      001229 F9               [12] 1837 	mov	r1,a
      00122A 8D 02            [24] 1838 	mov	ar2,r5
      00122C 88 82            [24] 1839 	mov	dpl,r0
      00122E 89 83            [24] 1840 	mov	dph,r1
      001230 8A F0            [24] 1841 	mov	b,r2
      001232 12 1C 2A         [24] 1842 	lcall	__gptrget
      001235 F8               [12] 1843 	mov	r0,a
      001236 90 00 4D         [24] 1844 	mov	dptr,#___gpio_setBits_PARM_2
      001239 74 01            [12] 1845 	mov	a,#0x01
      00123B 58               [12] 1846 	anl	a,r0
      00123C F0               [24] 1847 	movx	@dptr,a
      00123D 90 00 4E         [24] 1848 	mov	dptr,#___gpio_setBits_PARM_3
      001240 EB               [12] 1849 	mov	a,r3
      001241 F0               [24] 1850 	movx	@dptr,a
      001242 EC               [12] 1851 	mov	a,r4
      001243 A3               [24] 1852 	inc	dptr
      001244 F0               [24] 1853 	movx	@dptr,a
      001245 ED               [12] 1854 	mov	a,r5
      001246 A3               [24] 1855 	inc	dptr
      001247 F0               [24] 1856 	movx	@dptr,a
      001248 8E 82            [24] 1857 	mov	dpl,r6
      00124A C0 07            [24] 1858 	push	ar7
      00124C 12 0D CB         [24] 1859 	lcall	___gpio_setBits
      00124F AE 82            [24] 1860 	mov	r6,dpl
                                   1861 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:338: pncs = __gpio_setBits(pncs, gpioConfig->schmidtTrigger, gpioConfig);
      001251 90 00 64         [24] 1862 	mov	dptr,#_gpioConfigure_pncs_65537_63
      001254 E0               [24] 1863 	movx	a,@dptr
      001255 F5 12            [12] 1864 	mov	_gpioConfigure_sloc0_1_0,a
      001257 90 00 5E         [24] 1865 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      00125A E0               [24] 1866 	movx	a,@dptr
      00125B FA               [12] 1867 	mov	r2,a
      00125C A3               [24] 1868 	inc	dptr
      00125D E0               [24] 1869 	movx	a,@dptr
      00125E FB               [12] 1870 	mov	r3,a
      00125F A3               [24] 1871 	inc	dptr
      001260 E0               [24] 1872 	movx	a,@dptr
      001261 FC               [12] 1873 	mov	r4,a
      001262 74 04            [12] 1874 	mov	a,#0x04
      001264 2A               [12] 1875 	add	a,r2
      001265 F8               [12] 1876 	mov	r0,a
      001266 E4               [12] 1877 	clr	a
      001267 3B               [12] 1878 	addc	a,r3
      001268 F9               [12] 1879 	mov	r1,a
      001269 8C 05            [24] 1880 	mov	ar5,r4
      00126B 88 82            [24] 1881 	mov	dpl,r0
      00126D 89 83            [24] 1882 	mov	dph,r1
      00126F 8D F0            [24] 1883 	mov	b,r5
      001271 12 1C 2A         [24] 1884 	lcall	__gptrget
      001274 90 00 4D         [24] 1885 	mov	dptr,#___gpio_setBits_PARM_2
      001277 F0               [24] 1886 	movx	@dptr,a
      001278 90 00 4E         [24] 1887 	mov	dptr,#___gpio_setBits_PARM_3
      00127B EA               [12] 1888 	mov	a,r2
      00127C F0               [24] 1889 	movx	@dptr,a
      00127D EB               [12] 1890 	mov	a,r3
      00127E A3               [24] 1891 	inc	dptr
      00127F F0               [24] 1892 	movx	@dptr,a
      001280 EC               [12] 1893 	mov	a,r4
      001281 A3               [24] 1894 	inc	dptr
      001282 F0               [24] 1895 	movx	@dptr,a
      001283 85 12 82         [24] 1896 	mov	dpl,_gpioConfigure_sloc0_1_0
      001286 C0 06            [24] 1897 	push	ar6
      001288 12 0D CB         [24] 1898 	lcall	___gpio_setBits
      00128B AD 82            [24] 1899 	mov	r5,dpl
                                   1900 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:339: ppu = __gpio_setBits(ppu, gpioConfig->internalPullUp, gpioConfig);
      00128D 90 00 65         [24] 1901 	mov	dptr,#_gpioConfigure_ppu_65537_63
      001290 E0               [24] 1902 	movx	a,@dptr
      001291 F5 12            [12] 1903 	mov	_gpioConfigure_sloc0_1_0,a
      001293 90 00 5E         [24] 1904 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      001296 E0               [24] 1905 	movx	a,@dptr
      001297 F5 15            [12] 1906 	mov	_gpioConfigure_sloc1_1_0,a
      001299 A3               [24] 1907 	inc	dptr
      00129A E0               [24] 1908 	movx	a,@dptr
      00129B F5 16            [12] 1909 	mov	(_gpioConfigure_sloc1_1_0 + 1),a
      00129D A3               [24] 1910 	inc	dptr
      00129E E0               [24] 1911 	movx	a,@dptr
      00129F F5 17            [12] 1912 	mov	(_gpioConfigure_sloc1_1_0 + 2),a
      0012A1 74 05            [12] 1913 	mov	a,#0x05
      0012A3 25 15            [12] 1914 	add	a,_gpioConfigure_sloc1_1_0
      0012A5 F8               [12] 1915 	mov	r0,a
      0012A6 E4               [12] 1916 	clr	a
      0012A7 35 16            [12] 1917 	addc	a,(_gpioConfigure_sloc1_1_0 + 1)
      0012A9 FB               [12] 1918 	mov	r3,a
      0012AA AC 17            [24] 1919 	mov	r4,(_gpioConfigure_sloc1_1_0 + 2)
      0012AC 88 82            [24] 1920 	mov	dpl,r0
      0012AE 8B 83            [24] 1921 	mov	dph,r3
      0012B0 8C F0            [24] 1922 	mov	b,r4
      0012B2 12 1C 2A         [24] 1923 	lcall	__gptrget
      0012B5 90 00 4D         [24] 1924 	mov	dptr,#___gpio_setBits_PARM_2
      0012B8 F0               [24] 1925 	movx	@dptr,a
      0012B9 90 00 4E         [24] 1926 	mov	dptr,#___gpio_setBits_PARM_3
      0012BC E5 15            [12] 1927 	mov	a,_gpioConfigure_sloc1_1_0
      0012BE F0               [24] 1928 	movx	@dptr,a
      0012BF E5 16            [12] 1929 	mov	a,(_gpioConfigure_sloc1_1_0 + 1)
      0012C1 A3               [24] 1930 	inc	dptr
      0012C2 F0               [24] 1931 	movx	@dptr,a
      0012C3 E5 17            [12] 1932 	mov	a,(_gpioConfigure_sloc1_1_0 + 2)
      0012C5 A3               [24] 1933 	inc	dptr
      0012C6 F0               [24] 1934 	movx	@dptr,a
      0012C7 85 12 82         [24] 1935 	mov	dpl,_gpioConfigure_sloc0_1_0
      0012CA C0 05            [24] 1936 	push	ar5
      0012CC 12 0D CB         [24] 1937 	lcall	___gpio_setBits
      0012CF AC 82            [24] 1938 	mov	r4,dpl
                                   1939 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:343: if (__isOutput(gpioConfig)) {
      0012D1 90 00 5E         [24] 1940 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      0012D4 E0               [24] 1941 	movx	a,@dptr
      0012D5 F9               [12] 1942 	mov	r1,a
      0012D6 A3               [24] 1943 	inc	dptr
      0012D7 E0               [24] 1944 	movx	a,@dptr
      0012D8 FA               [12] 1945 	mov	r2,a
      0012D9 A3               [24] 1946 	inc	dptr
      0012DA E0               [24] 1947 	movx	a,@dptr
      0012DB FB               [12] 1948 	mov	r3,a
      0012DC 89 82            [24] 1949 	mov	dpl,r1
      0012DE 8A 83            [24] 1950 	mov	dph,r2
      0012E0 8B F0            [24] 1951 	mov	b,r3
      0012E2 C0 04            [24] 1952 	push	ar4
      0012E4 12 0E 20         [24] 1953 	lcall	___isOutput
      0012E7 E5 82            [12] 1954 	mov	a,dpl
      0012E9 D0 04            [24] 1955 	pop	ar4
      0012EB D0 05            [24] 1956 	pop	ar5
      0012ED D0 06            [24] 1957 	pop	ar6
      0012EF D0 07            [24] 1958 	pop	ar7
      0012F1 70 03            [24] 1959 	jnz	00180$
      0012F3 02 13 A2         [24] 1960 	ljmp	00108$
      0012F6                       1961 00180$:
                                   1962 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:344: pdr = __gpio_setBits(pdr, gpioConfig->speed & 1, gpioConfig);
      0012F6 C0 04            [24] 1963 	push	ar4
      0012F8 90 00 66         [24] 1964 	mov	dptr,#_gpioConfigure_pdr_65537_63
      0012FB E0               [24] 1965 	movx	a,@dptr
      0012FC F5 15            [12] 1966 	mov	_gpioConfigure_sloc1_1_0,a
      0012FE 90 00 5E         [24] 1967 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      001301 E0               [24] 1968 	movx	a,@dptr
      001302 F5 12            [12] 1969 	mov	_gpioConfigure_sloc0_1_0,a
      001304 A3               [24] 1970 	inc	dptr
      001305 E0               [24] 1971 	movx	a,@dptr
      001306 F5 13            [12] 1972 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001308 A3               [24] 1973 	inc	dptr
      001309 E0               [24] 1974 	movx	a,@dptr
      00130A F5 14            [12] 1975 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      00130C 74 06            [12] 1976 	mov	a,#0x06
      00130E 25 12            [12] 1977 	add	a,_gpioConfigure_sloc0_1_0
      001310 FA               [12] 1978 	mov	r2,a
      001311 E4               [12] 1979 	clr	a
      001312 35 13            [12] 1980 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001314 FB               [12] 1981 	mov	r3,a
      001315 AC 14            [24] 1982 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001317 8A 82            [24] 1983 	mov	dpl,r2
      001319 8B 83            [24] 1984 	mov	dph,r3
      00131B 8C F0            [24] 1985 	mov	b,r4
      00131D 12 1C 2A         [24] 1986 	lcall	__gptrget
      001320 FA               [12] 1987 	mov	r2,a
      001321 90 00 4D         [24] 1988 	mov	dptr,#___gpio_setBits_PARM_2
      001324 74 01            [12] 1989 	mov	a,#0x01
      001326 5A               [12] 1990 	anl	a,r2
      001327 F0               [24] 1991 	movx	@dptr,a
      001328 90 00 4E         [24] 1992 	mov	dptr,#___gpio_setBits_PARM_3
      00132B E5 12            [12] 1993 	mov	a,_gpioConfigure_sloc0_1_0
      00132D F0               [24] 1994 	movx	@dptr,a
      00132E E5 13            [12] 1995 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001330 A3               [24] 1996 	inc	dptr
      001331 F0               [24] 1997 	movx	@dptr,a
      001332 E5 14            [12] 1998 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001334 A3               [24] 1999 	inc	dptr
      001335 F0               [24] 2000 	movx	@dptr,a
      001336 85 15 82         [24] 2001 	mov	dpl,_gpioConfigure_sloc1_1_0
      001339 C0 07            [24] 2002 	push	ar7
      00133B C0 06            [24] 2003 	push	ar6
      00133D C0 05            [24] 2004 	push	ar5
      00133F C0 04            [24] 2005 	push	ar4
      001341 12 0D CB         [24] 2006 	lcall	___gpio_setBits
      001344 E5 82            [12] 2007 	mov	a,dpl
      001346 D0 04            [24] 2008 	pop	ar4
      001348 90 00 66         [24] 2009 	mov	dptr,#_gpioConfigure_pdr_65537_63
      00134B F0               [24] 2010 	movx	@dptr,a
                                   2011 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:345: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      00134C 90 00 67         [24] 2012 	mov	dptr,#_gpioConfigure_psr_65537_63
      00134F E0               [24] 2013 	movx	a,@dptr
      001350 F5 15            [12] 2014 	mov	_gpioConfigure_sloc1_1_0,a
      001352 90 00 5E         [24] 2015 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      001355 E0               [24] 2016 	movx	a,@dptr
      001356 F5 12            [12] 2017 	mov	_gpioConfigure_sloc0_1_0,a
      001358 A3               [24] 2018 	inc	dptr
      001359 E0               [24] 2019 	movx	a,@dptr
      00135A F5 13            [12] 2020 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      00135C A3               [24] 2021 	inc	dptr
      00135D E0               [24] 2022 	movx	a,@dptr
      00135E F5 14            [12] 2023 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001360 74 06            [12] 2024 	mov	a,#0x06
      001362 25 12            [12] 2025 	add	a,_gpioConfigure_sloc0_1_0
      001364 F8               [12] 2026 	mov	r0,a
      001365 E4               [12] 2027 	clr	a
      001366 35 13            [12] 2028 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001368 FB               [12] 2029 	mov	r3,a
      001369 AC 14            [24] 2030 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      00136B 88 82            [24] 2031 	mov	dpl,r0
      00136D 8B 83            [24] 2032 	mov	dph,r3
      00136F 8C F0            [24] 2033 	mov	b,r4
      001371 12 1C 2A         [24] 2034 	lcall	__gptrget
      001374 F8               [12] 2035 	mov	r0,a
      001375 90 00 4D         [24] 2036 	mov	dptr,#___gpio_setBits_PARM_2
      001378 74 02            [12] 2037 	mov	a,#0x02
      00137A 58               [12] 2038 	anl	a,r0
      00137B F0               [24] 2039 	movx	@dptr,a
      00137C 90 00 4E         [24] 2040 	mov	dptr,#___gpio_setBits_PARM_3
      00137F E5 12            [12] 2041 	mov	a,_gpioConfigure_sloc0_1_0
      001381 F0               [24] 2042 	movx	@dptr,a
      001382 E5 13            [12] 2043 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001384 A3               [24] 2044 	inc	dptr
      001385 F0               [24] 2045 	movx	@dptr,a
      001386 E5 14            [12] 2046 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001388 A3               [24] 2047 	inc	dptr
      001389 F0               [24] 2048 	movx	@dptr,a
      00138A 85 15 82         [24] 2049 	mov	dpl,_gpioConfigure_sloc1_1_0
      00138D C0 04            [24] 2050 	push	ar4
      00138F 12 0D CB         [24] 2051 	lcall	___gpio_setBits
      001392 E5 82            [12] 2052 	mov	a,dpl
      001394 D0 04            [24] 2053 	pop	ar4
      001396 D0 05            [24] 2054 	pop	ar5
      001398 D0 06            [24] 2055 	pop	ar6
      00139A D0 07            [24] 2056 	pop	ar7
      00139C 90 00 67         [24] 2057 	mov	dptr,#_gpioConfigure_psr_65537_63
      00139F F0               [24] 2058 	movx	@dptr,a
                                   2059 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
      0013A0 D0 04            [24] 2060 	pop	ar4
                                   2061 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:345: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      0013A2                       2062 00108$:
                                   2063 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:348: if (__isInput(gpioConfig)) {
      0013A2 90 00 5E         [24] 2064 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      0013A5 E0               [24] 2065 	movx	a,@dptr
      0013A6 F9               [12] 2066 	mov	r1,a
      0013A7 A3               [24] 2067 	inc	dptr
      0013A8 E0               [24] 2068 	movx	a,@dptr
      0013A9 FA               [12] 2069 	mov	r2,a
      0013AA A3               [24] 2070 	inc	dptr
      0013AB E0               [24] 2071 	movx	a,@dptr
      0013AC FB               [12] 2072 	mov	r3,a
      0013AD 89 82            [24] 2073 	mov	dpl,r1
      0013AF 8A 83            [24] 2074 	mov	dph,r2
      0013B1 8B F0            [24] 2075 	mov	b,r3
      0013B3 C0 07            [24] 2076 	push	ar7
      0013B5 C0 06            [24] 2077 	push	ar6
      0013B7 C0 05            [24] 2078 	push	ar5
      0013B9 C0 04            [24] 2079 	push	ar4
      0013BB 12 0E 61         [24] 2080 	lcall	___isInput
      0013BE E5 82            [12] 2081 	mov	a,dpl
      0013C0 D0 04            [24] 2082 	pop	ar4
      0013C2 D0 05            [24] 2083 	pop	ar5
      0013C4 D0 06            [24] 2084 	pop	ar6
      0013C6 D0 07            [24] 2085 	pop	ar7
      0013C8 60 5A            [24] 2086 	jz	00110$
                                   2087 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:349: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      0013CA C0 04            [24] 2088 	push	ar4
      0013CC 90 00 68         [24] 2089 	mov	dptr,#_gpioConfigure_pie_65537_63
      0013CF E0               [24] 2090 	movx	a,@dptr
      0013D0 F5 15            [12] 2091 	mov	_gpioConfigure_sloc1_1_0,a
      0013D2 90 00 5E         [24] 2092 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      0013D5 E0               [24] 2093 	movx	a,@dptr
      0013D6 F5 12            [12] 2094 	mov	_gpioConfigure_sloc0_1_0,a
      0013D8 A3               [24] 2095 	inc	dptr
      0013D9 E0               [24] 2096 	movx	a,@dptr
      0013DA F5 13            [12] 2097 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0013DC A3               [24] 2098 	inc	dptr
      0013DD E0               [24] 2099 	movx	a,@dptr
      0013DE F5 14            [12] 2100 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      0013E0 74 07            [12] 2101 	mov	a,#0x07
      0013E2 25 12            [12] 2102 	add	a,_gpioConfigure_sloc0_1_0
      0013E4 FA               [12] 2103 	mov	r2,a
      0013E5 E4               [12] 2104 	clr	a
      0013E6 35 13            [12] 2105 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      0013E8 FB               [12] 2106 	mov	r3,a
      0013E9 AC 14            [24] 2107 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      0013EB 8A 82            [24] 2108 	mov	dpl,r2
      0013ED 8B 83            [24] 2109 	mov	dph,r3
      0013EF 8C F0            [24] 2110 	mov	b,r4
      0013F1 12 1C 2A         [24] 2111 	lcall	__gptrget
      0013F4 90 00 4D         [24] 2112 	mov	dptr,#___gpio_setBits_PARM_2
      0013F7 F0               [24] 2113 	movx	@dptr,a
      0013F8 90 00 4E         [24] 2114 	mov	dptr,#___gpio_setBits_PARM_3
      0013FB E5 12            [12] 2115 	mov	a,_gpioConfigure_sloc0_1_0
      0013FD F0               [24] 2116 	movx	@dptr,a
      0013FE E5 13            [12] 2117 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001400 A3               [24] 2118 	inc	dptr
      001401 F0               [24] 2119 	movx	@dptr,a
      001402 E5 14            [12] 2120 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001404 A3               [24] 2121 	inc	dptr
      001405 F0               [24] 2122 	movx	@dptr,a
      001406 85 15 82         [24] 2123 	mov	dpl,_gpioConfigure_sloc1_1_0
      001409 C0 07            [24] 2124 	push	ar7
      00140B C0 06            [24] 2125 	push	ar6
      00140D C0 05            [24] 2126 	push	ar5
      00140F C0 04            [24] 2127 	push	ar4
      001411 12 0D CB         [24] 2128 	lcall	___gpio_setBits
      001414 E5 82            [12] 2129 	mov	a,dpl
      001416 D0 04            [24] 2130 	pop	ar4
      001418 D0 05            [24] 2131 	pop	ar5
      00141A D0 06            [24] 2132 	pop	ar6
      00141C D0 07            [24] 2133 	pop	ar7
      00141E 90 00 68         [24] 2134 	mov	dptr,#_gpioConfigure_pie_65537_63
      001421 F0               [24] 2135 	movx	@dptr,a
                                   2136 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
      001422 D0 04            [24] 2137 	pop	ar4
                                   2138 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:349: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      001424                       2139 00110$:
                                   2140 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:354: pim1 = __gpio_setBits(pim1, gpioConfig->interruptTrigger & 2, gpioConfig);
      001424 C0 04            [24] 2141 	push	ar4
      001426 90 00 69         [24] 2142 	mov	dptr,#_gpioConfigure_pim1_65537_63
      001429 E0               [24] 2143 	movx	a,@dptr
      00142A F5 15            [12] 2144 	mov	_gpioConfigure_sloc1_1_0,a
      00142C 90 00 5E         [24] 2145 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      00142F E0               [24] 2146 	movx	a,@dptr
      001430 F5 12            [12] 2147 	mov	_gpioConfigure_sloc0_1_0,a
      001432 A3               [24] 2148 	inc	dptr
      001433 E0               [24] 2149 	movx	a,@dptr
      001434 F5 13            [12] 2150 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001436 A3               [24] 2151 	inc	dptr
      001437 E0               [24] 2152 	movx	a,@dptr
      001438 F5 14            [12] 2153 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      00143A 74 09            [12] 2154 	mov	a,#0x09
      00143C 25 12            [12] 2155 	add	a,_gpioConfigure_sloc0_1_0
      00143E FA               [12] 2156 	mov	r2,a
      00143F E4               [12] 2157 	clr	a
      001440 35 13            [12] 2158 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001442 FB               [12] 2159 	mov	r3,a
      001443 AC 14            [24] 2160 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001445 8A 82            [24] 2161 	mov	dpl,r2
      001447 8B 83            [24] 2162 	mov	dph,r3
      001449 8C F0            [24] 2163 	mov	b,r4
      00144B 12 1C 2A         [24] 2164 	lcall	__gptrget
      00144E FA               [12] 2165 	mov	r2,a
      00144F 90 00 4D         [24] 2166 	mov	dptr,#___gpio_setBits_PARM_2
      001452 74 02            [12] 2167 	mov	a,#0x02
      001454 5A               [12] 2168 	anl	a,r2
      001455 F0               [24] 2169 	movx	@dptr,a
      001456 90 00 4E         [24] 2170 	mov	dptr,#___gpio_setBits_PARM_3
      001459 E5 12            [12] 2171 	mov	a,_gpioConfigure_sloc0_1_0
      00145B F0               [24] 2172 	movx	@dptr,a
      00145C E5 13            [12] 2173 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      00145E A3               [24] 2174 	inc	dptr
      00145F F0               [24] 2175 	movx	@dptr,a
      001460 E5 14            [12] 2176 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001462 A3               [24] 2177 	inc	dptr
      001463 F0               [24] 2178 	movx	@dptr,a
      001464 85 15 82         [24] 2179 	mov	dpl,_gpioConfigure_sloc1_1_0
      001467 C0 07            [24] 2180 	push	ar7
      001469 C0 06            [24] 2181 	push	ar6
      00146B C0 05            [24] 2182 	push	ar5
      00146D C0 04            [24] 2183 	push	ar4
      00146F 12 0D CB         [24] 2184 	lcall	___gpio_setBits
      001472 85 82 15         [24] 2185 	mov	_gpioConfigure_sloc1_1_0,dpl
      001475 D0 04            [24] 2186 	pop	ar4
                                   2187 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:355: pim0 = __gpio_setBits(pim0, gpioConfig->interruptTrigger & 1, gpioConfig);
      001477 90 00 6A         [24] 2188 	mov	dptr,#_gpioConfigure_pim0_65537_63
      00147A E0               [24] 2189 	movx	a,@dptr
      00147B F5 12            [12] 2190 	mov	_gpioConfigure_sloc0_1_0,a
      00147D 90 00 5E         [24] 2191 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      001480 E0               [24] 2192 	movx	a,@dptr
      001481 F5 18            [12] 2193 	mov	_gpioConfigure_sloc2_1_0,a
      001483 A3               [24] 2194 	inc	dptr
      001484 E0               [24] 2195 	movx	a,@dptr
      001485 F5 19            [12] 2196 	mov	(_gpioConfigure_sloc2_1_0 + 1),a
      001487 A3               [24] 2197 	inc	dptr
      001488 E0               [24] 2198 	movx	a,@dptr
      001489 F5 1A            [12] 2199 	mov	(_gpioConfigure_sloc2_1_0 + 2),a
      00148B 74 09            [12] 2200 	mov	a,#0x09
      00148D 25 18            [12] 2201 	add	a,_gpioConfigure_sloc2_1_0
      00148F F8               [12] 2202 	mov	r0,a
      001490 E4               [12] 2203 	clr	a
      001491 35 19            [12] 2204 	addc	a,(_gpioConfigure_sloc2_1_0 + 1)
      001493 FB               [12] 2205 	mov	r3,a
      001494 AC 1A            [24] 2206 	mov	r4,(_gpioConfigure_sloc2_1_0 + 2)
      001496 88 82            [24] 2207 	mov	dpl,r0
      001498 8B 83            [24] 2208 	mov	dph,r3
      00149A 8C F0            [24] 2209 	mov	b,r4
      00149C 12 1C 2A         [24] 2210 	lcall	__gptrget
      00149F F8               [12] 2211 	mov	r0,a
      0014A0 90 00 4D         [24] 2212 	mov	dptr,#___gpio_setBits_PARM_2
      0014A3 74 01            [12] 2213 	mov	a,#0x01
      0014A5 58               [12] 2214 	anl	a,r0
      0014A6 F0               [24] 2215 	movx	@dptr,a
      0014A7 90 00 4E         [24] 2216 	mov	dptr,#___gpio_setBits_PARM_3
      0014AA E5 18            [12] 2217 	mov	a,_gpioConfigure_sloc2_1_0
      0014AC F0               [24] 2218 	movx	@dptr,a
      0014AD E5 19            [12] 2219 	mov	a,(_gpioConfigure_sloc2_1_0 + 1)
      0014AF A3               [24] 2220 	inc	dptr
      0014B0 F0               [24] 2221 	movx	@dptr,a
      0014B1 E5 1A            [12] 2222 	mov	a,(_gpioConfigure_sloc2_1_0 + 2)
      0014B3 A3               [24] 2223 	inc	dptr
      0014B4 F0               [24] 2224 	movx	@dptr,a
      0014B5 85 12 82         [24] 2225 	mov	dpl,_gpioConfigure_sloc0_1_0
      0014B8 C0 04            [24] 2226 	push	ar4
      0014BA 12 0D CB         [24] 2227 	lcall	___gpio_setBits
      0014BD 85 82 18         [24] 2228 	mov	_gpioConfigure_sloc2_1_0,dpl
      0014C0 D0 04            [24] 2229 	pop	ar4
                                   2230 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:356: pintf &= gpioConfig->__clearMask;
      0014C2 90 00 5E         [24] 2231 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      0014C5 E0               [24] 2232 	movx	a,@dptr
      0014C6 F5 12            [12] 2233 	mov	_gpioConfigure_sloc0_1_0,a
      0014C8 A3               [24] 2234 	inc	dptr
      0014C9 E0               [24] 2235 	movx	a,@dptr
      0014CA F5 13            [12] 2236 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0014CC A3               [24] 2237 	inc	dptr
      0014CD E0               [24] 2238 	movx	a,@dptr
      0014CE F5 14            [12] 2239 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      0014D0 74 0C            [12] 2240 	mov	a,#0x0c
      0014D2 25 12            [12] 2241 	add	a,_gpioConfigure_sloc0_1_0
      0014D4 F8               [12] 2242 	mov	r0,a
      0014D5 E4               [12] 2243 	clr	a
      0014D6 35 13            [12] 2244 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      0014D8 F9               [12] 2245 	mov	r1,a
      0014D9 AC 14            [24] 2246 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      0014DB 88 82            [24] 2247 	mov	dpl,r0
      0014DD 89 83            [24] 2248 	mov	dph,r1
      0014DF 8C F0            [24] 2249 	mov	b,r4
      0014E1 12 1C 2A         [24] 2250 	lcall	__gptrget
      0014E4 F8               [12] 2251 	mov	r0,a
      0014E5 90 00 6B         [24] 2252 	mov	dptr,#_gpioConfigure_pintf_65537_63
      0014E8 E0               [24] 2253 	movx	a,@dptr
      0014E9 58               [12] 2254 	anl	a,r0
      0014EA F0               [24] 2255 	movx	@dptr,a
                                   2256 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:357: pinte = __gpio_setBits(pinte, gpioConfig->pinInterrupt, gpioConfig);
      0014EB 90 00 6C         [24] 2257 	mov	dptr,#_gpioConfigure_pinte_65537_63
      0014EE E0               [24] 2258 	movx	a,@dptr
      0014EF FC               [12] 2259 	mov	r4,a
      0014F0 74 08            [12] 2260 	mov	a,#0x08
      0014F2 25 12            [12] 2261 	add	a,_gpioConfigure_sloc0_1_0
      0014F4 F9               [12] 2262 	mov	r1,a
      0014F5 E4               [12] 2263 	clr	a
      0014F6 35 13            [12] 2264 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      0014F8 FA               [12] 2265 	mov	r2,a
      0014F9 AB 14            [24] 2266 	mov	r3,(_gpioConfigure_sloc0_1_0 + 2)
      0014FB 89 82            [24] 2267 	mov	dpl,r1
      0014FD 8A 83            [24] 2268 	mov	dph,r2
      0014FF 8B F0            [24] 2269 	mov	b,r3
      001501 12 1C 2A         [24] 2270 	lcall	__gptrget
      001504 90 00 4D         [24] 2271 	mov	dptr,#___gpio_setBits_PARM_2
      001507 F0               [24] 2272 	movx	@dptr,a
      001508 90 00 4E         [24] 2273 	mov	dptr,#___gpio_setBits_PARM_3
      00150B E5 12            [12] 2274 	mov	a,_gpioConfigure_sloc0_1_0
      00150D F0               [24] 2275 	movx	@dptr,a
      00150E E5 13            [12] 2276 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001510 A3               [24] 2277 	inc	dptr
      001511 F0               [24] 2278 	movx	@dptr,a
      001512 E5 14            [12] 2279 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001514 A3               [24] 2280 	inc	dptr
      001515 F0               [24] 2281 	movx	@dptr,a
      001516 8C 82            [24] 2282 	mov	dpl,r4
      001518 C0 04            [24] 2283 	push	ar4
      00151A 12 0D CB         [24] 2284 	lcall	___gpio_setBits
      00151D 85 82 12         [24] 2285 	mov	_gpioConfigure_sloc0_1_0,dpl
      001520 D0 04            [24] 2286 	pop	ar4
                                   2287 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:358: pwkue = __gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
      001522 90 00 6D         [24] 2288 	mov	dptr,#_gpioConfigure_pwkue_65537_63
      001525 E0               [24] 2289 	movx	a,@dptr
      001526 F5 1B            [12] 2290 	mov	_gpioConfigure_sloc3_1_0,a
      001528 90 00 5E         [24] 2291 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      00152B E0               [24] 2292 	movx	a,@dptr
      00152C F5 1C            [12] 2293 	mov	_gpioConfigure_sloc4_1_0,a
      00152E A3               [24] 2294 	inc	dptr
      00152F E0               [24] 2295 	movx	a,@dptr
      001530 F5 1D            [12] 2296 	mov	(_gpioConfigure_sloc4_1_0 + 1),a
      001532 A3               [24] 2297 	inc	dptr
      001533 E0               [24] 2298 	movx	a,@dptr
      001534 F5 1E            [12] 2299 	mov	(_gpioConfigure_sloc4_1_0 + 2),a
      001536 74 0A            [12] 2300 	mov	a,#0x0a
      001538 25 1C            [12] 2301 	add	a,_gpioConfigure_sloc4_1_0
      00153A F8               [12] 2302 	mov	r0,a
      00153B E4               [12] 2303 	clr	a
      00153C 35 1D            [12] 2304 	addc	a,(_gpioConfigure_sloc4_1_0 + 1)
      00153E FB               [12] 2305 	mov	r3,a
      00153F AC 1E            [24] 2306 	mov	r4,(_gpioConfigure_sloc4_1_0 + 2)
      001541 88 82            [24] 2307 	mov	dpl,r0
      001543 8B 83            [24] 2308 	mov	dph,r3
      001545 8C F0            [24] 2309 	mov	b,r4
      001547 12 1C 2A         [24] 2310 	lcall	__gptrget
      00154A 90 00 4D         [24] 2311 	mov	dptr,#___gpio_setBits_PARM_2
      00154D F0               [24] 2312 	movx	@dptr,a
      00154E 90 00 4E         [24] 2313 	mov	dptr,#___gpio_setBits_PARM_3
      001551 E5 1C            [12] 2314 	mov	a,_gpioConfigure_sloc4_1_0
      001553 F0               [24] 2315 	movx	@dptr,a
      001554 E5 1D            [12] 2316 	mov	a,(_gpioConfigure_sloc4_1_0 + 1)
      001556 A3               [24] 2317 	inc	dptr
      001557 F0               [24] 2318 	movx	@dptr,a
      001558 E5 1E            [12] 2319 	mov	a,(_gpioConfigure_sloc4_1_0 + 2)
      00155A A3               [24] 2320 	inc	dptr
      00155B F0               [24] 2321 	movx	@dptr,a
      00155C 85 1B 82         [24] 2322 	mov	dpl,_gpioConfigure_sloc3_1_0
      00155F C0 04            [24] 2323 	push	ar4
      001561 12 0D CB         [24] 2324 	lcall	___gpio_setBits
      001564 85 82 1C         [24] 2325 	mov	_gpioConfigure_sloc4_1_0,dpl
      001567 D0 04            [24] 2326 	pop	ar4
      001569 D0 05            [24] 2327 	pop	ar5
      00156B D0 06            [24] 2328 	pop	ar6
      00156D D0 07            [24] 2329 	pop	ar7
                                   2330 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:361: switch (gpioConfig->port) {
      00156F 90 00 5E         [24] 2331 	mov	dptr,#_gpioConfigure_gpioConfig_65536_59
      001572 E0               [24] 2332 	movx	a,@dptr
      001573 FA               [12] 2333 	mov	r2,a
      001574 A3               [24] 2334 	inc	dptr
      001575 E0               [24] 2335 	movx	a,@dptr
      001576 FB               [12] 2336 	mov	r3,a
      001577 A3               [24] 2337 	inc	dptr
      001578 E0               [24] 2338 	movx	a,@dptr
      001579 FC               [12] 2339 	mov	r4,a
      00157A 8A 82            [24] 2340 	mov	dpl,r2
      00157C 8B 83            [24] 2341 	mov	dph,r3
      00157E 8C F0            [24] 2342 	mov	b,r4
      001580 12 1C 2A         [24] 2343 	lcall	__gptrget
      001583 F5 1B            [12] 2344 	mov	_gpioConfigure_sloc3_1_0,a
      001585 74 01            [12] 2345 	mov	a,#0x01
      001587 B5 1B 04         [24] 2346 	cjne	a,_gpioConfigure_sloc3_1_0,00182$
      00158A D0 04            [24] 2347 	pop	ar4
      00158C 80 1A            [24] 2348 	sjmp	00111$
      00158E                       2349 00182$:
      00158E D0 04            [24] 2350 	pop	ar4
      001590 74 02            [12] 2351 	mov	a,#0x02
      001592 B5 1B 02         [24] 2352 	cjne	a,_gpioConfigure_sloc3_1_0,00183$
      001595 80 58            [24] 2353 	sjmp	00112$
      001597                       2354 00183$:
      001597 74 03            [12] 2355 	mov	a,#0x03
      001599 B5 1B 03         [24] 2356 	cjne	a,_gpioConfigure_sloc3_1_0,00184$
      00159C 02 16 36         [24] 2357 	ljmp	00113$
      00159F                       2358 00184$:
      00159F 74 05            [12] 2359 	mov	a,#0x05
      0015A1 B5 1B 03         [24] 2360 	cjne	a,_gpioConfigure_sloc3_1_0,00185$
      0015A4 02 16 7D         [24] 2361 	ljmp	00114$
      0015A7                       2362 00185$:
      0015A7 22               [24] 2363 	ret
                                   2364 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:393: case GPIO_PORT1:
      0015A8                       2365 00111$:
                                   2366 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:394: P1M1 = pm1;
      0015A8 8F 91            [24] 2367 	mov	_P1M1,r7
                                   2368 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:395: P1M0 = pm0;
      0015AA 8E 92            [24] 2369 	mov	_P1M0,r6
                                   2370 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:398: P1NCS = pncs;
      0015AC 90 FE 19         [24] 2371 	mov	dptr,#_P1NCS
      0015AF ED               [12] 2372 	mov	a,r5
      0015B0 F0               [24] 2373 	movx	@dptr,a
                                   2374 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:399: P1PU = ppu;
      0015B1 90 FE 11         [24] 2375 	mov	dptr,#_P1PU
      0015B4 EC               [12] 2376 	mov	a,r4
      0015B5 F0               [24] 2377 	movx	@dptr,a
                                   2378 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:403: P1DR = pdr;
      0015B6 90 00 66         [24] 2379 	mov	dptr,#_gpioConfigure_pdr_65537_63
      0015B9 E0               [24] 2380 	movx	a,@dptr
      0015BA 90 FE 29         [24] 2381 	mov	dptr,#_P1DR
      0015BD F0               [24] 2382 	movx	@dptr,a
                                   2383 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:404: P1SR = psr;
      0015BE 90 00 67         [24] 2384 	mov	dptr,#_gpioConfigure_psr_65537_63
      0015C1 E0               [24] 2385 	movx	a,@dptr
      0015C2 90 FE 21         [24] 2386 	mov	dptr,#_P1SR
      0015C5 F0               [24] 2387 	movx	@dptr,a
                                   2388 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:405: P1IE = pie;
      0015C6 90 00 68         [24] 2389 	mov	dptr,#_gpioConfigure_pie_65537_63
      0015C9 E0               [24] 2390 	movx	a,@dptr
      0015CA 90 FE 31         [24] 2391 	mov	dptr,#_P1IE
      0015CD F0               [24] 2392 	movx	@dptr,a
                                   2393 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:409: P1IM1 = pim1;
      0015CE 90 FD 31         [24] 2394 	mov	dptr,#_P1IM1
      0015D1 E5 15            [12] 2395 	mov	a,_gpioConfigure_sloc1_1_0
      0015D3 F0               [24] 2396 	movx	@dptr,a
                                   2397 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:410: P1IM0 = pim0;
      0015D4 90 FD 21         [24] 2398 	mov	dptr,#_P1IM0
      0015D7 E5 18            [12] 2399 	mov	a,_gpioConfigure_sloc2_1_0
      0015D9 F0               [24] 2400 	movx	@dptr,a
                                   2401 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:411: P1INTF = pintf;
      0015DA 90 00 6B         [24] 2402 	mov	dptr,#_gpioConfigure_pintf_65537_63
      0015DD E0               [24] 2403 	movx	a,@dptr
      0015DE 90 FD 11         [24] 2404 	mov	dptr,#_P1INTF
      0015E1 F0               [24] 2405 	movx	@dptr,a
                                   2406 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:412: P1INTE = pinte;
      0015E2 90 FD 01         [24] 2407 	mov	dptr,#_P1INTE
      0015E5 E5 12            [12] 2408 	mov	a,_gpioConfigure_sloc0_1_0
      0015E7 F0               [24] 2409 	movx	@dptr,a
                                   2410 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:413: P1WKUE = pwkue;
      0015E8 90 FD 41         [24] 2411 	mov	dptr,#_P1WKUE
      0015EB E5 1C            [12] 2412 	mov	a,_gpioConfigure_sloc4_1_0
      0015ED F0               [24] 2413 	movx	@dptr,a
                                   2414 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:415: break;
      0015EE 22               [24] 2415 	ret
                                   2416 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:421: case GPIO_PORT2:
      0015EF                       2417 00112$:
                                   2418 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:422: P2M1 = pm1;
      0015EF 8F 95            [24] 2419 	mov	_P2M1,r7
                                   2420 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:423: P2M0 = pm0;
      0015F1 8E 96            [24] 2421 	mov	_P2M0,r6
                                   2422 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:426: P2NCS = pncs;
      0015F3 90 FE 1A         [24] 2423 	mov	dptr,#_P2NCS
      0015F6 ED               [12] 2424 	mov	a,r5
      0015F7 F0               [24] 2425 	movx	@dptr,a
                                   2426 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:427: P2PU = ppu;
      0015F8 90 FE 12         [24] 2427 	mov	dptr,#_P2PU
      0015FB EC               [12] 2428 	mov	a,r4
      0015FC F0               [24] 2429 	movx	@dptr,a
                                   2430 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:431: P2DR = pdr;
      0015FD 90 00 66         [24] 2431 	mov	dptr,#_gpioConfigure_pdr_65537_63
      001600 E0               [24] 2432 	movx	a,@dptr
      001601 90 FE 2A         [24] 2433 	mov	dptr,#_P2DR
      001604 F0               [24] 2434 	movx	@dptr,a
                                   2435 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:432: P2SR = psr;
      001605 90 00 67         [24] 2436 	mov	dptr,#_gpioConfigure_psr_65537_63
      001608 E0               [24] 2437 	movx	a,@dptr
      001609 90 FE 22         [24] 2438 	mov	dptr,#_P2SR
      00160C F0               [24] 2439 	movx	@dptr,a
                                   2440 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:433: P2IE = pie;
      00160D 90 00 68         [24] 2441 	mov	dptr,#_gpioConfigure_pie_65537_63
      001610 E0               [24] 2442 	movx	a,@dptr
      001611 90 FE 32         [24] 2443 	mov	dptr,#_P2IE
      001614 F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:437: P2IM1 = pim1;
      001615 90 FD 32         [24] 2446 	mov	dptr,#_P2IM1
      001618 E5 15            [12] 2447 	mov	a,_gpioConfigure_sloc1_1_0
      00161A F0               [24] 2448 	movx	@dptr,a
                                   2449 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:438: P2IM0 = pim0;
      00161B 90 FD 22         [24] 2450 	mov	dptr,#_P2IM0
      00161E E5 18            [12] 2451 	mov	a,_gpioConfigure_sloc2_1_0
      001620 F0               [24] 2452 	movx	@dptr,a
                                   2453 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:439: P2INTF = pintf;
      001621 90 00 6B         [24] 2454 	mov	dptr,#_gpioConfigure_pintf_65537_63
      001624 E0               [24] 2455 	movx	a,@dptr
      001625 90 FD 12         [24] 2456 	mov	dptr,#_P2INTF
      001628 F0               [24] 2457 	movx	@dptr,a
                                   2458 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:440: P2INTE = pinte;
      001629 90 FD 02         [24] 2459 	mov	dptr,#_P2INTE
      00162C E5 12            [12] 2460 	mov	a,_gpioConfigure_sloc0_1_0
      00162E F0               [24] 2461 	movx	@dptr,a
                                   2462 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:441: P2WKUE = pwkue;
      00162F 90 FD 42         [24] 2463 	mov	dptr,#_P2WKUE
      001632 E5 1C            [12] 2464 	mov	a,_gpioConfigure_sloc4_1_0
      001634 F0               [24] 2465 	movx	@dptr,a
                                   2466 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:443: break;
      001635 22               [24] 2467 	ret
                                   2468 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:448: case GPIO_PORT3:
      001636                       2469 00113$:
                                   2470 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:449: P3M1 = pm1;
      001636 8F B1            [24] 2471 	mov	_P3M1,r7
                                   2472 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:450: P3M0 = pm0;
      001638 8E B2            [24] 2473 	mov	_P3M0,r6
                                   2474 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:453: P3NCS = pncs;
      00163A 90 FE 1B         [24] 2475 	mov	dptr,#_P3NCS
      00163D ED               [12] 2476 	mov	a,r5
      00163E F0               [24] 2477 	movx	@dptr,a
                                   2478 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:454: P3PU = ppu;
      00163F 90 FE 13         [24] 2479 	mov	dptr,#_P3PU
      001642 EC               [12] 2480 	mov	a,r4
      001643 F0               [24] 2481 	movx	@dptr,a
                                   2482 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:458: P3DR = pdr;
      001644 90 00 66         [24] 2483 	mov	dptr,#_gpioConfigure_pdr_65537_63
      001647 E0               [24] 2484 	movx	a,@dptr
      001648 90 FE 2B         [24] 2485 	mov	dptr,#_P3DR
      00164B F0               [24] 2486 	movx	@dptr,a
                                   2487 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:459: P3SR = psr;
      00164C 90 00 67         [24] 2488 	mov	dptr,#_gpioConfigure_psr_65537_63
      00164F E0               [24] 2489 	movx	a,@dptr
      001650 90 FE 23         [24] 2490 	mov	dptr,#_P3SR
      001653 F0               [24] 2491 	movx	@dptr,a
                                   2492 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:460: P3IE = pie;
      001654 90 00 68         [24] 2493 	mov	dptr,#_gpioConfigure_pie_65537_63
      001657 E0               [24] 2494 	movx	a,@dptr
      001658 90 FE 33         [24] 2495 	mov	dptr,#_P3IE
      00165B F0               [24] 2496 	movx	@dptr,a
                                   2497 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:464: P3IM1 = pim1;
      00165C 90 FD 33         [24] 2498 	mov	dptr,#_P3IM1
      00165F E5 15            [12] 2499 	mov	a,_gpioConfigure_sloc1_1_0
      001661 F0               [24] 2500 	movx	@dptr,a
                                   2501 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:465: P3IM0 = pim0;
      001662 90 FD 23         [24] 2502 	mov	dptr,#_P3IM0
      001665 E5 18            [12] 2503 	mov	a,_gpioConfigure_sloc2_1_0
      001667 F0               [24] 2504 	movx	@dptr,a
                                   2505 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:466: P3INTF = pintf;
      001668 90 00 6B         [24] 2506 	mov	dptr,#_gpioConfigure_pintf_65537_63
      00166B E0               [24] 2507 	movx	a,@dptr
      00166C 90 FD 13         [24] 2508 	mov	dptr,#_P3INTF
      00166F F0               [24] 2509 	movx	@dptr,a
                                   2510 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:467: P3INTE = pinte;
      001670 90 FD 03         [24] 2511 	mov	dptr,#_P3INTE
      001673 E5 12            [12] 2512 	mov	a,_gpioConfigure_sloc0_1_0
      001675 F0               [24] 2513 	movx	@dptr,a
                                   2514 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:468: P3WKUE = pwkue;
      001676 90 FD 43         [24] 2515 	mov	dptr,#_P3WKUE
      001679 E5 1C            [12] 2516 	mov	a,_gpioConfigure_sloc4_1_0
      00167B F0               [24] 2517 	movx	@dptr,a
                                   2518 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:470: break;
                                   2519 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:503: case GPIO_PORT5:
      00167C 22               [24] 2520 	ret
      00167D                       2521 00114$:
                                   2522 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:504: P5M1 = pm1;
      00167D 8F C9            [24] 2523 	mov	_P5M1,r7
                                   2524 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:505: P5M0 = pm0;
      00167F 8E CA            [24] 2525 	mov	_P5M0,r6
                                   2526 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:508: P5NCS = pncs;
      001681 90 FE 1D         [24] 2527 	mov	dptr,#_P5NCS
      001684 ED               [12] 2528 	mov	a,r5
      001685 F0               [24] 2529 	movx	@dptr,a
                                   2530 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:509: P5PU = ppu;
      001686 90 FE 15         [24] 2531 	mov	dptr,#_P5PU
      001689 EC               [12] 2532 	mov	a,r4
      00168A F0               [24] 2533 	movx	@dptr,a
                                   2534 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:513: P5DR = pdr;
      00168B 90 00 66         [24] 2535 	mov	dptr,#_gpioConfigure_pdr_65537_63
      00168E E0               [24] 2536 	movx	a,@dptr
      00168F 90 FE 2D         [24] 2537 	mov	dptr,#_P5DR
      001692 F0               [24] 2538 	movx	@dptr,a
                                   2539 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:514: P5SR = psr;
      001693 90 00 67         [24] 2540 	mov	dptr,#_gpioConfigure_psr_65537_63
      001696 E0               [24] 2541 	movx	a,@dptr
      001697 90 FE 25         [24] 2542 	mov	dptr,#_P5SR
      00169A F0               [24] 2543 	movx	@dptr,a
                                   2544 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:515: P5IE = pie;
      00169B 90 00 68         [24] 2545 	mov	dptr,#_gpioConfigure_pie_65537_63
      00169E E0               [24] 2546 	movx	a,@dptr
      00169F 90 FE 35         [24] 2547 	mov	dptr,#_P5IE
      0016A2 F0               [24] 2548 	movx	@dptr,a
                                   2549 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:519: P5IM1 = pim1;
      0016A3 90 FD 35         [24] 2550 	mov	dptr,#_P5IM1
      0016A6 E5 15            [12] 2551 	mov	a,_gpioConfigure_sloc1_1_0
      0016A8 F0               [24] 2552 	movx	@dptr,a
                                   2553 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:520: P5IM0 = pim0;
      0016A9 90 FD 25         [24] 2554 	mov	dptr,#_P5IM0
      0016AC E5 18            [12] 2555 	mov	a,_gpioConfigure_sloc2_1_0
      0016AE F0               [24] 2556 	movx	@dptr,a
                                   2557 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:521: P5INTF = pintf;
      0016AF 90 00 6B         [24] 2558 	mov	dptr,#_gpioConfigure_pintf_65537_63
      0016B2 E0               [24] 2559 	movx	a,@dptr
      0016B3 90 FD 15         [24] 2560 	mov	dptr,#_P5INTF
      0016B6 F0               [24] 2561 	movx	@dptr,a
                                   2562 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:522: P5INTE = pinte;
      0016B7 90 FD 05         [24] 2563 	mov	dptr,#_P5INTE
      0016BA E5 12            [12] 2564 	mov	a,_gpioConfigure_sloc0_1_0
      0016BC F0               [24] 2565 	movx	@dptr,a
                                   2566 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:523: P5WKUE = pwkue;
      0016BD 90 FD 45         [24] 2567 	mov	dptr,#_P5WKUE
      0016C0 E5 1C            [12] 2568 	mov	a,_gpioConfigure_sloc4_1_0
      0016C2 F0               [24] 2569 	movx	@dptr,a
                                   2570 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:583: }
                                   2571 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:584: }
      0016C3 22               [24] 2572 	ret
                                   2573 ;------------------------------------------------------------
                                   2574 ;Allocation info for local variables in function '__getPort'
                                   2575 ;------------------------------------------------------------
                                   2576 ;port                      Allocated with name '___getPort_port_65536_68'
                                   2577 ;value                     Allocated with name '___getPort_value_65536_69'
                                   2578 ;------------------------------------------------------------
                                   2579 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:586: static uint8_t __getPort(GpioPort port) {
                                   2580 ;	-----------------------------------------
                                   2581 ;	 function __getPort
                                   2582 ;	-----------------------------------------
      0016C4                       2583 ___getPort:
      0016C4 E5 82            [12] 2584 	mov	a,dpl
      0016C6 90 00 6E         [24] 2585 	mov	dptr,#___getPort_port_65536_68
      0016C9 F0               [24] 2586 	movx	@dptr,a
                                   2587 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:587: uint8_t value = 0;
      0016CA 90 00 6F         [24] 2588 	mov	dptr,#___getPort_value_65536_69
      0016CD E4               [12] 2589 	clr	a
      0016CE F0               [24] 2590 	movx	@dptr,a
                                   2591 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:589: switch (port) {
      0016CF 90 00 6E         [24] 2592 	mov	dptr,#___getPort_port_65536_68
      0016D2 E0               [24] 2593 	movx	a,@dptr
      0016D3 FF               [12] 2594 	mov	r7,a
      0016D4 BF 01 02         [24] 2595 	cjne	r7,#0x01,00124$
      0016D7 80 0F            [24] 2596 	sjmp	00101$
      0016D9                       2597 00124$:
      0016D9 BF 02 02         [24] 2598 	cjne	r7,#0x02,00125$
      0016DC 80 12            [24] 2599 	sjmp	00102$
      0016DE                       2600 00125$:
      0016DE BF 03 02         [24] 2601 	cjne	r7,#0x03,00126$
      0016E1 80 15            [24] 2602 	sjmp	00103$
      0016E3                       2603 00126$:
                                   2604 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:599: case GPIO_PORT1:
      0016E3 BF 05 20         [24] 2605 	cjne	r7,#0x05,00105$
      0016E6 80 18            [24] 2606 	sjmp	00104$
      0016E8                       2607 00101$:
                                   2608 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:600: value = P1;
      0016E8 90 00 6F         [24] 2609 	mov	dptr,#___getPort_value_65536_69
      0016EB E5 90            [12] 2610 	mov	a,_P1
      0016ED F0               [24] 2611 	movx	@dptr,a
                                   2612 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:601: break;
                                   2613 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:606: case GPIO_PORT2:
      0016EE 80 16            [24] 2614 	sjmp	00105$
      0016F0                       2615 00102$:
                                   2616 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:607: value = P2;
      0016F0 90 00 6F         [24] 2617 	mov	dptr,#___getPort_value_65536_69
      0016F3 E5 A0            [12] 2618 	mov	a,_P2
      0016F5 F0               [24] 2619 	movx	@dptr,a
                                   2620 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:608: break;
                                   2621 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:612: case GPIO_PORT3:
      0016F6 80 0E            [24] 2622 	sjmp	00105$
      0016F8                       2623 00103$:
                                   2624 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:613: value = P3;
      0016F8 90 00 6F         [24] 2625 	mov	dptr,#___getPort_value_65536_69
      0016FB E5 B0            [12] 2626 	mov	a,_P3
      0016FD F0               [24] 2627 	movx	@dptr,a
                                   2628 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:614: break;
                                   2629 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:625: case GPIO_PORT5:
      0016FE 80 06            [24] 2630 	sjmp	00105$
      001700                       2631 00104$:
                                   2632 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:626: value = P5;
      001700 90 00 6F         [24] 2633 	mov	dptr,#___getPort_value_65536_69
      001703 E5 C8            [12] 2634 	mov	a,_P5
      001705 F0               [24] 2635 	movx	@dptr,a
                                   2636 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:644: }
      001706                       2637 00105$:
                                   2638 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:646: return value;
      001706 90 00 6F         [24] 2639 	mov	dptr,#___getPort_value_65536_69
      001709 E0               [24] 2640 	movx	a,@dptr
                                   2641 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:647: }
      00170A F5 82            [12] 2642 	mov	dpl,a
      00170C 22               [24] 2643 	ret
                                   2644 ;------------------------------------------------------------
                                   2645 ;Allocation info for local variables in function 'gpioRead'
                                   2646 ;------------------------------------------------------------
                                   2647 ;gpioConfig                Allocated with name '_gpioRead_gpioConfig_65536_71'
                                   2648 ;------------------------------------------------------------
                                   2649 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:649: uint8_t gpioRead(GpioConfig *gpioConfig) {
                                   2650 ;	-----------------------------------------
                                   2651 ;	 function gpioRead
                                   2652 ;	-----------------------------------------
      00170D                       2653 _gpioRead:
      00170D AF F0            [24] 2654 	mov	r7,b
      00170F AE 83            [24] 2655 	mov	r6,dph
      001711 E5 82            [12] 2656 	mov	a,dpl
      001713 90 00 70         [24] 2657 	mov	dptr,#_gpioRead_gpioConfig_65536_71
      001716 F0               [24] 2658 	movx	@dptr,a
      001717 EE               [12] 2659 	mov	a,r6
      001718 A3               [24] 2660 	inc	dptr
      001719 F0               [24] 2661 	movx	@dptr,a
      00171A EF               [12] 2662 	mov	a,r7
      00171B A3               [24] 2663 	inc	dptr
      00171C F0               [24] 2664 	movx	@dptr,a
                                   2665 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:650: return (__getPort(gpioConfig->port) & gpioConfig->__setMask) >> gpioConfig->pin;
      00171D 90 00 70         [24] 2666 	mov	dptr,#_gpioRead_gpioConfig_65536_71
      001720 E0               [24] 2667 	movx	a,@dptr
      001721 FD               [12] 2668 	mov	r5,a
      001722 A3               [24] 2669 	inc	dptr
      001723 E0               [24] 2670 	movx	a,@dptr
      001724 FE               [12] 2671 	mov	r6,a
      001725 A3               [24] 2672 	inc	dptr
      001726 E0               [24] 2673 	movx	a,@dptr
      001727 FF               [12] 2674 	mov	r7,a
      001728 8D 82            [24] 2675 	mov	dpl,r5
      00172A 8E 83            [24] 2676 	mov	dph,r6
      00172C 8F F0            [24] 2677 	mov	b,r7
      00172E 12 1C 2A         [24] 2678 	lcall	__gptrget
      001731 F5 82            [12] 2679 	mov	dpl,a
      001733 C0 07            [24] 2680 	push	ar7
      001735 C0 06            [24] 2681 	push	ar6
      001737 C0 05            [24] 2682 	push	ar5
      001739 12 16 C4         [24] 2683 	lcall	___getPort
      00173C AC 82            [24] 2684 	mov	r4,dpl
      00173E D0 05            [24] 2685 	pop	ar5
      001740 D0 06            [24] 2686 	pop	ar6
      001742 D0 07            [24] 2687 	pop	ar7
      001744 74 0B            [12] 2688 	mov	a,#0x0b
      001746 2D               [12] 2689 	add	a,r5
      001747 F9               [12] 2690 	mov	r1,a
      001748 E4               [12] 2691 	clr	a
      001749 3E               [12] 2692 	addc	a,r6
      00174A FA               [12] 2693 	mov	r2,a
      00174B 8F 03            [24] 2694 	mov	ar3,r7
      00174D 89 82            [24] 2695 	mov	dpl,r1
      00174F 8A 83            [24] 2696 	mov	dph,r2
      001751 8B F0            [24] 2697 	mov	b,r3
      001753 12 1C 2A         [24] 2698 	lcall	__gptrget
      001756 52 04            [12] 2699 	anl	ar4,a
      001758 0D               [12] 2700 	inc	r5
      001759 BD 00 01         [24] 2701 	cjne	r5,#0x00,00103$
      00175C 0E               [12] 2702 	inc	r6
      00175D                       2703 00103$:
      00175D 8D 82            [24] 2704 	mov	dpl,r5
      00175F 8E 83            [24] 2705 	mov	dph,r6
      001761 8F F0            [24] 2706 	mov	b,r7
      001763 12 1C 2A         [24] 2707 	lcall	__gptrget
      001766 FD               [12] 2708 	mov	r5,a
      001767 8D F0            [24] 2709 	mov	b,r5
      001769 05 F0            [12] 2710 	inc	b
      00176B EC               [12] 2711 	mov	a,r4
      00176C 80 02            [24] 2712 	sjmp	00105$
      00176E                       2713 00104$:
      00176E C3               [12] 2714 	clr	c
      00176F 13               [12] 2715 	rrc	a
      001770                       2716 00105$:
      001770 D5 F0 FB         [24] 2717 	djnz	b,00104$
                                   2718 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:651: }
      001773 F5 82            [12] 2719 	mov	dpl,a
      001775 22               [24] 2720 	ret
                                   2721 ;------------------------------------------------------------
                                   2722 ;Allocation info for local variables in function 'gpioWrite'
                                   2723 ;------------------------------------------------------------
                                   2724 ;value                     Allocated with name '_gpioWrite_PARM_2'
                                   2725 ;gpioConfig                Allocated with name '_gpioWrite_gpioConfig_65536_73'
                                   2726 ;------------------------------------------------------------
                                   2727 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:653: void gpioWrite(GpioConfig *gpioConfig, uint8_t value) {
                                   2728 ;	-----------------------------------------
                                   2729 ;	 function gpioWrite
                                   2730 ;	-----------------------------------------
      001776                       2731 _gpioWrite:
      001776 AF F0            [24] 2732 	mov	r7,b
      001778 AE 83            [24] 2733 	mov	r6,dph
      00177A E5 82            [12] 2734 	mov	a,dpl
      00177C 90 00 74         [24] 2735 	mov	dptr,#_gpioWrite_gpioConfig_65536_73
      00177F F0               [24] 2736 	movx	@dptr,a
      001780 EE               [12] 2737 	mov	a,r6
      001781 A3               [24] 2738 	inc	dptr
      001782 F0               [24] 2739 	movx	@dptr,a
      001783 EF               [12] 2740 	mov	a,r7
      001784 A3               [24] 2741 	inc	dptr
      001785 F0               [24] 2742 	movx	@dptr,a
                                   2743 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:654: if (gpioConfig->count == 1) {
      001786 90 00 74         [24] 2744 	mov	dptr,#_gpioWrite_gpioConfig_65536_73
      001789 E0               [24] 2745 	movx	a,@dptr
      00178A FD               [12] 2746 	mov	r5,a
      00178B A3               [24] 2747 	inc	dptr
      00178C E0               [24] 2748 	movx	a,@dptr
      00178D FE               [12] 2749 	mov	r6,a
      00178E A3               [24] 2750 	inc	dptr
      00178F E0               [24] 2751 	movx	a,@dptr
      001790 FF               [12] 2752 	mov	r7,a
      001791 74 02            [12] 2753 	mov	a,#0x02
      001793 2D               [12] 2754 	add	a,r5
      001794 FA               [12] 2755 	mov	r2,a
      001795 E4               [12] 2756 	clr	a
      001796 3E               [12] 2757 	addc	a,r6
      001797 FB               [12] 2758 	mov	r3,a
      001798 8F 04            [24] 2759 	mov	ar4,r7
      00179A 8A 82            [24] 2760 	mov	dpl,r2
      00179C 8B 83            [24] 2761 	mov	dph,r3
      00179E 8C F0            [24] 2762 	mov	b,r4
      0017A0 12 1C 2A         [24] 2763 	lcall	__gptrget
      0017A3 FA               [12] 2764 	mov	r2,a
      0017A4 BA 01 15         [24] 2765 	cjne	r2,#0x01,00102$
                                   2766 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:658: value = value ? 1 : 0;
      0017A7 90 00 73         [24] 2767 	mov	dptr,#_gpioWrite_PARM_2
      0017AA E0               [24] 2768 	movx	a,@dptr
      0017AB 60 06            [24] 2769 	jz	00110$
      0017AD 7B 01            [12] 2770 	mov	r3,#0x01
      0017AF 7C 00            [12] 2771 	mov	r4,#0x00
      0017B1 80 04            [24] 2772 	sjmp	00111$
      0017B3                       2773 00110$:
      0017B3 7B 00            [12] 2774 	mov	r3,#0x00
      0017B5 7C 00            [12] 2775 	mov	r4,#0x00
      0017B7                       2776 00111$:
      0017B7 90 00 73         [24] 2777 	mov	dptr,#_gpioWrite_PARM_2
      0017BA EB               [12] 2778 	mov	a,r3
      0017BB F0               [24] 2779 	movx	@dptr,a
      0017BC                       2780 00102$:
                                   2781 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:661: value = (value << gpioConfig->pin) & gpioConfig->__setMask;
      0017BC 74 01            [12] 2782 	mov	a,#0x01
      0017BE 2D               [12] 2783 	add	a,r5
      0017BF FA               [12] 2784 	mov	r2,a
      0017C0 E4               [12] 2785 	clr	a
      0017C1 3E               [12] 2786 	addc	a,r6
      0017C2 FB               [12] 2787 	mov	r3,a
      0017C3 8F 04            [24] 2788 	mov	ar4,r7
      0017C5 8A 82            [24] 2789 	mov	dpl,r2
      0017C7 8B 83            [24] 2790 	mov	dph,r3
      0017C9 8C F0            [24] 2791 	mov	b,r4
      0017CB 12 1C 2A         [24] 2792 	lcall	__gptrget
      0017CE FA               [12] 2793 	mov	r2,a
      0017CF 90 00 73         [24] 2794 	mov	dptr,#_gpioWrite_PARM_2
      0017D2 E0               [24] 2795 	movx	a,@dptr
      0017D3 8A F0            [24] 2796 	mov	b,r2
      0017D5 05 F0            [12] 2797 	inc	b
      0017D7 80 02            [24] 2798 	sjmp	00141$
      0017D9                       2799 00139$:
      0017D9 25 E0            [12] 2800 	add	a,acc
      0017DB                       2801 00141$:
      0017DB D5 F0 FB         [24] 2802 	djnz	b,00139$
      0017DE FA               [12] 2803 	mov	r2,a
      0017DF 74 0B            [12] 2804 	mov	a,#0x0b
      0017E1 2D               [12] 2805 	add	a,r5
      0017E2 F9               [12] 2806 	mov	r1,a
      0017E3 E4               [12] 2807 	clr	a
      0017E4 3E               [12] 2808 	addc	a,r6
      0017E5 FB               [12] 2809 	mov	r3,a
      0017E6 8F 04            [24] 2810 	mov	ar4,r7
      0017E8 89 82            [24] 2811 	mov	dpl,r1
      0017EA 8B 83            [24] 2812 	mov	dph,r3
      0017EC 8C F0            [24] 2813 	mov	b,r4
      0017EE 12 1C 2A         [24] 2814 	lcall	__gptrget
      0017F1 90 00 73         [24] 2815 	mov	dptr,#_gpioWrite_PARM_2
      0017F4 5A               [12] 2816 	anl	a,r2
      0017F5 F0               [24] 2817 	movx	@dptr,a
                                   2818 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:662: value |= __getPort(gpioConfig->port) & gpioConfig->__clearMask;
      0017F6 8D 82            [24] 2819 	mov	dpl,r5
      0017F8 8E 83            [24] 2820 	mov	dph,r6
      0017FA 8F F0            [24] 2821 	mov	b,r7
      0017FC 12 1C 2A         [24] 2822 	lcall	__gptrget
      0017FF F5 82            [12] 2823 	mov	dpl,a
      001801 C0 07            [24] 2824 	push	ar7
      001803 C0 06            [24] 2825 	push	ar6
      001805 C0 05            [24] 2826 	push	ar5
      001807 12 16 C4         [24] 2827 	lcall	___getPort
      00180A AC 82            [24] 2828 	mov	r4,dpl
      00180C D0 05            [24] 2829 	pop	ar5
      00180E D0 06            [24] 2830 	pop	ar6
      001810 D0 07            [24] 2831 	pop	ar7
      001812 74 0C            [12] 2832 	mov	a,#0x0c
      001814 2D               [12] 2833 	add	a,r5
      001815 F9               [12] 2834 	mov	r1,a
      001816 E4               [12] 2835 	clr	a
      001817 3E               [12] 2836 	addc	a,r6
      001818 FA               [12] 2837 	mov	r2,a
      001819 8F 03            [24] 2838 	mov	ar3,r7
      00181B 89 82            [24] 2839 	mov	dpl,r1
      00181D 8A 83            [24] 2840 	mov	dph,r2
      00181F 8B F0            [24] 2841 	mov	b,r3
      001821 12 1C 2A         [24] 2842 	lcall	__gptrget
      001824 F9               [12] 2843 	mov	r1,a
      001825 52 04            [12] 2844 	anl	ar4,a
      001827 90 00 73         [24] 2845 	mov	dptr,#_gpioWrite_PARM_2
      00182A E0               [24] 2846 	movx	a,@dptr
      00182B 4C               [12] 2847 	orl	a,r4
      00182C F0               [24] 2848 	movx	@dptr,a
                                   2849 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:664: switch (gpioConfig->port) {
      00182D 8D 82            [24] 2850 	mov	dpl,r5
      00182F 8E 83            [24] 2851 	mov	dph,r6
      001831 8F F0            [24] 2852 	mov	b,r7
      001833 12 1C 2A         [24] 2853 	lcall	__gptrget
      001836 FF               [12] 2854 	mov	r7,a
      001837 BF 01 02         [24] 2855 	cjne	r7,#0x01,00142$
      00183A 80 0F            [24] 2856 	sjmp	00103$
      00183C                       2857 00142$:
      00183C BF 02 02         [24] 2858 	cjne	r7,#0x02,00143$
      00183F 80 11            [24] 2859 	sjmp	00104$
      001841                       2860 00143$:
      001841 BF 03 02         [24] 2861 	cjne	r7,#0x03,00144$
      001844 80 13            [24] 2862 	sjmp	00105$
      001846                       2863 00144$:
                                   2864 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:674: case GPIO_PORT1:
      001846 BF 05 1D         [24] 2865 	cjne	r7,#0x05,00108$
      001849 80 15            [24] 2866 	sjmp	00106$
      00184B                       2867 00103$:
                                   2868 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:675: P1 = value;
      00184B 90 00 73         [24] 2869 	mov	dptr,#_gpioWrite_PARM_2
      00184E E0               [24] 2870 	movx	a,@dptr
      00184F F5 90            [12] 2871 	mov	_P1,a
                                   2872 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:676: break;
                                   2873 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:681: case GPIO_PORT2:
      001851 22               [24] 2874 	ret
      001852                       2875 00104$:
                                   2876 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:682: P2 = value;
      001852 90 00 73         [24] 2877 	mov	dptr,#_gpioWrite_PARM_2
      001855 E0               [24] 2878 	movx	a,@dptr
      001856 F5 A0            [12] 2879 	mov	_P2,a
                                   2880 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:683: break;
                                   2881 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:687: case GPIO_PORT3:
      001858 22               [24] 2882 	ret
      001859                       2883 00105$:
                                   2884 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:688: P3 = value;
      001859 90 00 73         [24] 2885 	mov	dptr,#_gpioWrite_PARM_2
      00185C E0               [24] 2886 	movx	a,@dptr
      00185D F5 B0            [12] 2887 	mov	_P3,a
                                   2888 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:689: break;
                                   2889 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:700: case GPIO_PORT5:
      00185F 22               [24] 2890 	ret
      001860                       2891 00106$:
                                   2892 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:701: P5 = value;
      001860 90 00 73         [24] 2893 	mov	dptr,#_gpioWrite_PARM_2
      001863 E0               [24] 2894 	movx	a,@dptr
      001864 F5 C8            [12] 2895 	mov	_P5,a
                                   2896 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:718: }
      001866                       2897 00108$:
                                   2898 ;	/home/mr-atom/.stc/uni-stc/hal/gpio-hal.c:719: }
      001866 22               [24] 2899 	ret
                                   2900 	.area CSEG    (CODE)
                                   2901 	.area CONST   (CODE)
                                   2902 	.area XINIT   (CODE)
                                   2903 	.area CABS    (ABS,CODE)
