                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer_hal
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
                                    156 	.globl _startTimer_PARM_5
                                    157 	.globl _startTimer_PARM_4
                                    158 	.globl _startTimer_PARM_3
                                    159 	.globl _startTimer_PARM_2
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
                                    428 	.globl _startTimer
                                    429 ;--------------------------------------------------------
                                    430 ; special function registers
                                    431 ;--------------------------------------------------------
                                    432 	.area RSEG    (ABS,DATA)
      000000                        433 	.org 0x0000
                           0000BC   434 _ADC_CONTR	=	0x00bc
                           0000BD   435 _ADC_RESH	=	0x00bd
                           0000BE   436 _ADC_RESL	=	0x00be
                           00BDBE   437 _ADC_RES	=	0xbdbe
                           0000DE   438 _ADCCFG	=	0x00de
                           0000FA   439 _DMA_ADC_AMT	=	0x00fa
                           0000E6   440 _CMPCR1	=	0x00e6
                           0000E7   441 _CMPCR2	=	0x00e7
                           000082   442 _DPL	=	0x0082
                           000083   443 _DPH	=	0x0083
                           008382   444 _DP	=	0x8382
                           0000E3   445 _DPS	=	0x00e3
                           0000E4   446 _DPL1	=	0x00e4
                           0000E5   447 _DPH1	=	0x00e5
                           0000AE   448 _TA	=	0x00ae
                           000090   449 _P1	=	0x0090
                           000091   450 _P1M1	=	0x0091
                           000092   451 _P1M0	=	0x0092
                           0000A0   452 _P2	=	0x00a0
                           000095   453 _P2M1	=	0x0095
                           000096   454 _P2M0	=	0x0096
                           0000B0   455 _P3	=	0x00b0
                           0000B1   456 _P3M1	=	0x00b1
                           0000B2   457 _P3M0	=	0x00b2
                           0000C8   458 _P5	=	0x00c8
                           0000C9   459 _P5M1	=	0x00c9
                           0000CA   460 _P5M0	=	0x00ca
                           0000C2   461 _IAP_DATA	=	0x00c2
                           0000C3   462 _IAP_ADDRH	=	0x00c3
                           0000C4   463 _IAP_ADDRL	=	0x00c4
                           00C3C4   464 _IAP_ADDR	=	0xc3c4
                           0000C5   465 _IAP_CMD	=	0x00c5
                           0000C6   466 _IAP_TRIG	=	0x00c6
                           0000C7   467 _IAP_CONTR	=	0x00c7
                           0000F5   468 _IAP_TPS	=	0x00f5
                           00008F   469 _INT_CLKO	=	0x008f
                           0000A8   470 _IE1	=	0x00a8
                           0000B8   471 _IP1L	=	0x00b8
                           0000B7   472 _IP1H	=	0x00b7
                           0000AF   473 _IE2	=	0x00af
                           0000B5   474 _IP2L	=	0x00b5
                           0000B6   475 _IP2H	=	0x00b6
                           0000DF   476 _IP3L	=	0x00df
                           0000EE   477 _IP3H	=	0x00ee
                           000081   478 _SP	=	0x0081
                           0000D0   479 _PSW	=	0x00d0
                           0000E0   480 _ACC	=	0x00e0
                           0000F0   481 _B	=	0x00f0
                           000087   482 _PCON	=	0x0087
                           0000FF   483 _RSTCFG	=	0x00ff
                           0000A2   484 _P_SW1	=	0x00a2
                           0000BA   485 _P_SW2	=	0x00ba
                           0000A1   486 _BUS_SPEED	=	0x00a1
                           0000AA   487 _WKTCL	=	0x00aa
                           0000AB   488 _WKTCH	=	0x00ab
                           00ABAA   489 _WKTC	=	0xabaa
                           0000CD   490 _SPSTAT	=	0x00cd
                           0000CE   491 _SPCTL	=	0x00ce
                           0000CF   492 _SPDAT	=	0x00cf
                           00009D   493 _IRCBAND	=	0x009d
                           00009E   494 _LIRTRIM	=	0x009e
                           00009F   495 _IRTRIM	=	0x009f
                           000088   496 _TCON	=	0x0088
                           000089   497 _TMOD	=	0x0089
                           00008A   498 _T0L	=	0x008a
                           00008C   499 _T0H	=	0x008c
                           008C8A   500 _T0	=	0x8c8a
                           00008B   501 _T1L	=	0x008b
                           00008D   502 _T1H	=	0x008d
                           008D8B   503 _T1	=	0x8d8b
                           0000D7   504 _T2L	=	0x00d7
                           0000D6   505 _T2H	=	0x00d6
                           00D6D7   506 _T2	=	0xd6d7
                           00008E   507 _AUXR	=	0x008e
                           0000C1   508 _WDT_CONTR	=	0x00c1
                           0000D1   509 _T4T3M	=	0x00d1
                           0000D2   510 _T4H	=	0x00d2
                           0000D3   511 _T4L	=	0x00d3
                           00D2D3   512 _T4	=	0xd2d3
                           0000D4   513 _T3H	=	0x00d4
                           0000D5   514 _T3L	=	0x00d5
                           00D4D5   515 _T3	=	0xd4d5
                           0000EF   516 _AUXINTIF	=	0x00ef
                           0000A9   517 _SADDR	=	0x00a9
                           0000B9   518 _SADEN	=	0x00b9
                           000098   519 _S1CON	=	0x0098
                           000099   520 _S1BUF	=	0x0099
                           00009A   521 _S2CON	=	0x009a
                           00009B   522 _S2BUF	=	0x009b
                           0000AC   523 _S3CON	=	0x00ac
                           0000AD   524 _S3BUF	=	0x00ad
                           000084   525 _S4CON	=	0x0084
                           000085   526 _S4BUF	=	0x0085
                           0000DC   527 _USBCLK	=	0x00dc
                           0000EC   528 _USBDAT	=	0x00ec
                           0000F4   529 _USBCON	=	0x00f4
                           0000FC   530 _USBADR	=	0x00fc
                                    531 ;--------------------------------------------------------
                                    532 ; special function bits
                                    533 ;--------------------------------------------------------
                                    534 	.area RSEG    (ABS,DATA)
      000000                        535 	.org 0x0000
                           000090   536 _P1_0	=	0x0090
                           000091   537 _P1_1	=	0x0091
                           000092   538 _P1_2	=	0x0092
                           000093   539 _P1_3	=	0x0093
                           000094   540 _P1_4	=	0x0094
                           000095   541 _P1_5	=	0x0095
                           000096   542 _P1_6	=	0x0096
                           000097   543 _P1_7	=	0x0097
                           0000A0   544 _P2_0	=	0x00a0
                           0000A1   545 _P2_1	=	0x00a1
                           0000A2   546 _P2_2	=	0x00a2
                           0000A3   547 _P2_3	=	0x00a3
                           0000A4   548 _P2_4	=	0x00a4
                           0000A5   549 _P2_5	=	0x00a5
                           0000A6   550 _P2_6	=	0x00a6
                           0000A7   551 _P2_7	=	0x00a7
                           0000B0   552 _P3_0	=	0x00b0
                           0000B1   553 _P3_1	=	0x00b1
                           0000B2   554 _P3_2	=	0x00b2
                           0000B3   555 _P3_3	=	0x00b3
                           0000B4   556 _P3_4	=	0x00b4
                           0000B5   557 _P3_5	=	0x00b5
                           0000B6   558 _P3_6	=	0x00b6
                           0000B7   559 _P3_7	=	0x00b7
                           0000C8   560 _P5_0	=	0x00c8
                           0000C9   561 _P5_1	=	0x00c9
                           0000CA   562 _P5_2	=	0x00ca
                           0000CB   563 _P5_3	=	0x00cb
                           0000CC   564 _P5_4	=	0x00cc
                           0000CD   565 _P5_5	=	0x00cd
                           000088   566 _INT0TR	=	0x0088
                           00008A   567 _INT1TR	=	0x008a
                           0000A8   568 _INT0IE	=	0x00a8
                           0000AA   569 _INT1IE	=	0x00aa
                           0000AF   570 _EA	=	0x00af
                           0000D0   571 _P	=	0x00d0
                           0000D1   572 _F1	=	0x00d1
                           0000D2   573 _OV	=	0x00d2
                           0000D3   574 _RS0	=	0x00d3
                           0000D4   575 _RS1	=	0x00d4
                           0000D5   576 _F0	=	0x00d5
                           0000D6   577 _AC	=	0x00d6
                           0000D7   578 _CY	=	0x00d7
                           00008C   579 _T0RUN	=	0x008c
                           00008E   580 _T1RUN	=	0x008e
                           0000A9   581 _T0IE	=	0x00a9
                           0000AB   582 _T1IE	=	0x00ab
                           00009F   583 _S1SM0_FE	=	0x009f
                                    584 ;--------------------------------------------------------
                                    585 ; overlayable register banks
                                    586 ;--------------------------------------------------------
                                    587 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        588 	.ds 8
                                    589 ;--------------------------------------------------------
                                    590 ; internal ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area DSEG    (DATA)
      000010                        593 _startTimer_sloc0_1_0:
      000010                        594 	.ds 2
                                    595 ;--------------------------------------------------------
                                    596 ; overlayable items in internal ram 
                                    597 ;--------------------------------------------------------
                                    598 ;--------------------------------------------------------
                                    599 ; indirectly addressable internal ram data
                                    600 ;--------------------------------------------------------
                                    601 	.area ISEG    (DATA)
                                    602 ;--------------------------------------------------------
                                    603 ; absolute internal ram data
                                    604 ;--------------------------------------------------------
                                    605 	.area IABS    (ABS,DATA)
                                    606 	.area IABS    (ABS,DATA)
                                    607 ;--------------------------------------------------------
                                    608 ; bit data
                                    609 ;--------------------------------------------------------
                                    610 	.area BSEG    (BIT)
                                    611 ;--------------------------------------------------------
                                    612 ; paged external ram data
                                    613 ;--------------------------------------------------------
                                    614 	.area PSEG    (PAG,XDATA)
                                    615 ;--------------------------------------------------------
                                    616 ; external ram data
                                    617 ;--------------------------------------------------------
                                    618 	.area XSEG    (XDATA)
                           00FEA8   619 _ADCTIM	=	0xfea8
                           00FEAD   620 _ADCEXCFG	=	0xfead
                           00FA10   621 _DMA_ADC_CFG	=	0xfa10
                           00FA11   622 _DMA_ADC_CR	=	0xfa11
                           00FA12   623 _DMA_ADC_STA	=	0xfa12
                           00FA17   624 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   625 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   626 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   627 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   628 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   629 _CMPEXCFG	=	0xfeae
                           00FA00   630 _DMA_M2M_CFG	=	0xfa00
                           00FA01   631 _DMA_M2M_CR	=	0xfa01
                           00FA02   632 _DMA_M2M_STA	=	0xfa02
                           00FA03   633 _DMA_M2M_AMT	=	0xfa03
                           00FA04   634 _DMA_M2M_DONE	=	0xfa04
                           00FA05   635 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   636 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   637 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   638 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   639 _P1INTE	=	0xfd01
                           00FD11   640 _P1INTF	=	0xfd11
                           00FD21   641 _P1IM0	=	0xfd21
                           00FD31   642 _P1IM1	=	0xfd31
                           00FD41   643 _P1WKUE	=	0xfd41
                           00FE11   644 _P1PU	=	0xfe11
                           00FE19   645 _P1NCS	=	0xfe19
                           00FE21   646 _P1SR	=	0xfe21
                           00FE29   647 _P1DR	=	0xfe29
                           00FE31   648 _P1IE	=	0xfe31
                           00FD02   649 _P2INTE	=	0xfd02
                           00FD12   650 _P2INTF	=	0xfd12
                           00FD22   651 _P2IM0	=	0xfd22
                           00FD32   652 _P2IM1	=	0xfd32
                           00FD42   653 _P2WKUE	=	0xfd42
                           00FE12   654 _P2PU	=	0xfe12
                           00FE1A   655 _P2NCS	=	0xfe1a
                           00FE22   656 _P2SR	=	0xfe22
                           00FE2A   657 _P2DR	=	0xfe2a
                           00FE32   658 _P2IE	=	0xfe32
                           00FD03   659 _P3INTE	=	0xfd03
                           00FD13   660 _P3INTF	=	0xfd13
                           00FD23   661 _P3IM0	=	0xfd23
                           00FD33   662 _P3IM1	=	0xfd33
                           00FD43   663 _P3WKUE	=	0xfd43
                           00FE13   664 _P3PU	=	0xfe13
                           00FE1B   665 _P3NCS	=	0xfe1b
                           00FE23   666 _P3SR	=	0xfe23
                           00FE2B   667 _P3DR	=	0xfe2b
                           00FE33   668 _P3IE	=	0xfe33
                           00FD05   669 _P5INTE	=	0xfd05
                           00FD15   670 _P5INTF	=	0xfd15
                           00FD25   671 _P5IM0	=	0xfd25
                           00FD35   672 _P5IM1	=	0xfd35
                           00FD45   673 _P5WKUE	=	0xfd45
                           00FE15   674 _P5PU	=	0xfe15
                           00FE1D   675 _P5NCS	=	0xfe1d
                           00FE25   676 _P5SR	=	0xfe25
                           00FE2D   677 _P5DR	=	0xfe2d
                           00FE35   678 _P5IE	=	0xfe35
                           00FD60   679 _PINIPL	=	0xfd60
                           00FD61   680 _PINIPH	=	0xfd61
                           00FE80   681 _I2CCFG	=	0xfe80
                           00FE81   682 _I2CMSCR	=	0xfe81
                           00FE82   683 _I2CMSST	=	0xfe82
                           00FE83   684 _I2CSLCR	=	0xfe83
                           00FE84   685 _I2CSLST	=	0xfe84
                           00FE85   686 _I2CSLADR	=	0xfe85
                           00FE86   687 _I2CTXD	=	0xfe86
                           00FE87   688 _I2CRXD	=	0xfe87
                           00FE88   689 _I2CMSAUX	=	0xfe88
                           00FE50   690 _LCMCFG	=	0xfe50
                           00FE51   691 _LCMCFG2	=	0xfe51
                           00FE52   692 _LCMCR	=	0xfe52
                           00FE53   693 _LCMSTA	=	0xfe53
                           00FE54   694 _LCMIDDATL	=	0xfe54
                           00FE55   695 _LCMIDDATH	=	0xfe55
                           00FE54   696 _LCMIDDAT	=	0xfe54
                           00FA70   697 _DMA_LCM_CFG	=	0xfa70
                           00FA71   698 _DMA_LCM_CR	=	0xfa71
                           00FA72   699 _DMA_LCM_STA	=	0xfa72
                           00FA73   700 _DMA_LCM_AMT	=	0xfa73
                           00FA74   701 _DMA_LCM_DONE	=	0xfa74
                           00FA75   702 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   703 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   704 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   705 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   706 _MD3	=	0xfcf0
                           00FCF1   707 _MD2	=	0xfcf1
                           00FCF2   708 _MD1	=	0xfcf2
                           00FCF3   709 _MD0	=	0xfcf3
                           00FCF4   710 _MD5	=	0xfcf4
                           00FCF5   711 _MD4	=	0xfcf5
                           00FCF6   712 _ARCON	=	0xfcf6
                           00FCF7   713 _OPCON	=	0xfcf7
                           00FE08   714 _SPFUNC	=	0xfe08
                           00FE09   715 _RSTFLAG	=	0xfe09
                           00FEB0   716 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   717 _PWMA_ENO	=	0xfeb1
                           00FEB2   718 _PWMA_PS	=	0xfeb2
                           00FEB3   719 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   720 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   721 _PWMB_ENO	=	0xfeb5
                           00FEB6   722 _PWMB_PS	=	0xfeb6
                           00FEB7   723 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   724 _PWMA_CR1	=	0xfec0
                           00FEC1   725 _PWMA_CR2	=	0xfec1
                           00FEC2   726 _PWMA_SMCR	=	0xfec2
                           00FEC3   727 _PWMA_ETR	=	0xfec3
                           00FEC4   728 _PWMA_IER	=	0xfec4
                           00FEC5   729 _PWMA_SR1	=	0xfec5
                           00FEC6   730 _PWMA_SR2	=	0xfec6
                           00FEC7   731 _PWMA_EGR	=	0xfec7
                           00FEC8   732 _PWMA_CCMR1	=	0xfec8
                           00FEC9   733 _PWMA_CCMR2	=	0xfec9
                           00FECA   734 _PWMA_CCMR3	=	0xfeca
                           00FECB   735 _PWMA_CCMR4	=	0xfecb
                           00FECC   736 _PWMA_CCER1	=	0xfecc
                           00FECD   737 _PWMA_CCER2	=	0xfecd
                           00FECE   738 _PWMA_CNTRH	=	0xfece
                           00FECF   739 _PWMA_CNTRL	=	0xfecf
                           00FED0   740 _PWMA_PSCRH	=	0xfed0
                           00FED1   741 _PWMA_PSCRL	=	0xfed1
                           00FED2   742 _PWMA_ARRH	=	0xfed2
                           00FED3   743 _PWMA_ARRL	=	0xfed3
                           00FED4   744 _PWMA_RCR	=	0xfed4
                           00FED5   745 _PWMA_CCR1H	=	0xfed5
                           00FED6   746 _PWMA_CCR1L	=	0xfed6
                           00FED7   747 _PWMA_CCR2H	=	0xfed7
                           00FED8   748 _PWMA_CCR2L	=	0xfed8
                           00FED9   749 _PWMA_CCR3H	=	0xfed9
                           00FEDA   750 _PWMA_CCR3L	=	0xfeda
                           00FEDB   751 _PWMA_CCR4H	=	0xfedb
                           00FEDC   752 _PWMA_CCR4L	=	0xfedc
                           00FEDD   753 _PWMA_BKR	=	0xfedd
                           00FEDE   754 _PWMA_DTR	=	0xfede
                           00FEDF   755 _PWMA_OISR	=	0xfedf
                           00FEE0   756 _PWMB_CR1	=	0xfee0
                           00FEE1   757 _PWMB_CR2	=	0xfee1
                           00FEE2   758 _PWMB_SMCR	=	0xfee2
                           00FEE3   759 _PWMB_ETR	=	0xfee3
                           00FEE4   760 _PWMB_IER	=	0xfee4
                           00FEE5   761 _PWMB_SR1	=	0xfee5
                           00FEE6   762 _PWMB_SR2	=	0xfee6
                           00FEE7   763 _PWMB_EGR	=	0xfee7
                           00FEE8   764 _PWMB_CCMR1	=	0xfee8
                           00FEE9   765 _PWMB_CCMR2	=	0xfee9
                           00FEEA   766 _PWMB_CCMR3	=	0xfeea
                           00FEEB   767 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   768 _PWMB_CCER1	=	0xfeec
                           00FEED   769 _PWMB_CCER2	=	0xfeed
                           00FEEE   770 _PWMB_CNTRH	=	0xfeee
                           00FEEF   771 _PWMB_CNTRL	=	0xfeef
                           00FEF0   772 _PWMB_PSCRH	=	0xfef0
                           00FEF1   773 _PWMB_PSCRL	=	0xfef1
                           00FEF2   774 _PWMB_ARRH	=	0xfef2
                           00FEF3   775 _PWMB_ARRL	=	0xfef3
                           00FEF4   776 _PWMB_RCR	=	0xfef4
                           00FEF5   777 _PWMB_CCR1H	=	0xfef5
                           00FEF6   778 _PWMB_CCR1L	=	0xfef6
                           00FEF7   779 _PWMB_CCR2H	=	0xfef7
                           00FEF8   780 _PWMB_CCR2L	=	0xfef8
                           00FEF9   781 _PWMB_CCR3H	=	0xfef9
                           00FEFA   782 _PWMB_CCR3L	=	0xfefa
                           00FEFB   783 _PWMB_CCR4H	=	0xfefb
                           00FEFC   784 _PWMB_CCR4L	=	0xfefc
                           00FEFD   785 _PWMB_BKR	=	0xfefd
                           00FEFE   786 _PWMB_DTR	=	0xfefe
                           00FEFF   787 _PWMB_OISR	=	0xfeff
                           00FE60   788 _RTCCR	=	0xfe60
                           00FE61   789 _RTCCFG	=	0xfe61
                           00FE62   790 _RTCIEN	=	0xfe62
                           00FE63   791 _RTCIF	=	0xfe63
                           00FE64   792 _ALAHOUR	=	0xfe64
                           00FE65   793 _ALAMIN	=	0xfe65
                           00FE66   794 _ALASEC	=	0xfe66
                           00FE67   795 _ALASSEC	=	0xfe67
                           00FE68   796 _INIYEAR	=	0xfe68
                           00FE69   797 _INIMONTH	=	0xfe69
                           00FE6A   798 _INIDAY	=	0xfe6a
                           00FE6B   799 _INIHOUR	=	0xfe6b
                           00FE6C   800 _INIMIN	=	0xfe6c
                           00FE6D   801 _INISEC	=	0xfe6d
                           00FE6E   802 _INISSEC	=	0xfe6e
                           00FE70   803 _YEAR	=	0xfe70
                           00FE71   804 _MONTH	=	0xfe71
                           00FE72   805 _DAY	=	0xfe72
                           00FE73   806 _HOUR	=	0xfe73
                           00FE74   807 _MIN	=	0xfe74
                           00FE75   808 _SEC	=	0xfe75
                           00FE76   809 _SSEC	=	0xfe76
                           00FA20   810 _DMA_SPI_CFG	=	0xfa20
                           00FA21   811 _DMA_SPI_CR	=	0xfa21
                           00FA22   812 _DMA_SPI_STA	=	0xfa22
                           00FA23   813 _DMA_SPI_AMT	=	0xfa23
                           00FA24   814 _DMA_SPI_DONE	=	0xfa24
                           00FA25   815 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   816 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   817 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   818 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   819 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   820 _CLKDIV	=	0xfe01
                           00FE02   821 _HIRCCR	=	0xfe02
                           00FE03   822 _XOSCCR	=	0xfe03
                           00FE04   823 _IRC32KCR	=	0xfe04
                           00FE00   824 _CKSEL	=	0xfe00
                           00FE05   825 _MCLKOCR	=	0xfe05
                           00FE06   826 _IRCDB	=	0xfe06
                           00FE07   827 _IRC48MCR	=	0xfe07
                           00FEA2   828 _TM2PS	=	0xfea2
                           00FEA3   829 _TM3PS	=	0xfea3
                           00FEA4   830 _TM4PS	=	0xfea4
                           00FA30   831 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   832 _DMA_UR1T_CR	=	0xfa31
                           00FA32   833 _DMA_UR1T_STA	=	0xfa32
                           00FA33   834 _DMA_URTX_AMT	=	0xfa33
                           00FA34   835 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   836 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   837 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   838 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   839 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   840 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   841 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   842 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   843 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   844 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   845 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   846 _DMA_UR2T_CR	=	0xfa31
                           00FA32   847 _DMA_UR2T_STA	=	0xfa32
                           00FA33   848 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   849 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   850 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   851 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   852 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   853 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   854 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   855 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   856 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   857 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   858 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   859 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   860 _DMA_UR3T_CR	=	0xfa31
                           00FA32   861 _DMA_UR3T_STA	=	0xfa32
                           00FA33   862 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   863 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   864 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   865 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   866 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   867 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   868 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   869 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   870 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   871 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   872 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   873 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   874 _DMA_UR4T_CR	=	0xfa31
                           00FA32   875 _DMA_UR4T_STA	=	0xfa32
                           00FA33   876 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   877 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   878 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   879 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   880 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   881 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   882 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   883 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   884 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   885 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   886 _DMA_UR4R_TXAL	=	0xfa3e
      00003B                        887 _uartGetCharacter_result_65536_74:
      00003B                        888 	.ds 1
      00003C                        889 _startTimer_PARM_2:
      00003C                        890 	.ds 4
      000040                        891 _startTimer_PARM_3:
      000040                        892 	.ds 1
      000041                        893 _startTimer_PARM_4:
      000041                        894 	.ds 1
      000042                        895 _startTimer_PARM_5:
      000042                        896 	.ds 1
      000043                        897 _startTimer_timer_65536_113:
      000043                        898 	.ds 1
      000044                        899 _startTimer_rc_65536_114:
      000044                        900 	.ds 1
      000045                        901 _startTimer_sysclkDiv1_65536_114:
      000045                        902 	.ds 1
      000046                        903 _startTimer_prescaler_131072_116:
      000046                        904 	.ds 2
                                    905 ;--------------------------------------------------------
                                    906 ; absolute external ram data
                                    907 ;--------------------------------------------------------
                                    908 	.area XABS    (ABS,XDATA)
                                    909 ;--------------------------------------------------------
                                    910 ; external initialized ram data
                                    911 ;--------------------------------------------------------
                                    912 	.area XISEG   (XDATA)
                                    913 	.area HOME    (CODE)
                                    914 	.area GSINIT0 (CODE)
                                    915 	.area GSINIT1 (CODE)
                                    916 	.area GSINIT2 (CODE)
                                    917 	.area GSINIT3 (CODE)
                                    918 	.area GSINIT4 (CODE)
                                    919 	.area GSINIT5 (CODE)
                                    920 	.area GSINIT  (CODE)
                                    921 	.area GSFINAL (CODE)
                                    922 	.area CSEG    (CODE)
                                    923 ;--------------------------------------------------------
                                    924 ; global & static initialisations
                                    925 ;--------------------------------------------------------
                                    926 	.area HOME    (CODE)
                                    927 	.area GSINIT  (CODE)
                                    928 	.area GSFINAL (CODE)
                                    929 	.area GSINIT  (CODE)
                                    930 ;--------------------------------------------------------
                                    931 ; Home
                                    932 ;--------------------------------------------------------
                                    933 	.area HOME    (CODE)
                                    934 	.area HOME    (CODE)
                                    935 ;--------------------------------------------------------
                                    936 ; code
                                    937 ;--------------------------------------------------------
                                    938 	.area CSEG    (CODE)
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'startTimer'
                                    941 ;------------------------------------------------------------
                                    942 ;sloc0                     Allocated with name '_startTimer_sloc0_1_0'
                                    943 ;sysclkDivisor             Allocated with name '_startTimer_PARM_2'
                                    944 ;enableOutput              Allocated with name '_startTimer_PARM_3'
                                    945 ;enableInterrupt           Allocated with name '_startTimer_PARM_4'
                                    946 ;timerControl              Allocated with name '_startTimer_PARM_5'
                                    947 ;timer                     Allocated with name '_startTimer_timer_65536_113'
                                    948 ;rc                        Allocated with name '_startTimer_rc_65536_114'
                                    949 ;sysclkDiv1                Allocated with name '_startTimer_sysclkDiv1_65536_114'
                                    950 ;prescaler                 Allocated with name '_startTimer_prescaler_131072_116'
                                    951 ;reloadValue               Allocated with name '_startTimer_reloadValue_131072_125'
                                    952 ;------------------------------------------------------------
                                    953 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:54: TimerStatus startTimer(Timer timer, uint32_t sysclkDivisor, OutputEnable enableOutput, InterruptEnable enableInterrupt, CounterControl timerControl) {
                                    954 ;	-----------------------------------------
                                    955 ;	 function startTimer
                                    956 ;	-----------------------------------------
      0006FF                        957 _startTimer:
                           000007   958 	ar7 = 0x07
                           000006   959 	ar6 = 0x06
                           000005   960 	ar5 = 0x05
                           000004   961 	ar4 = 0x04
                           000003   962 	ar3 = 0x03
                           000002   963 	ar2 = 0x02
                           000001   964 	ar1 = 0x01
                           000000   965 	ar0 = 0x00
      0006FF E5 82            [12]  966 	mov	a,dpl
      000701 90 00 43         [24]  967 	mov	dptr,#_startTimer_timer_65536_113
      000704 F0               [24]  968 	movx	@dptr,a
                                    969 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:55: TimerStatus rc = TIMER_FREQUENCY_OK;
      000705 90 00 44         [24]  970 	mov	dptr,#_startTimer_rc_65536_114
      000708 E4               [12]  971 	clr	a
      000709 F0               [24]  972 	movx	@dptr,a
                                    973 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:56: uint8_t sysclkDiv1 = 1;
      00070A 90 00 45         [24]  974 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      00070D 04               [12]  975 	inc	a
      00070E F0               [24]  976 	movx	@dptr,a
                                    977 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:58: if (sysclkDivisor == 0) {
      00070F 90 00 3C         [24]  978 	mov	dptr,#_startTimer_PARM_2
      000712 E0               [24]  979 	movx	a,@dptr
      000713 FC               [12]  980 	mov	r4,a
      000714 A3               [24]  981 	inc	dptr
      000715 E0               [24]  982 	movx	a,@dptr
      000716 FD               [12]  983 	mov	r5,a
      000717 A3               [24]  984 	inc	dptr
      000718 E0               [24]  985 	movx	a,@dptr
      000719 FE               [12]  986 	mov	r6,a
      00071A A3               [24]  987 	inc	dptr
      00071B E0               [24]  988 	movx	a,@dptr
      00071C FF               [12]  989 	mov	r7,a
      00071D EC               [12]  990 	mov	a,r4
      00071E 4D               [12]  991 	orl	a,r5
      00071F 4E               [12]  992 	orl	a,r6
      000720 4F               [12]  993 	orl	a,r7
      000721 70 09            [24]  994 	jnz	00121$
                                    995 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:60: rc = TIMER_FREQUENCY_TOO_HIGH;
      000723 90 00 44         [24]  996 	mov	dptr,#_startTimer_rc_65536_114
      000726 74 01            [12]  997 	mov	a,#0x01
      000728 F0               [24]  998 	movx	@dptr,a
      000729 02 08 F8         [24]  999 	ljmp	00122$
      00072C                       1000 00121$:
                                   1001 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:63: uint16_t prescaler = 0;
      00072C 90 00 46         [24] 1002 	mov	dptr,#_startTimer_prescaler_131072_116
      00072F E4               [12] 1003 	clr	a
      000730 F0               [24] 1004 	movx	@dptr,a
      000731 A3               [24] 1005 	inc	dptr
      000732 F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:65: switch (timer) {
      000733 90 00 43         [24] 1008 	mov	dptr,#_startTimer_timer_65536_113
      000736 E0               [24] 1009 	movx	a,@dptr
      000737 FB               [12] 1010 	mov	r3,a
      000738 60 03            [24] 1011 	jz	00102$
      00073A BB 01 58         [24] 1012 	cjne	r3,#0x01,00108$
                                   1013 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:68: case TIMER1:
      00073D                       1014 00102$:
                                   1015 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:72: if (sysclkDivisor > COUNTER_MAX) {
      00073D C3               [12] 1016 	clr	c
      00073E E4               [12] 1017 	clr	a
      00073F 9C               [12] 1018 	subb	a,r4
      000740 E4               [12] 1019 	clr	a
      000741 9D               [12] 1020 	subb	a,r5
      000742 74 01            [12] 1021 	mov	a,#0x01
      000744 9E               [12] 1022 	subb	a,r6
      000745 E4               [12] 1023 	clr	a
      000746 9F               [12] 1024 	subb	a,r7
      000747 40 03            [24] 1025 	jc	00279$
      000749 02 08 B9         [24] 1026 	ljmp	00115$
      00074C                       1027 00279$:
                                   1028 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:73: if (sysclkDivisor <= (COUNTER_MAX * 12UL)) {
      00074C C3               [12] 1029 	clr	c
      00074D E4               [12] 1030 	clr	a
      00074E 9C               [12] 1031 	subb	a,r4
      00074F E4               [12] 1032 	clr	a
      000750 9D               [12] 1033 	subb	a,r5
      000751 74 0C            [12] 1034 	mov	a,#0x0c
      000753 9E               [12] 1035 	subb	a,r6
      000754 E4               [12] 1036 	clr	a
      000755 9F               [12] 1037 	subb	a,r7
      000756 40 34            [24] 1038 	jc	00104$
                                   1039 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:74: sysclkDiv1 = 0;
      000758 90 00 45         [24] 1040 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      00075B E4               [12] 1041 	clr	a
      00075C F0               [24] 1042 	movx	@dptr,a
                                   1043 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:75: sysclkDivisor /= 12;
      00075D 90 01 07         [24] 1044 	mov	dptr,#__divulong_PARM_2
      000760 74 0C            [12] 1045 	mov	a,#0x0c
      000762 F0               [24] 1046 	movx	@dptr,a
      000763 E4               [12] 1047 	clr	a
      000764 A3               [24] 1048 	inc	dptr
      000765 F0               [24] 1049 	movx	@dptr,a
      000766 A3               [24] 1050 	inc	dptr
      000767 F0               [24] 1051 	movx	@dptr,a
      000768 A3               [24] 1052 	inc	dptr
      000769 F0               [24] 1053 	movx	@dptr,a
      00076A 8C 82            [24] 1054 	mov	dpl,r4
      00076C 8D 83            [24] 1055 	mov	dph,r5
      00076E 8E F0            [24] 1056 	mov	b,r6
      000770 EF               [12] 1057 	mov	a,r7
      000771 12 30 51         [24] 1058 	lcall	__divulong
      000774 A8 82            [24] 1059 	mov	r0,dpl
      000776 A9 83            [24] 1060 	mov	r1,dph
      000778 AA F0            [24] 1061 	mov	r2,b
      00077A FB               [12] 1062 	mov	r3,a
      00077B 90 00 3C         [24] 1063 	mov	dptr,#_startTimer_PARM_2
      00077E E8               [12] 1064 	mov	a,r0
      00077F F0               [24] 1065 	movx	@dptr,a
      000780 E9               [12] 1066 	mov	a,r1
      000781 A3               [24] 1067 	inc	dptr
      000782 F0               [24] 1068 	movx	@dptr,a
      000783 EA               [12] 1069 	mov	a,r2
      000784 A3               [24] 1070 	inc	dptr
      000785 F0               [24] 1071 	movx	@dptr,a
      000786 EB               [12] 1072 	mov	a,r3
      000787 A3               [24] 1073 	inc	dptr
      000788 F0               [24] 1074 	movx	@dptr,a
      000789 02 08 B9         [24] 1075 	ljmp	00115$
      00078C                       1076 00104$:
                                   1077 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:78: rc = TIMER_FREQUENCY_TOO_LOW;
      00078C 90 00 44         [24] 1078 	mov	dptr,#_startTimer_rc_65536_114
      00078F 74 02            [12] 1079 	mov	a,#0x02
      000791 F0               [24] 1080 	movx	@dptr,a
                                   1081 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:83: break;
      000792 02 08 B9         [24] 1082 	ljmp	00115$
                                   1083 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:85: default:
      000795                       1084 00108$:
                                   1085 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:86: if (sysclkDivisor > COUNTER_MAX) {
      000795 C3               [12] 1086 	clr	c
      000796 E4               [12] 1087 	clr	a
      000797 9C               [12] 1088 	subb	a,r4
      000798 E4               [12] 1089 	clr	a
      000799 9D               [12] 1090 	subb	a,r5
      00079A 74 01            [12] 1091 	mov	a,#0x01
      00079C 9E               [12] 1092 	subb	a,r6
      00079D E4               [12] 1093 	clr	a
      00079E 9F               [12] 1094 	subb	a,r7
      00079F 40 03            [24] 1095 	jc	00281$
      0007A1 02 08 B9         [24] 1096 	ljmp	00115$
      0007A4                       1097 00281$:
                                   1098 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:87: prescaler = sysclkDivisor / COUNTER_MAX;
      0007A4 8E 00            [24] 1099 	mov	ar0,r6
      0007A6 8F 01            [24] 1100 	mov	ar1,r7
      0007A8 90 00 46         [24] 1101 	mov	dptr,#_startTimer_prescaler_131072_116
      0007AB E8               [12] 1102 	mov	a,r0
      0007AC F0               [24] 1103 	movx	@dptr,a
      0007AD E9               [12] 1104 	mov	a,r1
      0007AE A3               [24] 1105 	inc	dptr
      0007AF F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:89: if (prescaler > PRESCALER_MAX) {
      0007B0 C3               [12] 1108 	clr	c
      0007B1 E4               [12] 1109 	clr	a
      0007B2 98               [12] 1110 	subb	a,r0
      0007B3 74 01            [12] 1111 	mov	a,#0x01
      0007B5 99               [12] 1112 	subb	a,r1
      0007B6 50 5D            [24] 1113 	jnc	00110$
                                   1114 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:90: sysclkDiv1 = 0;
      0007B8 90 00 45         [24] 1115 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      0007BB E4               [12] 1116 	clr	a
      0007BC F0               [24] 1117 	movx	@dptr,a
                                   1118 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:91: prescaler /= 12;
      0007BD 90 00 F7         [24] 1119 	mov	dptr,#__divuint_PARM_2
      0007C0 74 0C            [12] 1120 	mov	a,#0x0c
      0007C2 F0               [24] 1121 	movx	@dptr,a
      0007C3 E4               [12] 1122 	clr	a
      0007C4 A3               [24] 1123 	inc	dptr
      0007C5 F0               [24] 1124 	movx	@dptr,a
      0007C6 88 82            [24] 1125 	mov	dpl,r0
      0007C8 89 83            [24] 1126 	mov	dph,r1
      0007CA C0 07            [24] 1127 	push	ar7
      0007CC C0 06            [24] 1128 	push	ar6
      0007CE C0 05            [24] 1129 	push	ar5
      0007D0 C0 04            [24] 1130 	push	ar4
      0007D2 12 2E 84         [24] 1131 	lcall	__divuint
      0007D5 AA 82            [24] 1132 	mov	r2,dpl
      0007D7 AB 83            [24] 1133 	mov	r3,dph
      0007D9 D0 04            [24] 1134 	pop	ar4
      0007DB D0 05            [24] 1135 	pop	ar5
      0007DD D0 06            [24] 1136 	pop	ar6
      0007DF D0 07            [24] 1137 	pop	ar7
      0007E1 90 00 46         [24] 1138 	mov	dptr,#_startTimer_prescaler_131072_116
      0007E4 EA               [12] 1139 	mov	a,r2
      0007E5 F0               [24] 1140 	movx	@dptr,a
      0007E6 EB               [12] 1141 	mov	a,r3
      0007E7 A3               [24] 1142 	inc	dptr
      0007E8 F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:92: sysclkDivisor /= 12;
      0007E9 90 01 07         [24] 1145 	mov	dptr,#__divulong_PARM_2
      0007EC 74 0C            [12] 1146 	mov	a,#0x0c
      0007EE F0               [24] 1147 	movx	@dptr,a
      0007EF E4               [12] 1148 	clr	a
      0007F0 A3               [24] 1149 	inc	dptr
      0007F1 F0               [24] 1150 	movx	@dptr,a
      0007F2 A3               [24] 1151 	inc	dptr
      0007F3 F0               [24] 1152 	movx	@dptr,a
      0007F4 A3               [24] 1153 	inc	dptr
      0007F5 F0               [24] 1154 	movx	@dptr,a
      0007F6 8C 82            [24] 1155 	mov	dpl,r4
      0007F8 8D 83            [24] 1156 	mov	dph,r5
      0007FA 8E F0            [24] 1157 	mov	b,r6
      0007FC EF               [12] 1158 	mov	a,r7
      0007FD 12 30 51         [24] 1159 	lcall	__divulong
      000800 AC 82            [24] 1160 	mov	r4,dpl
      000802 AD 83            [24] 1161 	mov	r5,dph
      000804 AE F0            [24] 1162 	mov	r6,b
      000806 FF               [12] 1163 	mov	r7,a
      000807 90 00 3C         [24] 1164 	mov	dptr,#_startTimer_PARM_2
      00080A EC               [12] 1165 	mov	a,r4
      00080B F0               [24] 1166 	movx	@dptr,a
      00080C ED               [12] 1167 	mov	a,r5
      00080D A3               [24] 1168 	inc	dptr
      00080E F0               [24] 1169 	movx	@dptr,a
      00080F EE               [12] 1170 	mov	a,r6
      000810 A3               [24] 1171 	inc	dptr
      000811 F0               [24] 1172 	movx	@dptr,a
      000812 EF               [12] 1173 	mov	a,r7
      000813 A3               [24] 1174 	inc	dptr
      000814 F0               [24] 1175 	movx	@dptr,a
      000815                       1176 00110$:
                                   1177 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:96: if (sysclkDivisor % prescaler) {
      000815 90 00 46         [24] 1178 	mov	dptr,#_startTimer_prescaler_131072_116
      000818 E0               [24] 1179 	movx	a,@dptr
      000819 F5 10            [12] 1180 	mov	_startTimer_sloc0_1_0,a
      00081B A3               [24] 1181 	inc	dptr
      00081C E0               [24] 1182 	movx	a,@dptr
      00081D F5 11            [12] 1183 	mov	(_startTimer_sloc0_1_0 + 1),a
      00081F 90 00 3C         [24] 1184 	mov	dptr,#_startTimer_PARM_2
      000822 E0               [24] 1185 	movx	a,@dptr
      000823 FA               [12] 1186 	mov	r2,a
      000824 A3               [24] 1187 	inc	dptr
      000825 E0               [24] 1188 	movx	a,@dptr
      000826 FB               [12] 1189 	mov	r3,a
      000827 A3               [24] 1190 	inc	dptr
      000828 E0               [24] 1191 	movx	a,@dptr
      000829 FC               [12] 1192 	mov	r4,a
      00082A A3               [24] 1193 	inc	dptr
      00082B E0               [24] 1194 	movx	a,@dptr
      00082C FD               [12] 1195 	mov	r5,a
      00082D 90 00 FE         [24] 1196 	mov	dptr,#__modulong_PARM_2
      000830 E5 10            [12] 1197 	mov	a,_startTimer_sloc0_1_0
      000832 F0               [24] 1198 	movx	@dptr,a
      000833 E5 11            [12] 1199 	mov	a,(_startTimer_sloc0_1_0 + 1)
      000835 A3               [24] 1200 	inc	dptr
      000836 F0               [24] 1201 	movx	@dptr,a
      000837 E4               [12] 1202 	clr	a
      000838 A3               [24] 1203 	inc	dptr
      000839 F0               [24] 1204 	movx	@dptr,a
      00083A A3               [24] 1205 	inc	dptr
      00083B F0               [24] 1206 	movx	@dptr,a
      00083C 8A 82            [24] 1207 	mov	dpl,r2
      00083E 8B 83            [24] 1208 	mov	dph,r3
      000840 8C F0            [24] 1209 	mov	b,r4
      000842 ED               [12] 1210 	mov	a,r5
      000843 C0 05            [24] 1211 	push	ar5
      000845 C0 04            [24] 1212 	push	ar4
      000847 C0 03            [24] 1213 	push	ar3
      000849 C0 02            [24] 1214 	push	ar2
      00084B 12 2F 11         [24] 1215 	lcall	__modulong
      00084E A8 82            [24] 1216 	mov	r0,dpl
      000850 A9 83            [24] 1217 	mov	r1,dph
      000852 AE F0            [24] 1218 	mov	r6,b
      000854 FF               [12] 1219 	mov	r7,a
      000855 D0 02            [24] 1220 	pop	ar2
      000857 D0 03            [24] 1221 	pop	ar3
      000859 D0 04            [24] 1222 	pop	ar4
      00085B D0 05            [24] 1223 	pop	ar5
      00085D E8               [12] 1224 	mov	a,r0
      00085E 49               [12] 1225 	orl	a,r1
      00085F 4E               [12] 1226 	orl	a,r6
      000860 4F               [12] 1227 	orl	a,r7
      000861 60 0D            [24] 1228 	jz	00112$
                                   1229 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:97: prescaler++;
      000863 90 00 46         [24] 1230 	mov	dptr,#_startTimer_prescaler_131072_116
      000866 74 01            [12] 1231 	mov	a,#0x01
      000868 25 10            [12] 1232 	add	a,_startTimer_sloc0_1_0
      00086A F0               [24] 1233 	movx	@dptr,a
      00086B E4               [12] 1234 	clr	a
      00086C 35 11            [12] 1235 	addc	a,(_startTimer_sloc0_1_0 + 1)
      00086E A3               [24] 1236 	inc	dptr
      00086F F0               [24] 1237 	movx	@dptr,a
      000870                       1238 00112$:
                                   1239 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:100: sysclkDivisor /= prescaler;
      000870 90 00 46         [24] 1240 	mov	dptr,#_startTimer_prescaler_131072_116
      000873 E0               [24] 1241 	movx	a,@dptr
      000874 FE               [12] 1242 	mov	r6,a
      000875 A3               [24] 1243 	inc	dptr
      000876 E0               [24] 1244 	movx	a,@dptr
      000877 FF               [12] 1245 	mov	r7,a
      000878 90 01 07         [24] 1246 	mov	dptr,#__divulong_PARM_2
      00087B EE               [12] 1247 	mov	a,r6
      00087C F0               [24] 1248 	movx	@dptr,a
      00087D EF               [12] 1249 	mov	a,r7
      00087E A3               [24] 1250 	inc	dptr
      00087F F0               [24] 1251 	movx	@dptr,a
      000880 E4               [12] 1252 	clr	a
      000881 A3               [24] 1253 	inc	dptr
      000882 F0               [24] 1254 	movx	@dptr,a
      000883 A3               [24] 1255 	inc	dptr
      000884 F0               [24] 1256 	movx	@dptr,a
      000885 8A 82            [24] 1257 	mov	dpl,r2
      000887 8B 83            [24] 1258 	mov	dph,r3
      000889 8C F0            [24] 1259 	mov	b,r4
      00088B ED               [12] 1260 	mov	a,r5
      00088C C0 07            [24] 1261 	push	ar7
      00088E C0 06            [24] 1262 	push	ar6
      000890 12 30 51         [24] 1263 	lcall	__divulong
      000893 AA 82            [24] 1264 	mov	r2,dpl
      000895 AB 83            [24] 1265 	mov	r3,dph
      000897 AC F0            [24] 1266 	mov	r4,b
      000899 FD               [12] 1267 	mov	r5,a
      00089A D0 06            [24] 1268 	pop	ar6
      00089C D0 07            [24] 1269 	pop	ar7
      00089E 90 00 3C         [24] 1270 	mov	dptr,#_startTimer_PARM_2
      0008A1 EA               [12] 1271 	mov	a,r2
      0008A2 F0               [24] 1272 	movx	@dptr,a
      0008A3 EB               [12] 1273 	mov	a,r3
      0008A4 A3               [24] 1274 	inc	dptr
      0008A5 F0               [24] 1275 	movx	@dptr,a
      0008A6 EC               [12] 1276 	mov	a,r4
      0008A7 A3               [24] 1277 	inc	dptr
      0008A8 F0               [24] 1278 	movx	@dptr,a
      0008A9 ED               [12] 1279 	mov	a,r5
      0008AA A3               [24] 1280 	inc	dptr
      0008AB F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:103: prescaler--;
      0008AC 1E               [12] 1283 	dec	r6
      0008AD BE FF 01         [24] 1284 	cjne	r6,#0xff,00284$
      0008B0 1F               [12] 1285 	dec	r7
      0008B1                       1286 00284$:
      0008B1 90 00 46         [24] 1287 	mov	dptr,#_startTimer_prescaler_131072_116
      0008B4 EE               [12] 1288 	mov	a,r6
      0008B5 F0               [24] 1289 	movx	@dptr,a
      0008B6 EF               [12] 1290 	mov	a,r7
      0008B7 A3               [24] 1291 	inc	dptr
      0008B8 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:106: }
      0008B9                       1294 00115$:
                                   1295 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:108: switch (timer) {
      0008B9 90 00 43         [24] 1296 	mov	dptr,#_startTimer_timer_65536_113
      0008BC E0               [24] 1297 	movx	a,@dptr
      0008BD FF               [12] 1298 	mov	r7,a
      0008BE BF 02 02         [24] 1299 	cjne	r7,#0x02,00285$
      0008C1 80 0A            [24] 1300 	sjmp	00116$
      0008C3                       1301 00285$:
      0008C3 BF 03 02         [24] 1302 	cjne	r7,#0x03,00286$
      0008C6 80 14            [24] 1303 	sjmp	00117$
      0008C8                       1304 00286$:
                                   1305 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:110: case TIMER2:
      0008C8 BF 04 2D         [24] 1306 	cjne	r7,#0x04,00122$
      0008CB 80 1E            [24] 1307 	sjmp	00118$
      0008CD                       1308 00116$:
                                   1309 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:111: TM2PS = prescaler;
      0008CD 90 00 46         [24] 1310 	mov	dptr,#_startTimer_prescaler_131072_116
      0008D0 E0               [24] 1311 	movx	a,@dptr
      0008D1 FE               [12] 1312 	mov	r6,a
      0008D2 A3               [24] 1313 	inc	dptr
      0008D3 E0               [24] 1314 	movx	a,@dptr
      0008D4 FF               [12] 1315 	mov	r7,a
      0008D5 90 FE A2         [24] 1316 	mov	dptr,#_TM2PS
      0008D8 EE               [12] 1317 	mov	a,r6
      0008D9 F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:112: break;
                                   1320 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:116: case TIMER3:
      0008DA 80 1C            [24] 1321 	sjmp	00122$
      0008DC                       1322 00117$:
                                   1323 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:117: TM3PS = prescaler;
      0008DC 90 00 46         [24] 1324 	mov	dptr,#_startTimer_prescaler_131072_116
      0008DF E0               [24] 1325 	movx	a,@dptr
      0008E0 FE               [12] 1326 	mov	r6,a
      0008E1 A3               [24] 1327 	inc	dptr
      0008E2 E0               [24] 1328 	movx	a,@dptr
      0008E3 FF               [12] 1329 	mov	r7,a
      0008E4 90 FE A3         [24] 1330 	mov	dptr,#_TM3PS
      0008E7 EE               [12] 1331 	mov	a,r6
      0008E8 F0               [24] 1332 	movx	@dptr,a
                                   1333 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:118: break;
                                   1334 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:120: case TIMER4:
      0008E9 80 0D            [24] 1335 	sjmp	00122$
      0008EB                       1336 00118$:
                                   1337 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:121: TM4PS = prescaler;
      0008EB 90 00 46         [24] 1338 	mov	dptr,#_startTimer_prescaler_131072_116
      0008EE E0               [24] 1339 	movx	a,@dptr
      0008EF FE               [12] 1340 	mov	r6,a
      0008F0 A3               [24] 1341 	inc	dptr
      0008F1 E0               [24] 1342 	movx	a,@dptr
      0008F2 FF               [12] 1343 	mov	r7,a
      0008F3 90 FE A4         [24] 1344 	mov	dptr,#_TM4PS
      0008F6 EE               [12] 1345 	mov	a,r6
      0008F7 F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:130: }
      0008F8                       1348 00122$:
                                   1349 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:134: if (rc == TIMER_FREQUENCY_OK) {
      0008F8 90 00 44         [24] 1350 	mov	dptr,#_startTimer_rc_65536_114
      0008FB E0               [24] 1351 	movx	a,@dptr
      0008FC 60 03            [24] 1352 	jz	00288$
      0008FE 02 0A B1         [24] 1353 	ljmp	00160$
      000901                       1354 00288$:
                                   1355 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:135: uint16_t reloadValue = (uint16_t) (COUNTER_MAX - sysclkDivisor);
      000901 90 00 3C         [24] 1356 	mov	dptr,#_startTimer_PARM_2
      000904 E0               [24] 1357 	movx	a,@dptr
      000905 FC               [12] 1358 	mov	r4,a
      000906 A3               [24] 1359 	inc	dptr
      000907 E0               [24] 1360 	movx	a,@dptr
      000908 FD               [12] 1361 	mov	r5,a
      000909 A3               [24] 1362 	inc	dptr
      00090A E0               [24] 1363 	movx	a,@dptr
      00090B A3               [24] 1364 	inc	dptr
      00090C E0               [24] 1365 	movx	a,@dptr
      00090D C3               [12] 1366 	clr	c
      00090E E4               [12] 1367 	clr	a
      00090F 9C               [12] 1368 	subb	a,r4
      000910 FE               [12] 1369 	mov	r6,a
      000911 E4               [12] 1370 	clr	a
      000912 9D               [12] 1371 	subb	a,r5
      000913 FF               [12] 1372 	mov	r7,a
                                   1373 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:137: switch (timer) {
      000914 90 00 43         [24] 1374 	mov	dptr,#_startTimer_timer_65536_113
      000917 E0               [24] 1375 	movx	a,@dptr
      000918 FD               [12] 1376 	mov  r5,a
      000919 24 FB            [12] 1377 	add	a,#0xff - 0x04
      00091B 50 03            [24] 1378 	jnc	00289$
      00091D 02 0A B1         [24] 1379 	ljmp	00160$
      000920                       1380 00289$:
      000920 ED               [12] 1381 	mov	a,r5
      000921 2D               [12] 1382 	add	a,r5
      000922 2D               [12] 1383 	add	a,r5
      000923 90 09 27         [24] 1384 	mov	dptr,#00290$
      000926 73               [24] 1385 	jmp	@a+dptr
      000927                       1386 00290$:
      000927 02 09 36         [24] 1387 	ljmp	00123$
      00092A 02 09 8A         [24] 1388 	ljmp	00130$
      00092D 02 09 E3         [24] 1389 	ljmp	00137$
      000930 02 0A 29         [24] 1390 	ljmp	00144$
      000933 02 0A 6E         [24] 1391 	ljmp	00151$
                                   1392 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:138: case TIMER0:
      000936                       1393 00123$:
                                   1394 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:141: AUXR = (AUXR & ~M_T0x12) | ((sysclkDiv1 << P_T0x12) & M_T0x12);
      000936 74 7F            [12] 1395 	mov	a,#0x7f
      000938 55 8E            [12] 1396 	anl	a,_AUXR
      00093A FD               [12] 1397 	mov	r5,a
      00093B 90 00 45         [24] 1398 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      00093E E0               [24] 1399 	movx	a,@dptr
      00093F 03               [12] 1400 	rr	a
      000940 54 80            [12] 1401 	anl	a,#0x80
      000942 FC               [12] 1402 	mov	r4,a
      000943 74 80            [12] 1403 	mov	a,#0x80
      000945 5C               [12] 1404 	anl	a,r4
      000946 4D               [12] 1405 	orl	a,r5
      000947 F5 8E            [12] 1406 	mov	_AUXR,a
                                   1407 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:145: TMOD &= 0xf0;
      000949 53 89 F0         [24] 1408 	anl	_TMOD,#0xf0
                                   1409 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:148: TMOD = (TMOD & ~M_T0_GATE) | ((timerControl << P_T0_GATE) & M_T0_GATE);
      00094C 74 F7            [12] 1410 	mov	a,#0xf7
      00094E 55 89            [12] 1411 	anl	a,_TMOD
      000950 FD               [12] 1412 	mov	r5,a
      000951 90 00 42         [24] 1413 	mov	dptr,#_startTimer_PARM_5
      000954 E0               [24] 1414 	movx	a,@dptr
      000955 C4               [12] 1415 	swap	a
      000956 03               [12] 1416 	rr	a
      000957 54 F8            [12] 1417 	anl	a,#0xf8
      000959 FC               [12] 1418 	mov	r4,a
      00095A 74 08            [12] 1419 	mov	a,#0x08
      00095C 5C               [12] 1420 	anl	a,r4
      00095D 4D               [12] 1421 	orl	a,r5
      00095E F5 89            [12] 1422 	mov	_TMOD,a
                                   1423 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:162: if (enableOutput == ENABLE_OUTPUT) {
      000960 90 00 40         [24] 1424 	mov	dptr,#_startTimer_PARM_3
      000963 E0               [24] 1425 	movx	a,@dptr
      000964 FD               [12] 1426 	mov	r5,a
      000965 BD 01 05         [24] 1427 	cjne	r5,#0x01,00125$
                                   1428 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:163: INT_CLKO |= M_T0CLKO;
      000968 43 8F 01         [24] 1429 	orl	_INT_CLKO,#0x01
      00096B 80 03            [24] 1430 	sjmp	00126$
      00096D                       1431 00125$:
                                   1432 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:165: INT_CLKO &= ~M_T0CLKO;
      00096D 53 8F FE         [24] 1433 	anl	_INT_CLKO,#0xfe
      000970                       1434 00126$:
                                   1435 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:168: T0 = reloadValue;
      000970 8E 8A            [24] 1436 	mov	((_T0 >> 0) & 0xFF),r6
      000972 8F 8C            [24] 1437 	mov	((_T0 >> 8) & 0xFF),r7
                                   1438 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:171: if (enableInterrupt == ENABLE_INTERRUPT) {
      000974 90 00 41         [24] 1439 	mov	dptr,#_startTimer_PARM_4
      000977 E0               [24] 1440 	movx	a,@dptr
      000978 FD               [12] 1441 	mov	r5,a
      000979 BD 01 05         [24] 1442 	cjne	r5,#0x01,00128$
                                   1443 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:172: IE1 |= M_T0IE;
      00097C 43 A8 02         [24] 1444 	orl	_IE1,#0x02
      00097F 80 03            [24] 1445 	sjmp	00129$
      000981                       1446 00128$:
                                   1447 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:174: IE1 &= ~M_T0IE;
      000981 53 A8 FD         [24] 1448 	anl	_IE1,#0xfd
      000984                       1449 00129$:
                                   1450 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:178: TCON |= M_T0RUN;
      000984 43 88 10         [24] 1451 	orl	_TCON,#0x10
                                   1452 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:179: break;
      000987 02 0A B1         [24] 1453 	ljmp	00160$
                                   1454 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:182: case TIMER1:
      00098A                       1455 00130$:
                                   1456 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:197: TMOD &= 0x0f;
      00098A 53 89 0F         [24] 1457 	anl	_TMOD,#0x0f
                                   1458 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:200: if (enableOutput == ENABLE_OUTPUT) {
      00098D 90 00 40         [24] 1459 	mov	dptr,#_startTimer_PARM_3
      000990 E0               [24] 1460 	movx	a,@dptr
      000991 FD               [12] 1461 	mov	r5,a
      000992 BD 01 05         [24] 1462 	cjne	r5,#0x01,00132$
                                   1463 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:201: INT_CLKO |= M_T1CLKO;
      000995 43 8F 02         [24] 1464 	orl	_INT_CLKO,#0x02
      000998 80 03            [24] 1465 	sjmp	00133$
      00099A                       1466 00132$:
                                   1467 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:203: INT_CLKO &= ~M_T1CLKO;
      00099A 53 8F FD         [24] 1468 	anl	_INT_CLKO,#0xfd
      00099D                       1469 00133$:
                                   1470 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:208: T1 = reloadValue;
      00099D 8E 8B            [24] 1471 	mov	((_T1 >> 0) & 0xFF),r6
      00099F 8F 8D            [24] 1472 	mov	((_T1 >> 8) & 0xFF),r7
                                   1473 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:212: TMOD = (TMOD & ~M_T1_GATE) | ((timerControl << P_T1_GATE) & M_T1_GATE);
      0009A1 74 7F            [12] 1474 	mov	a,#0x7f
      0009A3 55 89            [12] 1475 	anl	a,_TMOD
      0009A5 FD               [12] 1476 	mov	r5,a
      0009A6 90 00 42         [24] 1477 	mov	dptr,#_startTimer_PARM_5
      0009A9 E0               [24] 1478 	movx	a,@dptr
      0009AA 03               [12] 1479 	rr	a
      0009AB 54 80            [12] 1480 	anl	a,#0x80
      0009AD FC               [12] 1481 	mov	r4,a
      0009AE 74 80            [12] 1482 	mov	a,#0x80
      0009B0 5C               [12] 1483 	anl	a,r4
      0009B1 4D               [12] 1484 	orl	a,r5
      0009B2 F5 89            [12] 1485 	mov	_TMOD,a
                                   1486 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:216: AUXR = (sysclkDiv1) ? (AUXR | M_T1x12) : (AUXR & ~M_T1x12);
      0009B4 90 00 45         [24] 1487 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      0009B7 E0               [24] 1488 	movx	a,@dptr
      0009B8 60 09            [24] 1489 	jz	00163$
      0009BA AC 8E            [24] 1490 	mov	r4,_AUXR
      0009BC 7D 00            [12] 1491 	mov	r5,#0x00
      0009BE 43 04 40         [24] 1492 	orl	ar4,#0x40
      0009C1 80 08            [24] 1493 	sjmp	00164$
      0009C3                       1494 00163$:
      0009C3 74 BF            [12] 1495 	mov	a,#0xbf
      0009C5 55 8E            [12] 1496 	anl	a,_AUXR
      0009C7 FB               [12] 1497 	mov	r3,a
      0009C8 FC               [12] 1498 	mov	r4,a
      0009C9 7D 00            [12] 1499 	mov	r5,#0x00
      0009CB                       1500 00164$:
      0009CB 8C 8E            [24] 1501 	mov	_AUXR,r4
                                   1502 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:219: if (enableInterrupt == ENABLE_INTERRUPT) {
      0009CD 90 00 41         [24] 1503 	mov	dptr,#_startTimer_PARM_4
      0009D0 E0               [24] 1504 	movx	a,@dptr
      0009D1 FD               [12] 1505 	mov	r5,a
      0009D2 BD 01 05         [24] 1506 	cjne	r5,#0x01,00135$
                                   1507 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:220: IE1 |= M_T1IE;
      0009D5 43 A8 08         [24] 1508 	orl	_IE1,#0x08
      0009D8 80 03            [24] 1509 	sjmp	00136$
      0009DA                       1510 00135$:
                                   1511 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:222: IE1 &= ~M_T1IE;
      0009DA 53 A8 F7         [24] 1512 	anl	_IE1,#0xf7
      0009DD                       1513 00136$:
                                   1514 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:226: TCON |= M_T1RUN;
      0009DD 43 88 40         [24] 1515 	orl	_TCON,#0x40
                                   1516 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:227: break;
      0009E0 02 0A B1         [24] 1517 	ljmp	00160$
                                   1518 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:231: case TIMER2:
      0009E3                       1519 00137$:
                                   1520 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:234: AUXR &= ~M_T2_C_T;
      0009E3 53 8E F7         [24] 1521 	anl	_AUXR,#0xf7
                                   1522 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:236: if (enableOutput == ENABLE_OUTPUT) {
      0009E6 90 00 40         [24] 1523 	mov	dptr,#_startTimer_PARM_3
      0009E9 E0               [24] 1524 	movx	a,@dptr
      0009EA FD               [12] 1525 	mov	r5,a
      0009EB BD 01 05         [24] 1526 	cjne	r5,#0x01,00139$
                                   1527 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:237: INT_CLKO |= M_T2CLKO;
      0009EE 43 8F 04         [24] 1528 	orl	_INT_CLKO,#0x04
      0009F1 80 03            [24] 1529 	sjmp	00140$
      0009F3                       1530 00139$:
                                   1531 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:239: INT_CLKO &= ~M_T2CLKO;
      0009F3 53 8F FB         [24] 1532 	anl	_INT_CLKO,#0xfb
      0009F6                       1533 00140$:
                                   1534 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:243: T2 = reloadValue;
      0009F6 8E D7            [24] 1535 	mov	((_T2 >> 0) & 0xFF),r6
      0009F8 8F D6            [24] 1536 	mov	((_T2 >> 8) & 0xFF),r7
                                   1537 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:258: AUXR = (sysclkDiv1) ? (AUXR | M_T2x12) : (AUXR & ~M_T2x12);
      0009FA 90 00 45         [24] 1538 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      0009FD E0               [24] 1539 	movx	a,@dptr
      0009FE 60 09            [24] 1540 	jz	00165$
      000A00 AC 8E            [24] 1541 	mov	r4,_AUXR
      000A02 7D 00            [12] 1542 	mov	r5,#0x00
      000A04 43 04 04         [24] 1543 	orl	ar4,#0x04
      000A07 80 08            [24] 1544 	sjmp	00166$
      000A09                       1545 00165$:
      000A09 74 FB            [12] 1546 	mov	a,#0xfb
      000A0B 55 8E            [12] 1547 	anl	a,_AUXR
      000A0D FB               [12] 1548 	mov	r3,a
      000A0E FC               [12] 1549 	mov	r4,a
      000A0F 7D 00            [12] 1550 	mov	r5,#0x00
      000A11                       1551 00166$:
      000A11 8C 8E            [24] 1552 	mov	_AUXR,r4
                                   1553 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:261: if (enableInterrupt == ENABLE_INTERRUPT) {
      000A13 90 00 41         [24] 1554 	mov	dptr,#_startTimer_PARM_4
      000A16 E0               [24] 1555 	movx	a,@dptr
      000A17 FD               [12] 1556 	mov	r5,a
      000A18 BD 01 05         [24] 1557 	cjne	r5,#0x01,00142$
                                   1558 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:262: IE2 |= M_T2IE;
      000A1B 43 AF 04         [24] 1559 	orl	_IE2,#0x04
      000A1E 80 03            [24] 1560 	sjmp	00143$
      000A20                       1561 00142$:
                                   1562 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:264: IE2 &= ~M_T2IE;
      000A20 53 AF FB         [24] 1563 	anl	_IE2,#0xfb
      000A23                       1564 00143$:
                                   1565 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:269: AUXR |= M_T2RUN;
      000A23 43 8E 10         [24] 1566 	orl	_AUXR,#0x10
                                   1567 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:270: break;
      000A26 02 0A B1         [24] 1568 	ljmp	00160$
                                   1569 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:274: case TIMER3:
      000A29                       1570 00144$:
                                   1571 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:276: T4T3M &= ~M_T3_C_T;
      000A29 53 D1 FB         [24] 1572 	anl	_T4T3M,#0xfb
                                   1573 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:278: if (enableOutput == ENABLE_OUTPUT) {
      000A2C 90 00 40         [24] 1574 	mov	dptr,#_startTimer_PARM_3
      000A2F E0               [24] 1575 	movx	a,@dptr
      000A30 FD               [12] 1576 	mov	r5,a
      000A31 BD 01 05         [24] 1577 	cjne	r5,#0x01,00146$
                                   1578 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:279: T4T3M |= M_T3CLKO;
      000A34 43 D1 01         [24] 1579 	orl	_T4T3M,#0x01
      000A37 80 03            [24] 1580 	sjmp	00147$
      000A39                       1581 00146$:
                                   1582 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:281: T4T3M &= ~M_T3CLKO;
      000A39 53 D1 FE         [24] 1583 	anl	_T4T3M,#0xfe
      000A3C                       1584 00147$:
                                   1585 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:285: T4T3M = (sysclkDiv1) ? (T4T3M | M_T3x12) : (T4T3M & ~M_T3x12);
      000A3C 90 00 45         [24] 1586 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      000A3F E0               [24] 1587 	movx	a,@dptr
      000A40 60 09            [24] 1588 	jz	00167$
      000A42 AC D1            [24] 1589 	mov	r4,_T4T3M
      000A44 7D 00            [12] 1590 	mov	r5,#0x00
      000A46 43 04 02         [24] 1591 	orl	ar4,#0x02
      000A49 80 08            [24] 1592 	sjmp	00168$
      000A4B                       1593 00167$:
      000A4B 74 FD            [12] 1594 	mov	a,#0xfd
      000A4D 55 D1            [12] 1595 	anl	a,_T4T3M
      000A4F FB               [12] 1596 	mov	r3,a
      000A50 FC               [12] 1597 	mov	r4,a
      000A51 7D 00            [12] 1598 	mov	r5,#0x00
      000A53                       1599 00168$:
      000A53 8C D1            [24] 1600 	mov	_T4T3M,r4
                                   1601 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:288: T3 = reloadValue;
      000A55 8E D5            [24] 1602 	mov	((_T3 >> 0) & 0xFF),r6
      000A57 8F D4            [24] 1603 	mov	((_T3 >> 8) & 0xFF),r7
                                   1604 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:290: if (enableInterrupt == ENABLE_INTERRUPT) {
      000A59 90 00 41         [24] 1605 	mov	dptr,#_startTimer_PARM_4
      000A5C E0               [24] 1606 	movx	a,@dptr
      000A5D FD               [12] 1607 	mov	r5,a
      000A5E BD 01 05         [24] 1608 	cjne	r5,#0x01,00149$
                                   1609 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:291: IE2 |= M_T3IE;
      000A61 43 AF 20         [24] 1610 	orl	_IE2,#0x20
      000A64 80 03            [24] 1611 	sjmp	00150$
      000A66                       1612 00149$:
                                   1613 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:293: IE2 &= ~M_T3IE;
      000A66 53 AF DF         [24] 1614 	anl	_IE2,#0xdf
      000A69                       1615 00150$:
                                   1616 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:297: T4T3M |= M_T3RUN;
      000A69 43 D1 08         [24] 1617 	orl	_T4T3M,#0x08
                                   1618 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:298: break;
                                   1619 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:300: case TIMER4:
      000A6C 80 43            [24] 1620 	sjmp	00160$
      000A6E                       1621 00151$:
                                   1622 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:302: T4T3M &= ~M_T4_C_T;
      000A6E 53 D1 BF         [24] 1623 	anl	_T4T3M,#0xbf
                                   1624 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:304: if (enableOutput == ENABLE_OUTPUT) {
      000A71 90 00 40         [24] 1625 	mov	dptr,#_startTimer_PARM_3
      000A74 E0               [24] 1626 	movx	a,@dptr
      000A75 FD               [12] 1627 	mov	r5,a
      000A76 BD 01 05         [24] 1628 	cjne	r5,#0x01,00153$
                                   1629 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:305: T4T3M |= M_T4CLKO;
      000A79 43 D1 10         [24] 1630 	orl	_T4T3M,#0x10
      000A7C 80 03            [24] 1631 	sjmp	00154$
      000A7E                       1632 00153$:
                                   1633 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:307: T4T3M &= ~M_T4CLKO;
      000A7E 53 D1 EF         [24] 1634 	anl	_T4T3M,#0xef
      000A81                       1635 00154$:
                                   1636 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:311: T4T3M = (sysclkDiv1) ? (T4T3M | M_T4x12) : (T4T3M & ~M_T4x12);
      000A81 90 00 45         [24] 1637 	mov	dptr,#_startTimer_sysclkDiv1_65536_114
      000A84 E0               [24] 1638 	movx	a,@dptr
      000A85 60 09            [24] 1639 	jz	00169$
      000A87 AC D1            [24] 1640 	mov	r4,_T4T3M
      000A89 7D 00            [12] 1641 	mov	r5,#0x00
      000A8B 43 04 20         [24] 1642 	orl	ar4,#0x20
      000A8E 80 08            [24] 1643 	sjmp	00170$
      000A90                       1644 00169$:
      000A90 74 DF            [12] 1645 	mov	a,#0xdf
      000A92 55 D1            [12] 1646 	anl	a,_T4T3M
      000A94 FB               [12] 1647 	mov	r3,a
      000A95 FC               [12] 1648 	mov	r4,a
      000A96 7D 00            [12] 1649 	mov	r5,#0x00
      000A98                       1650 00170$:
      000A98 8C D1            [24] 1651 	mov	_T4T3M,r4
                                   1652 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:314: T4 = reloadValue;
      000A9A 8E D3            [24] 1653 	mov	((_T4 >> 0) & 0xFF),r6
      000A9C 8F D2            [24] 1654 	mov	((_T4 >> 8) & 0xFF),r7
                                   1655 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:316: if (enableInterrupt == ENABLE_INTERRUPT) {
      000A9E 90 00 41         [24] 1656 	mov	dptr,#_startTimer_PARM_4
      000AA1 E0               [24] 1657 	movx	a,@dptr
      000AA2 FF               [12] 1658 	mov	r7,a
      000AA3 BF 01 05         [24] 1659 	cjne	r7,#0x01,00156$
                                   1660 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:317: IE2 |= M_T4IE;
      000AA6 43 AF 40         [24] 1661 	orl	_IE2,#0x40
      000AA9 80 03            [24] 1662 	sjmp	00157$
      000AAB                       1663 00156$:
                                   1664 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:319: IE2 &= ~M_T4IE;
      000AAB 53 AF BF         [24] 1665 	anl	_IE2,#0xbf
      000AAE                       1666 00157$:
                                   1667 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:323: T4T3M |= M_T4RUN;
      000AAE 43 D1 80         [24] 1668 	orl	_T4T3M,#0x80
                                   1669 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:355: }
      000AB1                       1670 00160$:
                                   1671 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:358: return rc;
      000AB1 90 00 44         [24] 1672 	mov	dptr,#_startTimer_rc_65536_114
      000AB4 E0               [24] 1673 	movx	a,@dptr
                                   1674 ;	/home/mr-atom/.stc/uni-stc/hal/timer-hal.c:359: }
      000AB5 F5 82            [12] 1675 	mov	dpl,a
      000AB7 22               [24] 1676 	ret
                                   1677 	.area CSEG    (CODE)
                                   1678 	.area CONST   (CODE)
                                   1679 	.area XINIT   (CODE)
                                   1680 	.area CABS    (ABS,CODE)
