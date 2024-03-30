                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module gpio_settings
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _gpioConfigure
                                     12 	.globl _gpio_pin_init
                                     13 	.globl _S1SM0_FE
                                     14 	.globl _T1IE
                                     15 	.globl _T0IE
                                     16 	.globl _T1RUN
                                     17 	.globl _T0RUN
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _EA
                                     27 	.globl _INT1IE
                                     28 	.globl _INT0IE
                                     29 	.globl _INT1TR
                                     30 	.globl _INT0TR
                                     31 	.globl _P5_5
                                     32 	.globl _P5_4
                                     33 	.globl _P5_3
                                     34 	.globl _P5_2
                                     35 	.globl _P5_1
                                     36 	.globl _P5_0
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _P2_7
                                     46 	.globl _P2_6
                                     47 	.globl _P2_5
                                     48 	.globl _P2_4
                                     49 	.globl _P2_3
                                     50 	.globl _P2_2
                                     51 	.globl _P2_1
                                     52 	.globl _P2_0
                                     53 	.globl _P1_7
                                     54 	.globl _P1_6
                                     55 	.globl _P1_5
                                     56 	.globl _P1_4
                                     57 	.globl _P1_3
                                     58 	.globl _P1_2
                                     59 	.globl _P1_1
                                     60 	.globl _P1_0
                                     61 	.globl _USBADR
                                     62 	.globl _USBCON
                                     63 	.globl _USBDAT
                                     64 	.globl _USBCLK
                                     65 	.globl _S4BUF
                                     66 	.globl _S4CON
                                     67 	.globl _S3BUF
                                     68 	.globl _S3CON
                                     69 	.globl _S2BUF
                                     70 	.globl _S2CON
                                     71 	.globl _S1BUF
                                     72 	.globl _S1CON
                                     73 	.globl _SADEN
                                     74 	.globl _SADDR
                                     75 	.globl _AUXINTIF
                                     76 	.globl _T3
                                     77 	.globl _T3L
                                     78 	.globl _T3H
                                     79 	.globl _T4
                                     80 	.globl _T4L
                                     81 	.globl _T4H
                                     82 	.globl _T4T3M
                                     83 	.globl _WDT_CONTR
                                     84 	.globl _AUXR
                                     85 	.globl _T2
                                     86 	.globl _T2H
                                     87 	.globl _T2L
                                     88 	.globl _T1
                                     89 	.globl _T1H
                                     90 	.globl _T1L
                                     91 	.globl _T0
                                     92 	.globl _T0H
                                     93 	.globl _T0L
                                     94 	.globl _TMOD
                                     95 	.globl _TCON
                                     96 	.globl _IRTRIM
                                     97 	.globl _LIRTRIM
                                     98 	.globl _IRCBAND
                                     99 	.globl _SPDAT
                                    100 	.globl _SPCTL
                                    101 	.globl _SPSTAT
                                    102 	.globl _WKTC
                                    103 	.globl _WKTCH
                                    104 	.globl _WKTCL
                                    105 	.globl _BUS_SPEED
                                    106 	.globl _P_SW2
                                    107 	.globl _P_SW1
                                    108 	.globl _RSTCFG
                                    109 	.globl _PCON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _SP
                                    114 	.globl _IP3H
                                    115 	.globl _IP3L
                                    116 	.globl _IP2H
                                    117 	.globl _IP2L
                                    118 	.globl _IE2
                                    119 	.globl _IP1H
                                    120 	.globl _IP1L
                                    121 	.globl _IE1
                                    122 	.globl _INT_CLKO
                                    123 	.globl _IAP_TPS
                                    124 	.globl _IAP_CONTR
                                    125 	.globl _IAP_TRIG
                                    126 	.globl _IAP_CMD
                                    127 	.globl _IAP_ADDR
                                    128 	.globl _IAP_ADDRL
                                    129 	.globl _IAP_ADDRH
                                    130 	.globl _IAP_DATA
                                    131 	.globl _P5M0
                                    132 	.globl _P5M1
                                    133 	.globl _P5
                                    134 	.globl _P3M0
                                    135 	.globl _P3M1
                                    136 	.globl _P3
                                    137 	.globl _P2M0
                                    138 	.globl _P2M1
                                    139 	.globl _P2
                                    140 	.globl _P1M0
                                    141 	.globl _P1M1
                                    142 	.globl _P1
                                    143 	.globl _TA
                                    144 	.globl _DPH1
                                    145 	.globl _DPL1
                                    146 	.globl _DPS
                                    147 	.globl _DP
                                    148 	.globl _DPH
                                    149 	.globl _DPL
                                    150 	.globl _CMPCR2
                                    151 	.globl _CMPCR1
                                    152 	.globl _DMA_ADC_AMT
                                    153 	.globl _ADCCFG
                                    154 	.globl _ADC_RES
                                    155 	.globl _ADC_RESL
                                    156 	.globl _ADC_RESH
                                    157 	.globl _ADC_CONTR
                                    158 	.globl _DMA_UR4R_TXAL
                                    159 	.globl _DMA_UR4R_TXAH
                                    160 	.globl _DMA_UR4R_DONE
                                    161 	.globl _DMA_UR4R_AMT
                                    162 	.globl _DMA_UR4R_STA
                                    163 	.globl _DMA_UR4R_CR
                                    164 	.globl _DMA_UR4R_CFG
                                    165 	.globl _DMA_UR4T_TXAL
                                    166 	.globl _DMA_UR4T_TXAH
                                    167 	.globl _DMA_UR4T_DONE
                                    168 	.globl _DMA_UR4T_AMT
                                    169 	.globl _DMA_UR4T_STA
                                    170 	.globl _DMA_UR4T_CR
                                    171 	.globl _DMA_UR4T_CFG
                                    172 	.globl _DMA_UR3R_TXAL
                                    173 	.globl _DMA_UR3R_TXAH
                                    174 	.globl _DMA_UR3R_DONE
                                    175 	.globl _DMA_UR3R_AMT
                                    176 	.globl _DMA_UR3R_STA
                                    177 	.globl _DMA_UR3R_CR
                                    178 	.globl _DMA_UR3R_CFG
                                    179 	.globl _DMA_UR3T_TXAL
                                    180 	.globl _DMA_UR3T_TXAH
                                    181 	.globl _DMA_UR3T_DONE
                                    182 	.globl _DMA_UR3T_AMT
                                    183 	.globl _DMA_UR3T_STA
                                    184 	.globl _DMA_UR3T_CR
                                    185 	.globl _DMA_UR3T_CFG
                                    186 	.globl _DMA_UR2R_TXAL
                                    187 	.globl _DMA_UR2R_TXAH
                                    188 	.globl _DMA_UR2R_DONE
                                    189 	.globl _DMA_UR2R_AMT
                                    190 	.globl _DMA_UR2R_STA
                                    191 	.globl _DMA_UR2R_CR
                                    192 	.globl _DMA_UR2R_CFG
                                    193 	.globl _DMA_UR2T_TXAL
                                    194 	.globl _DMA_UR2T_TXAH
                                    195 	.globl _DMA_UR2T_DONE
                                    196 	.globl _DMA_UR2T_AMT
                                    197 	.globl _DMA_UR2T_STA
                                    198 	.globl _DMA_UR2T_CR
                                    199 	.globl _DMA_UR2T_CFG
                                    200 	.globl _DMA_UR1R_TXAL
                                    201 	.globl _DMA_UR1R_TXAH
                                    202 	.globl _DMA_UR1R_DONE
                                    203 	.globl _DMA_UR1R_AMT
                                    204 	.globl _DMA_UR1R_STA
                                    205 	.globl _DMA_UR1R_CR
                                    206 	.globl _DMA_UR1R_CFG
                                    207 	.globl _DMA_UR1T_TXAL
                                    208 	.globl _DMA_UR1T_TXAH
                                    209 	.globl _DMA_UR1T_DONE
                                    210 	.globl _DMA_URTX_AMT
                                    211 	.globl _DMA_UR1T_STA
                                    212 	.globl _DMA_UR1T_CR
                                    213 	.globl _DMA_UR1T_CFG
                                    214 	.globl _TM4PS
                                    215 	.globl _TM3PS
                                    216 	.globl _TM2PS
                                    217 	.globl _IRC48MCR
                                    218 	.globl _IRCDB
                                    219 	.globl _MCLKOCR
                                    220 	.globl _CKSEL
                                    221 	.globl _IRC32KCR
                                    222 	.globl _XOSCCR
                                    223 	.globl _HIRCCR
                                    224 	.globl _CLKDIV
                                    225 	.globl _DMA_SPI_CFG2
                                    226 	.globl _DMA_SPI_RXAL
                                    227 	.globl _DMA_SPI_RXAH
                                    228 	.globl _DMA_SPI_TXAL
                                    229 	.globl _DMA_SPI_TXAH
                                    230 	.globl _DMA_SPI_DONE
                                    231 	.globl _DMA_SPI_AMT
                                    232 	.globl _DMA_SPI_STA
                                    233 	.globl _DMA_SPI_CR
                                    234 	.globl _DMA_SPI_CFG
                                    235 	.globl _SSEC
                                    236 	.globl _SEC
                                    237 	.globl _MIN
                                    238 	.globl _HOUR
                                    239 	.globl _DAY
                                    240 	.globl _MONTH
                                    241 	.globl _YEAR
                                    242 	.globl _INISSEC
                                    243 	.globl _INISEC
                                    244 	.globl _INIMIN
                                    245 	.globl _INIHOUR
                                    246 	.globl _INIDAY
                                    247 	.globl _INIMONTH
                                    248 	.globl _INIYEAR
                                    249 	.globl _ALASSEC
                                    250 	.globl _ALASEC
                                    251 	.globl _ALAMIN
                                    252 	.globl _ALAHOUR
                                    253 	.globl _RTCIF
                                    254 	.globl _RTCIEN
                                    255 	.globl _RTCCFG
                                    256 	.globl _RTCCR
                                    257 	.globl _PWMB_OISR
                                    258 	.globl _PWMB_DTR
                                    259 	.globl _PWMB_BKR
                                    260 	.globl _PWMB_CCR4L
                                    261 	.globl _PWMB_CCR4H
                                    262 	.globl _PWMB_CCR3L
                                    263 	.globl _PWMB_CCR3H
                                    264 	.globl _PWMB_CCR2L
                                    265 	.globl _PWMB_CCR2H
                                    266 	.globl _PWMB_CCR1L
                                    267 	.globl _PWMB_CCR1H
                                    268 	.globl _PWMB_RCR
                                    269 	.globl _PWMB_ARRL
                                    270 	.globl _PWMB_ARRH
                                    271 	.globl _PWMB_PSCRL
                                    272 	.globl _PWMB_PSCRH
                                    273 	.globl _PWMB_CNTRL
                                    274 	.globl _PWMB_CNTRH
                                    275 	.globl _PWMB_CCER2
                                    276 	.globl _PWMB_CCER1
                                    277 	.globl _PWMB_CCMR4
                                    278 	.globl _PWMB_CCMR3
                                    279 	.globl _PWMB_CCMR2
                                    280 	.globl _PWMB_CCMR1
                                    281 	.globl _PWMB_EGR
                                    282 	.globl _PWMB_SR2
                                    283 	.globl _PWMB_SR1
                                    284 	.globl _PWMB_IER
                                    285 	.globl _PWMB_ETR
                                    286 	.globl _PWMB_SMCR
                                    287 	.globl _PWMB_CR2
                                    288 	.globl _PWMB_CR1
                                    289 	.globl _PWMA_OISR
                                    290 	.globl _PWMA_DTR
                                    291 	.globl _PWMA_BKR
                                    292 	.globl _PWMA_CCR4L
                                    293 	.globl _PWMA_CCR4H
                                    294 	.globl _PWMA_CCR3L
                                    295 	.globl _PWMA_CCR3H
                                    296 	.globl _PWMA_CCR2L
                                    297 	.globl _PWMA_CCR2H
                                    298 	.globl _PWMA_CCR1L
                                    299 	.globl _PWMA_CCR1H
                                    300 	.globl _PWMA_RCR
                                    301 	.globl _PWMA_ARRL
                                    302 	.globl _PWMA_ARRH
                                    303 	.globl _PWMA_PSCRL
                                    304 	.globl _PWMA_PSCRH
                                    305 	.globl _PWMA_CNTRL
                                    306 	.globl _PWMA_CNTRH
                                    307 	.globl _PWMA_CCER2
                                    308 	.globl _PWMA_CCER1
                                    309 	.globl _PWMA_CCMR4
                                    310 	.globl _PWMA_CCMR3
                                    311 	.globl _PWMA_CCMR2
                                    312 	.globl _PWMA_CCMR1
                                    313 	.globl _PWMA_EGR
                                    314 	.globl _PWMA_SR2
                                    315 	.globl _PWMA_SR1
                                    316 	.globl _PWMA_IER
                                    317 	.globl _PWMA_ETR
                                    318 	.globl _PWMA_SMCR
                                    319 	.globl _PWMA_CR2
                                    320 	.globl _PWMA_CR1
                                    321 	.globl _PWMB_IOAUX
                                    322 	.globl _PWMB_PS
                                    323 	.globl _PWMB_ENO
                                    324 	.globl _PWMB_ETRPS
                                    325 	.globl _PWMA_IOAUX
                                    326 	.globl _PWMA_PS
                                    327 	.globl _PWMA_ENO
                                    328 	.globl _PWMA_ETRPS
                                    329 	.globl _RSTFLAG
                                    330 	.globl _SPFUNC
                                    331 	.globl _OPCON
                                    332 	.globl _ARCON
                                    333 	.globl _MD4
                                    334 	.globl _MD5
                                    335 	.globl _MD0
                                    336 	.globl _MD1
                                    337 	.globl _MD2
                                    338 	.globl _MD3
                                    339 	.globl _DMA_LCM_RXAL
                                    340 	.globl _DMA_LCM_RXAH
                                    341 	.globl _DMA_LCM_TXAL
                                    342 	.globl _DMA_LCM_TXAH
                                    343 	.globl _DMA_LCM_DONE
                                    344 	.globl _DMA_LCM_AMT
                                    345 	.globl _DMA_LCM_STA
                                    346 	.globl _DMA_LCM_CR
                                    347 	.globl _DMA_LCM_CFG
                                    348 	.globl _LCMIDDAT
                                    349 	.globl _LCMIDDATH
                                    350 	.globl _LCMIDDATL
                                    351 	.globl _LCMSTA
                                    352 	.globl _LCMCR
                                    353 	.globl _LCMCFG2
                                    354 	.globl _LCMCFG
                                    355 	.globl _I2CMSAUX
                                    356 	.globl _I2CRXD
                                    357 	.globl _I2CTXD
                                    358 	.globl _I2CSLADR
                                    359 	.globl _I2CSLST
                                    360 	.globl _I2CSLCR
                                    361 	.globl _I2CMSST
                                    362 	.globl _I2CMSCR
                                    363 	.globl _I2CCFG
                                    364 	.globl _PINIPH
                                    365 	.globl _PINIPL
                                    366 	.globl _P5IE
                                    367 	.globl _P5DR
                                    368 	.globl _P5SR
                                    369 	.globl _P5NCS
                                    370 	.globl _P5PU
                                    371 	.globl _P5WKUE
                                    372 	.globl _P5IM1
                                    373 	.globl _P5IM0
                                    374 	.globl _P5INTF
                                    375 	.globl _P5INTE
                                    376 	.globl _P3IE
                                    377 	.globl _P3DR
                                    378 	.globl _P3SR
                                    379 	.globl _P3NCS
                                    380 	.globl _P3PU
                                    381 	.globl _P3WKUE
                                    382 	.globl _P3IM1
                                    383 	.globl _P3IM0
                                    384 	.globl _P3INTF
                                    385 	.globl _P3INTE
                                    386 	.globl _P2IE
                                    387 	.globl _P2DR
                                    388 	.globl _P2SR
                                    389 	.globl _P2NCS
                                    390 	.globl _P2PU
                                    391 	.globl _P2WKUE
                                    392 	.globl _P2IM1
                                    393 	.globl _P2IM0
                                    394 	.globl _P2INTF
                                    395 	.globl _P2INTE
                                    396 	.globl _P1IE
                                    397 	.globl _P1DR
                                    398 	.globl _P1SR
                                    399 	.globl _P1NCS
                                    400 	.globl _P1PU
                                    401 	.globl _P1WKUE
                                    402 	.globl _P1IM1
                                    403 	.globl _P1IM0
                                    404 	.globl _P1INTF
                                    405 	.globl _P1INTE
                                    406 	.globl _DMA_M2M_RXAL
                                    407 	.globl _DMA_M2M_RXAH
                                    408 	.globl _DMA_M2M_TXAL
                                    409 	.globl _DMA_M2M_TXAH
                                    410 	.globl _DMA_M2M_DONE
                                    411 	.globl _DMA_M2M_AMT
                                    412 	.globl _DMA_M2M_STA
                                    413 	.globl _DMA_M2M_CR
                                    414 	.globl _DMA_M2M_CFG
                                    415 	.globl _CMPEXCFG
                                    416 	.globl _DMA_ADC_CHSW1
                                    417 	.globl _DMA_ADC_CHSW0
                                    418 	.globl _DMA_ADC_CFG2
                                    419 	.globl _DMA_ADC_RXAL
                                    420 	.globl _DMA_ADC_RXAH
                                    421 	.globl _DMA_ADC_STA
                                    422 	.globl _DMA_ADC_CR
                                    423 	.globl _DMA_ADC_CFG
                                    424 	.globl _ADCEXCFG
                                    425 	.globl _ADCTIM
                                    426 	.globl _gpio_init
                                    427 ;--------------------------------------------------------
                                    428 ; special function registers
                                    429 ;--------------------------------------------------------
                                    430 	.area RSEG    (ABS,DATA)
      000000                        431 	.org 0x0000
                           0000BC   432 _ADC_CONTR	=	0x00bc
                           0000BD   433 _ADC_RESH	=	0x00bd
                           0000BE   434 _ADC_RESL	=	0x00be
                           00BDBE   435 _ADC_RES	=	0xbdbe
                           0000DE   436 _ADCCFG	=	0x00de
                           0000FA   437 _DMA_ADC_AMT	=	0x00fa
                           0000E6   438 _CMPCR1	=	0x00e6
                           0000E7   439 _CMPCR2	=	0x00e7
                           000082   440 _DPL	=	0x0082
                           000083   441 _DPH	=	0x0083
                           008382   442 _DP	=	0x8382
                           0000E3   443 _DPS	=	0x00e3
                           0000E4   444 _DPL1	=	0x00e4
                           0000E5   445 _DPH1	=	0x00e5
                           0000AE   446 _TA	=	0x00ae
                           000090   447 _P1	=	0x0090
                           000091   448 _P1M1	=	0x0091
                           000092   449 _P1M0	=	0x0092
                           0000A0   450 _P2	=	0x00a0
                           000095   451 _P2M1	=	0x0095
                           000096   452 _P2M0	=	0x0096
                           0000B0   453 _P3	=	0x00b0
                           0000B1   454 _P3M1	=	0x00b1
                           0000B2   455 _P3M0	=	0x00b2
                           0000C8   456 _P5	=	0x00c8
                           0000C9   457 _P5M1	=	0x00c9
                           0000CA   458 _P5M0	=	0x00ca
                           0000C2   459 _IAP_DATA	=	0x00c2
                           0000C3   460 _IAP_ADDRH	=	0x00c3
                           0000C4   461 _IAP_ADDRL	=	0x00c4
                           00C3C4   462 _IAP_ADDR	=	0xc3c4
                           0000C5   463 _IAP_CMD	=	0x00c5
                           0000C6   464 _IAP_TRIG	=	0x00c6
                           0000C7   465 _IAP_CONTR	=	0x00c7
                           0000F5   466 _IAP_TPS	=	0x00f5
                           00008F   467 _INT_CLKO	=	0x008f
                           0000A8   468 _IE1	=	0x00a8
                           0000B8   469 _IP1L	=	0x00b8
                           0000B7   470 _IP1H	=	0x00b7
                           0000AF   471 _IE2	=	0x00af
                           0000B5   472 _IP2L	=	0x00b5
                           0000B6   473 _IP2H	=	0x00b6
                           0000DF   474 _IP3L	=	0x00df
                           0000EE   475 _IP3H	=	0x00ee
                           000081   476 _SP	=	0x0081
                           0000D0   477 _PSW	=	0x00d0
                           0000E0   478 _ACC	=	0x00e0
                           0000F0   479 _B	=	0x00f0
                           000087   480 _PCON	=	0x0087
                           0000FF   481 _RSTCFG	=	0x00ff
                           0000A2   482 _P_SW1	=	0x00a2
                           0000BA   483 _P_SW2	=	0x00ba
                           0000A1   484 _BUS_SPEED	=	0x00a1
                           0000AA   485 _WKTCL	=	0x00aa
                           0000AB   486 _WKTCH	=	0x00ab
                           00ABAA   487 _WKTC	=	0xabaa
                           0000CD   488 _SPSTAT	=	0x00cd
                           0000CE   489 _SPCTL	=	0x00ce
                           0000CF   490 _SPDAT	=	0x00cf
                           00009D   491 _IRCBAND	=	0x009d
                           00009E   492 _LIRTRIM	=	0x009e
                           00009F   493 _IRTRIM	=	0x009f
                           000088   494 _TCON	=	0x0088
                           000089   495 _TMOD	=	0x0089
                           00008A   496 _T0L	=	0x008a
                           00008C   497 _T0H	=	0x008c
                           008C8A   498 _T0	=	0x8c8a
                           00008B   499 _T1L	=	0x008b
                           00008D   500 _T1H	=	0x008d
                           008D8B   501 _T1	=	0x8d8b
                           0000D7   502 _T2L	=	0x00d7
                           0000D6   503 _T2H	=	0x00d6
                           00D6D7   504 _T2	=	0xd6d7
                           00008E   505 _AUXR	=	0x008e
                           0000C1   506 _WDT_CONTR	=	0x00c1
                           0000D1   507 _T4T3M	=	0x00d1
                           0000D2   508 _T4H	=	0x00d2
                           0000D3   509 _T4L	=	0x00d3
                           00D2D3   510 _T4	=	0xd2d3
                           0000D4   511 _T3H	=	0x00d4
                           0000D5   512 _T3L	=	0x00d5
                           00D4D5   513 _T3	=	0xd4d5
                           0000EF   514 _AUXINTIF	=	0x00ef
                           0000A9   515 _SADDR	=	0x00a9
                           0000B9   516 _SADEN	=	0x00b9
                           000098   517 _S1CON	=	0x0098
                           000099   518 _S1BUF	=	0x0099
                           00009A   519 _S2CON	=	0x009a
                           00009B   520 _S2BUF	=	0x009b
                           0000AC   521 _S3CON	=	0x00ac
                           0000AD   522 _S3BUF	=	0x00ad
                           000084   523 _S4CON	=	0x0084
                           000085   524 _S4BUF	=	0x0085
                           0000DC   525 _USBCLK	=	0x00dc
                           0000EC   526 _USBDAT	=	0x00ec
                           0000F4   527 _USBCON	=	0x00f4
                           0000FC   528 _USBADR	=	0x00fc
                                    529 ;--------------------------------------------------------
                                    530 ; special function bits
                                    531 ;--------------------------------------------------------
                                    532 	.area RSEG    (ABS,DATA)
      000000                        533 	.org 0x0000
                           000090   534 _P1_0	=	0x0090
                           000091   535 _P1_1	=	0x0091
                           000092   536 _P1_2	=	0x0092
                           000093   537 _P1_3	=	0x0093
                           000094   538 _P1_4	=	0x0094
                           000095   539 _P1_5	=	0x0095
                           000096   540 _P1_6	=	0x0096
                           000097   541 _P1_7	=	0x0097
                           0000A0   542 _P2_0	=	0x00a0
                           0000A1   543 _P2_1	=	0x00a1
                           0000A2   544 _P2_2	=	0x00a2
                           0000A3   545 _P2_3	=	0x00a3
                           0000A4   546 _P2_4	=	0x00a4
                           0000A5   547 _P2_5	=	0x00a5
                           0000A6   548 _P2_6	=	0x00a6
                           0000A7   549 _P2_7	=	0x00a7
                           0000B0   550 _P3_0	=	0x00b0
                           0000B1   551 _P3_1	=	0x00b1
                           0000B2   552 _P3_2	=	0x00b2
                           0000B3   553 _P3_3	=	0x00b3
                           0000B4   554 _P3_4	=	0x00b4
                           0000B5   555 _P3_5	=	0x00b5
                           0000B6   556 _P3_6	=	0x00b6
                           0000B7   557 _P3_7	=	0x00b7
                           0000C8   558 _P5_0	=	0x00c8
                           0000C9   559 _P5_1	=	0x00c9
                           0000CA   560 _P5_2	=	0x00ca
                           0000CB   561 _P5_3	=	0x00cb
                           0000CC   562 _P5_4	=	0x00cc
                           0000CD   563 _P5_5	=	0x00cd
                           000088   564 _INT0TR	=	0x0088
                           00008A   565 _INT1TR	=	0x008a
                           0000A8   566 _INT0IE	=	0x00a8
                           0000AA   567 _INT1IE	=	0x00aa
                           0000AF   568 _EA	=	0x00af
                           0000D0   569 _P	=	0x00d0
                           0000D1   570 _F1	=	0x00d1
                           0000D2   571 _OV	=	0x00d2
                           0000D3   572 _RS0	=	0x00d3
                           0000D4   573 _RS1	=	0x00d4
                           0000D5   574 _F0	=	0x00d5
                           0000D6   575 _AC	=	0x00d6
                           0000D7   576 _CY	=	0x00d7
                           00008C   577 _T0RUN	=	0x008c
                           00008E   578 _T1RUN	=	0x008e
                           0000A9   579 _T0IE	=	0x00a9
                           0000AB   580 _T1IE	=	0x00ab
                           00009F   581 _S1SM0_FE	=	0x009f
                                    582 ;--------------------------------------------------------
                                    583 ; overlayable register banks
                                    584 ;--------------------------------------------------------
                                    585 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        586 	.ds 8
                                    587 ;--------------------------------------------------------
                                    588 ; internal ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area DSEG    (DATA)
                                    591 ;--------------------------------------------------------
                                    592 ; overlayable items in internal ram 
                                    593 ;--------------------------------------------------------
                                    594 ;--------------------------------------------------------
                                    595 ; indirectly addressable internal ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area ISEG    (DATA)
                                    598 ;--------------------------------------------------------
                                    599 ; absolute internal ram data
                                    600 ;--------------------------------------------------------
                                    601 	.area IABS    (ABS,DATA)
                                    602 	.area IABS    (ABS,DATA)
                                    603 ;--------------------------------------------------------
                                    604 ; bit data
                                    605 ;--------------------------------------------------------
                                    606 	.area BSEG    (BIT)
                                    607 ;--------------------------------------------------------
                                    608 ; paged external ram data
                                    609 ;--------------------------------------------------------
                                    610 	.area PSEG    (PAG,XDATA)
                                    611 ;--------------------------------------------------------
                                    612 ; external ram data
                                    613 ;--------------------------------------------------------
                                    614 	.area XSEG    (XDATA)
                           00FEA8   615 _ADCTIM	=	0xfea8
                           00FEAD   616 _ADCEXCFG	=	0xfead
                           00FA10   617 _DMA_ADC_CFG	=	0xfa10
                           00FA11   618 _DMA_ADC_CR	=	0xfa11
                           00FA12   619 _DMA_ADC_STA	=	0xfa12
                           00FA17   620 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   621 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   622 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   623 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   624 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   625 _CMPEXCFG	=	0xfeae
                           00FA00   626 _DMA_M2M_CFG	=	0xfa00
                           00FA01   627 _DMA_M2M_CR	=	0xfa01
                           00FA02   628 _DMA_M2M_STA	=	0xfa02
                           00FA03   629 _DMA_M2M_AMT	=	0xfa03
                           00FA04   630 _DMA_M2M_DONE	=	0xfa04
                           00FA05   631 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   632 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   633 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   634 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   635 _P1INTE	=	0xfd01
                           00FD11   636 _P1INTF	=	0xfd11
                           00FD21   637 _P1IM0	=	0xfd21
                           00FD31   638 _P1IM1	=	0xfd31
                           00FD41   639 _P1WKUE	=	0xfd41
                           00FE11   640 _P1PU	=	0xfe11
                           00FE19   641 _P1NCS	=	0xfe19
                           00FE21   642 _P1SR	=	0xfe21
                           00FE29   643 _P1DR	=	0xfe29
                           00FE31   644 _P1IE	=	0xfe31
                           00FD02   645 _P2INTE	=	0xfd02
                           00FD12   646 _P2INTF	=	0xfd12
                           00FD22   647 _P2IM0	=	0xfd22
                           00FD32   648 _P2IM1	=	0xfd32
                           00FD42   649 _P2WKUE	=	0xfd42
                           00FE12   650 _P2PU	=	0xfe12
                           00FE1A   651 _P2NCS	=	0xfe1a
                           00FE22   652 _P2SR	=	0xfe22
                           00FE2A   653 _P2DR	=	0xfe2a
                           00FE32   654 _P2IE	=	0xfe32
                           00FD03   655 _P3INTE	=	0xfd03
                           00FD13   656 _P3INTF	=	0xfd13
                           00FD23   657 _P3IM0	=	0xfd23
                           00FD33   658 _P3IM1	=	0xfd33
                           00FD43   659 _P3WKUE	=	0xfd43
                           00FE13   660 _P3PU	=	0xfe13
                           00FE1B   661 _P3NCS	=	0xfe1b
                           00FE23   662 _P3SR	=	0xfe23
                           00FE2B   663 _P3DR	=	0xfe2b
                           00FE33   664 _P3IE	=	0xfe33
                           00FD05   665 _P5INTE	=	0xfd05
                           00FD15   666 _P5INTF	=	0xfd15
                           00FD25   667 _P5IM0	=	0xfd25
                           00FD35   668 _P5IM1	=	0xfd35
                           00FD45   669 _P5WKUE	=	0xfd45
                           00FE15   670 _P5PU	=	0xfe15
                           00FE1D   671 _P5NCS	=	0xfe1d
                           00FE25   672 _P5SR	=	0xfe25
                           00FE2D   673 _P5DR	=	0xfe2d
                           00FE35   674 _P5IE	=	0xfe35
                           00FD60   675 _PINIPL	=	0xfd60
                           00FD61   676 _PINIPH	=	0xfd61
                           00FE80   677 _I2CCFG	=	0xfe80
                           00FE81   678 _I2CMSCR	=	0xfe81
                           00FE82   679 _I2CMSST	=	0xfe82
                           00FE83   680 _I2CSLCR	=	0xfe83
                           00FE84   681 _I2CSLST	=	0xfe84
                           00FE85   682 _I2CSLADR	=	0xfe85
                           00FE86   683 _I2CTXD	=	0xfe86
                           00FE87   684 _I2CRXD	=	0xfe87
                           00FE88   685 _I2CMSAUX	=	0xfe88
                           00FE50   686 _LCMCFG	=	0xfe50
                           00FE51   687 _LCMCFG2	=	0xfe51
                           00FE52   688 _LCMCR	=	0xfe52
                           00FE53   689 _LCMSTA	=	0xfe53
                           00FE54   690 _LCMIDDATL	=	0xfe54
                           00FE55   691 _LCMIDDATH	=	0xfe55
                           00FE54   692 _LCMIDDAT	=	0xfe54
                           00FA70   693 _DMA_LCM_CFG	=	0xfa70
                           00FA71   694 _DMA_LCM_CR	=	0xfa71
                           00FA72   695 _DMA_LCM_STA	=	0xfa72
                           00FA73   696 _DMA_LCM_AMT	=	0xfa73
                           00FA74   697 _DMA_LCM_DONE	=	0xfa74
                           00FA75   698 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   699 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   700 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   701 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   702 _MD3	=	0xfcf0
                           00FCF1   703 _MD2	=	0xfcf1
                           00FCF2   704 _MD1	=	0xfcf2
                           00FCF3   705 _MD0	=	0xfcf3
                           00FCF4   706 _MD5	=	0xfcf4
                           00FCF5   707 _MD4	=	0xfcf5
                           00FCF6   708 _ARCON	=	0xfcf6
                           00FCF7   709 _OPCON	=	0xfcf7
                           00FE08   710 _SPFUNC	=	0xfe08
                           00FE09   711 _RSTFLAG	=	0xfe09
                           00FEB0   712 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   713 _PWMA_ENO	=	0xfeb1
                           00FEB2   714 _PWMA_PS	=	0xfeb2
                           00FEB3   715 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   716 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   717 _PWMB_ENO	=	0xfeb5
                           00FEB6   718 _PWMB_PS	=	0xfeb6
                           00FEB7   719 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   720 _PWMA_CR1	=	0xfec0
                           00FEC1   721 _PWMA_CR2	=	0xfec1
                           00FEC2   722 _PWMA_SMCR	=	0xfec2
                           00FEC3   723 _PWMA_ETR	=	0xfec3
                           00FEC4   724 _PWMA_IER	=	0xfec4
                           00FEC5   725 _PWMA_SR1	=	0xfec5
                           00FEC6   726 _PWMA_SR2	=	0xfec6
                           00FEC7   727 _PWMA_EGR	=	0xfec7
                           00FEC8   728 _PWMA_CCMR1	=	0xfec8
                           00FEC9   729 _PWMA_CCMR2	=	0xfec9
                           00FECA   730 _PWMA_CCMR3	=	0xfeca
                           00FECB   731 _PWMA_CCMR4	=	0xfecb
                           00FECC   732 _PWMA_CCER1	=	0xfecc
                           00FECD   733 _PWMA_CCER2	=	0xfecd
                           00FECE   734 _PWMA_CNTRH	=	0xfece
                           00FECF   735 _PWMA_CNTRL	=	0xfecf
                           00FED0   736 _PWMA_PSCRH	=	0xfed0
                           00FED1   737 _PWMA_PSCRL	=	0xfed1
                           00FED2   738 _PWMA_ARRH	=	0xfed2
                           00FED3   739 _PWMA_ARRL	=	0xfed3
                           00FED4   740 _PWMA_RCR	=	0xfed4
                           00FED5   741 _PWMA_CCR1H	=	0xfed5
                           00FED6   742 _PWMA_CCR1L	=	0xfed6
                           00FED7   743 _PWMA_CCR2H	=	0xfed7
                           00FED8   744 _PWMA_CCR2L	=	0xfed8
                           00FED9   745 _PWMA_CCR3H	=	0xfed9
                           00FEDA   746 _PWMA_CCR3L	=	0xfeda
                           00FEDB   747 _PWMA_CCR4H	=	0xfedb
                           00FEDC   748 _PWMA_CCR4L	=	0xfedc
                           00FEDD   749 _PWMA_BKR	=	0xfedd
                           00FEDE   750 _PWMA_DTR	=	0xfede
                           00FEDF   751 _PWMA_OISR	=	0xfedf
                           00FEE0   752 _PWMB_CR1	=	0xfee0
                           00FEE1   753 _PWMB_CR2	=	0xfee1
                           00FEE2   754 _PWMB_SMCR	=	0xfee2
                           00FEE3   755 _PWMB_ETR	=	0xfee3
                           00FEE4   756 _PWMB_IER	=	0xfee4
                           00FEE5   757 _PWMB_SR1	=	0xfee5
                           00FEE6   758 _PWMB_SR2	=	0xfee6
                           00FEE7   759 _PWMB_EGR	=	0xfee7
                           00FEE8   760 _PWMB_CCMR1	=	0xfee8
                           00FEE9   761 _PWMB_CCMR2	=	0xfee9
                           00FEEA   762 _PWMB_CCMR3	=	0xfeea
                           00FEEB   763 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   764 _PWMB_CCER1	=	0xfeec
                           00FEED   765 _PWMB_CCER2	=	0xfeed
                           00FEEE   766 _PWMB_CNTRH	=	0xfeee
                           00FEEF   767 _PWMB_CNTRL	=	0xfeef
                           00FEF0   768 _PWMB_PSCRH	=	0xfef0
                           00FEF1   769 _PWMB_PSCRL	=	0xfef1
                           00FEF2   770 _PWMB_ARRH	=	0xfef2
                           00FEF3   771 _PWMB_ARRL	=	0xfef3
                           00FEF4   772 _PWMB_RCR	=	0xfef4
                           00FEF5   773 _PWMB_CCR1H	=	0xfef5
                           00FEF6   774 _PWMB_CCR1L	=	0xfef6
                           00FEF7   775 _PWMB_CCR2H	=	0xfef7
                           00FEF8   776 _PWMB_CCR2L	=	0xfef8
                           00FEF9   777 _PWMB_CCR3H	=	0xfef9
                           00FEFA   778 _PWMB_CCR3L	=	0xfefa
                           00FEFB   779 _PWMB_CCR4H	=	0xfefb
                           00FEFC   780 _PWMB_CCR4L	=	0xfefc
                           00FEFD   781 _PWMB_BKR	=	0xfefd
                           00FEFE   782 _PWMB_DTR	=	0xfefe
                           00FEFF   783 _PWMB_OISR	=	0xfeff
                           00FE60   784 _RTCCR	=	0xfe60
                           00FE61   785 _RTCCFG	=	0xfe61
                           00FE62   786 _RTCIEN	=	0xfe62
                           00FE63   787 _RTCIF	=	0xfe63
                           00FE64   788 _ALAHOUR	=	0xfe64
                           00FE65   789 _ALAMIN	=	0xfe65
                           00FE66   790 _ALASEC	=	0xfe66
                           00FE67   791 _ALASSEC	=	0xfe67
                           00FE68   792 _INIYEAR	=	0xfe68
                           00FE69   793 _INIMONTH	=	0xfe69
                           00FE6A   794 _INIDAY	=	0xfe6a
                           00FE6B   795 _INIHOUR	=	0xfe6b
                           00FE6C   796 _INIMIN	=	0xfe6c
                           00FE6D   797 _INISEC	=	0xfe6d
                           00FE6E   798 _INISSEC	=	0xfe6e
                           00FE70   799 _YEAR	=	0xfe70
                           00FE71   800 _MONTH	=	0xfe71
                           00FE72   801 _DAY	=	0xfe72
                           00FE73   802 _HOUR	=	0xfe73
                           00FE74   803 _MIN	=	0xfe74
                           00FE75   804 _SEC	=	0xfe75
                           00FE76   805 _SSEC	=	0xfe76
                           00FA20   806 _DMA_SPI_CFG	=	0xfa20
                           00FA21   807 _DMA_SPI_CR	=	0xfa21
                           00FA22   808 _DMA_SPI_STA	=	0xfa22
                           00FA23   809 _DMA_SPI_AMT	=	0xfa23
                           00FA24   810 _DMA_SPI_DONE	=	0xfa24
                           00FA25   811 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   812 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   813 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   814 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   815 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   816 _CLKDIV	=	0xfe01
                           00FE02   817 _HIRCCR	=	0xfe02
                           00FE03   818 _XOSCCR	=	0xfe03
                           00FE04   819 _IRC32KCR	=	0xfe04
                           00FE00   820 _CKSEL	=	0xfe00
                           00FE05   821 _MCLKOCR	=	0xfe05
                           00FE06   822 _IRCDB	=	0xfe06
                           00FE07   823 _IRC48MCR	=	0xfe07
                           00FEA2   824 _TM2PS	=	0xfea2
                           00FEA3   825 _TM3PS	=	0xfea3
                           00FEA4   826 _TM4PS	=	0xfea4
                           00FA30   827 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   828 _DMA_UR1T_CR	=	0xfa31
                           00FA32   829 _DMA_UR1T_STA	=	0xfa32
                           00FA33   830 _DMA_URTX_AMT	=	0xfa33
                           00FA34   831 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   832 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   833 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   834 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   835 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   836 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   837 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   838 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   839 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   840 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   841 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   842 _DMA_UR2T_CR	=	0xfa31
                           00FA32   843 _DMA_UR2T_STA	=	0xfa32
                           00FA33   844 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   845 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   846 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   847 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   848 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   849 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   850 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   851 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   852 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   853 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   854 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   855 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   856 _DMA_UR3T_CR	=	0xfa31
                           00FA32   857 _DMA_UR3T_STA	=	0xfa32
                           00FA33   858 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   859 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   860 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   861 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   862 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   863 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   864 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   865 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   866 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   867 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   868 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   869 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   870 _DMA_UR4T_CR	=	0xfa31
                           00FA32   871 _DMA_UR4T_STA	=	0xfa32
                           00FA33   872 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   873 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   874 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   875 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   876 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   877 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   878 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   879 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   880 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   881 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   882 _DMA_UR4R_TXAL	=	0xfa3e
      00007F                        883 _uartGetCharacter_result_65536_32:
      00007F                        884 	.ds 1
                                    885 ;--------------------------------------------------------
                                    886 ; absolute external ram data
                                    887 ;--------------------------------------------------------
                                    888 	.area XABS    (ABS,XDATA)
                                    889 ;--------------------------------------------------------
                                    890 ; external initialized ram data
                                    891 ;--------------------------------------------------------
                                    892 	.area XISEG   (XDATA)
                                    893 	.area HOME    (CODE)
                                    894 	.area GSINIT0 (CODE)
                                    895 	.area GSINIT1 (CODE)
                                    896 	.area GSINIT2 (CODE)
                                    897 	.area GSINIT3 (CODE)
                                    898 	.area GSINIT4 (CODE)
                                    899 	.area GSINIT5 (CODE)
                                    900 	.area GSINIT  (CODE)
                                    901 	.area GSFINAL (CODE)
                                    902 	.area CSEG    (CODE)
                                    903 ;--------------------------------------------------------
                                    904 ; global & static initialisations
                                    905 ;--------------------------------------------------------
                                    906 	.area HOME    (CODE)
                                    907 	.area GSINIT  (CODE)
                                    908 	.area GSFINAL (CODE)
                                    909 	.area GSINIT  (CODE)
                                    910 ;--------------------------------------------------------
                                    911 ; Home
                                    912 ;--------------------------------------------------------
                                    913 	.area HOME    (CODE)
                                    914 	.area HOME    (CODE)
                                    915 ;--------------------------------------------------------
                                    916 ; code
                                    917 ;--------------------------------------------------------
                                    918 	.area CSEG    (CODE)
                                    919 ;------------------------------------------------------------
                                    920 ;Allocation info for local variables in function 'gpio_init'
                                    921 ;------------------------------------------------------------
                                    922 ;	gpio_settings.c:4: void gpio_init(void) {
                                    923 ;	-----------------------------------------
                                    924 ;	 function gpio_init
                                    925 ;	-----------------------------------------
      001924                        926 _gpio_init:
                           000007   927 	ar7 = 0x07
                           000006   928 	ar6 = 0x06
                           000005   929 	ar5 = 0x05
                           000004   930 	ar4 = 0x04
                           000003   931 	ar3 = 0x03
                           000002   932 	ar2 = 0x02
                           000001   933 	ar1 = 0x01
                           000000   934 	ar0 = 0x00
                                    935 ;	gpio_settings.c:8: gpio_pin_init(&test_pin, GPIO_PORT2, GPIO_PIN5, GPIO_BIDIRECTIONAL_MODE);
      001924 90 00 58         [24]  936 	mov	dptr,#_gpio_pin_init_PARM_2
      001927 74 02            [12]  937 	mov	a,#0x02
      001929 F0               [24]  938 	movx	@dptr,a
      00192A 90 00 59         [24]  939 	mov	dptr,#_gpio_pin_init_PARM_3
      00192D 74 05            [12]  940 	mov	a,#0x05
      00192F F0               [24]  941 	movx	@dptr,a
      001930 90 00 5A         [24]  942 	mov	dptr,#_gpio_pin_init_PARM_4
      001933 E4               [12]  943 	clr	a
      001934 F0               [24]  944 	movx	@dptr,a
      001935 90 00 00         [24]  945 	mov	dptr,#_test_pin
      001938 75 F0 00         [24]  946 	mov	b,#0x00
      00193B 12 0E 9D         [24]  947 	lcall	_gpio_pin_init
                                    948 ;	gpio_settings.c:9: gpioConfigure(&test_pin);
      00193E 90 00 00         [24]  949 	mov	dptr,#_test_pin
      001941 75 F0 00         [24]  950 	mov	b,#0x00
      001944 12 0F 76         [24]  951 	lcall	_gpioConfigure
                                    952 ;	gpio_settings.c:11: test_p = 1;
      001947 90 00 00         [24]  953 	mov	dptr,#_test_p
      00194A 74 01            [12]  954 	mov	a,#0x01
      00194C F0               [24]  955 	movx	@dptr,a
                                    956 ;	gpio_settings.c:13: return;
                                    957 ;	gpio_settings.c:14: }
      00194D 22               [24]  958 	ret
                                    959 	.area CSEG    (CODE)
                                    960 	.area CONST   (CODE)
                                    961 	.area XINIT   (CODE)
                                    962 	.area CABS    (ABS,CODE)
