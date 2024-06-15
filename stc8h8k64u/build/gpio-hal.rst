                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
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
                                    157 	.globl _DMA_UR4R_TXAL
                                    158 	.globl _DMA_UR4R_TXAH
                                    159 	.globl _DMA_UR4R_DONE
                                    160 	.globl _DMA_UR4R_AMT
                                    161 	.globl _DMA_UR4R_STA
                                    162 	.globl _DMA_UR4R_CR
                                    163 	.globl _DMA_UR4R_CFG
                                    164 	.globl _DMA_UR4T_TXAL
                                    165 	.globl _DMA_UR4T_TXAH
                                    166 	.globl _DMA_UR4T_DONE
                                    167 	.globl _DMA_UR4T_AMT
                                    168 	.globl _DMA_UR4T_STA
                                    169 	.globl _DMA_UR4T_CR
                                    170 	.globl _DMA_UR4T_CFG
                                    171 	.globl _DMA_UR3R_TXAL
                                    172 	.globl _DMA_UR3R_TXAH
                                    173 	.globl _DMA_UR3R_DONE
                                    174 	.globl _DMA_UR3R_AMT
                                    175 	.globl _DMA_UR3R_STA
                                    176 	.globl _DMA_UR3R_CR
                                    177 	.globl _DMA_UR3R_CFG
                                    178 	.globl _DMA_UR3T_TXAL
                                    179 	.globl _DMA_UR3T_TXAH
                                    180 	.globl _DMA_UR3T_DONE
                                    181 	.globl _DMA_UR3T_AMT
                                    182 	.globl _DMA_UR3T_STA
                                    183 	.globl _DMA_UR3T_CR
                                    184 	.globl _DMA_UR3T_CFG
                                    185 	.globl _DMA_UR2R_TXAL
                                    186 	.globl _DMA_UR2R_TXAH
                                    187 	.globl _DMA_UR2R_DONE
                                    188 	.globl _DMA_UR2R_AMT
                                    189 	.globl _DMA_UR2R_STA
                                    190 	.globl _DMA_UR2R_CR
                                    191 	.globl _DMA_UR2R_CFG
                                    192 	.globl _DMA_UR2T_TXAL
                                    193 	.globl _DMA_UR2T_TXAH
                                    194 	.globl _DMA_UR2T_DONE
                                    195 	.globl _DMA_UR2T_AMT
                                    196 	.globl _DMA_UR2T_STA
                                    197 	.globl _DMA_UR2T_CR
                                    198 	.globl _DMA_UR2T_CFG
                                    199 	.globl _DMA_UR1R_TXAL
                                    200 	.globl _DMA_UR1R_TXAH
                                    201 	.globl _DMA_UR1R_DONE
                                    202 	.globl _DMA_UR1R_AMT
                                    203 	.globl _DMA_UR1R_STA
                                    204 	.globl _DMA_UR1R_CR
                                    205 	.globl _DMA_UR1R_CFG
                                    206 	.globl _DMA_UR1T_TXAL
                                    207 	.globl _DMA_UR1T_TXAH
                                    208 	.globl _DMA_UR1T_DONE
                                    209 	.globl _DMA_URTX_AMT
                                    210 	.globl _DMA_UR1T_STA
                                    211 	.globl _DMA_UR1T_CR
                                    212 	.globl _DMA_UR1T_CFG
                                    213 	.globl _TM4PS
                                    214 	.globl _TM3PS
                                    215 	.globl _TM2PS
                                    216 	.globl _IRC48MCR
                                    217 	.globl _IRCDB
                                    218 	.globl _MCLKOCR
                                    219 	.globl _CKSEL
                                    220 	.globl _IRC32KCR
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
                                    415 	.globl _DMA_ADC_CHSW1
                                    416 	.globl _DMA_ADC_CHSW0
                                    417 	.globl _DMA_ADC_CFG2
                                    418 	.globl _DMA_ADC_RXAL
                                    419 	.globl _DMA_ADC_RXAH
                                    420 	.globl _DMA_ADC_STA
                                    421 	.globl _DMA_ADC_CR
                                    422 	.globl _DMA_ADC_CFG
                                    423 	.globl _ADCEXCFG
                                    424 	.globl _ADCTIM
                                    425 	.globl _gpioConfigure
                                    426 	.globl _gpioRead
                                    427 	.globl _gpioWrite
                                    428 ;--------------------------------------------------------
                                    429 ; special function registers
                                    430 ;--------------------------------------------------------
                                    431 	.area RSEG    (ABS,DATA)
      000000                        432 	.org 0x0000
                           0000BC   433 _ADC_CONTR	=	0x00bc
                           0000BD   434 _ADC_RESH	=	0x00bd
                           0000BE   435 _ADC_RESL	=	0x00be
                           00BDBE   436 _ADC_RES	=	0xbdbe
                           0000DE   437 _ADCCFG	=	0x00de
                           0000FA   438 _DMA_ADC_AMT	=	0x00fa
                           0000E6   439 _CMPCR1	=	0x00e6
                           0000E7   440 _CMPCR2	=	0x00e7
                           000082   441 _DPL	=	0x0082
                           000083   442 _DPH	=	0x0083
                           008382   443 _DP	=	0x8382
                           0000E3   444 _DPS	=	0x00e3
                           0000E4   445 _DPL1	=	0x00e4
                           0000E5   446 _DPH1	=	0x00e5
                           0000AE   447 _TA	=	0x00ae
                           000090   448 _P1	=	0x0090
                           000091   449 _P1M1	=	0x0091
                           000092   450 _P1M0	=	0x0092
                           0000A0   451 _P2	=	0x00a0
                           000095   452 _P2M1	=	0x0095
                           000096   453 _P2M0	=	0x0096
                           0000B0   454 _P3	=	0x00b0
                           0000B1   455 _P3M1	=	0x00b1
                           0000B2   456 _P3M0	=	0x00b2
                           0000C8   457 _P5	=	0x00c8
                           0000C9   458 _P5M1	=	0x00c9
                           0000CA   459 _P5M0	=	0x00ca
                           0000C2   460 _IAP_DATA	=	0x00c2
                           0000C3   461 _IAP_ADDRH	=	0x00c3
                           0000C4   462 _IAP_ADDRL	=	0x00c4
                           00C3C4   463 _IAP_ADDR	=	0xc3c4
                           0000C5   464 _IAP_CMD	=	0x00c5
                           0000C6   465 _IAP_TRIG	=	0x00c6
                           0000C7   466 _IAP_CONTR	=	0x00c7
                           0000F5   467 _IAP_TPS	=	0x00f5
                           00008F   468 _INT_CLKO	=	0x008f
                           0000A8   469 _IE1	=	0x00a8
                           0000B8   470 _IP1L	=	0x00b8
                           0000B7   471 _IP1H	=	0x00b7
                           0000AF   472 _IE2	=	0x00af
                           0000B5   473 _IP2L	=	0x00b5
                           0000B6   474 _IP2H	=	0x00b6
                           0000DF   475 _IP3L	=	0x00df
                           0000EE   476 _IP3H	=	0x00ee
                           000081   477 _SP	=	0x0081
                           0000D0   478 _PSW	=	0x00d0
                           0000E0   479 _ACC	=	0x00e0
                           0000F0   480 _B	=	0x00f0
                           000087   481 _PCON	=	0x0087
                           0000FF   482 _RSTCFG	=	0x00ff
                           0000A2   483 _P_SW1	=	0x00a2
                           0000BA   484 _P_SW2	=	0x00ba
                           0000A1   485 _BUS_SPEED	=	0x00a1
                           0000AA   486 _WKTCL	=	0x00aa
                           0000AB   487 _WKTCH	=	0x00ab
                           00ABAA   488 _WKTC	=	0xabaa
                           0000CD   489 _SPSTAT	=	0x00cd
                           0000CE   490 _SPCTL	=	0x00ce
                           0000CF   491 _SPDAT	=	0x00cf
                           00009D   492 _IRCBAND	=	0x009d
                           00009E   493 _LIRTRIM	=	0x009e
                           00009F   494 _IRTRIM	=	0x009f
                           000088   495 _TCON	=	0x0088
                           000089   496 _TMOD	=	0x0089
                           00008A   497 _T0L	=	0x008a
                           00008C   498 _T0H	=	0x008c
                           008C8A   499 _T0	=	0x8c8a
                           00008B   500 _T1L	=	0x008b
                           00008D   501 _T1H	=	0x008d
                           008D8B   502 _T1	=	0x8d8b
                           0000D7   503 _T2L	=	0x00d7
                           0000D6   504 _T2H	=	0x00d6
                           00D6D7   505 _T2	=	0xd6d7
                           00008E   506 _AUXR	=	0x008e
                           0000C1   507 _WDT_CONTR	=	0x00c1
                           0000D1   508 _T4T3M	=	0x00d1
                           0000D2   509 _T4H	=	0x00d2
                           0000D3   510 _T4L	=	0x00d3
                           00D2D3   511 _T4	=	0xd2d3
                           0000D4   512 _T3H	=	0x00d4
                           0000D5   513 _T3L	=	0x00d5
                           00D4D5   514 _T3	=	0xd4d5
                           0000EF   515 _AUXINTIF	=	0x00ef
                           0000A9   516 _SADDR	=	0x00a9
                           0000B9   517 _SADEN	=	0x00b9
                           000098   518 _S1CON	=	0x0098
                           000099   519 _S1BUF	=	0x0099
                           00009A   520 _S2CON	=	0x009a
                           00009B   521 _S2BUF	=	0x009b
                           0000AC   522 _S3CON	=	0x00ac
                           0000AD   523 _S3BUF	=	0x00ad
                           000084   524 _S4CON	=	0x0084
                           000085   525 _S4BUF	=	0x0085
                           0000DC   526 _USBCLK	=	0x00dc
                           0000EC   527 _USBDAT	=	0x00ec
                           0000F4   528 _USBCON	=	0x00f4
                           0000FC   529 _USBADR	=	0x00fc
                                    530 ;--------------------------------------------------------
                                    531 ; special function bits
                                    532 ;--------------------------------------------------------
                                    533 	.area RSEG    (ABS,DATA)
      000000                        534 	.org 0x0000
                           000090   535 _P1_0	=	0x0090
                           000091   536 _P1_1	=	0x0091
                           000092   537 _P1_2	=	0x0092
                           000093   538 _P1_3	=	0x0093
                           000094   539 _P1_4	=	0x0094
                           000095   540 _P1_5	=	0x0095
                           000096   541 _P1_6	=	0x0096
                           000097   542 _P1_7	=	0x0097
                           0000A0   543 _P2_0	=	0x00a0
                           0000A1   544 _P2_1	=	0x00a1
                           0000A2   545 _P2_2	=	0x00a2
                           0000A3   546 _P2_3	=	0x00a3
                           0000A4   547 _P2_4	=	0x00a4
                           0000A5   548 _P2_5	=	0x00a5
                           0000A6   549 _P2_6	=	0x00a6
                           0000A7   550 _P2_7	=	0x00a7
                           0000B0   551 _P3_0	=	0x00b0
                           0000B1   552 _P3_1	=	0x00b1
                           0000B2   553 _P3_2	=	0x00b2
                           0000B3   554 _P3_3	=	0x00b3
                           0000B4   555 _P3_4	=	0x00b4
                           0000B5   556 _P3_5	=	0x00b5
                           0000B6   557 _P3_6	=	0x00b6
                           0000B7   558 _P3_7	=	0x00b7
                           0000C8   559 _P5_0	=	0x00c8
                           0000C9   560 _P5_1	=	0x00c9
                           0000CA   561 _P5_2	=	0x00ca
                           0000CB   562 _P5_3	=	0x00cb
                           0000CC   563 _P5_4	=	0x00cc
                           0000CD   564 _P5_5	=	0x00cd
                           000088   565 _INT0TR	=	0x0088
                           00008A   566 _INT1TR	=	0x008a
                           0000A8   567 _INT0IE	=	0x00a8
                           0000AA   568 _INT1IE	=	0x00aa
                           0000AF   569 _EA	=	0x00af
                           0000D0   570 _P	=	0x00d0
                           0000D1   571 _F1	=	0x00d1
                           0000D2   572 _OV	=	0x00d2
                           0000D3   573 _RS0	=	0x00d3
                           0000D4   574 _RS1	=	0x00d4
                           0000D5   575 _F0	=	0x00d5
                           0000D6   576 _AC	=	0x00d6
                           0000D7   577 _CY	=	0x00d7
                           00008C   578 _T0RUN	=	0x008c
                           00008E   579 _T1RUN	=	0x008e
                           0000A9   580 _T0IE	=	0x00a9
                           0000AB   581 _T1IE	=	0x00ab
                           00009F   582 _S1SM0_FE	=	0x009f
                                    583 ;--------------------------------------------------------
                                    584 ; overlayable register banks
                                    585 ;--------------------------------------------------------
                                    586 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        587 	.ds 8
                                    588 ;--------------------------------------------------------
                                    589 ; internal ram data
                                    590 ;--------------------------------------------------------
                                    591 	.area DSEG    (DATA)
      000012                        592 _gpioConfigure_sloc0_1_0:
      000012                        593 	.ds 3
      000015                        594 _gpioConfigure_sloc1_1_0:
      000015                        595 	.ds 3
      000018                        596 _gpioConfigure_sloc2_1_0:
      000018                        597 	.ds 3
      00001B                        598 _gpioConfigure_sloc3_1_0:
      00001B                        599 	.ds 1
      00001C                        600 _gpioConfigure_sloc4_1_0:
      00001C                        601 	.ds 3
                                    602 ;--------------------------------------------------------
                                    603 ; overlayable items in internal ram
                                    604 ;--------------------------------------------------------
                                    605 ;--------------------------------------------------------
                                    606 ; indirectly addressable internal ram data
                                    607 ;--------------------------------------------------------
                                    608 	.area ISEG    (DATA)
                                    609 ;--------------------------------------------------------
                                    610 ; absolute internal ram data
                                    611 ;--------------------------------------------------------
                                    612 	.area IABS    (ABS,DATA)
                                    613 	.area IABS    (ABS,DATA)
                                    614 ;--------------------------------------------------------
                                    615 ; bit data
                                    616 ;--------------------------------------------------------
                                    617 	.area BSEG    (BIT)
      000002                        618 ___isOutput_sloc0_1_0:
      000002                        619 	.ds 1
      000003                        620 ___isInput_sloc0_1_0:
      000003                        621 	.ds 1
                                    622 ;--------------------------------------------------------
                                    623 ; paged external ram data
                                    624 ;--------------------------------------------------------
                                    625 	.area PSEG    (PAG,XDATA)
                                    626 ;--------------------------------------------------------
                                    627 ; uninitialized external ram data
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
      000076                        898 _uartGetCharacter_result_10000_50:
      000076                        899 	.ds 1
      000077                        900 ___gpio_setBits_PARM_2:
      000077                        901 	.ds 1
      000078                        902 ___gpio_setBits_PARM_3:
      000078                        903 	.ds 3
      00007B                        904 ___gpio_setBits_portValue_10000_84:
      00007B                        905 	.ds 1
      00007C                        906 ___isOutput_gpioConfig_10000_86:
      00007C                        907 	.ds 3
      00007F                        908 ___isInput_gpioConfig_10000_88:
      00007F                        909 	.ds 3
      000082                        910 _gpioConfigure_gpioConfig_10000_90:
      000082                        911 	.ds 3
      000085                        912 _gpioConfigure_mask_10000_91:
      000085                        913 	.ds 1
      000086                        914 _gpioConfigure_pm1_10001_94:
      000086                        915 	.ds 1
      000087                        916 _gpioConfigure_pm0_10001_94:
      000087                        917 	.ds 1
      000088                        918 _gpioConfigure_pncs_10001_94:
      000088                        919 	.ds 1
      000089                        920 _gpioConfigure_ppu_10001_94:
      000089                        921 	.ds 1
      00008A                        922 _gpioConfigure_pdr_10001_94:
      00008A                        923 	.ds 1
      00008B                        924 _gpioConfigure_psr_10001_94:
      00008B                        925 	.ds 1
      00008C                        926 _gpioConfigure_pie_10001_94:
      00008C                        927 	.ds 1
      00008D                        928 _gpioConfigure_pim1_10001_94:
      00008D                        929 	.ds 1
      00008E                        930 _gpioConfigure_pim0_10001_94:
      00008E                        931 	.ds 1
      00008F                        932 _gpioConfigure_pintf_10001_94:
      00008F                        933 	.ds 1
      000090                        934 _gpioConfigure_pinte_10001_94:
      000090                        935 	.ds 1
      000091                        936 _gpioConfigure_pwkue_10001_94:
      000091                        937 	.ds 1
      000092                        938 ___getPort_port_10000_99:
      000092                        939 	.ds 1
      000093                        940 ___getPort_value_10000_100:
      000093                        941 	.ds 1
      000094                        942 _gpioRead_gpioConfig_10000_102:
      000094                        943 	.ds 3
      000097                        944 _gpioWrite_PARM_2:
      000097                        945 	.ds 1
      000098                        946 _gpioWrite_gpioConfig_10000_104:
      000098                        947 	.ds 3
                                    948 ;--------------------------------------------------------
                                    949 ; absolute external ram data
                                    950 ;--------------------------------------------------------
                                    951 	.area XABS    (ABS,XDATA)
                                    952 ;--------------------------------------------------------
                                    953 ; initialized external ram data
                                    954 ;--------------------------------------------------------
                                    955 	.area XISEG   (XDATA)
                                    956 	.area HOME    (CODE)
                                    957 	.area GSINIT0 (CODE)
                                    958 	.area GSINIT1 (CODE)
                                    959 	.area GSINIT2 (CODE)
                                    960 	.area GSINIT3 (CODE)
                                    961 	.area GSINIT4 (CODE)
                                    962 	.area GSINIT5 (CODE)
                                    963 	.area GSINIT  (CODE)
                                    964 	.area GSFINAL (CODE)
                                    965 	.area CSEG    (CODE)
                                    966 ;--------------------------------------------------------
                                    967 ; global & static initialisations
                                    968 ;--------------------------------------------------------
                                    969 	.area HOME    (CODE)
                                    970 	.area GSINIT  (CODE)
                                    971 	.area GSFINAL (CODE)
                                    972 	.area GSINIT  (CODE)
                                    973 ;--------------------------------------------------------
                                    974 ; Home
                                    975 ;--------------------------------------------------------
                                    976 	.area HOME    (CODE)
                                    977 	.area HOME    (CODE)
                                    978 ;--------------------------------------------------------
                                    979 ; code
                                    980 ;--------------------------------------------------------
                                    981 	.area CSEG    (CODE)
                                    982 ;------------------------------------------------------------
                                    983 ;Allocation info for local variables in function '__gpio_setBits'
                                    984 ;------------------------------------------------------------
                                    985 ;cfgValue                  Allocated with name '___gpio_setBits_PARM_2'
                                    986 ;gpioConfig                Allocated with name '___gpio_setBits_PARM_3'
                                    987 ;portValue                 Allocated with name '___gpio_setBits_portValue_10000_84'
                                    988 ;------------------------------------------------------------
                                    989 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:39: static uint8_t __gpio_setBits(uint8_t portValue, uint8_t cfgValue, GpioConfig *gpioConfig) {
                                    990 ;	-----------------------------------------
                                    991 ;	 function __gpio_setBits
                                    992 ;	-----------------------------------------
      000E67                        993 ___gpio_setBits:
                           000007   994 	ar7 = 0x07
                           000006   995 	ar6 = 0x06
                           000005   996 	ar5 = 0x05
                           000004   997 	ar4 = 0x04
                           000003   998 	ar3 = 0x03
                           000002   999 	ar2 = 0x02
                           000001  1000 	ar1 = 0x01
                           000000  1001 	ar0 = 0x00
      000E67 E5 82            [12] 1002 	mov	a,dpl
      000E69 90 00 7B         [24] 1003 	mov	dptr,#___gpio_setBits_portValue_10000_84
      000E6C F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:40: return cfgValue ? (portValue | gpioConfig->__setMask) : (portValue & gpioConfig->__clearMask);
      000E6D 90 00 77         [24] 1006 	mov	dptr,#___gpio_setBits_PARM_2
      000E70 E0               [24] 1007 	movx	a,@dptr
      000E71 60 24            [24] 1008 	jz	00103$
      000E73 90 00 78         [24] 1009 	mov	dptr,#___gpio_setBits_PARM_3
      000E76 E0               [24] 1010 	movx	a,@dptr
      000E77 FD               [12] 1011 	mov	r5,a
      000E78 A3               [24] 1012 	inc	dptr
      000E79 E0               [24] 1013 	movx	a,@dptr
      000E7A FE               [12] 1014 	mov	r6,a
      000E7B A3               [24] 1015 	inc	dptr
      000E7C E0               [24] 1016 	movx	a,@dptr
      000E7D FF               [12] 1017 	mov	r7,a
      000E7E 74 0B            [12] 1018 	mov	a,#0x0b
      000E80 2D               [12] 1019 	add	a, r5
      000E81 FD               [12] 1020 	mov	r5,a
      000E82 E4               [12] 1021 	clr	a
      000E83 3E               [12] 1022 	addc	a, r6
      000E84 FE               [12] 1023 	mov	r6,a
      000E85 8D 82            [24] 1024 	mov	dpl,r5
      000E87 8E 83            [24] 1025 	mov	dph,r6
      000E89 8F F0            [24] 1026 	mov	b,r7
      000E8B 12 3A A0         [24] 1027 	lcall	__gptrget
      000E8E FD               [12] 1028 	mov	r5,a
      000E8F 90 00 7B         [24] 1029 	mov	dptr,#___gpio_setBits_portValue_10000_84
      000E92 E0               [24] 1030 	movx	a,@dptr
      000E93 4D               [12] 1031 	orl	a,r5
      000E94 FF               [12] 1032 	mov	r7,a
      000E95 80 22            [24] 1033 	sjmp	00104$
      000E97                       1034 00103$:
      000E97 90 00 78         [24] 1035 	mov	dptr,#___gpio_setBits_PARM_3
      000E9A E0               [24] 1036 	movx	a,@dptr
      000E9B FC               [12] 1037 	mov	r4,a
      000E9C A3               [24] 1038 	inc	dptr
      000E9D E0               [24] 1039 	movx	a,@dptr
      000E9E FD               [12] 1040 	mov	r5,a
      000E9F A3               [24] 1041 	inc	dptr
      000EA0 E0               [24] 1042 	movx	a,@dptr
      000EA1 FE               [12] 1043 	mov	r6,a
      000EA2 74 0C            [12] 1044 	mov	a,#0x0c
      000EA4 2C               [12] 1045 	add	a, r4
      000EA5 FC               [12] 1046 	mov	r4,a
      000EA6 E4               [12] 1047 	clr	a
      000EA7 3D               [12] 1048 	addc	a, r5
      000EA8 FD               [12] 1049 	mov	r5,a
      000EA9 8C 82            [24] 1050 	mov	dpl,r4
      000EAB 8D 83            [24] 1051 	mov	dph,r5
      000EAD 8E F0            [24] 1052 	mov	b,r6
      000EAF 12 3A A0         [24] 1053 	lcall	__gptrget
      000EB2 FC               [12] 1054 	mov	r4,a
      000EB3 90 00 7B         [24] 1055 	mov	dptr,#___gpio_setBits_portValue_10000_84
      000EB6 E0               [24] 1056 	movx	a,@dptr
      000EB7 5C               [12] 1057 	anl	a,r4
      000EB8 FF               [12] 1058 	mov	r7,a
      000EB9                       1059 00104$:
      000EB9 8F 82            [24] 1060 	mov	dpl, r7
                                   1061 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:41: }
      000EBB 22               [24] 1062 	ret
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function '__isOutput'
                                   1065 ;------------------------------------------------------------
                                   1066 ;gpioConfig                Allocated with name '___isOutput_gpioConfig_10000_86'
                                   1067 ;------------------------------------------------------------
                                   1068 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:43: static uint8_t __isOutput(GpioConfig *gpioConfig) {
                                   1069 ;	-----------------------------------------
                                   1070 ;	 function __isOutput
                                   1071 ;	-----------------------------------------
      000EBC                       1072 ___isOutput:
      000EBC AF F0            [24] 1073 	mov	r7,b
      000EBE AE 83            [24] 1074 	mov	r6,dph
      000EC0 E5 82            [12] 1075 	mov	a,dpl
      000EC2 90 00 7C         [24] 1076 	mov	dptr,#___isOutput_gpioConfig_10000_86
      000EC5 F0               [24] 1077 	movx	@dptr,a
      000EC6 EE               [12] 1078 	mov	a,r6
      000EC7 A3               [24] 1079 	inc	dptr
      000EC8 F0               [24] 1080 	movx	@dptr,a
      000EC9 EF               [12] 1081 	mov	a,r7
      000ECA A3               [24] 1082 	inc	dptr
      000ECB F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:44: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_PUSH_PULL_MODE || gpioConfig->pinMode == GPIO_OPEN_DRAIN_MODE;
      000ECC 90 00 7C         [24] 1085 	mov	dptr,#___isOutput_gpioConfig_10000_86
      000ECF E0               [24] 1086 	movx	a,@dptr
      000ED0 FD               [12] 1087 	mov	r5,a
      000ED1 A3               [24] 1088 	inc	dptr
      000ED2 E0               [24] 1089 	movx	a,@dptr
      000ED3 FE               [12] 1090 	mov	r6,a
      000ED4 A3               [24] 1091 	inc	dptr
      000ED5 E0               [24] 1092 	movx	a,@dptr
      000ED6 FF               [12] 1093 	mov	r7,a
      000ED7 74 03            [12] 1094 	mov	a,#0x03
      000ED9 2D               [12] 1095 	add	a, r5
      000EDA FD               [12] 1096 	mov	r5,a
      000EDB E4               [12] 1097 	clr	a
      000EDC 3E               [12] 1098 	addc	a, r6
      000EDD FE               [12] 1099 	mov	r6,a
      000EDE 8D 82            [24] 1100 	mov	dpl,r5
      000EE0 8E 83            [24] 1101 	mov	dph,r6
      000EE2 8F F0            [24] 1102 	mov	b,r7
      000EE4 12 3A A0         [24] 1103 	lcall	__gptrget
      000EE7 FF               [12] 1104 	mov	r7,a
      000EE8 60 0E            [24] 1105 	jz	00104$
      000EEA BF 01 02         [24] 1106 	cjne	r7,#0x01,00128$
      000EED 80 09            [24] 1107 	sjmp	00104$
      000EEF                       1108 00128$:
      000EEF BF 03 02         [24] 1109 	cjne	r7,#0x03,00129$
      000EF2 80 04            [24] 1110 	sjmp	00104$
      000EF4                       1111 00129$:
                                   1112 ;	assignBit
      000EF4 C2 02            [12] 1113 	clr	___isOutput_sloc0_1_0
      000EF6 80 02            [24] 1114 	sjmp	00105$
      000EF8                       1115 00104$:
                                   1116 ;	assignBit
      000EF8 D2 02            [12] 1117 	setb	___isOutput_sloc0_1_0
      000EFA                       1118 00105$:
      000EFA A2 02            [12] 1119 	mov	c,___isOutput_sloc0_1_0
      000EFC E4               [12] 1120 	clr	a
      000EFD 33               [12] 1121 	rlc	a
                                   1122 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:45: }
      000EFE F5 82            [12] 1123 	mov	dpl,a
      000F00 22               [24] 1124 	ret
                                   1125 ;------------------------------------------------------------
                                   1126 ;Allocation info for local variables in function '__isInput'
                                   1127 ;------------------------------------------------------------
                                   1128 ;gpioConfig                Allocated with name '___isInput_gpioConfig_10000_88'
                                   1129 ;------------------------------------------------------------
                                   1130 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:47: static uint8_t __isInput(GpioConfig *gpioConfig) {
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function __isInput
                                   1133 ;	-----------------------------------------
      000F01                       1134 ___isInput:
      000F01 AF F0            [24] 1135 	mov	r7,b
      000F03 AE 83            [24] 1136 	mov	r6,dph
      000F05 E5 82            [12] 1137 	mov	a,dpl
      000F07 90 00 7F         [24] 1138 	mov	dptr,#___isInput_gpioConfig_10000_88
      000F0A F0               [24] 1139 	movx	@dptr,a
      000F0B EE               [12] 1140 	mov	a,r6
      000F0C A3               [24] 1141 	inc	dptr
      000F0D F0               [24] 1142 	movx	@dptr,a
      000F0E EF               [12] 1143 	mov	a,r7
      000F0F A3               [24] 1144 	inc	dptr
      000F10 F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:48: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_HIGH_IMPEDANCE_MODE;
      000F11 90 00 7F         [24] 1147 	mov	dptr,#___isInput_gpioConfig_10000_88
      000F14 E0               [24] 1148 	movx	a,@dptr
      000F15 FD               [12] 1149 	mov	r5,a
      000F16 A3               [24] 1150 	inc	dptr
      000F17 E0               [24] 1151 	movx	a,@dptr
      000F18 FE               [12] 1152 	mov	r6,a
      000F19 A3               [24] 1153 	inc	dptr
      000F1A E0               [24] 1154 	movx	a,@dptr
      000F1B FF               [12] 1155 	mov	r7,a
      000F1C 74 03            [12] 1156 	mov	a,#0x03
      000F1E 2D               [12] 1157 	add	a, r5
      000F1F FD               [12] 1158 	mov	r5,a
      000F20 E4               [12] 1159 	clr	a
      000F21 3E               [12] 1160 	addc	a, r6
      000F22 FE               [12] 1161 	mov	r6,a
      000F23 8D 82            [24] 1162 	mov	dpl,r5
      000F25 8E 83            [24] 1163 	mov	dph,r6
      000F27 8F F0            [24] 1164 	mov	b,r7
      000F29 12 3A A0         [24] 1165 	lcall	__gptrget
      000F2C FF               [12] 1166 	mov	r7,a
      000F2D 60 09            [24] 1167 	jz	00104$
      000F2F BF 02 02         [24] 1168 	cjne	r7,#0x02,00119$
      000F32 80 04            [24] 1169 	sjmp	00104$
      000F34                       1170 00119$:
                                   1171 ;	assignBit
      000F34 C2 03            [12] 1172 	clr	___isInput_sloc0_1_0
      000F36 80 02            [24] 1173 	sjmp	00105$
      000F38                       1174 00104$:
                                   1175 ;	assignBit
      000F38 D2 03            [12] 1176 	setb	___isInput_sloc0_1_0
      000F3A                       1177 00105$:
      000F3A A2 03            [12] 1178 	mov	c,___isInput_sloc0_1_0
      000F3C E4               [12] 1179 	clr	a
      000F3D 33               [12] 1180 	rlc	a
                                   1181 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:49: }
      000F3E F5 82            [12] 1182 	mov	dpl,a
      000F40 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'gpioConfigure'
                                   1186 ;------------------------------------------------------------
                                   1187 ;sloc0                     Allocated with name '_gpioConfigure_sloc0_1_0'
                                   1188 ;sloc1                     Allocated with name '_gpioConfigure_sloc1_1_0'
                                   1189 ;sloc2                     Allocated with name '_gpioConfigure_sloc2_1_0'
                                   1190 ;sloc3                     Allocated with name '_gpioConfigure_sloc3_1_0'
                                   1191 ;sloc4                     Allocated with name '_gpioConfigure_sloc4_1_0'
                                   1192 ;gpioConfig                Allocated with name '_gpioConfigure_gpioConfig_10000_90'
                                   1193 ;mask                      Allocated with name '_gpioConfigure_mask_10000_91'
                                   1194 ;n                         Allocated with name '_gpioConfigure_n_20000_92'
                                   1195 ;pm1                       Allocated with name '_gpioConfigure_pm1_10001_94'
                                   1196 ;pm0                       Allocated with name '_gpioConfigure_pm0_10001_94'
                                   1197 ;pncs                      Allocated with name '_gpioConfigure_pncs_10001_94'
                                   1198 ;ppu                       Allocated with name '_gpioConfigure_ppu_10001_94'
                                   1199 ;pdr                       Allocated with name '_gpioConfigure_pdr_10001_94'
                                   1200 ;psr                       Allocated with name '_gpioConfigure_psr_10001_94'
                                   1201 ;pie                       Allocated with name '_gpioConfigure_pie_10001_94'
                                   1202 ;pim1                      Allocated with name '_gpioConfigure_pim1_10001_94'
                                   1203 ;pim0                      Allocated with name '_gpioConfigure_pim0_10001_94'
                                   1204 ;pintf                     Allocated with name '_gpioConfigure_pintf_10001_94'
                                   1205 ;pinte                     Allocated with name '_gpioConfigure_pinte_10001_94'
                                   1206 ;pwkue                     Allocated with name '_gpioConfigure_pwkue_10001_94'
                                   1207 ;------------------------------------------------------------
                                   1208 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:51: void gpioConfigure(GpioConfig *gpioConfig) {
                                   1209 ;	-----------------------------------------
                                   1210 ;	 function gpioConfigure
                                   1211 ;	-----------------------------------------
      000F41                       1212 _gpioConfigure:
      000F41 AF F0            [24] 1213 	mov	r7,b
      000F43 AE 83            [24] 1214 	mov	r6,dph
      000F45 E5 82            [12] 1215 	mov	a,dpl
      000F47 90 00 82         [24] 1216 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      000F4A F0               [24] 1217 	movx	@dptr,a
      000F4B EE               [12] 1218 	mov	a,r6
      000F4C A3               [24] 1219 	inc	dptr
      000F4D F0               [24] 1220 	movx	@dptr,a
      000F4E EF               [12] 1221 	mov	a,r7
      000F4F A3               [24] 1222 	inc	dptr
      000F50 F0               [24] 1223 	movx	@dptr,a
                                   1224 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:53: uint8_t mask = 0;
      000F51 90 00 85         [24] 1225 	mov	dptr,#_gpioConfigure_mask_10000_91
      000F54 E4               [12] 1226 	clr	a
      000F55 F0               [24] 1227 	movx	@dptr,a
                                   1228 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      000F56 90 00 82         [24] 1229 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      000F59 E0               [24] 1230 	movx	a,@dptr
      000F5A FD               [12] 1231 	mov	r5,a
      000F5B A3               [24] 1232 	inc	dptr
      000F5C E0               [24] 1233 	movx	a,@dptr
      000F5D FE               [12] 1234 	mov	r6,a
      000F5E A3               [24] 1235 	inc	dptr
      000F5F E0               [24] 1236 	movx	a,@dptr
      000F60 FF               [12] 1237 	mov	r7,a
      000F61 74 02            [12] 1238 	mov	a,#0x02
      000F63 2D               [12] 1239 	add	a, r5
      000F64 FA               [12] 1240 	mov	r2,a
      000F65 E4               [12] 1241 	clr	a
      000F66 3E               [12] 1242 	addc	a, r6
      000F67 FB               [12] 1243 	mov	r3,a
      000F68 8F 04            [24] 1244 	mov	ar4,r7
      000F6A 8A 82            [24] 1245 	mov	dpl,r2
      000F6C 8B 83            [24] 1246 	mov	dph,r3
      000F6E 8C F0            [24] 1247 	mov	b,r4
      000F70 12 3A A0         [24] 1248 	lcall	__gptrget
      000F73 FC               [12] 1249 	mov	r4,a
      000F74                       1250 00117$:
      000F74 EC               [12] 1251 	mov	a,r4
      000F75 60 0F            [24] 1252 	jz	00101$
                                   1253 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:56: mask = mask << 1;
      000F77 90 00 85         [24] 1254 	mov	dptr,#_gpioConfigure_mask_10000_91
      000F7A E0               [24] 1255 	movx	a,@dptr
      000F7B 25 E0            [12] 1256 	add	a,acc
      000F7D F0               [24] 1257 	movx	@dptr,a
                                   1258 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:57: mask |= 1;
      000F7E E0               [24] 1259 	movx	a,@dptr
      000F7F 43 E0 01         [24] 1260 	orl	acc,#0x01
      000F82 F0               [24] 1261 	movx	@dptr,a
                                   1262 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      000F83 1C               [12] 1263 	dec	r4
      000F84 80 EE            [24] 1264 	sjmp	00117$
      000F86                       1265 00101$:
                                   1266 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:60: gpioConfig->__setMask = mask << gpioConfig->pin;
      000F86 74 0B            [12] 1267 	mov	a,#0x0b
      000F88 2D               [12] 1268 	add	a, r5
      000F89 F5 12            [12] 1269 	mov	_gpioConfigure_sloc0_1_0,a
      000F8B E4               [12] 1270 	clr	a
      000F8C 3E               [12] 1271 	addc	a, r6
      000F8D F5 13            [12] 1272 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      000F8F 8F 14            [24] 1273 	mov	(_gpioConfigure_sloc0_1_0 + 2),r7
      000F91 74 01            [12] 1274 	mov	a,#0x01
      000F93 2D               [12] 1275 	add	a, r5
      000F94 F8               [12] 1276 	mov	r0,a
      000F95 E4               [12] 1277 	clr	a
      000F96 3E               [12] 1278 	addc	a, r6
      000F97 F9               [12] 1279 	mov	r1,a
      000F98 8F 04            [24] 1280 	mov	ar4,r7
      000F9A 88 82            [24] 1281 	mov	dpl,r0
      000F9C 89 83            [24] 1282 	mov	dph,r1
      000F9E 8C F0            [24] 1283 	mov	b,r4
      000FA0 12 3A A0         [24] 1284 	lcall	__gptrget
      000FA3 F8               [12] 1285 	mov	r0,a
      000FA4 90 00 85         [24] 1286 	mov	dptr,#_gpioConfigure_mask_10000_91
      000FA7 E0               [24] 1287 	movx	a,@dptr
      000FA8 88 F0            [24] 1288 	mov	b,r0
      000FAA 05 F0            [12] 1289 	inc	b
      000FAC 80 02            [24] 1290 	sjmp	00198$
      000FAE                       1291 00197$:
      000FAE 25 E0            [12] 1292 	add	a,acc
      000FB0                       1293 00198$:
      000FB0 D5 F0 FB         [24] 1294 	djnz	b,00197$
      000FB3 F8               [12] 1295 	mov	r0,a
      000FB4 85 12 82         [24] 1296 	mov	dpl,_gpioConfigure_sloc0_1_0
      000FB7 85 13 83         [24] 1297 	mov	dph,(_gpioConfigure_sloc0_1_0 + 1)
      000FBA 85 14 F0         [24] 1298 	mov	b,(_gpioConfigure_sloc0_1_0 + 2)
      000FBD 12 2F F5         [24] 1299 	lcall	__gptrput
                                   1300 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:61: gpioConfig->__clearMask = ~gpioConfig->__setMask;
      000FC0 74 0C            [12] 1301 	mov	a,#0x0c
      000FC2 2D               [12] 1302 	add	a, r5
      000FC3 FA               [12] 1303 	mov	r2,a
      000FC4 E4               [12] 1304 	clr	a
      000FC5 3E               [12] 1305 	addc	a, r6
      000FC6 FB               [12] 1306 	mov	r3,a
      000FC7 8F 04            [24] 1307 	mov	ar4,r7
      000FC9 E8               [12] 1308 	mov	a,r0
      000FCA F4               [12] 1309 	cpl	a
      000FCB 8A 82            [24] 1310 	mov	dpl,r2
      000FCD 8B 83            [24] 1311 	mov	dph,r3
      000FCF 8C F0            [24] 1312 	mov	b,r4
      000FD1 12 2F F5         [24] 1313 	lcall	__gptrput
                                   1314 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:63: uint8_t pm1 = 0;
      000FD4 90 00 86         [24] 1315 	mov	dptr,#_gpioConfigure_pm1_10001_94
      000FD7 E4               [12] 1316 	clr	a
      000FD8 F0               [24] 1317 	movx	@dptr,a
                                   1318 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:64: uint8_t pm0 = 0;
      000FD9 90 00 87         [24] 1319 	mov	dptr,#_gpioConfigure_pm0_10001_94
      000FDC F0               [24] 1320 	movx	@dptr,a
                                   1321 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:67: uint8_t pncs = 0;
      000FDD 90 00 88         [24] 1322 	mov	dptr,#_gpioConfigure_pncs_10001_94
      000FE0 F0               [24] 1323 	movx	@dptr,a
                                   1324 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:68: uint8_t ppu = 0;
      000FE1 90 00 89         [24] 1325 	mov	dptr,#_gpioConfigure_ppu_10001_94
      000FE4 F0               [24] 1326 	movx	@dptr,a
                                   1327 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:72: uint8_t pdr = 0;
      000FE5 90 00 8A         [24] 1328 	mov	dptr,#_gpioConfigure_pdr_10001_94
      000FE8 F0               [24] 1329 	movx	@dptr,a
                                   1330 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:73: uint8_t psr = 0;
      000FE9 90 00 8B         [24] 1331 	mov	dptr,#_gpioConfigure_psr_10001_94
      000FEC F0               [24] 1332 	movx	@dptr,a
                                   1333 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:74: uint8_t pie = 0;
      000FED 90 00 8C         [24] 1334 	mov	dptr,#_gpioConfigure_pie_10001_94
      000FF0 F0               [24] 1335 	movx	@dptr,a
                                   1336 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:78: uint8_t pim1 = 0;
      000FF1 90 00 8D         [24] 1337 	mov	dptr,#_gpioConfigure_pim1_10001_94
      000FF4 F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:79: uint8_t pim0 = 0;
      000FF5 90 00 8E         [24] 1340 	mov	dptr,#_gpioConfigure_pim0_10001_94
      000FF8 F0               [24] 1341 	movx	@dptr,a
                                   1342 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:80: uint8_t pintf = 0;
      000FF9 90 00 8F         [24] 1343 	mov	dptr,#_gpioConfigure_pintf_10001_94
      000FFC F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:81: uint8_t pinte = 0;
      000FFD 90 00 90         [24] 1346 	mov	dptr,#_gpioConfigure_pinte_10001_94
      001000 F0               [24] 1347 	movx	@dptr,a
                                   1348 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:82: uint8_t pwkue = 0;
      001001 90 00 91         [24] 1349 	mov	dptr,#_gpioConfigure_pwkue_10001_94
      001004 F0               [24] 1350 	movx	@dptr,a
                                   1351 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:85: switch (gpioConfig->port) {
      001005 8D 82            [24] 1352 	mov	dpl,r5
      001007 8E 83            [24] 1353 	mov	dph,r6
      001009 8F F0            [24] 1354 	mov	b,r7
      00100B 12 3A A0         [24] 1355 	lcall	__gptrget
      00100E FF               [12] 1356 	mov	r7,a
      00100F BF 01 02         [24] 1357 	cjne	r7,#0x01,00199$
      001012 80 14            [24] 1358 	sjmp	00102$
      001014                       1359 00199$:
      001014 BF 02 02         [24] 1360 	cjne	r7,#0x02,00200$
      001017 80 6E            [24] 1361 	sjmp	00103$
      001019                       1362 00200$:
      001019 BF 03 03         [24] 1363 	cjne	r7,#0x03,00201$
      00101C 02 10 E6         [24] 1364 	ljmp	00104$
      00101F                       1365 00201$:
      00101F BF 05 03         [24] 1366 	cjne	r7,#0x05,00202$
      001022 02 11 44         [24] 1367 	ljmp	00105$
      001025                       1368 00202$:
      001025 02 11 A0         [24] 1369 	ljmp	00106$
                                   1370 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:117: case GPIO_PORT1:
      001028                       1371 00102$:
                                   1372 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:118: pm1 = P1M1;
      001028 90 00 86         [24] 1373 	mov	dptr,#_gpioConfigure_pm1_10001_94
      00102B E5 91            [12] 1374 	mov	a,_P1M1
      00102D F0               [24] 1375 	movx	@dptr,a
                                   1376 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:119: pm0 = P1M0;
      00102E 90 00 87         [24] 1377 	mov	dptr,#_gpioConfigure_pm0_10001_94
      001031 E5 92            [12] 1378 	mov	a,_P1M0
      001033 F0               [24] 1379 	movx	@dptr,a
                                   1380 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:122: pncs = P1NCS;
      001034 90 FE 19         [24] 1381 	mov	dptr,#_P1NCS
      001037 E0               [24] 1382 	movx	a,@dptr
      001038 90 00 88         [24] 1383 	mov	dptr,#_gpioConfigure_pncs_10001_94
      00103B F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:123: ppu = P1PU;
      00103C 90 FE 11         [24] 1386 	mov	dptr,#_P1PU
      00103F E0               [24] 1387 	movx	a,@dptr
      001040 90 00 89         [24] 1388 	mov	dptr,#_gpioConfigure_ppu_10001_94
      001043 F0               [24] 1389 	movx	@dptr,a
                                   1390 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:127: pdr = P1DR;
      001044 90 FE 29         [24] 1391 	mov	dptr,#_P1DR
      001047 E0               [24] 1392 	movx	a,@dptr
      001048 90 00 8A         [24] 1393 	mov	dptr,#_gpioConfigure_pdr_10001_94
      00104B F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:128: psr = P1SR;
      00104C 90 FE 21         [24] 1396 	mov	dptr,#_P1SR
      00104F E0               [24] 1397 	movx	a,@dptr
      001050 90 00 8B         [24] 1398 	mov	dptr,#_gpioConfigure_psr_10001_94
      001053 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:129: pie = P1IE;
      001054 90 FE 31         [24] 1401 	mov	dptr,#_P1IE
      001057 E0               [24] 1402 	movx	a,@dptr
      001058 90 00 8C         [24] 1403 	mov	dptr,#_gpioConfigure_pie_10001_94
      00105B F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:133: pim1 = P1IM1;
      00105C 90 FD 31         [24] 1406 	mov	dptr,#_P1IM1
      00105F E0               [24] 1407 	movx	a,@dptr
      001060 90 00 8D         [24] 1408 	mov	dptr,#_gpioConfigure_pim1_10001_94
      001063 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:134: pim0 = P1IM0;
      001064 90 FD 21         [24] 1411 	mov	dptr,#_P1IM0
      001067 E0               [24] 1412 	movx	a,@dptr
      001068 90 00 8E         [24] 1413 	mov	dptr,#_gpioConfigure_pim0_10001_94
      00106B F0               [24] 1414 	movx	@dptr,a
                                   1415 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:135: pintf = P1INTF;
      00106C 90 FD 11         [24] 1416 	mov	dptr,#_P1INTF
      00106F E0               [24] 1417 	movx	a,@dptr
      001070 90 00 8F         [24] 1418 	mov	dptr,#_gpioConfigure_pintf_10001_94
      001073 F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:136: pinte = P1INTE;
      001074 90 FD 01         [24] 1421 	mov	dptr,#_P1INTE
      001077 E0               [24] 1422 	movx	a,@dptr
      001078 90 00 90         [24] 1423 	mov	dptr,#_gpioConfigure_pinte_10001_94
      00107B F0               [24] 1424 	movx	@dptr,a
                                   1425 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:137: pwkue = P1WKUE;
      00107C 90 FD 41         [24] 1426 	mov	dptr,#_P1WKUE
      00107F E0               [24] 1427 	movx	a,@dptr
      001080 90 00 91         [24] 1428 	mov	dptr,#_gpioConfigure_pwkue_10001_94
      001083 F0               [24] 1429 	movx	@dptr,a
                                   1430 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:139: break;
      001084 02 11 A0         [24] 1431 	ljmp	00106$
                                   1432 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:145: case GPIO_PORT2:
      001087                       1433 00103$:
                                   1434 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:146: pm1 = P2M1;
      001087 90 00 86         [24] 1435 	mov	dptr,#_gpioConfigure_pm1_10001_94
      00108A E5 95            [12] 1436 	mov	a,_P2M1
      00108C F0               [24] 1437 	movx	@dptr,a
                                   1438 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:147: pm0 = P2M0;
      00108D 90 00 87         [24] 1439 	mov	dptr,#_gpioConfigure_pm0_10001_94
      001090 E5 96            [12] 1440 	mov	a,_P2M0
      001092 F0               [24] 1441 	movx	@dptr,a
                                   1442 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:150: pncs = P2NCS;
      001093 90 FE 1A         [24] 1443 	mov	dptr,#_P2NCS
      001096 E0               [24] 1444 	movx	a,@dptr
      001097 90 00 88         [24] 1445 	mov	dptr,#_gpioConfigure_pncs_10001_94
      00109A F0               [24] 1446 	movx	@dptr,a
                                   1447 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:151: ppu = P2PU;
      00109B 90 FE 12         [24] 1448 	mov	dptr,#_P2PU
      00109E E0               [24] 1449 	movx	a,@dptr
      00109F 90 00 89         [24] 1450 	mov	dptr,#_gpioConfigure_ppu_10001_94
      0010A2 F0               [24] 1451 	movx	@dptr,a
                                   1452 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:155: pdr = P2DR;
      0010A3 90 FE 2A         [24] 1453 	mov	dptr,#_P2DR
      0010A6 E0               [24] 1454 	movx	a,@dptr
      0010A7 90 00 8A         [24] 1455 	mov	dptr,#_gpioConfigure_pdr_10001_94
      0010AA F0               [24] 1456 	movx	@dptr,a
                                   1457 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:156: psr = P2SR;
      0010AB 90 FE 22         [24] 1458 	mov	dptr,#_P2SR
      0010AE E0               [24] 1459 	movx	a,@dptr
      0010AF 90 00 8B         [24] 1460 	mov	dptr,#_gpioConfigure_psr_10001_94
      0010B2 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:157: pie = P2IE;
      0010B3 90 FE 32         [24] 1463 	mov	dptr,#_P2IE
      0010B6 E0               [24] 1464 	movx	a,@dptr
      0010B7 90 00 8C         [24] 1465 	mov	dptr,#_gpioConfigure_pie_10001_94
      0010BA F0               [24] 1466 	movx	@dptr,a
                                   1467 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:161: pim1 = P2IM1;
      0010BB 90 FD 32         [24] 1468 	mov	dptr,#_P2IM1
      0010BE E0               [24] 1469 	movx	a,@dptr
      0010BF 90 00 8D         [24] 1470 	mov	dptr,#_gpioConfigure_pim1_10001_94
      0010C2 F0               [24] 1471 	movx	@dptr,a
                                   1472 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:162: pim0 = P2IM0;
      0010C3 90 FD 22         [24] 1473 	mov	dptr,#_P2IM0
      0010C6 E0               [24] 1474 	movx	a,@dptr
      0010C7 90 00 8E         [24] 1475 	mov	dptr,#_gpioConfigure_pim0_10001_94
      0010CA F0               [24] 1476 	movx	@dptr,a
                                   1477 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:163: pintf = P2INTF;
      0010CB 90 FD 12         [24] 1478 	mov	dptr,#_P2INTF
      0010CE E0               [24] 1479 	movx	a,@dptr
      0010CF 90 00 8F         [24] 1480 	mov	dptr,#_gpioConfigure_pintf_10001_94
      0010D2 F0               [24] 1481 	movx	@dptr,a
                                   1482 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:164: pinte = P2INTE;
      0010D3 90 FD 02         [24] 1483 	mov	dptr,#_P2INTE
      0010D6 E0               [24] 1484 	movx	a,@dptr
      0010D7 90 00 90         [24] 1485 	mov	dptr,#_gpioConfigure_pinte_10001_94
      0010DA F0               [24] 1486 	movx	@dptr,a
                                   1487 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:165: pwkue = P2WKUE;
      0010DB 90 FD 42         [24] 1488 	mov	dptr,#_P2WKUE
      0010DE E0               [24] 1489 	movx	a,@dptr
      0010DF 90 00 91         [24] 1490 	mov	dptr,#_gpioConfigure_pwkue_10001_94
      0010E2 F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:167: break;
      0010E3 02 11 A0         [24] 1493 	ljmp	00106$
                                   1494 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:172: case GPIO_PORT3:
      0010E6                       1495 00104$:
                                   1496 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:173: pm1 = P3M1;
      0010E6 90 00 86         [24] 1497 	mov	dptr,#_gpioConfigure_pm1_10001_94
      0010E9 E5 B1            [12] 1498 	mov	a,_P3M1
      0010EB F0               [24] 1499 	movx	@dptr,a
                                   1500 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:174: pm0 = P3M0;
      0010EC 90 00 87         [24] 1501 	mov	dptr,#_gpioConfigure_pm0_10001_94
      0010EF E5 B2            [12] 1502 	mov	a,_P3M0
      0010F1 F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:177: pncs = P3NCS;
      0010F2 90 FE 1B         [24] 1505 	mov	dptr,#_P3NCS
      0010F5 E0               [24] 1506 	movx	a,@dptr
      0010F6 90 00 88         [24] 1507 	mov	dptr,#_gpioConfigure_pncs_10001_94
      0010F9 F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:178: ppu = P3PU;
      0010FA 90 FE 13         [24] 1510 	mov	dptr,#_P3PU
      0010FD E0               [24] 1511 	movx	a,@dptr
      0010FE 90 00 89         [24] 1512 	mov	dptr,#_gpioConfigure_ppu_10001_94
      001101 F0               [24] 1513 	movx	@dptr,a
                                   1514 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:182: pdr = P3DR;
      001102 90 FE 2B         [24] 1515 	mov	dptr,#_P3DR
      001105 E0               [24] 1516 	movx	a,@dptr
      001106 90 00 8A         [24] 1517 	mov	dptr,#_gpioConfigure_pdr_10001_94
      001109 F0               [24] 1518 	movx	@dptr,a
                                   1519 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:183: psr = P3SR;
      00110A 90 FE 23         [24] 1520 	mov	dptr,#_P3SR
      00110D E0               [24] 1521 	movx	a,@dptr
      00110E 90 00 8B         [24] 1522 	mov	dptr,#_gpioConfigure_psr_10001_94
      001111 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:184: pie = P3IE;
      001112 90 FE 33         [24] 1525 	mov	dptr,#_P3IE
      001115 E0               [24] 1526 	movx	a,@dptr
      001116 90 00 8C         [24] 1527 	mov	dptr,#_gpioConfigure_pie_10001_94
      001119 F0               [24] 1528 	movx	@dptr,a
                                   1529 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:188: pim1 = P3IM1;
      00111A 90 FD 33         [24] 1530 	mov	dptr,#_P3IM1
      00111D E0               [24] 1531 	movx	a,@dptr
      00111E 90 00 8D         [24] 1532 	mov	dptr,#_gpioConfigure_pim1_10001_94
      001121 F0               [24] 1533 	movx	@dptr,a
                                   1534 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:189: pim0 = P3IM0;
      001122 90 FD 23         [24] 1535 	mov	dptr,#_P3IM0
      001125 E0               [24] 1536 	movx	a,@dptr
      001126 90 00 8E         [24] 1537 	mov	dptr,#_gpioConfigure_pim0_10001_94
      001129 F0               [24] 1538 	movx	@dptr,a
                                   1539 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:190: pintf = P3INTF;
      00112A 90 FD 13         [24] 1540 	mov	dptr,#_P3INTF
      00112D E0               [24] 1541 	movx	a,@dptr
      00112E 90 00 8F         [24] 1542 	mov	dptr,#_gpioConfigure_pintf_10001_94
      001131 F0               [24] 1543 	movx	@dptr,a
                                   1544 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:191: pinte = P3INTE;
      001132 90 FD 03         [24] 1545 	mov	dptr,#_P3INTE
      001135 E0               [24] 1546 	movx	a,@dptr
      001136 90 00 90         [24] 1547 	mov	dptr,#_gpioConfigure_pinte_10001_94
      001139 F0               [24] 1548 	movx	@dptr,a
                                   1549 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:192: pwkue = P3WKUE;
      00113A 90 FD 43         [24] 1550 	mov	dptr,#_P3WKUE
      00113D E0               [24] 1551 	movx	a,@dptr
      00113E 90 00 91         [24] 1552 	mov	dptr,#_gpioConfigure_pwkue_10001_94
      001141 F0               [24] 1553 	movx	@dptr,a
                                   1554 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:194: break;
                                   1555 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:227: case GPIO_PORT5:
      001142 80 5C            [24] 1556 	sjmp	00106$
      001144                       1557 00105$:
                                   1558 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:228: pm1 = P5M1;
      001144 90 00 86         [24] 1559 	mov	dptr,#_gpioConfigure_pm1_10001_94
      001147 E5 C9            [12] 1560 	mov	a,_P5M1
      001149 F0               [24] 1561 	movx	@dptr,a
                                   1562 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:229: pm0 = P5M0;
      00114A 90 00 87         [24] 1563 	mov	dptr,#_gpioConfigure_pm0_10001_94
      00114D E5 CA            [12] 1564 	mov	a,_P5M0
      00114F F0               [24] 1565 	movx	@dptr,a
                                   1566 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:232: pncs = P5NCS;
      001150 90 FE 1D         [24] 1567 	mov	dptr,#_P5NCS
      001153 E0               [24] 1568 	movx	a,@dptr
      001154 90 00 88         [24] 1569 	mov	dptr,#_gpioConfigure_pncs_10001_94
      001157 F0               [24] 1570 	movx	@dptr,a
                                   1571 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:233: ppu = P5PU;
      001158 90 FE 15         [24] 1572 	mov	dptr,#_P5PU
      00115B E0               [24] 1573 	movx	a,@dptr
      00115C 90 00 89         [24] 1574 	mov	dptr,#_gpioConfigure_ppu_10001_94
      00115F F0               [24] 1575 	movx	@dptr,a
                                   1576 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:237: pdr = P5DR;
      001160 90 FE 2D         [24] 1577 	mov	dptr,#_P5DR
      001163 E0               [24] 1578 	movx	a,@dptr
      001164 90 00 8A         [24] 1579 	mov	dptr,#_gpioConfigure_pdr_10001_94
      001167 F0               [24] 1580 	movx	@dptr,a
                                   1581 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:238: psr = P5SR;
      001168 90 FE 25         [24] 1582 	mov	dptr,#_P5SR
      00116B E0               [24] 1583 	movx	a,@dptr
      00116C 90 00 8B         [24] 1584 	mov	dptr,#_gpioConfigure_psr_10001_94
      00116F F0               [24] 1585 	movx	@dptr,a
                                   1586 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:239: pie = P5IE;
      001170 90 FE 35         [24] 1587 	mov	dptr,#_P5IE
      001173 E0               [24] 1588 	movx	a,@dptr
      001174 90 00 8C         [24] 1589 	mov	dptr,#_gpioConfigure_pie_10001_94
      001177 F0               [24] 1590 	movx	@dptr,a
                                   1591 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:243: pim1 = P5IM1;
      001178 90 FD 35         [24] 1592 	mov	dptr,#_P5IM1
      00117B E0               [24] 1593 	movx	a,@dptr
      00117C 90 00 8D         [24] 1594 	mov	dptr,#_gpioConfigure_pim1_10001_94
      00117F F0               [24] 1595 	movx	@dptr,a
                                   1596 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:244: pim0 = P5IM0;
      001180 90 FD 25         [24] 1597 	mov	dptr,#_P5IM0
      001183 E0               [24] 1598 	movx	a,@dptr
      001184 90 00 8E         [24] 1599 	mov	dptr,#_gpioConfigure_pim0_10001_94
      001187 F0               [24] 1600 	movx	@dptr,a
                                   1601 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:245: pintf = P5INTF;
      001188 90 FD 15         [24] 1602 	mov	dptr,#_P5INTF
      00118B E0               [24] 1603 	movx	a,@dptr
      00118C 90 00 8F         [24] 1604 	mov	dptr,#_gpioConfigure_pintf_10001_94
      00118F F0               [24] 1605 	movx	@dptr,a
                                   1606 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:246: pinte = P5INTE;
      001190 90 FD 05         [24] 1607 	mov	dptr,#_P5INTE
      001193 E0               [24] 1608 	movx	a,@dptr
      001194 90 00 90         [24] 1609 	mov	dptr,#_gpioConfigure_pinte_10001_94
      001197 F0               [24] 1610 	movx	@dptr,a
                                   1611 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:247: pwkue = P5WKUE;
      001198 90 FD 45         [24] 1612 	mov	dptr,#_P5WKUE
      00119B E0               [24] 1613 	movx	a,@dptr
      00119C 90 00 91         [24] 1614 	mov	dptr,#_gpioConfigure_pwkue_10001_94
      00119F F0               [24] 1615 	movx	@dptr,a
                                   1616 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:307: }
      0011A0                       1617 00106$:
                                   1618 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:309: pm1 = __gpio_setBits(pm1, gpioConfig->pinMode & 2, gpioConfig);
      0011A0 90 00 86         [24] 1619 	mov	dptr,#_gpioConfigure_pm1_10001_94
      0011A3 E0               [24] 1620 	movx	a,@dptr
      0011A4 FF               [12] 1621 	mov	r7,a
      0011A5 90 00 82         [24] 1622 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      0011A8 E0               [24] 1623 	movx	a,@dptr
      0011A9 FC               [12] 1624 	mov	r4,a
      0011AA A3               [24] 1625 	inc	dptr
      0011AB E0               [24] 1626 	movx	a,@dptr
      0011AC FD               [12] 1627 	mov	r5,a
      0011AD A3               [24] 1628 	inc	dptr
      0011AE E0               [24] 1629 	movx	a,@dptr
      0011AF FE               [12] 1630 	mov	r6,a
      0011B0 74 03            [12] 1631 	mov	a,#0x03
      0011B2 2C               [12] 1632 	add	a, r4
      0011B3 F9               [12] 1633 	mov	r1,a
      0011B4 E4               [12] 1634 	clr	a
      0011B5 3D               [12] 1635 	addc	a, r5
      0011B6 FA               [12] 1636 	mov	r2,a
      0011B7 8E 03            [24] 1637 	mov	ar3,r6
      0011B9 89 82            [24] 1638 	mov	dpl,r1
      0011BB 8A 83            [24] 1639 	mov	dph,r2
      0011BD 8B F0            [24] 1640 	mov	b,r3
      0011BF 12 3A A0         [24] 1641 	lcall	__gptrget
      0011C2 F9               [12] 1642 	mov	r1,a
      0011C3 90 00 77         [24] 1643 	mov	dptr,#___gpio_setBits_PARM_2
      0011C6 74 02            [12] 1644 	mov	a,#0x02
      0011C8 59               [12] 1645 	anl	a,r1
      0011C9 F0               [24] 1646 	movx	@dptr,a
      0011CA 90 00 78         [24] 1647 	mov	dptr,#___gpio_setBits_PARM_3
      0011CD EC               [12] 1648 	mov	a,r4
      0011CE F0               [24] 1649 	movx	@dptr,a
      0011CF ED               [12] 1650 	mov	a,r5
      0011D0 A3               [24] 1651 	inc	dptr
      0011D1 F0               [24] 1652 	movx	@dptr,a
      0011D2 EE               [12] 1653 	mov	a,r6
      0011D3 A3               [24] 1654 	inc	dptr
      0011D4 F0               [24] 1655 	movx	@dptr,a
      0011D5 8F 82            [24] 1656 	mov	dpl, r7
      0011D7 12 0E 67         [24] 1657 	lcall	___gpio_setBits
      0011DA AF 82            [24] 1658 	mov	r7, dpl
                                   1659 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:310: pm0 = __gpio_setBits(pm0, gpioConfig->pinMode & 1, gpioConfig);
      0011DC 90 00 87         [24] 1660 	mov	dptr,#_gpioConfigure_pm0_10001_94
      0011DF E0               [24] 1661 	movx	a,@dptr
      0011E0 FE               [12] 1662 	mov	r6,a
      0011E1 90 00 82         [24] 1663 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      0011E4 E0               [24] 1664 	movx	a,@dptr
      0011E5 FB               [12] 1665 	mov	r3,a
      0011E6 A3               [24] 1666 	inc	dptr
      0011E7 E0               [24] 1667 	movx	a,@dptr
      0011E8 FC               [12] 1668 	mov	r4,a
      0011E9 A3               [24] 1669 	inc	dptr
      0011EA E0               [24] 1670 	movx	a,@dptr
      0011EB FD               [12] 1671 	mov	r5,a
      0011EC 74 03            [12] 1672 	mov	a,#0x03
      0011EE 2B               [12] 1673 	add	a, r3
      0011EF F8               [12] 1674 	mov	r0,a
      0011F0 E4               [12] 1675 	clr	a
      0011F1 3C               [12] 1676 	addc	a, r4
      0011F2 F9               [12] 1677 	mov	r1,a
      0011F3 8D 02            [24] 1678 	mov	ar2,r5
      0011F5 88 82            [24] 1679 	mov	dpl,r0
      0011F7 89 83            [24] 1680 	mov	dph,r1
      0011F9 8A F0            [24] 1681 	mov	b,r2
      0011FB 12 3A A0         [24] 1682 	lcall	__gptrget
      0011FE F8               [12] 1683 	mov	r0,a
      0011FF 90 00 77         [24] 1684 	mov	dptr,#___gpio_setBits_PARM_2
      001202 74 01            [12] 1685 	mov	a,#0x01
      001204 58               [12] 1686 	anl	a,r0
      001205 F0               [24] 1687 	movx	@dptr,a
      001206 90 00 78         [24] 1688 	mov	dptr,#___gpio_setBits_PARM_3
      001209 EB               [12] 1689 	mov	a,r3
      00120A F0               [24] 1690 	movx	@dptr,a
      00120B EC               [12] 1691 	mov	a,r4
      00120C A3               [24] 1692 	inc	dptr
      00120D F0               [24] 1693 	movx	@dptr,a
      00120E ED               [12] 1694 	mov	a,r5
      00120F A3               [24] 1695 	inc	dptr
      001210 F0               [24] 1696 	movx	@dptr,a
      001211 8E 82            [24] 1697 	mov	dpl, r6
      001213 C0 07            [24] 1698 	push	ar7
      001215 12 0E 67         [24] 1699 	lcall	___gpio_setBits
      001218 AE 82            [24] 1700 	mov	r6, dpl
                                   1701 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:313: pncs = __gpio_setBits(pncs, gpioConfig->schmidtTrigger, gpioConfig);
      00121A 90 00 88         [24] 1702 	mov	dptr,#_gpioConfigure_pncs_10001_94
      00121D E0               [24] 1703 	movx	a,@dptr
      00121E F5 12            [12] 1704 	mov	_gpioConfigure_sloc0_1_0,a
      001220 90 00 82         [24] 1705 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      001223 E0               [24] 1706 	movx	a,@dptr
      001224 FA               [12] 1707 	mov	r2,a
      001225 A3               [24] 1708 	inc	dptr
      001226 E0               [24] 1709 	movx	a,@dptr
      001227 FB               [12] 1710 	mov	r3,a
      001228 A3               [24] 1711 	inc	dptr
      001229 E0               [24] 1712 	movx	a,@dptr
      00122A FC               [12] 1713 	mov	r4,a
      00122B 74 04            [12] 1714 	mov	a,#0x04
      00122D 2A               [12] 1715 	add	a, r2
      00122E F8               [12] 1716 	mov	r0,a
      00122F E4               [12] 1717 	clr	a
      001230 3B               [12] 1718 	addc	a, r3
      001231 F9               [12] 1719 	mov	r1,a
      001232 8C 05            [24] 1720 	mov	ar5,r4
      001234 88 82            [24] 1721 	mov	dpl,r0
      001236 89 83            [24] 1722 	mov	dph,r1
      001238 8D F0            [24] 1723 	mov	b,r5
      00123A 12 3A A0         [24] 1724 	lcall	__gptrget
      00123D 90 00 77         [24] 1725 	mov	dptr,#___gpio_setBits_PARM_2
      001240 F0               [24] 1726 	movx	@dptr,a
      001241 90 00 78         [24] 1727 	mov	dptr,#___gpio_setBits_PARM_3
      001244 EA               [12] 1728 	mov	a,r2
      001245 F0               [24] 1729 	movx	@dptr,a
      001246 EB               [12] 1730 	mov	a,r3
      001247 A3               [24] 1731 	inc	dptr
      001248 F0               [24] 1732 	movx	@dptr,a
      001249 EC               [12] 1733 	mov	a,r4
      00124A A3               [24] 1734 	inc	dptr
      00124B F0               [24] 1735 	movx	@dptr,a
      00124C 85 12 82         [24] 1736 	mov	dpl, _gpioConfigure_sloc0_1_0
      00124F C0 06            [24] 1737 	push	ar6
      001251 12 0E 67         [24] 1738 	lcall	___gpio_setBits
      001254 AD 82            [24] 1739 	mov	r5, dpl
                                   1740 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:314: ppu = __gpio_setBits(ppu, gpioConfig->internalPullUp, gpioConfig);
      001256 90 00 89         [24] 1741 	mov	dptr,#_gpioConfigure_ppu_10001_94
      001259 E0               [24] 1742 	movx	a,@dptr
      00125A F5 12            [12] 1743 	mov	_gpioConfigure_sloc0_1_0,a
      00125C 90 00 82         [24] 1744 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      00125F E0               [24] 1745 	movx	a,@dptr
      001260 F5 15            [12] 1746 	mov	_gpioConfigure_sloc1_1_0,a
      001262 A3               [24] 1747 	inc	dptr
      001263 E0               [24] 1748 	movx	a,@dptr
      001264 F5 16            [12] 1749 	mov	(_gpioConfigure_sloc1_1_0 + 1),a
      001266 A3               [24] 1750 	inc	dptr
      001267 E0               [24] 1751 	movx	a,@dptr
      001268 F5 17            [12] 1752 	mov	(_gpioConfigure_sloc1_1_0 + 2),a
      00126A 74 05            [12] 1753 	mov	a,#0x05
      00126C 25 15            [12] 1754 	add	a, _gpioConfigure_sloc1_1_0
      00126E F8               [12] 1755 	mov	r0,a
      00126F E4               [12] 1756 	clr	a
      001270 35 16            [12] 1757 	addc	a, (_gpioConfigure_sloc1_1_0 + 1)
      001272 FB               [12] 1758 	mov	r3,a
      001273 AC 17            [24] 1759 	mov	r4,(_gpioConfigure_sloc1_1_0 + 2)
      001275 88 82            [24] 1760 	mov	dpl,r0
      001277 8B 83            [24] 1761 	mov	dph,r3
      001279 8C F0            [24] 1762 	mov	b,r4
      00127B 12 3A A0         [24] 1763 	lcall	__gptrget
      00127E 90 00 77         [24] 1764 	mov	dptr,#___gpio_setBits_PARM_2
      001281 F0               [24] 1765 	movx	@dptr,a
      001282 90 00 78         [24] 1766 	mov	dptr,#___gpio_setBits_PARM_3
      001285 E5 15            [12] 1767 	mov	a,_gpioConfigure_sloc1_1_0
      001287 F0               [24] 1768 	movx	@dptr,a
      001288 E5 16            [12] 1769 	mov	a,(_gpioConfigure_sloc1_1_0 + 1)
      00128A A3               [24] 1770 	inc	dptr
      00128B F0               [24] 1771 	movx	@dptr,a
      00128C E5 17            [12] 1772 	mov	a,(_gpioConfigure_sloc1_1_0 + 2)
      00128E A3               [24] 1773 	inc	dptr
      00128F F0               [24] 1774 	movx	@dptr,a
      001290 85 12 82         [24] 1775 	mov	dpl, _gpioConfigure_sloc0_1_0
      001293 C0 05            [24] 1776 	push	ar5
      001295 12 0E 67         [24] 1777 	lcall	___gpio_setBits
      001298 AC 82            [24] 1778 	mov	r4, dpl
                                   1779 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:318: if (__isOutput(gpioConfig)) {
      00129A 90 00 82         [24] 1780 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      00129D E0               [24] 1781 	movx	a,@dptr
      00129E F9               [12] 1782 	mov	r1,a
      00129F A3               [24] 1783 	inc	dptr
      0012A0 E0               [24] 1784 	movx	a,@dptr
      0012A1 FA               [12] 1785 	mov	r2,a
      0012A2 A3               [24] 1786 	inc	dptr
      0012A3 E0               [24] 1787 	movx	a,@dptr
      0012A4 FB               [12] 1788 	mov	r3,a
      0012A5 89 82            [24] 1789 	mov	dpl, r1
      0012A7 8A 83            [24] 1790 	mov	dph, r2
      0012A9 8B F0            [24] 1791 	mov	b, r3
      0012AB C0 04            [24] 1792 	push	ar4
      0012AD 12 0E BC         [24] 1793 	lcall	___isOutput
      0012B0 E5 82            [12] 1794 	mov	a, dpl
      0012B2 D0 04            [24] 1795 	pop	ar4
      0012B4 D0 05            [24] 1796 	pop	ar5
      0012B6 D0 06            [24] 1797 	pop	ar6
      0012B8 D0 07            [24] 1798 	pop	ar7
      0012BA 70 03            [24] 1799 	jnz	00203$
      0012BC 02 13 6B         [24] 1800 	ljmp	00108$
      0012BF                       1801 00203$:
                                   1802 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:319: pdr = __gpio_setBits(pdr, gpioConfig->speed & 1, gpioConfig);
      0012BF C0 04            [24] 1803 	push	ar4
      0012C1 90 00 8A         [24] 1804 	mov	dptr,#_gpioConfigure_pdr_10001_94
      0012C4 E0               [24] 1805 	movx	a,@dptr
      0012C5 F5 15            [12] 1806 	mov	_gpioConfigure_sloc1_1_0,a
      0012C7 90 00 82         [24] 1807 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      0012CA E0               [24] 1808 	movx	a,@dptr
      0012CB F5 12            [12] 1809 	mov	_gpioConfigure_sloc0_1_0,a
      0012CD A3               [24] 1810 	inc	dptr
      0012CE E0               [24] 1811 	movx	a,@dptr
      0012CF F5 13            [12] 1812 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0012D1 A3               [24] 1813 	inc	dptr
      0012D2 E0               [24] 1814 	movx	a,@dptr
      0012D3 F5 14            [12] 1815 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      0012D5 74 06            [12] 1816 	mov	a,#0x06
      0012D7 25 12            [12] 1817 	add	a, _gpioConfigure_sloc0_1_0
      0012D9 FA               [12] 1818 	mov	r2,a
      0012DA E4               [12] 1819 	clr	a
      0012DB 35 13            [12] 1820 	addc	a, (_gpioConfigure_sloc0_1_0 + 1)
      0012DD FB               [12] 1821 	mov	r3,a
      0012DE AC 14            [24] 1822 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      0012E0 8A 82            [24] 1823 	mov	dpl,r2
      0012E2 8B 83            [24] 1824 	mov	dph,r3
      0012E4 8C F0            [24] 1825 	mov	b,r4
      0012E6 12 3A A0         [24] 1826 	lcall	__gptrget
      0012E9 FA               [12] 1827 	mov	r2,a
      0012EA 90 00 77         [24] 1828 	mov	dptr,#___gpio_setBits_PARM_2
      0012ED 74 01            [12] 1829 	mov	a,#0x01
      0012EF 5A               [12] 1830 	anl	a,r2
      0012F0 F0               [24] 1831 	movx	@dptr,a
      0012F1 90 00 78         [24] 1832 	mov	dptr,#___gpio_setBits_PARM_3
      0012F4 E5 12            [12] 1833 	mov	a,_gpioConfigure_sloc0_1_0
      0012F6 F0               [24] 1834 	movx	@dptr,a
      0012F7 E5 13            [12] 1835 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      0012F9 A3               [24] 1836 	inc	dptr
      0012FA F0               [24] 1837 	movx	@dptr,a
      0012FB E5 14            [12] 1838 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      0012FD A3               [24] 1839 	inc	dptr
      0012FE F0               [24] 1840 	movx	@dptr,a
      0012FF 85 15 82         [24] 1841 	mov	dpl, _gpioConfigure_sloc1_1_0
      001302 C0 07            [24] 1842 	push	ar7
      001304 C0 06            [24] 1843 	push	ar6
      001306 C0 05            [24] 1844 	push	ar5
      001308 C0 04            [24] 1845 	push	ar4
      00130A 12 0E 67         [24] 1846 	lcall	___gpio_setBits
      00130D E5 82            [12] 1847 	mov	a, dpl
      00130F D0 04            [24] 1848 	pop	ar4
      001311 90 00 8A         [24] 1849 	mov	dptr,#_gpioConfigure_pdr_10001_94
      001314 F0               [24] 1850 	movx	@dptr,a
                                   1851 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:320: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      001315 90 00 8B         [24] 1852 	mov	dptr,#_gpioConfigure_psr_10001_94
      001318 E0               [24] 1853 	movx	a,@dptr
      001319 F5 15            [12] 1854 	mov	_gpioConfigure_sloc1_1_0,a
      00131B 90 00 82         [24] 1855 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      00131E E0               [24] 1856 	movx	a,@dptr
      00131F F5 12            [12] 1857 	mov	_gpioConfigure_sloc0_1_0,a
      001321 A3               [24] 1858 	inc	dptr
      001322 E0               [24] 1859 	movx	a,@dptr
      001323 F5 13            [12] 1860 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001325 A3               [24] 1861 	inc	dptr
      001326 E0               [24] 1862 	movx	a,@dptr
      001327 F5 14            [12] 1863 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001329 74 06            [12] 1864 	mov	a,#0x06
      00132B 25 12            [12] 1865 	add	a, _gpioConfigure_sloc0_1_0
      00132D F8               [12] 1866 	mov	r0,a
      00132E E4               [12] 1867 	clr	a
      00132F 35 13            [12] 1868 	addc	a, (_gpioConfigure_sloc0_1_0 + 1)
      001331 FB               [12] 1869 	mov	r3,a
      001332 AC 14            [24] 1870 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001334 88 82            [24] 1871 	mov	dpl,r0
      001336 8B 83            [24] 1872 	mov	dph,r3
      001338 8C F0            [24] 1873 	mov	b,r4
      00133A 12 3A A0         [24] 1874 	lcall	__gptrget
      00133D F8               [12] 1875 	mov	r0,a
      00133E 90 00 77         [24] 1876 	mov	dptr,#___gpio_setBits_PARM_2
      001341 74 02            [12] 1877 	mov	a,#0x02
      001343 58               [12] 1878 	anl	a,r0
      001344 F0               [24] 1879 	movx	@dptr,a
      001345 90 00 78         [24] 1880 	mov	dptr,#___gpio_setBits_PARM_3
      001348 E5 12            [12] 1881 	mov	a,_gpioConfigure_sloc0_1_0
      00134A F0               [24] 1882 	movx	@dptr,a
      00134B E5 13            [12] 1883 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      00134D A3               [24] 1884 	inc	dptr
      00134E F0               [24] 1885 	movx	@dptr,a
      00134F E5 14            [12] 1886 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001351 A3               [24] 1887 	inc	dptr
      001352 F0               [24] 1888 	movx	@dptr,a
      001353 85 15 82         [24] 1889 	mov	dpl, _gpioConfigure_sloc1_1_0
      001356 C0 04            [24] 1890 	push	ar4
      001358 12 0E 67         [24] 1891 	lcall	___gpio_setBits
      00135B E5 82            [12] 1892 	mov	a, dpl
      00135D D0 04            [24] 1893 	pop	ar4
      00135F D0 05            [24] 1894 	pop	ar5
      001361 D0 06            [24] 1895 	pop	ar6
      001363 D0 07            [24] 1896 	pop	ar7
      001365 90 00 8B         [24] 1897 	mov	dptr,#_gpioConfigure_psr_10001_94
      001368 F0               [24] 1898 	movx	@dptr,a
                                   1899 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:388: P1WKUE = pwkue;
      001369 D0 04            [24] 1900 	pop	ar4
                                   1901 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:320: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      00136B                       1902 00108$:
                                   1903 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:323: if (__isInput(gpioConfig)) {
      00136B 90 00 82         [24] 1904 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      00136E E0               [24] 1905 	movx	a,@dptr
      00136F F9               [12] 1906 	mov	r1,a
      001370 A3               [24] 1907 	inc	dptr
      001371 E0               [24] 1908 	movx	a,@dptr
      001372 FA               [12] 1909 	mov	r2,a
      001373 A3               [24] 1910 	inc	dptr
      001374 E0               [24] 1911 	movx	a,@dptr
      001375 FB               [12] 1912 	mov	r3,a
      001376 89 82            [24] 1913 	mov	dpl, r1
      001378 8A 83            [24] 1914 	mov	dph, r2
      00137A 8B F0            [24] 1915 	mov	b, r3
      00137C C0 07            [24] 1916 	push	ar7
      00137E C0 06            [24] 1917 	push	ar6
      001380 C0 05            [24] 1918 	push	ar5
      001382 C0 04            [24] 1919 	push	ar4
      001384 12 0F 01         [24] 1920 	lcall	___isInput
      001387 E5 82            [12] 1921 	mov	a, dpl
      001389 D0 04            [24] 1922 	pop	ar4
      00138B D0 05            [24] 1923 	pop	ar5
      00138D D0 06            [24] 1924 	pop	ar6
      00138F D0 07            [24] 1925 	pop	ar7
      001391 60 5A            [24] 1926 	jz	00110$
                                   1927 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:324: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      001393 C0 04            [24] 1928 	push	ar4
      001395 90 00 8C         [24] 1929 	mov	dptr,#_gpioConfigure_pie_10001_94
      001398 E0               [24] 1930 	movx	a,@dptr
      001399 F5 15            [12] 1931 	mov	_gpioConfigure_sloc1_1_0,a
      00139B 90 00 82         [24] 1932 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      00139E E0               [24] 1933 	movx	a,@dptr
      00139F F5 12            [12] 1934 	mov	_gpioConfigure_sloc0_1_0,a
      0013A1 A3               [24] 1935 	inc	dptr
      0013A2 E0               [24] 1936 	movx	a,@dptr
      0013A3 F5 13            [12] 1937 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0013A5 A3               [24] 1938 	inc	dptr
      0013A6 E0               [24] 1939 	movx	a,@dptr
      0013A7 F5 14            [12] 1940 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      0013A9 74 07            [12] 1941 	mov	a,#0x07
      0013AB 25 12            [12] 1942 	add	a, _gpioConfigure_sloc0_1_0
      0013AD FA               [12] 1943 	mov	r2,a
      0013AE E4               [12] 1944 	clr	a
      0013AF 35 13            [12] 1945 	addc	a, (_gpioConfigure_sloc0_1_0 + 1)
      0013B1 FB               [12] 1946 	mov	r3,a
      0013B2 AC 14            [24] 1947 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      0013B4 8A 82            [24] 1948 	mov	dpl,r2
      0013B6 8B 83            [24] 1949 	mov	dph,r3
      0013B8 8C F0            [24] 1950 	mov	b,r4
      0013BA 12 3A A0         [24] 1951 	lcall	__gptrget
      0013BD 90 00 77         [24] 1952 	mov	dptr,#___gpio_setBits_PARM_2
      0013C0 F0               [24] 1953 	movx	@dptr,a
      0013C1 90 00 78         [24] 1954 	mov	dptr,#___gpio_setBits_PARM_3
      0013C4 E5 12            [12] 1955 	mov	a,_gpioConfigure_sloc0_1_0
      0013C6 F0               [24] 1956 	movx	@dptr,a
      0013C7 E5 13            [12] 1957 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      0013C9 A3               [24] 1958 	inc	dptr
      0013CA F0               [24] 1959 	movx	@dptr,a
      0013CB E5 14            [12] 1960 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      0013CD A3               [24] 1961 	inc	dptr
      0013CE F0               [24] 1962 	movx	@dptr,a
      0013CF 85 15 82         [24] 1963 	mov	dpl, _gpioConfigure_sloc1_1_0
      0013D2 C0 07            [24] 1964 	push	ar7
      0013D4 C0 06            [24] 1965 	push	ar6
      0013D6 C0 05            [24] 1966 	push	ar5
      0013D8 C0 04            [24] 1967 	push	ar4
      0013DA 12 0E 67         [24] 1968 	lcall	___gpio_setBits
      0013DD E5 82            [12] 1969 	mov	a, dpl
      0013DF D0 04            [24] 1970 	pop	ar4
      0013E1 D0 05            [24] 1971 	pop	ar5
      0013E3 D0 06            [24] 1972 	pop	ar6
      0013E5 D0 07            [24] 1973 	pop	ar7
      0013E7 90 00 8C         [24] 1974 	mov	dptr,#_gpioConfigure_pie_10001_94
      0013EA F0               [24] 1975 	movx	@dptr,a
                                   1976 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:388: P1WKUE = pwkue;
      0013EB D0 04            [24] 1977 	pop	ar4
                                   1978 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:324: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      0013ED                       1979 00110$:
                                   1980 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:329: pim1 = __gpio_setBits(pim1, gpioConfig->interruptTrigger & 2, gpioConfig);
      0013ED C0 04            [24] 1981 	push	ar4
      0013EF 90 00 8D         [24] 1982 	mov	dptr,#_gpioConfigure_pim1_10001_94
      0013F2 E0               [24] 1983 	movx	a,@dptr
      0013F3 F5 15            [12] 1984 	mov	_gpioConfigure_sloc1_1_0,a
      0013F5 90 00 82         [24] 1985 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      0013F8 E0               [24] 1986 	movx	a,@dptr
      0013F9 F5 12            [12] 1987 	mov	_gpioConfigure_sloc0_1_0,a
      0013FB A3               [24] 1988 	inc	dptr
      0013FC E0               [24] 1989 	movx	a,@dptr
      0013FD F5 13            [12] 1990 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      0013FF A3               [24] 1991 	inc	dptr
      001400 E0               [24] 1992 	movx	a,@dptr
      001401 F5 14            [12] 1993 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001403 74 09            [12] 1994 	mov	a,#0x09
      001405 25 12            [12] 1995 	add	a, _gpioConfigure_sloc0_1_0
      001407 FA               [12] 1996 	mov	r2,a
      001408 E4               [12] 1997 	clr	a
      001409 35 13            [12] 1998 	addc	a, (_gpioConfigure_sloc0_1_0 + 1)
      00140B FB               [12] 1999 	mov	r3,a
      00140C AC 14            [24] 2000 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      00140E 8A 82            [24] 2001 	mov	dpl,r2
      001410 8B 83            [24] 2002 	mov	dph,r3
      001412 8C F0            [24] 2003 	mov	b,r4
      001414 12 3A A0         [24] 2004 	lcall	__gptrget
      001417 FA               [12] 2005 	mov	r2,a
      001418 90 00 77         [24] 2006 	mov	dptr,#___gpio_setBits_PARM_2
      00141B 74 02            [12] 2007 	mov	a,#0x02
      00141D 5A               [12] 2008 	anl	a,r2
      00141E F0               [24] 2009 	movx	@dptr,a
      00141F 90 00 78         [24] 2010 	mov	dptr,#___gpio_setBits_PARM_3
      001422 E5 12            [12] 2011 	mov	a,_gpioConfigure_sloc0_1_0
      001424 F0               [24] 2012 	movx	@dptr,a
      001425 E5 13            [12] 2013 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001427 A3               [24] 2014 	inc	dptr
      001428 F0               [24] 2015 	movx	@dptr,a
      001429 E5 14            [12] 2016 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      00142B A3               [24] 2017 	inc	dptr
      00142C F0               [24] 2018 	movx	@dptr,a
      00142D 85 15 82         [24] 2019 	mov	dpl, _gpioConfigure_sloc1_1_0
      001430 C0 07            [24] 2020 	push	ar7
      001432 C0 06            [24] 2021 	push	ar6
      001434 C0 05            [24] 2022 	push	ar5
      001436 C0 04            [24] 2023 	push	ar4
      001438 12 0E 67         [24] 2024 	lcall	___gpio_setBits
      00143B 85 82 15         [24] 2025 	mov	_gpioConfigure_sloc1_1_0,dpl
      00143E D0 04            [24] 2026 	pop	ar4
                                   2027 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:330: pim0 = __gpio_setBits(pim0, gpioConfig->interruptTrigger & 1, gpioConfig);
      001440 90 00 8E         [24] 2028 	mov	dptr,#_gpioConfigure_pim0_10001_94
      001443 E0               [24] 2029 	movx	a,@dptr
      001444 F5 12            [12] 2030 	mov	_gpioConfigure_sloc0_1_0,a
      001446 90 00 82         [24] 2031 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      001449 E0               [24] 2032 	movx	a,@dptr
      00144A F5 18            [12] 2033 	mov	_gpioConfigure_sloc2_1_0,a
      00144C A3               [24] 2034 	inc	dptr
      00144D E0               [24] 2035 	movx	a,@dptr
      00144E F5 19            [12] 2036 	mov	(_gpioConfigure_sloc2_1_0 + 1),a
      001450 A3               [24] 2037 	inc	dptr
      001451 E0               [24] 2038 	movx	a,@dptr
      001452 F5 1A            [12] 2039 	mov	(_gpioConfigure_sloc2_1_0 + 2),a
      001454 74 09            [12] 2040 	mov	a,#0x09
      001456 25 18            [12] 2041 	add	a, _gpioConfigure_sloc2_1_0
      001458 F8               [12] 2042 	mov	r0,a
      001459 E4               [12] 2043 	clr	a
      00145A 35 19            [12] 2044 	addc	a, (_gpioConfigure_sloc2_1_0 + 1)
      00145C FB               [12] 2045 	mov	r3,a
      00145D AC 1A            [24] 2046 	mov	r4,(_gpioConfigure_sloc2_1_0 + 2)
      00145F 88 82            [24] 2047 	mov	dpl,r0
      001461 8B 83            [24] 2048 	mov	dph,r3
      001463 8C F0            [24] 2049 	mov	b,r4
      001465 12 3A A0         [24] 2050 	lcall	__gptrget
      001468 F8               [12] 2051 	mov	r0,a
      001469 90 00 77         [24] 2052 	mov	dptr,#___gpio_setBits_PARM_2
      00146C 74 01            [12] 2053 	mov	a,#0x01
      00146E 58               [12] 2054 	anl	a,r0
      00146F F0               [24] 2055 	movx	@dptr,a
      001470 90 00 78         [24] 2056 	mov	dptr,#___gpio_setBits_PARM_3
      001473 E5 18            [12] 2057 	mov	a,_gpioConfigure_sloc2_1_0
      001475 F0               [24] 2058 	movx	@dptr,a
      001476 E5 19            [12] 2059 	mov	a,(_gpioConfigure_sloc2_1_0 + 1)
      001478 A3               [24] 2060 	inc	dptr
      001479 F0               [24] 2061 	movx	@dptr,a
      00147A E5 1A            [12] 2062 	mov	a,(_gpioConfigure_sloc2_1_0 + 2)
      00147C A3               [24] 2063 	inc	dptr
      00147D F0               [24] 2064 	movx	@dptr,a
      00147E 85 12 82         [24] 2065 	mov	dpl, _gpioConfigure_sloc0_1_0
      001481 C0 04            [24] 2066 	push	ar4
      001483 12 0E 67         [24] 2067 	lcall	___gpio_setBits
      001486 85 82 18         [24] 2068 	mov	_gpioConfigure_sloc2_1_0,dpl
      001489 D0 04            [24] 2069 	pop	ar4
                                   2070 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:331: pintf &= gpioConfig->__clearMask;
      00148B 90 00 82         [24] 2071 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      00148E E0               [24] 2072 	movx	a,@dptr
      00148F F5 12            [12] 2073 	mov	_gpioConfigure_sloc0_1_0,a
      001491 A3               [24] 2074 	inc	dptr
      001492 E0               [24] 2075 	movx	a,@dptr
      001493 F5 13            [12] 2076 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001495 A3               [24] 2077 	inc	dptr
      001496 E0               [24] 2078 	movx	a,@dptr
      001497 F5 14            [12] 2079 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001499 74 0C            [12] 2080 	mov	a,#0x0c
      00149B 25 12            [12] 2081 	add	a, _gpioConfigure_sloc0_1_0
      00149D F8               [12] 2082 	mov	r0,a
      00149E E4               [12] 2083 	clr	a
      00149F 35 13            [12] 2084 	addc	a, (_gpioConfigure_sloc0_1_0 + 1)
      0014A1 F9               [12] 2085 	mov	r1,a
      0014A2 AC 14            [24] 2086 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      0014A4 88 82            [24] 2087 	mov	dpl,r0
      0014A6 89 83            [24] 2088 	mov	dph,r1
      0014A8 8C F0            [24] 2089 	mov	b,r4
      0014AA 12 3A A0         [24] 2090 	lcall	__gptrget
      0014AD F8               [12] 2091 	mov	r0,a
      0014AE 90 00 8F         [24] 2092 	mov	dptr,#_gpioConfigure_pintf_10001_94
      0014B1 E0               [24] 2093 	movx	a,@dptr
      0014B2 58               [12] 2094 	anl	a,r0
      0014B3 F0               [24] 2095 	movx	@dptr,a
                                   2096 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:332: pinte = __gpio_setBits(pinte, gpioConfig->pinInterrupt, gpioConfig);
      0014B4 90 00 90         [24] 2097 	mov	dptr,#_gpioConfigure_pinte_10001_94
      0014B7 E0               [24] 2098 	movx	a,@dptr
      0014B8 FC               [12] 2099 	mov	r4,a
      0014B9 74 08            [12] 2100 	mov	a,#0x08
      0014BB 25 12            [12] 2101 	add	a, _gpioConfigure_sloc0_1_0
      0014BD F9               [12] 2102 	mov	r1,a
      0014BE E4               [12] 2103 	clr	a
      0014BF 35 13            [12] 2104 	addc	a, (_gpioConfigure_sloc0_1_0 + 1)
      0014C1 FA               [12] 2105 	mov	r2,a
      0014C2 AB 14            [24] 2106 	mov	r3,(_gpioConfigure_sloc0_1_0 + 2)
      0014C4 89 82            [24] 2107 	mov	dpl,r1
      0014C6 8A 83            [24] 2108 	mov	dph,r2
      0014C8 8B F0            [24] 2109 	mov	b,r3
      0014CA 12 3A A0         [24] 2110 	lcall	__gptrget
      0014CD 90 00 77         [24] 2111 	mov	dptr,#___gpio_setBits_PARM_2
      0014D0 F0               [24] 2112 	movx	@dptr,a
      0014D1 90 00 78         [24] 2113 	mov	dptr,#___gpio_setBits_PARM_3
      0014D4 E5 12            [12] 2114 	mov	a,_gpioConfigure_sloc0_1_0
      0014D6 F0               [24] 2115 	movx	@dptr,a
      0014D7 E5 13            [12] 2116 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      0014D9 A3               [24] 2117 	inc	dptr
      0014DA F0               [24] 2118 	movx	@dptr,a
      0014DB E5 14            [12] 2119 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      0014DD A3               [24] 2120 	inc	dptr
      0014DE F0               [24] 2121 	movx	@dptr,a
      0014DF 8C 82            [24] 2122 	mov	dpl, r4
      0014E1 C0 04            [24] 2123 	push	ar4
      0014E3 12 0E 67         [24] 2124 	lcall	___gpio_setBits
      0014E6 85 82 12         [24] 2125 	mov	_gpioConfigure_sloc0_1_0,dpl
      0014E9 D0 04            [24] 2126 	pop	ar4
                                   2127 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:333: pwkue = __gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
      0014EB 90 00 91         [24] 2128 	mov	dptr,#_gpioConfigure_pwkue_10001_94
      0014EE E0               [24] 2129 	movx	a,@dptr
      0014EF F5 1B            [12] 2130 	mov	_gpioConfigure_sloc3_1_0,a
      0014F1 90 00 82         [24] 2131 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      0014F4 E0               [24] 2132 	movx	a,@dptr
      0014F5 F5 1C            [12] 2133 	mov	_gpioConfigure_sloc4_1_0,a
      0014F7 A3               [24] 2134 	inc	dptr
      0014F8 E0               [24] 2135 	movx	a,@dptr
      0014F9 F5 1D            [12] 2136 	mov	(_gpioConfigure_sloc4_1_0 + 1),a
      0014FB A3               [24] 2137 	inc	dptr
      0014FC E0               [24] 2138 	movx	a,@dptr
      0014FD F5 1E            [12] 2139 	mov	(_gpioConfigure_sloc4_1_0 + 2),a
      0014FF 74 0A            [12] 2140 	mov	a,#0x0a
      001501 25 1C            [12] 2141 	add	a, _gpioConfigure_sloc4_1_0
      001503 F8               [12] 2142 	mov	r0,a
      001504 E4               [12] 2143 	clr	a
      001505 35 1D            [12] 2144 	addc	a, (_gpioConfigure_sloc4_1_0 + 1)
      001507 FB               [12] 2145 	mov	r3,a
      001508 AC 1E            [24] 2146 	mov	r4,(_gpioConfigure_sloc4_1_0 + 2)
      00150A 88 82            [24] 2147 	mov	dpl,r0
      00150C 8B 83            [24] 2148 	mov	dph,r3
      00150E 8C F0            [24] 2149 	mov	b,r4
      001510 12 3A A0         [24] 2150 	lcall	__gptrget
      001513 90 00 77         [24] 2151 	mov	dptr,#___gpio_setBits_PARM_2
      001516 F0               [24] 2152 	movx	@dptr,a
      001517 90 00 78         [24] 2153 	mov	dptr,#___gpio_setBits_PARM_3
      00151A E5 1C            [12] 2154 	mov	a,_gpioConfigure_sloc4_1_0
      00151C F0               [24] 2155 	movx	@dptr,a
      00151D E5 1D            [12] 2156 	mov	a,(_gpioConfigure_sloc4_1_0 + 1)
      00151F A3               [24] 2157 	inc	dptr
      001520 F0               [24] 2158 	movx	@dptr,a
      001521 E5 1E            [12] 2159 	mov	a,(_gpioConfigure_sloc4_1_0 + 2)
      001523 A3               [24] 2160 	inc	dptr
      001524 F0               [24] 2161 	movx	@dptr,a
      001525 85 1B 82         [24] 2162 	mov	dpl, _gpioConfigure_sloc3_1_0
      001528 C0 04            [24] 2163 	push	ar4
      00152A 12 0E 67         [24] 2164 	lcall	___gpio_setBits
      00152D 85 82 1C         [24] 2165 	mov	_gpioConfigure_sloc4_1_0,dpl
      001530 D0 04            [24] 2166 	pop	ar4
      001532 D0 05            [24] 2167 	pop	ar5
      001534 D0 06            [24] 2168 	pop	ar6
      001536 D0 07            [24] 2169 	pop	ar7
                                   2170 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:336: switch (gpioConfig->port) {
      001538 90 00 82         [24] 2171 	mov	dptr,#_gpioConfigure_gpioConfig_10000_90
      00153B E0               [24] 2172 	movx	a,@dptr
      00153C FA               [12] 2173 	mov	r2,a
      00153D A3               [24] 2174 	inc	dptr
      00153E E0               [24] 2175 	movx	a,@dptr
      00153F FB               [12] 2176 	mov	r3,a
      001540 A3               [24] 2177 	inc	dptr
      001541 E0               [24] 2178 	movx	a,@dptr
      001542 FC               [12] 2179 	mov	r4,a
      001543 8A 82            [24] 2180 	mov	dpl,r2
      001545 8B 83            [24] 2181 	mov	dph,r3
      001547 8C F0            [24] 2182 	mov	b,r4
      001549 12 3A A0         [24] 2183 	lcall	__gptrget
      00154C F5 1B            [12] 2184 	mov	_gpioConfigure_sloc3_1_0,a
      00154E 74 01            [12] 2185 	mov	a,#0x01
      001550 B5 1B 04         [24] 2186 	cjne	a,_gpioConfigure_sloc3_1_0,00205$
      001553 D0 04            [24] 2187 	pop	ar4
      001555 80 1A            [24] 2188 	sjmp	00111$
      001557                       2189 00205$:
      001557 D0 04            [24] 2190 	pop	ar4
      001559 74 02            [12] 2191 	mov	a,#0x02
      00155B B5 1B 02         [24] 2192 	cjne	a,_gpioConfigure_sloc3_1_0,00206$
      00155E 80 58            [24] 2193 	sjmp	00112$
      001560                       2194 00206$:
      001560 74 03            [12] 2195 	mov	a,#0x03
      001562 B5 1B 03         [24] 2196 	cjne	a,_gpioConfigure_sloc3_1_0,00207$
      001565 02 15 FF         [24] 2197 	ljmp	00113$
      001568                       2198 00207$:
      001568 74 05            [12] 2199 	mov	a,#0x05
      00156A B5 1B 03         [24] 2200 	cjne	a,_gpioConfigure_sloc3_1_0,00208$
      00156D 02 16 46         [24] 2201 	ljmp	00114$
      001570                       2202 00208$:
      001570 22               [24] 2203 	ret
                                   2204 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:368: case GPIO_PORT1:
      001571                       2205 00111$:
                                   2206 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:369: P1M1 = pm1;
      001571 8F 91            [24] 2207 	mov	_P1M1,r7
                                   2208 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:370: P1M0 = pm0;
      001573 8E 92            [24] 2209 	mov	_P1M0,r6
                                   2210 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:373: P1NCS = pncs;
      001575 90 FE 19         [24] 2211 	mov	dptr,#_P1NCS
      001578 ED               [12] 2212 	mov	a,r5
      001579 F0               [24] 2213 	movx	@dptr,a
                                   2214 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:374: P1PU = ppu;
      00157A 90 FE 11         [24] 2215 	mov	dptr,#_P1PU
      00157D EC               [12] 2216 	mov	a,r4
      00157E F0               [24] 2217 	movx	@dptr,a
                                   2218 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:378: P1DR = pdr;
      00157F 90 00 8A         [24] 2219 	mov	dptr,#_gpioConfigure_pdr_10001_94
      001582 E0               [24] 2220 	movx	a,@dptr
      001583 90 FE 29         [24] 2221 	mov	dptr,#_P1DR
      001586 F0               [24] 2222 	movx	@dptr,a
                                   2223 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:379: P1SR = psr;
      001587 90 00 8B         [24] 2224 	mov	dptr,#_gpioConfigure_psr_10001_94
      00158A E0               [24] 2225 	movx	a,@dptr
      00158B 90 FE 21         [24] 2226 	mov	dptr,#_P1SR
      00158E F0               [24] 2227 	movx	@dptr,a
                                   2228 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:380: P1IE = pie;
      00158F 90 00 8C         [24] 2229 	mov	dptr,#_gpioConfigure_pie_10001_94
      001592 E0               [24] 2230 	movx	a,@dptr
      001593 90 FE 31         [24] 2231 	mov	dptr,#_P1IE
      001596 F0               [24] 2232 	movx	@dptr,a
                                   2233 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:384: P1IM1 = pim1;
      001597 90 FD 31         [24] 2234 	mov	dptr,#_P1IM1
      00159A E5 15            [12] 2235 	mov	a,_gpioConfigure_sloc1_1_0
      00159C F0               [24] 2236 	movx	@dptr,a
                                   2237 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:385: P1IM0 = pim0;
      00159D 90 FD 21         [24] 2238 	mov	dptr,#_P1IM0
      0015A0 E5 18            [12] 2239 	mov	a,_gpioConfigure_sloc2_1_0
      0015A2 F0               [24] 2240 	movx	@dptr,a
                                   2241 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:386: P1INTF = pintf;
      0015A3 90 00 8F         [24] 2242 	mov	dptr,#_gpioConfigure_pintf_10001_94
      0015A6 E0               [24] 2243 	movx	a,@dptr
      0015A7 90 FD 11         [24] 2244 	mov	dptr,#_P1INTF
      0015AA F0               [24] 2245 	movx	@dptr,a
                                   2246 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:387: P1INTE = pinte;
      0015AB 90 FD 01         [24] 2247 	mov	dptr,#_P1INTE
      0015AE E5 12            [12] 2248 	mov	a,_gpioConfigure_sloc0_1_0
      0015B0 F0               [24] 2249 	movx	@dptr,a
                                   2250 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:388: P1WKUE = pwkue;
      0015B1 90 FD 41         [24] 2251 	mov	dptr,#_P1WKUE
      0015B4 E5 1C            [12] 2252 	mov	a,_gpioConfigure_sloc4_1_0
      0015B6 F0               [24] 2253 	movx	@dptr,a
                                   2254 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:390: break;
      0015B7 22               [24] 2255 	ret
                                   2256 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:396: case GPIO_PORT2:
      0015B8                       2257 00112$:
                                   2258 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:397: P2M1 = pm1;
      0015B8 8F 95            [24] 2259 	mov	_P2M1,r7
                                   2260 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:398: P2M0 = pm0;
      0015BA 8E 96            [24] 2261 	mov	_P2M0,r6
                                   2262 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:401: P2NCS = pncs;
      0015BC 90 FE 1A         [24] 2263 	mov	dptr,#_P2NCS
      0015BF ED               [12] 2264 	mov	a,r5
      0015C0 F0               [24] 2265 	movx	@dptr,a
                                   2266 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:402: P2PU = ppu;
      0015C1 90 FE 12         [24] 2267 	mov	dptr,#_P2PU
      0015C4 EC               [12] 2268 	mov	a,r4
      0015C5 F0               [24] 2269 	movx	@dptr,a
                                   2270 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:406: P2DR = pdr;
      0015C6 90 00 8A         [24] 2271 	mov	dptr,#_gpioConfigure_pdr_10001_94
      0015C9 E0               [24] 2272 	movx	a,@dptr
      0015CA 90 FE 2A         [24] 2273 	mov	dptr,#_P2DR
      0015CD F0               [24] 2274 	movx	@dptr,a
                                   2275 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:407: P2SR = psr;
      0015CE 90 00 8B         [24] 2276 	mov	dptr,#_gpioConfigure_psr_10001_94
      0015D1 E0               [24] 2277 	movx	a,@dptr
      0015D2 90 FE 22         [24] 2278 	mov	dptr,#_P2SR
      0015D5 F0               [24] 2279 	movx	@dptr,a
                                   2280 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:408: P2IE = pie;
      0015D6 90 00 8C         [24] 2281 	mov	dptr,#_gpioConfigure_pie_10001_94
      0015D9 E0               [24] 2282 	movx	a,@dptr
      0015DA 90 FE 32         [24] 2283 	mov	dptr,#_P2IE
      0015DD F0               [24] 2284 	movx	@dptr,a
                                   2285 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:412: P2IM1 = pim1;
      0015DE 90 FD 32         [24] 2286 	mov	dptr,#_P2IM1
      0015E1 E5 15            [12] 2287 	mov	a,_gpioConfigure_sloc1_1_0
      0015E3 F0               [24] 2288 	movx	@dptr,a
                                   2289 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:413: P2IM0 = pim0;
      0015E4 90 FD 22         [24] 2290 	mov	dptr,#_P2IM0
      0015E7 E5 18            [12] 2291 	mov	a,_gpioConfigure_sloc2_1_0
      0015E9 F0               [24] 2292 	movx	@dptr,a
                                   2293 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:414: P2INTF = pintf;
      0015EA 90 00 8F         [24] 2294 	mov	dptr,#_gpioConfigure_pintf_10001_94
      0015ED E0               [24] 2295 	movx	a,@dptr
      0015EE 90 FD 12         [24] 2296 	mov	dptr,#_P2INTF
      0015F1 F0               [24] 2297 	movx	@dptr,a
                                   2298 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:415: P2INTE = pinte;
      0015F2 90 FD 02         [24] 2299 	mov	dptr,#_P2INTE
      0015F5 E5 12            [12] 2300 	mov	a,_gpioConfigure_sloc0_1_0
      0015F7 F0               [24] 2301 	movx	@dptr,a
                                   2302 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:416: P2WKUE = pwkue;
      0015F8 90 FD 42         [24] 2303 	mov	dptr,#_P2WKUE
      0015FB E5 1C            [12] 2304 	mov	a,_gpioConfigure_sloc4_1_0
      0015FD F0               [24] 2305 	movx	@dptr,a
                                   2306 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:418: break;
      0015FE 22               [24] 2307 	ret
                                   2308 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:423: case GPIO_PORT3:
      0015FF                       2309 00113$:
                                   2310 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:424: P3M1 = pm1;
      0015FF 8F B1            [24] 2311 	mov	_P3M1,r7
                                   2312 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:425: P3M0 = pm0;
      001601 8E B2            [24] 2313 	mov	_P3M0,r6
                                   2314 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:428: P3NCS = pncs;
      001603 90 FE 1B         [24] 2315 	mov	dptr,#_P3NCS
      001606 ED               [12] 2316 	mov	a,r5
      001607 F0               [24] 2317 	movx	@dptr,a
                                   2318 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:429: P3PU = ppu;
      001608 90 FE 13         [24] 2319 	mov	dptr,#_P3PU
      00160B EC               [12] 2320 	mov	a,r4
      00160C F0               [24] 2321 	movx	@dptr,a
                                   2322 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:433: P3DR = pdr;
      00160D 90 00 8A         [24] 2323 	mov	dptr,#_gpioConfigure_pdr_10001_94
      001610 E0               [24] 2324 	movx	a,@dptr
      001611 90 FE 2B         [24] 2325 	mov	dptr,#_P3DR
      001614 F0               [24] 2326 	movx	@dptr,a
                                   2327 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:434: P3SR = psr;
      001615 90 00 8B         [24] 2328 	mov	dptr,#_gpioConfigure_psr_10001_94
      001618 E0               [24] 2329 	movx	a,@dptr
      001619 90 FE 23         [24] 2330 	mov	dptr,#_P3SR
      00161C F0               [24] 2331 	movx	@dptr,a
                                   2332 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:435: P3IE = pie;
      00161D 90 00 8C         [24] 2333 	mov	dptr,#_gpioConfigure_pie_10001_94
      001620 E0               [24] 2334 	movx	a,@dptr
      001621 90 FE 33         [24] 2335 	mov	dptr,#_P3IE
      001624 F0               [24] 2336 	movx	@dptr,a
                                   2337 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:439: P3IM1 = pim1;
      001625 90 FD 33         [24] 2338 	mov	dptr,#_P3IM1
      001628 E5 15            [12] 2339 	mov	a,_gpioConfigure_sloc1_1_0
      00162A F0               [24] 2340 	movx	@dptr,a
                                   2341 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:440: P3IM0 = pim0;
      00162B 90 FD 23         [24] 2342 	mov	dptr,#_P3IM0
      00162E E5 18            [12] 2343 	mov	a,_gpioConfigure_sloc2_1_0
      001630 F0               [24] 2344 	movx	@dptr,a
                                   2345 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:441: P3INTF = pintf;
      001631 90 00 8F         [24] 2346 	mov	dptr,#_gpioConfigure_pintf_10001_94
      001634 E0               [24] 2347 	movx	a,@dptr
      001635 90 FD 13         [24] 2348 	mov	dptr,#_P3INTF
      001638 F0               [24] 2349 	movx	@dptr,a
                                   2350 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:442: P3INTE = pinte;
      001639 90 FD 03         [24] 2351 	mov	dptr,#_P3INTE
      00163C E5 12            [12] 2352 	mov	a,_gpioConfigure_sloc0_1_0
      00163E F0               [24] 2353 	movx	@dptr,a
                                   2354 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:443: P3WKUE = pwkue;
      00163F 90 FD 43         [24] 2355 	mov	dptr,#_P3WKUE
      001642 E5 1C            [12] 2356 	mov	a,_gpioConfigure_sloc4_1_0
      001644 F0               [24] 2357 	movx	@dptr,a
                                   2358 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:445: break;
                                   2359 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:478: case GPIO_PORT5:
      001645 22               [24] 2360 	ret
      001646                       2361 00114$:
                                   2362 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:479: P5M1 = pm1;
      001646 8F C9            [24] 2363 	mov	_P5M1,r7
                                   2364 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:480: P5M0 = pm0;
      001648 8E CA            [24] 2365 	mov	_P5M0,r6
                                   2366 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:483: P5NCS = pncs;
      00164A 90 FE 1D         [24] 2367 	mov	dptr,#_P5NCS
      00164D ED               [12] 2368 	mov	a,r5
      00164E F0               [24] 2369 	movx	@dptr,a
                                   2370 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:484: P5PU = ppu;
      00164F 90 FE 15         [24] 2371 	mov	dptr,#_P5PU
      001652 EC               [12] 2372 	mov	a,r4
      001653 F0               [24] 2373 	movx	@dptr,a
                                   2374 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:488: P5DR = pdr;
      001654 90 00 8A         [24] 2375 	mov	dptr,#_gpioConfigure_pdr_10001_94
      001657 E0               [24] 2376 	movx	a,@dptr
      001658 90 FE 2D         [24] 2377 	mov	dptr,#_P5DR
      00165B F0               [24] 2378 	movx	@dptr,a
                                   2379 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:489: P5SR = psr;
      00165C 90 00 8B         [24] 2380 	mov	dptr,#_gpioConfigure_psr_10001_94
      00165F E0               [24] 2381 	movx	a,@dptr
      001660 90 FE 25         [24] 2382 	mov	dptr,#_P5SR
      001663 F0               [24] 2383 	movx	@dptr,a
                                   2384 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:490: P5IE = pie;
      001664 90 00 8C         [24] 2385 	mov	dptr,#_gpioConfigure_pie_10001_94
      001667 E0               [24] 2386 	movx	a,@dptr
      001668 90 FE 35         [24] 2387 	mov	dptr,#_P5IE
      00166B F0               [24] 2388 	movx	@dptr,a
                                   2389 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:494: P5IM1 = pim1;
      00166C 90 FD 35         [24] 2390 	mov	dptr,#_P5IM1
      00166F E5 15            [12] 2391 	mov	a,_gpioConfigure_sloc1_1_0
      001671 F0               [24] 2392 	movx	@dptr,a
                                   2393 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:495: P5IM0 = pim0;
      001672 90 FD 25         [24] 2394 	mov	dptr,#_P5IM0
      001675 E5 18            [12] 2395 	mov	a,_gpioConfigure_sloc2_1_0
      001677 F0               [24] 2396 	movx	@dptr,a
                                   2397 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:496: P5INTF = pintf;
      001678 90 00 8F         [24] 2398 	mov	dptr,#_gpioConfigure_pintf_10001_94
      00167B E0               [24] 2399 	movx	a,@dptr
      00167C 90 FD 15         [24] 2400 	mov	dptr,#_P5INTF
      00167F F0               [24] 2401 	movx	@dptr,a
                                   2402 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:497: P5INTE = pinte;
      001680 90 FD 05         [24] 2403 	mov	dptr,#_P5INTE
      001683 E5 12            [12] 2404 	mov	a,_gpioConfigure_sloc0_1_0
      001685 F0               [24] 2405 	movx	@dptr,a
                                   2406 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:498: P5WKUE = pwkue;
      001686 90 FD 45         [24] 2407 	mov	dptr,#_P5WKUE
      001689 E5 1C            [12] 2408 	mov	a,_gpioConfigure_sloc4_1_0
      00168B F0               [24] 2409 	movx	@dptr,a
                                   2410 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:558: }
                                   2411 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:559: }
      00168C 22               [24] 2412 	ret
                                   2413 ;------------------------------------------------------------
                                   2414 ;Allocation info for local variables in function '__getPort'
                                   2415 ;------------------------------------------------------------
                                   2416 ;port                      Allocated with name '___getPort_port_10000_99'
                                   2417 ;value                     Allocated with name '___getPort_value_10000_100'
                                   2418 ;------------------------------------------------------------
                                   2419 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:561: static uint8_t __getPort(GpioPort port) {
                                   2420 ;	-----------------------------------------
                                   2421 ;	 function __getPort
                                   2422 ;	-----------------------------------------
      00168D                       2423 ___getPort:
      00168D E5 82            [12] 2424 	mov	a,dpl
      00168F 90 00 92         [24] 2425 	mov	dptr,#___getPort_port_10000_99
      001692 F0               [24] 2426 	movx	@dptr,a
                                   2427 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:562: uint8_t value = 0;
      001693 90 00 93         [24] 2428 	mov	dptr,#___getPort_value_10000_100
      001696 E4               [12] 2429 	clr	a
      001697 F0               [24] 2430 	movx	@dptr,a
                                   2431 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:564: switch (port) {
      001698 90 00 92         [24] 2432 	mov	dptr,#___getPort_port_10000_99
      00169B E0               [24] 2433 	movx	a,@dptr
      00169C FF               [12] 2434 	mov	r7,a
      00169D BF 01 02         [24] 2435 	cjne	r7,#0x01,00132$
      0016A0 80 0F            [24] 2436 	sjmp	00101$
      0016A2                       2437 00132$:
      0016A2 BF 02 02         [24] 2438 	cjne	r7,#0x02,00133$
      0016A5 80 12            [24] 2439 	sjmp	00102$
      0016A7                       2440 00133$:
      0016A7 BF 03 02         [24] 2441 	cjne	r7,#0x03,00134$
      0016AA 80 15            [24] 2442 	sjmp	00103$
      0016AC                       2443 00134$:
                                   2444 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:574: case GPIO_PORT1:
      0016AC BF 05 20         [24] 2445 	cjne	r7,#0x05,00105$
      0016AF 80 18            [24] 2446 	sjmp	00104$
      0016B1                       2447 00101$:
                                   2448 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:575: value = P1;
      0016B1 90 00 93         [24] 2449 	mov	dptr,#___getPort_value_10000_100
      0016B4 E5 90            [12] 2450 	mov	a,_P1
      0016B6 F0               [24] 2451 	movx	@dptr,a
                                   2452 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:576: break;
                                   2453 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:581: case GPIO_PORT2:
      0016B7 80 16            [24] 2454 	sjmp	00105$
      0016B9                       2455 00102$:
                                   2456 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:582: value = P2;
      0016B9 90 00 93         [24] 2457 	mov	dptr,#___getPort_value_10000_100
      0016BC E5 A0            [12] 2458 	mov	a,_P2
      0016BE F0               [24] 2459 	movx	@dptr,a
                                   2460 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:583: break;
                                   2461 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:587: case GPIO_PORT3:
      0016BF 80 0E            [24] 2462 	sjmp	00105$
      0016C1                       2463 00103$:
                                   2464 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:588: value = P3;
      0016C1 90 00 93         [24] 2465 	mov	dptr,#___getPort_value_10000_100
      0016C4 E5 B0            [12] 2466 	mov	a,_P3
      0016C6 F0               [24] 2467 	movx	@dptr,a
                                   2468 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:589: break;
                                   2469 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:600: case GPIO_PORT5:
      0016C7 80 06            [24] 2470 	sjmp	00105$
      0016C9                       2471 00104$:
                                   2472 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:601: value = P5;
      0016C9 90 00 93         [24] 2473 	mov	dptr,#___getPort_value_10000_100
      0016CC E5 C8            [12] 2474 	mov	a,_P5
      0016CE F0               [24] 2475 	movx	@dptr,a
                                   2476 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:619: }
      0016CF                       2477 00105$:
                                   2478 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:621: return value;
      0016CF 90 00 93         [24] 2479 	mov	dptr,#___getPort_value_10000_100
      0016D2 E0               [24] 2480 	movx	a,@dptr
                                   2481 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:622: }
      0016D3 F5 82            [12] 2482 	mov	dpl,a
      0016D5 22               [24] 2483 	ret
                                   2484 ;------------------------------------------------------------
                                   2485 ;Allocation info for local variables in function 'gpioRead'
                                   2486 ;------------------------------------------------------------
                                   2487 ;gpioConfig                Allocated with name '_gpioRead_gpioConfig_10000_102'
                                   2488 ;------------------------------------------------------------
                                   2489 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:624: uint8_t gpioRead(GpioConfig *gpioConfig) {
                                   2490 ;	-----------------------------------------
                                   2491 ;	 function gpioRead
                                   2492 ;	-----------------------------------------
      0016D6                       2493 _gpioRead:
      0016D6 AF F0            [24] 2494 	mov	r7,b
      0016D8 AE 83            [24] 2495 	mov	r6,dph
      0016DA E5 82            [12] 2496 	mov	a,dpl
      0016DC 90 00 94         [24] 2497 	mov	dptr,#_gpioRead_gpioConfig_10000_102
      0016DF F0               [24] 2498 	movx	@dptr,a
      0016E0 EE               [12] 2499 	mov	a,r6
      0016E1 A3               [24] 2500 	inc	dptr
      0016E2 F0               [24] 2501 	movx	@dptr,a
      0016E3 EF               [12] 2502 	mov	a,r7
      0016E4 A3               [24] 2503 	inc	dptr
      0016E5 F0               [24] 2504 	movx	@dptr,a
                                   2505 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:625: return (__getPort(gpioConfig->port) & gpioConfig->__setMask) >> gpioConfig->pin;
      0016E6 90 00 94         [24] 2506 	mov	dptr,#_gpioRead_gpioConfig_10000_102
      0016E9 E0               [24] 2507 	movx	a,@dptr
      0016EA FD               [12] 2508 	mov	r5,a
      0016EB A3               [24] 2509 	inc	dptr
      0016EC E0               [24] 2510 	movx	a,@dptr
      0016ED FE               [12] 2511 	mov	r6,a
      0016EE A3               [24] 2512 	inc	dptr
      0016EF E0               [24] 2513 	movx	a,@dptr
      0016F0 FF               [12] 2514 	mov	r7,a
      0016F1 8D 82            [24] 2515 	mov	dpl,r5
      0016F3 8E 83            [24] 2516 	mov	dph,r6
      0016F5 8F F0            [24] 2517 	mov	b,r7
      0016F7 12 3A A0         [24] 2518 	lcall	__gptrget
      0016FA F5 82            [12] 2519 	mov	dpl,a
      0016FC C0 07            [24] 2520 	push	ar7
      0016FE C0 06            [24] 2521 	push	ar6
      001700 C0 05            [24] 2522 	push	ar5
      001702 12 16 8D         [24] 2523 	lcall	___getPort
      001705 AC 82            [24] 2524 	mov	r4, dpl
      001707 D0 05            [24] 2525 	pop	ar5
      001709 D0 06            [24] 2526 	pop	ar6
      00170B D0 07            [24] 2527 	pop	ar7
      00170D 74 0B            [12] 2528 	mov	a,#0x0b
      00170F 2D               [12] 2529 	add	a, r5
      001710 F9               [12] 2530 	mov	r1,a
      001711 E4               [12] 2531 	clr	a
      001712 3E               [12] 2532 	addc	a, r6
      001713 FA               [12] 2533 	mov	r2,a
      001714 8F 03            [24] 2534 	mov	ar3,r7
      001716 89 82            [24] 2535 	mov	dpl,r1
      001718 8A 83            [24] 2536 	mov	dph,r2
      00171A 8B F0            [24] 2537 	mov	b,r3
      00171C 12 3A A0         [24] 2538 	lcall	__gptrget
      00171F 52 04            [12] 2539 	anl	ar4,a
      001721 0D               [12] 2540 	inc	r5
      001722 BD 00 01         [24] 2541 	cjne	r5,#0x00,00103$
      001725 0E               [12] 2542 	inc	r6
      001726                       2543 00103$:
      001726 8D 82            [24] 2544 	mov	dpl,r5
      001728 8E 83            [24] 2545 	mov	dph,r6
      00172A 8F F0            [24] 2546 	mov	b,r7
      00172C 12 3A A0         [24] 2547 	lcall	__gptrget
      00172F FD               [12] 2548 	mov	r5,a
      001730 8D F0            [24] 2549 	mov	b,r5
      001732 05 F0            [12] 2550 	inc	b
      001734 EC               [12] 2551 	mov	a,r4
      001735 80 02            [24] 2552 	sjmp	00105$
      001737                       2553 00104$:
      001737 C3               [12] 2554 	clr	c
      001738 13               [12] 2555 	rrc	a
      001739                       2556 00105$:
      001739 D5 F0 FB         [24] 2557 	djnz	b,00104$
                                   2558 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:626: }
      00173C F5 82            [12] 2559 	mov	dpl,a
      00173E 22               [24] 2560 	ret
                                   2561 ;------------------------------------------------------------
                                   2562 ;Allocation info for local variables in function 'gpioWrite'
                                   2563 ;------------------------------------------------------------
                                   2564 ;value                     Allocated with name '_gpioWrite_PARM_2'
                                   2565 ;gpioConfig                Allocated with name '_gpioWrite_gpioConfig_10000_104'
                                   2566 ;------------------------------------------------------------
                                   2567 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:628: void gpioWrite(GpioConfig *gpioConfig, uint8_t value) {
                                   2568 ;	-----------------------------------------
                                   2569 ;	 function gpioWrite
                                   2570 ;	-----------------------------------------
      00173F                       2571 _gpioWrite:
      00173F AF F0            [24] 2572 	mov	r7,b
      001741 AE 83            [24] 2573 	mov	r6,dph
      001743 E5 82            [12] 2574 	mov	a,dpl
      001745 90 00 98         [24] 2575 	mov	dptr,#_gpioWrite_gpioConfig_10000_104
      001748 F0               [24] 2576 	movx	@dptr,a
      001749 EE               [12] 2577 	mov	a,r6
      00174A A3               [24] 2578 	inc	dptr
      00174B F0               [24] 2579 	movx	@dptr,a
      00174C EF               [12] 2580 	mov	a,r7
      00174D A3               [24] 2581 	inc	dptr
      00174E F0               [24] 2582 	movx	@dptr,a
                                   2583 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:629: if (gpioConfig->count == 1) {
      00174F 90 00 98         [24] 2584 	mov	dptr,#_gpioWrite_gpioConfig_10000_104
      001752 E0               [24] 2585 	movx	a,@dptr
      001753 FD               [12] 2586 	mov	r5,a
      001754 A3               [24] 2587 	inc	dptr
      001755 E0               [24] 2588 	movx	a,@dptr
      001756 FE               [12] 2589 	mov	r6,a
      001757 A3               [24] 2590 	inc	dptr
      001758 E0               [24] 2591 	movx	a,@dptr
      001759 FF               [12] 2592 	mov	r7,a
      00175A 74 02            [12] 2593 	mov	a,#0x02
      00175C 2D               [12] 2594 	add	a, r5
      00175D FA               [12] 2595 	mov	r2,a
      00175E E4               [12] 2596 	clr	a
      00175F 3E               [12] 2597 	addc	a, r6
      001760 FB               [12] 2598 	mov	r3,a
      001761 8F 04            [24] 2599 	mov	ar4,r7
      001763 8A 82            [24] 2600 	mov	dpl,r2
      001765 8B 83            [24] 2601 	mov	dph,r3
      001767 8C F0            [24] 2602 	mov	b,r4
      001769 12 3A A0         [24] 2603 	lcall	__gptrget
      00176C FA               [12] 2604 	mov	r2,a
      00176D BA 01 0E         [24] 2605 	cjne	r2,#0x01,00102$
                                   2606 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:633: value = value ? 1 : 0;
      001770 90 00 97         [24] 2607 	mov	dptr,#_gpioWrite_PARM_2
      001773 E0               [24] 2608 	movx	a,@dptr
      001774 60 02            [24] 2609 	jz	00110$
      001776 74 01            [12] 2610 	mov	a,#0x01
      001778                       2611 00110$:
      001778 FC               [12] 2612 	mov	r4,a
      001779 90 00 97         [24] 2613 	mov	dptr,#_gpioWrite_PARM_2
      00177C EC               [12] 2614 	mov	a,r4
      00177D F0               [24] 2615 	movx	@dptr,a
      00177E                       2616 00102$:
                                   2617 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:636: value = (value << gpioConfig->pin) & gpioConfig->__setMask;
      00177E 74 01            [12] 2618 	mov	a,#0x01
      001780 2D               [12] 2619 	add	a, r5
      001781 FA               [12] 2620 	mov	r2,a
      001782 E4               [12] 2621 	clr	a
      001783 3E               [12] 2622 	addc	a, r6
      001784 FB               [12] 2623 	mov	r3,a
      001785 8F 04            [24] 2624 	mov	ar4,r7
      001787 8A 82            [24] 2625 	mov	dpl,r2
      001789 8B 83            [24] 2626 	mov	dph,r3
      00178B 8C F0            [24] 2627 	mov	b,r4
      00178D 12 3A A0         [24] 2628 	lcall	__gptrget
      001790 FA               [12] 2629 	mov	r2,a
      001791 90 00 97         [24] 2630 	mov	dptr,#_gpioWrite_PARM_2
      001794 E0               [24] 2631 	movx	a,@dptr
      001795 8A F0            [24] 2632 	mov	b,r2
      001797 05 F0            [12] 2633 	inc	b
      001799 80 02            [24] 2634 	sjmp	00152$
      00179B                       2635 00151$:
      00179B 25 E0            [12] 2636 	add	a,acc
      00179D                       2637 00152$:
      00179D D5 F0 FB         [24] 2638 	djnz	b,00151$
      0017A0 FA               [12] 2639 	mov	r2,a
      0017A1 74 0B            [12] 2640 	mov	a,#0x0b
      0017A3 2D               [12] 2641 	add	a, r5
      0017A4 F9               [12] 2642 	mov	r1,a
      0017A5 E4               [12] 2643 	clr	a
      0017A6 3E               [12] 2644 	addc	a, r6
      0017A7 FB               [12] 2645 	mov	r3,a
      0017A8 8F 04            [24] 2646 	mov	ar4,r7
      0017AA 89 82            [24] 2647 	mov	dpl,r1
      0017AC 8B 83            [24] 2648 	mov	dph,r3
      0017AE 8C F0            [24] 2649 	mov	b,r4
      0017B0 12 3A A0         [24] 2650 	lcall	__gptrget
      0017B3 90 00 97         [24] 2651 	mov	dptr,#_gpioWrite_PARM_2
      0017B6 5A               [12] 2652 	anl	a,r2
      0017B7 F0               [24] 2653 	movx	@dptr,a
                                   2654 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:637: value |= __getPort(gpioConfig->port) & gpioConfig->__clearMask;
      0017B8 8D 82            [24] 2655 	mov	dpl,r5
      0017BA 8E 83            [24] 2656 	mov	dph,r6
      0017BC 8F F0            [24] 2657 	mov	b,r7
      0017BE 12 3A A0         [24] 2658 	lcall	__gptrget
      0017C1 F5 82            [12] 2659 	mov	dpl,a
      0017C3 C0 07            [24] 2660 	push	ar7
      0017C5 C0 06            [24] 2661 	push	ar6
      0017C7 C0 05            [24] 2662 	push	ar5
      0017C9 12 16 8D         [24] 2663 	lcall	___getPort
      0017CC AC 82            [24] 2664 	mov	r4, dpl
      0017CE D0 05            [24] 2665 	pop	ar5
      0017D0 D0 06            [24] 2666 	pop	ar6
      0017D2 D0 07            [24] 2667 	pop	ar7
      0017D4 74 0C            [12] 2668 	mov	a,#0x0c
      0017D6 2D               [12] 2669 	add	a, r5
      0017D7 F9               [12] 2670 	mov	r1,a
      0017D8 E4               [12] 2671 	clr	a
      0017D9 3E               [12] 2672 	addc	a, r6
      0017DA FA               [12] 2673 	mov	r2,a
      0017DB 8F 03            [24] 2674 	mov	ar3,r7
      0017DD 89 82            [24] 2675 	mov	dpl,r1
      0017DF 8A 83            [24] 2676 	mov	dph,r2
      0017E1 8B F0            [24] 2677 	mov	b,r3
      0017E3 12 3A A0         [24] 2678 	lcall	__gptrget
      0017E6 52 04            [12] 2679 	anl	ar4,a
      0017E8 90 00 97         [24] 2680 	mov	dptr,#_gpioWrite_PARM_2
      0017EB E0               [24] 2681 	movx	a,@dptr
      0017EC 4C               [12] 2682 	orl	a,r4
      0017ED F0               [24] 2683 	movx	@dptr,a
                                   2684 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:639: switch (gpioConfig->port) {
      0017EE 8D 82            [24] 2685 	mov	dpl,r5
      0017F0 8E 83            [24] 2686 	mov	dph,r6
      0017F2 8F F0            [24] 2687 	mov	b,r7
      0017F4 12 3A A0         [24] 2688 	lcall	__gptrget
      0017F7 FF               [12] 2689 	mov	r7,a
      0017F8 BF 01 02         [24] 2690 	cjne	r7,#0x01,00153$
      0017FB 80 0F            [24] 2691 	sjmp	00103$
      0017FD                       2692 00153$:
      0017FD BF 02 02         [24] 2693 	cjne	r7,#0x02,00154$
      001800 80 11            [24] 2694 	sjmp	00104$
      001802                       2695 00154$:
      001802 BF 03 02         [24] 2696 	cjne	r7,#0x03,00155$
      001805 80 13            [24] 2697 	sjmp	00105$
      001807                       2698 00155$:
                                   2699 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:649: case GPIO_PORT1:
      001807 BF 05 1D         [24] 2700 	cjne	r7,#0x05,00108$
      00180A 80 15            [24] 2701 	sjmp	00106$
      00180C                       2702 00103$:
                                   2703 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:650: P1 = value;
      00180C 90 00 97         [24] 2704 	mov	dptr,#_gpioWrite_PARM_2
      00180F E0               [24] 2705 	movx	a,@dptr
      001810 F5 90            [12] 2706 	mov	_P1,a
                                   2707 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:651: break;
                                   2708 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:656: case GPIO_PORT2:
      001812 22               [24] 2709 	ret
      001813                       2710 00104$:
                                   2711 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:657: P2 = value;
      001813 90 00 97         [24] 2712 	mov	dptr,#_gpioWrite_PARM_2
      001816 E0               [24] 2713 	movx	a,@dptr
      001817 F5 A0            [12] 2714 	mov	_P2,a
                                   2715 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:658: break;
                                   2716 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:662: case GPIO_PORT3:
      001819 22               [24] 2717 	ret
      00181A                       2718 00105$:
                                   2719 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:663: P3 = value;
      00181A 90 00 97         [24] 2720 	mov	dptr,#_gpioWrite_PARM_2
      00181D E0               [24] 2721 	movx	a,@dptr
      00181E F5 B0            [12] 2722 	mov	_P3,a
                                   2723 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:664: break;
                                   2724 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:675: case GPIO_PORT5:
      001820 22               [24] 2725 	ret
      001821                       2726 00106$:
                                   2727 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:676: P5 = value;
      001821 90 00 97         [24] 2728 	mov	dptr,#_gpioWrite_PARM_2
      001824 E0               [24] 2729 	movx	a,@dptr
      001825 F5 C8            [12] 2730 	mov	_P5,a
                                   2731 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:693: }
      001827                       2732 00108$:
                                   2733 ;	/Users/ambadran717/.stc/uni-stc/hal/gpio-hal.c:694: }
      001827 22               [24] 2734 	ret
                                   2735 	.area CSEG    (CODE)
                                   2736 	.area CONST   (CODE)
                                   2737 	.area XINIT   (CODE)
                                   2738 	.area CABS    (ABS,CODE)
