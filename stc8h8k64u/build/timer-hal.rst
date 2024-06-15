                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
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
                                    616 ; uninitialized external ram data
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
      000069                        887 _uartGetCharacter_result_10000_50:
      000069                        888 	.ds 1
      00006A                        889 _startTimer_PARM_2:
      00006A                        890 	.ds 4
      00006E                        891 _startTimer_PARM_3:
      00006E                        892 	.ds 1
      00006F                        893 _startTimer_PARM_4:
      00006F                        894 	.ds 1
      000070                        895 _startTimer_PARM_5:
      000070                        896 	.ds 1
      000071                        897 _startTimer_timer_10000_84:
      000071                        898 	.ds 1
      000072                        899 _startTimer_rc_10000_85:
      000072                        900 	.ds 1
      000073                        901 _startTimer_sysclkDiv1_10000_85:
      000073                        902 	.ds 1
      000074                        903 _startTimer_prescaler_20000_87:
      000074                        904 	.ds 2
                                    905 ;--------------------------------------------------------
                                    906 ; absolute external ram data
                                    907 ;--------------------------------------------------------
                                    908 	.area XABS    (ABS,XDATA)
                                    909 ;--------------------------------------------------------
                                    910 ; initialized external ram data
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
                                    947 ;timer                     Allocated with name '_startTimer_timer_10000_84'
                                    948 ;rc                        Allocated with name '_startTimer_rc_10000_85'
                                    949 ;sysclkDiv1                Allocated with name '_startTimer_sysclkDiv1_10000_85'
                                    950 ;prescaler                 Allocated with name '_startTimer_prescaler_20000_87'
                                    951 ;reloadValue               Allocated with name '_startTimer_reloadValue_20000_96'
                                    952 ;------------------------------------------------------------
                                    953 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:54: TimerStatus startTimer(Timer timer, uint32_t sysclkDivisor, OutputEnable enableOutput, InterruptEnable enableInterrupt, CounterControl timerControl) {
                                    954 ;	-----------------------------------------
                                    955 ;	 function startTimer
                                    956 ;	-----------------------------------------
      000AD9                        957 _startTimer:
                           000007   958 	ar7 = 0x07
                           000006   959 	ar6 = 0x06
                           000005   960 	ar5 = 0x05
                           000004   961 	ar4 = 0x04
                           000003   962 	ar3 = 0x03
                           000002   963 	ar2 = 0x02
                           000001   964 	ar1 = 0x01
                           000000   965 	ar0 = 0x00
      000AD9 E5 82            [12]  966 	mov	a,dpl
      000ADB 90 00 71         [24]  967 	mov	dptr,#_startTimer_timer_10000_84
      000ADE F0               [24]  968 	movx	@dptr,a
                                    969 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:55: TimerStatus rc = TIMER_FREQUENCY_OK;
      000ADF 90 00 72         [24]  970 	mov	dptr,#_startTimer_rc_10000_85
      000AE2 E4               [12]  971 	clr	a
      000AE3 F0               [24]  972 	movx	@dptr,a
                                    973 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:56: uint8_t sysclkDiv1 = 1;
      000AE4 90 00 73         [24]  974 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000AE7 04               [12]  975 	inc	a
      000AE8 F0               [24]  976 	movx	@dptr,a
                                    977 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:58: if (sysclkDivisor == 0) {
      000AE9 90 00 6A         [24]  978 	mov	dptr,#_startTimer_PARM_2
      000AEC E0               [24]  979 	movx	a,@dptr
      000AED FC               [12]  980 	mov	r4,a
      000AEE A3               [24]  981 	inc	dptr
      000AEF E0               [24]  982 	movx	a,@dptr
      000AF0 FD               [12]  983 	mov	r5,a
      000AF1 A3               [24]  984 	inc	dptr
      000AF2 E0               [24]  985 	movx	a,@dptr
      000AF3 FE               [12]  986 	mov	r6,a
      000AF4 A3               [24]  987 	inc	dptr
      000AF5 E0               [24]  988 	movx	a,@dptr
      000AF6 FF               [12]  989 	mov	r7,a
      000AF7 EC               [12]  990 	mov	a,r4
      000AF8 4D               [12]  991 	orl	a,r5
      000AF9 4E               [12]  992 	orl	a,r6
      000AFA 4F               [12]  993 	orl	a,r7
      000AFB 70 09            [24]  994 	jnz	00121$
                                    995 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:60: rc = TIMER_FREQUENCY_TOO_HIGH;
      000AFD 90 00 72         [24]  996 	mov	dptr,#_startTimer_rc_10000_85
      000B00 74 01            [12]  997 	mov	a,#0x01
      000B02 F0               [24]  998 	movx	@dptr,a
      000B03 02 0C CF         [24]  999 	ljmp	00122$
      000B06                       1000 00121$:
                                   1001 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:63: uint16_t prescaler = 0;
      000B06 90 00 74         [24] 1002 	mov	dptr,#_startTimer_prescaler_20000_87
      000B09 E4               [12] 1003 	clr	a
      000B0A F0               [24] 1004 	movx	@dptr,a
      000B0B A3               [24] 1005 	inc	dptr
      000B0C F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:65: switch (timer) {
      000B0D 90 00 71         [24] 1008 	mov	dptr,#_startTimer_timer_10000_84
      000B10 E0               [24] 1009 	movx	a,@dptr
      000B11 FB               [12] 1010 	mov	r3,a
      000B12 60 03            [24] 1011 	jz	00102$
      000B14 BB 01 58         [24] 1012 	cjne	r3,#0x01,00108$
                                   1013 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:68: case TIMER1:
      000B17                       1014 00102$:
                                   1015 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:72: if (sysclkDivisor > COUNTER_MAX) {
      000B17 C3               [12] 1016 	clr	c
      000B18 E4               [12] 1017 	clr	a
      000B19 9C               [12] 1018 	subb	a,r4
      000B1A E4               [12] 1019 	clr	a
      000B1B 9D               [12] 1020 	subb	a,r5
      000B1C 74 01            [12] 1021 	mov	a,#0x01
      000B1E 9E               [12] 1022 	subb	a,r6
      000B1F E4               [12] 1023 	clr	a
      000B20 9F               [12] 1024 	subb	a,r7
      000B21 40 03            [24] 1025 	jc	00331$
      000B23 02 0C 93         [24] 1026 	ljmp	00115$
      000B26                       1027 00331$:
                                   1028 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:73: if (sysclkDivisor <= (COUNTER_MAX * 12UL)) {
      000B26 C3               [12] 1029 	clr	c
      000B27 E4               [12] 1030 	clr	a
      000B28 9C               [12] 1031 	subb	a,r4
      000B29 E4               [12] 1032 	clr	a
      000B2A 9D               [12] 1033 	subb	a,r5
      000B2B 74 0C            [12] 1034 	mov	a,#0x0c
      000B2D 9E               [12] 1035 	subb	a,r6
      000B2E E4               [12] 1036 	clr	a
      000B2F 9F               [12] 1037 	subb	a,r7
      000B30 40 34            [24] 1038 	jc	00104$
                                   1039 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:74: sysclkDiv1 = 0;
      000B32 90 00 73         [24] 1040 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000B35 E4               [12] 1041 	clr	a
      000B36 F0               [24] 1042 	movx	@dptr,a
                                   1043 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:75: sysclkDivisor /= 12;
      000B37 90 01 00         [24] 1044 	mov	dptr,#__divulong_PARM_2
      000B3A 74 0C            [12] 1045 	mov	a,#0x0c
      000B3C F0               [24] 1046 	movx	@dptr,a
      000B3D E4               [12] 1047 	clr	a
      000B3E A3               [24] 1048 	inc	dptr
      000B3F F0               [24] 1049 	movx	@dptr,a
      000B40 A3               [24] 1050 	inc	dptr
      000B41 F0               [24] 1051 	movx	@dptr,a
      000B42 A3               [24] 1052 	inc	dptr
      000B43 F0               [24] 1053 	movx	@dptr,a
      000B44 8C 82            [24] 1054 	mov	dpl, r4
      000B46 8D 83            [24] 1055 	mov	dph, r5
      000B48 8E F0            [24] 1056 	mov	b, r6
      000B4A EF               [12] 1057 	mov	a, r7
      000B4B 12 2E D9         [24] 1058 	lcall	__divulong
      000B4E A8 82            [24] 1059 	mov	r0, dpl
      000B50 A9 83            [24] 1060 	mov	r1, dph
      000B52 AA F0            [24] 1061 	mov	r2, b
      000B54 FB               [12] 1062 	mov	r3, a
      000B55 90 00 6A         [24] 1063 	mov	dptr,#_startTimer_PARM_2
      000B58 E8               [12] 1064 	mov	a,r0
      000B59 F0               [24] 1065 	movx	@dptr,a
      000B5A E9               [12] 1066 	mov	a,r1
      000B5B A3               [24] 1067 	inc	dptr
      000B5C F0               [24] 1068 	movx	@dptr,a
      000B5D EA               [12] 1069 	mov	a,r2
      000B5E A3               [24] 1070 	inc	dptr
      000B5F F0               [24] 1071 	movx	@dptr,a
      000B60 EB               [12] 1072 	mov	a,r3
      000B61 A3               [24] 1073 	inc	dptr
      000B62 F0               [24] 1074 	movx	@dptr,a
      000B63 02 0C 93         [24] 1075 	ljmp	00115$
      000B66                       1076 00104$:
                                   1077 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:78: rc = TIMER_FREQUENCY_TOO_LOW;
      000B66 90 00 72         [24] 1078 	mov	dptr,#_startTimer_rc_10000_85
      000B69 74 02            [12] 1079 	mov	a,#0x02
      000B6B F0               [24] 1080 	movx	@dptr,a
                                   1081 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:83: break;
      000B6C 02 0C 93         [24] 1082 	ljmp	00115$
                                   1083 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:85: default:
      000B6F                       1084 00108$:
                                   1085 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:86: if (sysclkDivisor > COUNTER_MAX) {
      000B6F C3               [12] 1086 	clr	c
      000B70 E4               [12] 1087 	clr	a
      000B71 9C               [12] 1088 	subb	a,r4
      000B72 E4               [12] 1089 	clr	a
      000B73 9D               [12] 1090 	subb	a,r5
      000B74 74 01            [12] 1091 	mov	a,#0x01
      000B76 9E               [12] 1092 	subb	a,r6
      000B77 E4               [12] 1093 	clr	a
      000B78 9F               [12] 1094 	subb	a,r7
      000B79 40 03            [24] 1095 	jc	00333$
      000B7B 02 0C 93         [24] 1096 	ljmp	00115$
      000B7E                       1097 00333$:
                                   1098 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:87: prescaler = sysclkDivisor / COUNTER_MAX;
      000B7E 8E 00            [24] 1099 	mov	ar0,r6
      000B80 8F 01            [24] 1100 	mov	ar1,r7
      000B82 90 00 74         [24] 1101 	mov	dptr,#_startTimer_prescaler_20000_87
      000B85 E8               [12] 1102 	mov	a,r0
      000B86 F0               [24] 1103 	movx	@dptr,a
      000B87 E9               [12] 1104 	mov	a,r1
      000B88 A3               [24] 1105 	inc	dptr
      000B89 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:89: if (prescaler > PRESCALER_MAX) {
      000B8A C3               [12] 1108 	clr	c
      000B8B E4               [12] 1109 	clr	a
      000B8C 98               [12] 1110 	subb	a,r0
      000B8D 74 01            [12] 1111 	mov	a,#0x01
      000B8F 99               [12] 1112 	subb	a,r1
      000B90 50 5D            [24] 1113 	jnc	00110$
                                   1114 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:90: sysclkDiv1 = 0;
      000B92 90 00 73         [24] 1115 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000B95 E4               [12] 1116 	clr	a
      000B96 F0               [24] 1117 	movx	@dptr,a
                                   1118 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:91: prescaler /= 12;
      000B97 90 00 F0         [24] 1119 	mov	dptr,#__divuint_PARM_2
      000B9A 74 0C            [12] 1120 	mov	a,#0x0c
      000B9C F0               [24] 1121 	movx	@dptr,a
      000B9D E4               [12] 1122 	clr	a
      000B9E A3               [24] 1123 	inc	dptr
      000B9F F0               [24] 1124 	movx	@dptr,a
      000BA0 88 82            [24] 1125 	mov	dpl, r0
      000BA2 89 83            [24] 1126 	mov	dph, r1
      000BA4 C0 07            [24] 1127 	push	ar7
      000BA6 C0 06            [24] 1128 	push	ar6
      000BA8 C0 05            [24] 1129 	push	ar5
      000BAA C0 04            [24] 1130 	push	ar4
      000BAC 12 2D 0D         [24] 1131 	lcall	__divuint
      000BAF AA 82            [24] 1132 	mov	r2, dpl
      000BB1 AB 83            [24] 1133 	mov	r3, dph
      000BB3 D0 04            [24] 1134 	pop	ar4
      000BB5 D0 05            [24] 1135 	pop	ar5
      000BB7 D0 06            [24] 1136 	pop	ar6
      000BB9 D0 07            [24] 1137 	pop	ar7
      000BBB 90 00 74         [24] 1138 	mov	dptr,#_startTimer_prescaler_20000_87
      000BBE EA               [12] 1139 	mov	a,r2
      000BBF F0               [24] 1140 	movx	@dptr,a
      000BC0 EB               [12] 1141 	mov	a,r3
      000BC1 A3               [24] 1142 	inc	dptr
      000BC2 F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:92: sysclkDivisor /= 12;
      000BC3 90 01 00         [24] 1145 	mov	dptr,#__divulong_PARM_2
      000BC6 74 0C            [12] 1146 	mov	a,#0x0c
      000BC8 F0               [24] 1147 	movx	@dptr,a
      000BC9 E4               [12] 1148 	clr	a
      000BCA A3               [24] 1149 	inc	dptr
      000BCB F0               [24] 1150 	movx	@dptr,a
      000BCC A3               [24] 1151 	inc	dptr
      000BCD F0               [24] 1152 	movx	@dptr,a
      000BCE A3               [24] 1153 	inc	dptr
      000BCF F0               [24] 1154 	movx	@dptr,a
      000BD0 8C 82            [24] 1155 	mov	dpl, r4
      000BD2 8D 83            [24] 1156 	mov	dph, r5
      000BD4 8E F0            [24] 1157 	mov	b, r6
      000BD6 EF               [12] 1158 	mov	a, r7
      000BD7 12 2E D9         [24] 1159 	lcall	__divulong
      000BDA AC 82            [24] 1160 	mov	r4, dpl
      000BDC AD 83            [24] 1161 	mov	r5, dph
      000BDE AE F0            [24] 1162 	mov	r6, b
      000BE0 FF               [12] 1163 	mov	r7, a
      000BE1 90 00 6A         [24] 1164 	mov	dptr,#_startTimer_PARM_2
      000BE4 EC               [12] 1165 	mov	a,r4
      000BE5 F0               [24] 1166 	movx	@dptr,a
      000BE6 ED               [12] 1167 	mov	a,r5
      000BE7 A3               [24] 1168 	inc	dptr
      000BE8 F0               [24] 1169 	movx	@dptr,a
      000BE9 EE               [12] 1170 	mov	a,r6
      000BEA A3               [24] 1171 	inc	dptr
      000BEB F0               [24] 1172 	movx	@dptr,a
      000BEC EF               [12] 1173 	mov	a,r7
      000BED A3               [24] 1174 	inc	dptr
      000BEE F0               [24] 1175 	movx	@dptr,a
      000BEF                       1176 00110$:
                                   1177 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:96: if (sysclkDivisor % prescaler) {
      000BEF 90 00 6A         [24] 1178 	mov	dptr,#_startTimer_PARM_2
      000BF2 E0               [24] 1179 	movx	a,@dptr
      000BF3 FC               [12] 1180 	mov	r4,a
      000BF4 A3               [24] 1181 	inc	dptr
      000BF5 E0               [24] 1182 	movx	a,@dptr
      000BF6 FD               [12] 1183 	mov	r5,a
      000BF7 A3               [24] 1184 	inc	dptr
      000BF8 E0               [24] 1185 	movx	a,@dptr
      000BF9 FE               [12] 1186 	mov	r6,a
      000BFA A3               [24] 1187 	inc	dptr
      000BFB E0               [24] 1188 	movx	a,@dptr
      000BFC FF               [12] 1189 	mov	r7,a
      000BFD 90 00 74         [24] 1190 	mov	dptr,#_startTimer_prescaler_20000_87
      000C00 E0               [24] 1191 	movx	a,@dptr
      000C01 F5 10            [12] 1192 	mov	_startTimer_sloc0_1_0,a
      000C03 A3               [24] 1193 	inc	dptr
      000C04 E0               [24] 1194 	movx	a,@dptr
      000C05 F5 11            [12] 1195 	mov	(_startTimer_sloc0_1_0 + 1),a
      000C07 90 00 F7         [24] 1196 	mov	dptr,#__modulong_PARM_2
      000C0A E5 10            [12] 1197 	mov	a,_startTimer_sloc0_1_0
      000C0C F0               [24] 1198 	movx	@dptr,a
      000C0D E5 11            [12] 1199 	mov	a,(_startTimer_sloc0_1_0 + 1)
      000C0F A3               [24] 1200 	inc	dptr
      000C10 F0               [24] 1201 	movx	@dptr,a
      000C11 E4               [12] 1202 	clr	a
      000C12 A3               [24] 1203 	inc	dptr
      000C13 F0               [24] 1204 	movx	@dptr,a
      000C14 A3               [24] 1205 	inc	dptr
      000C15 F0               [24] 1206 	movx	@dptr,a
      000C16 8C 82            [24] 1207 	mov	dpl, r4
      000C18 8D 83            [24] 1208 	mov	dph, r5
      000C1A 8E F0            [24] 1209 	mov	b, r6
      000C1C EF               [12] 1210 	mov	a, r7
      000C1D C0 07            [24] 1211 	push	ar7
      000C1F C0 06            [24] 1212 	push	ar6
      000C21 C0 05            [24] 1213 	push	ar5
      000C23 C0 04            [24] 1214 	push	ar4
      000C25 12 2D 9A         [24] 1215 	lcall	__modulong
      000C28 A8 82            [24] 1216 	mov	r0, dpl
      000C2A A9 83            [24] 1217 	mov	r1, dph
      000C2C AA F0            [24] 1218 	mov	r2, b
      000C2E FB               [12] 1219 	mov	r3, a
      000C2F D0 04            [24] 1220 	pop	ar4
      000C31 D0 05            [24] 1221 	pop	ar5
      000C33 D0 06            [24] 1222 	pop	ar6
      000C35 D0 07            [24] 1223 	pop	ar7
      000C37 E8               [12] 1224 	mov	a,r0
      000C38 49               [12] 1225 	orl	a,r1
      000C39 4A               [12] 1226 	orl	a,r2
      000C3A 4B               [12] 1227 	orl	a,r3
      000C3B 60 0D            [24] 1228 	jz	00112$
                                   1229 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:97: prescaler++;
      000C3D 90 00 74         [24] 1230 	mov	dptr,#_startTimer_prescaler_20000_87
      000C40 74 01            [12] 1231 	mov	a,#0x01
      000C42 25 10            [12] 1232 	add	a, _startTimer_sloc0_1_0
      000C44 F0               [24] 1233 	movx	@dptr,a
      000C45 E4               [12] 1234 	clr	a
      000C46 35 11            [12] 1235 	addc	a, (_startTimer_sloc0_1_0 + 1)
      000C48 A3               [24] 1236 	inc	dptr
      000C49 F0               [24] 1237 	movx	@dptr,a
      000C4A                       1238 00112$:
                                   1239 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:100: sysclkDivisor /= prescaler;
      000C4A 90 00 74         [24] 1240 	mov	dptr,#_startTimer_prescaler_20000_87
      000C4D E0               [24] 1241 	movx	a,@dptr
      000C4E FA               [12] 1242 	mov	r2,a
      000C4F A3               [24] 1243 	inc	dptr
      000C50 E0               [24] 1244 	movx	a,@dptr
      000C51 FB               [12] 1245 	mov	r3,a
      000C52 90 01 00         [24] 1246 	mov	dptr,#__divulong_PARM_2
      000C55 EA               [12] 1247 	mov	a,r2
      000C56 F0               [24] 1248 	movx	@dptr,a
      000C57 EB               [12] 1249 	mov	a,r3
      000C58 A3               [24] 1250 	inc	dptr
      000C59 F0               [24] 1251 	movx	@dptr,a
      000C5A E4               [12] 1252 	clr	a
      000C5B A3               [24] 1253 	inc	dptr
      000C5C F0               [24] 1254 	movx	@dptr,a
      000C5D A3               [24] 1255 	inc	dptr
      000C5E F0               [24] 1256 	movx	@dptr,a
      000C5F 8C 82            [24] 1257 	mov	dpl, r4
      000C61 8D 83            [24] 1258 	mov	dph, r5
      000C63 8E F0            [24] 1259 	mov	b, r6
      000C65 EF               [12] 1260 	mov	a, r7
      000C66 C0 03            [24] 1261 	push	ar3
      000C68 C0 02            [24] 1262 	push	ar2
      000C6A 12 2E D9         [24] 1263 	lcall	__divulong
      000C6D AC 82            [24] 1264 	mov	r4, dpl
      000C6F AD 83            [24] 1265 	mov	r5, dph
      000C71 AE F0            [24] 1266 	mov	r6, b
      000C73 FF               [12] 1267 	mov	r7, a
      000C74 D0 02            [24] 1268 	pop	ar2
      000C76 D0 03            [24] 1269 	pop	ar3
      000C78 90 00 6A         [24] 1270 	mov	dptr,#_startTimer_PARM_2
      000C7B EC               [12] 1271 	mov	a,r4
      000C7C F0               [24] 1272 	movx	@dptr,a
      000C7D ED               [12] 1273 	mov	a,r5
      000C7E A3               [24] 1274 	inc	dptr
      000C7F F0               [24] 1275 	movx	@dptr,a
      000C80 EE               [12] 1276 	mov	a,r6
      000C81 A3               [24] 1277 	inc	dptr
      000C82 F0               [24] 1278 	movx	@dptr,a
      000C83 EF               [12] 1279 	mov	a,r7
      000C84 A3               [24] 1280 	inc	dptr
      000C85 F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:103: prescaler--;
      000C86 1A               [12] 1283 	dec	r2
      000C87 BA FF 01         [24] 1284 	cjne	r2,#0xff,00336$
      000C8A 1B               [12] 1285 	dec	r3
      000C8B                       1286 00336$:
      000C8B 90 00 74         [24] 1287 	mov	dptr,#_startTimer_prescaler_20000_87
      000C8E EA               [12] 1288 	mov	a,r2
      000C8F F0               [24] 1289 	movx	@dptr,a
      000C90 EB               [12] 1290 	mov	a,r3
      000C91 A3               [24] 1291 	inc	dptr
      000C92 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:106: }
      000C93                       1294 00115$:
                                   1295 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:108: switch (timer) {
      000C93 90 00 71         [24] 1296 	mov	dptr,#_startTimer_timer_10000_84
      000C96 E0               [24] 1297 	movx	a,@dptr
      000C97 FF               [12] 1298 	mov	r7,a
      000C98 BF 02 02         [24] 1299 	cjne	r7,#0x02,00337$
      000C9B 80 0A            [24] 1300 	sjmp	00116$
      000C9D                       1301 00337$:
      000C9D BF 03 02         [24] 1302 	cjne	r7,#0x03,00338$
      000CA0 80 13            [24] 1303 	sjmp	00117$
      000CA2                       1304 00338$:
                                   1305 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:110: case TIMER2:
      000CA2 BF 04 2A         [24] 1306 	cjne	r7,#0x04,00122$
      000CA5 80 1C            [24] 1307 	sjmp	00118$
      000CA7                       1308 00116$:
                                   1309 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:111: TM2PS = prescaler;
      000CA7 90 00 74         [24] 1310 	mov	dptr,#_startTimer_prescaler_20000_87
      000CAA E0               [24] 1311 	movx	a,@dptr
      000CAB FE               [12] 1312 	mov	r6,a
      000CAC A3               [24] 1313 	inc	dptr
      000CAD E0               [24] 1314 	movx	a,@dptr
      000CAE 90 FE A2         [24] 1315 	mov	dptr,#_TM2PS
      000CB1 EE               [12] 1316 	mov	a,r6
      000CB2 F0               [24] 1317 	movx	@dptr,a
                                   1318 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:112: break;
                                   1319 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:116: case TIMER3:
      000CB3 80 1A            [24] 1320 	sjmp	00122$
      000CB5                       1321 00117$:
                                   1322 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:117: TM3PS = prescaler;
      000CB5 90 00 74         [24] 1323 	mov	dptr,#_startTimer_prescaler_20000_87
      000CB8 E0               [24] 1324 	movx	a,@dptr
      000CB9 FE               [12] 1325 	mov	r6,a
      000CBA A3               [24] 1326 	inc	dptr
      000CBB E0               [24] 1327 	movx	a,@dptr
      000CBC 90 FE A3         [24] 1328 	mov	dptr,#_TM3PS
      000CBF EE               [12] 1329 	mov	a,r6
      000CC0 F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:118: break;
                                   1332 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:120: case TIMER4:
      000CC1 80 0C            [24] 1333 	sjmp	00122$
      000CC3                       1334 00118$:
                                   1335 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:121: TM4PS = prescaler;
      000CC3 90 00 74         [24] 1336 	mov	dptr,#_startTimer_prescaler_20000_87
      000CC6 E0               [24] 1337 	movx	a,@dptr
      000CC7 FE               [12] 1338 	mov	r6,a
      000CC8 A3               [24] 1339 	inc	dptr
      000CC9 E0               [24] 1340 	movx	a,@dptr
      000CCA 90 FE A4         [24] 1341 	mov	dptr,#_TM4PS
      000CCD EE               [12] 1342 	mov	a,r6
      000CCE F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:130: }
      000CCF                       1345 00122$:
                                   1346 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:134: if (rc == TIMER_FREQUENCY_OK) {
      000CCF 90 00 72         [24] 1347 	mov	dptr,#_startTimer_rc_10000_85
      000CD2 E0               [24] 1348 	movx	a,@dptr
      000CD3 60 03            [24] 1349 	jz	00340$
      000CD5 02 0E 60         [24] 1350 	ljmp	00160$
      000CD8                       1351 00340$:
                                   1352 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:135: uint16_t reloadValue = (uint16_t) (COUNTER_MAX - sysclkDivisor);
      000CD8 90 00 6A         [24] 1353 	mov	dptr,#_startTimer_PARM_2
      000CDB E0               [24] 1354 	movx	a,@dptr
      000CDC FC               [12] 1355 	mov	r4,a
      000CDD A3               [24] 1356 	inc	dptr
      000CDE E0               [24] 1357 	movx	a,@dptr
      000CDF FD               [12] 1358 	mov	r5,a
      000CE0 A3               [24] 1359 	inc	dptr
      000CE1 E0               [24] 1360 	movx	a,@dptr
      000CE2 A3               [24] 1361 	inc	dptr
      000CE3 E0               [24] 1362 	movx	a,@dptr
      000CE4 C3               [12] 1363 	clr	c
      000CE5 E4               [12] 1364 	clr	a
      000CE6 9C               [12] 1365 	subb	a,r4
      000CE7 FE               [12] 1366 	mov	r6,a
      000CE8 E4               [12] 1367 	clr	a
      000CE9 9D               [12] 1368 	subb	a,r5
      000CEA FF               [12] 1369 	mov	r7,a
                                   1370 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:137: switch (timer) {
      000CEB 90 00 71         [24] 1371 	mov	dptr,#_startTimer_timer_10000_84
      000CEE E0               [24] 1372 	movx	a,@dptr
      000CEF FD               [12] 1373 	mov  r5,a
      000CF0 24 FB            [12] 1374 	add	a,#0xff - 0x04
      000CF2 50 03            [24] 1375 	jnc	00341$
      000CF4 02 0E 60         [24] 1376 	ljmp	00160$
      000CF7                       1377 00341$:
      000CF7 ED               [12] 1378 	mov	a,r5
      000CF8 2D               [12] 1379 	add	a,r5
      000CF9 2D               [12] 1380 	add	a,r5
      000CFA 90 0C FE         [24] 1381 	mov	dptr,#00342$
      000CFD 73               [24] 1382 	jmp	@a+dptr
      000CFE                       1383 00342$:
      000CFE 02 0D 0D         [24] 1384 	ljmp	00123$
      000D01 02 0D 5D         [24] 1385 	ljmp	00130$
      000D04 02 0D AD         [24] 1386 	ljmp	00137$
      000D07 02 0D EA         [24] 1387 	ljmp	00144$
      000D0A 02 0E 26         [24] 1388 	ljmp	00151$
                                   1389 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:138: case TIMER0:
      000D0D                       1390 00123$:
                                   1391 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:141: AUXR = (AUXR & ~M_T0x12) | ((sysclkDiv1 << P_T0x12) & M_T0x12);
      000D0D 74 7F            [12] 1392 	mov	a,#0x7f
      000D0F 55 8E            [12] 1393 	anl	a,_AUXR
      000D11 FD               [12] 1394 	mov	r5,a
      000D12 90 00 73         [24] 1395 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000D15 E0               [24] 1396 	movx	a,@dptr
      000D16 03               [12] 1397 	rr	a
      000D17 54 80            [12] 1398 	anl	a,#0x80
      000D19 FC               [12] 1399 	mov	r4,a
      000D1A 74 80            [12] 1400 	mov	a,#0x80
      000D1C 5C               [12] 1401 	anl	a,r4
      000D1D 4D               [12] 1402 	orl	a,r5
      000D1E F5 8E            [12] 1403 	mov	_AUXR,a
                                   1404 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:145: TMOD &= 0xf0;
      000D20 53 89 F0         [24] 1405 	anl	_TMOD,#0xf0
                                   1406 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:148: TMOD = (TMOD & ~M_T0_GATE) | ((timerControl << P_T0_GATE) & M_T0_GATE);
      000D23 74 F7            [12] 1407 	mov	a,#0xf7
      000D25 55 89            [12] 1408 	anl	a,_TMOD
      000D27 FD               [12] 1409 	mov	r5,a
      000D28 90 00 70         [24] 1410 	mov	dptr,#_startTimer_PARM_5
      000D2B E0               [24] 1411 	movx	a,@dptr
      000D2C C4               [12] 1412 	swap	a
      000D2D 03               [12] 1413 	rr	a
      000D2E 54 F8            [12] 1414 	anl	a,#0xf8
      000D30 FC               [12] 1415 	mov	r4,a
      000D31 74 08            [12] 1416 	mov	a,#0x08
      000D33 5C               [12] 1417 	anl	a,r4
      000D34 4D               [12] 1418 	orl	a,r5
      000D35 F5 89            [12] 1419 	mov	_TMOD,a
                                   1420 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:162: if (enableOutput == ENABLE_OUTPUT) {
      000D37 90 00 6E         [24] 1421 	mov	dptr,#_startTimer_PARM_3
      000D3A E0               [24] 1422 	movx	a,@dptr
      000D3B 60 05            [24] 1423 	jz	00125$
                                   1424 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:163: INT_CLKO |= M_T0CLKO;
      000D3D 43 8F 01         [24] 1425 	orl	_INT_CLKO,#0x01
      000D40 80 03            [24] 1426 	sjmp	00126$
      000D42                       1427 00125$:
                                   1428 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:165: INT_CLKO &= ~M_T0CLKO;
      000D42 53 8F FE         [24] 1429 	anl	_INT_CLKO,#0xfe
      000D45                       1430 00126$:
                                   1431 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:168: T0 = reloadValue;
      000D45 8E 8A            [24] 1432 	mov	((_T0 >> 0) & 0xFF),r6
      000D47 8F 8C            [24] 1433 	mov	((_T0 >> 8) & 0xFF),r7
                                   1434 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:171: if (enableInterrupt == ENABLE_INTERRUPT) {
      000D49 90 00 6F         [24] 1435 	mov	dptr,#_startTimer_PARM_4
      000D4C E0               [24] 1436 	movx	a,@dptr
      000D4D 60 05            [24] 1437 	jz	00128$
                                   1438 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:172: IE1 |= M_T0IE;
      000D4F 43 A8 02         [24] 1439 	orl	_IE1,#0x02
      000D52 80 03            [24] 1440 	sjmp	00129$
      000D54                       1441 00128$:
                                   1442 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:174: IE1 &= ~M_T0IE;
      000D54 53 A8 FD         [24] 1443 	anl	_IE1,#0xfd
      000D57                       1444 00129$:
                                   1445 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:178: TCON |= M_T0RUN;
      000D57 43 88 10         [24] 1446 	orl	_TCON,#0x10
                                   1447 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:179: break;
      000D5A 02 0E 60         [24] 1448 	ljmp	00160$
                                   1449 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:182: case TIMER1:
      000D5D                       1450 00130$:
                                   1451 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:197: TMOD &= 0x0f;
      000D5D 53 89 0F         [24] 1452 	anl	_TMOD,#0x0f
                                   1453 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:200: if (enableOutput == ENABLE_OUTPUT) {
      000D60 90 00 6E         [24] 1454 	mov	dptr,#_startTimer_PARM_3
      000D63 E0               [24] 1455 	movx	a,@dptr
      000D64 60 05            [24] 1456 	jz	00132$
                                   1457 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:201: INT_CLKO |= M_T1CLKO;
      000D66 43 8F 02         [24] 1458 	orl	_INT_CLKO,#0x02
      000D69 80 03            [24] 1459 	sjmp	00133$
      000D6B                       1460 00132$:
                                   1461 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:203: INT_CLKO &= ~M_T1CLKO;
      000D6B 53 8F FD         [24] 1462 	anl	_INT_CLKO,#0xfd
      000D6E                       1463 00133$:
                                   1464 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:208: T1 = reloadValue;
      000D6E 8E 8B            [24] 1465 	mov	((_T1 >> 0) & 0xFF),r6
      000D70 8F 8D            [24] 1466 	mov	((_T1 >> 8) & 0xFF),r7
                                   1467 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:212: TMOD = (TMOD & ~M_T1_GATE) | ((timerControl << P_T1_GATE) & M_T1_GATE);
      000D72 74 7F            [12] 1468 	mov	a,#0x7f
      000D74 55 89            [12] 1469 	anl	a,_TMOD
      000D76 FD               [12] 1470 	mov	r5,a
      000D77 90 00 70         [24] 1471 	mov	dptr,#_startTimer_PARM_5
      000D7A E0               [24] 1472 	movx	a,@dptr
      000D7B 03               [12] 1473 	rr	a
      000D7C 54 80            [12] 1474 	anl	a,#0x80
      000D7E FC               [12] 1475 	mov	r4,a
      000D7F 74 80            [12] 1476 	mov	a,#0x80
      000D81 5C               [12] 1477 	anl	a,r4
      000D82 4D               [12] 1478 	orl	a,r5
      000D83 F5 89            [12] 1479 	mov	_TMOD,a
                                   1480 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:216: AUXR = (sysclkDiv1) ? (AUXR | M_T1x12) : (AUXR & ~M_T1x12);
      000D85 90 00 73         [24] 1481 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000D88 E0               [24] 1482 	movx	a,@dptr
      000D89 60 07            [24] 1483 	jz	00163$
      000D8B 74 40            [12] 1484 	mov	a,#0x40
      000D8D 45 8E            [12] 1485 	orl	a,_AUXR
      000D8F FD               [12] 1486 	mov	r5,a
      000D90 80 05            [24] 1487 	sjmp	00164$
      000D92                       1488 00163$:
      000D92 74 BF            [12] 1489 	mov	a,#0xbf
      000D94 55 8E            [12] 1490 	anl	a,_AUXR
      000D96 FD               [12] 1491 	mov	r5,a
      000D97                       1492 00164$:
      000D97 8D 8E            [24] 1493 	mov	_AUXR,r5
                                   1494 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:219: if (enableInterrupt == ENABLE_INTERRUPT) {
      000D99 90 00 6F         [24] 1495 	mov	dptr,#_startTimer_PARM_4
      000D9C E0               [24] 1496 	movx	a,@dptr
      000D9D 60 05            [24] 1497 	jz	00135$
                                   1498 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:220: IE1 |= M_T1IE;
      000D9F 43 A8 08         [24] 1499 	orl	_IE1,#0x08
      000DA2 80 03            [24] 1500 	sjmp	00136$
      000DA4                       1501 00135$:
                                   1502 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:222: IE1 &= ~M_T1IE;
      000DA4 53 A8 F7         [24] 1503 	anl	_IE1,#0xf7
      000DA7                       1504 00136$:
                                   1505 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:226: TCON |= M_T1RUN;
      000DA7 43 88 40         [24] 1506 	orl	_TCON,#0x40
                                   1507 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:227: break;
      000DAA 02 0E 60         [24] 1508 	ljmp	00160$
                                   1509 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:231: case TIMER2:
      000DAD                       1510 00137$:
                                   1511 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:234: AUXR &= ~M_T2_C_T;
      000DAD 53 8E F7         [24] 1512 	anl	_AUXR,#0xf7
                                   1513 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:236: if (enableOutput == ENABLE_OUTPUT) {
      000DB0 90 00 6E         [24] 1514 	mov	dptr,#_startTimer_PARM_3
      000DB3 E0               [24] 1515 	movx	a,@dptr
      000DB4 60 05            [24] 1516 	jz	00139$
                                   1517 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:237: INT_CLKO |= M_T2CLKO;
      000DB6 43 8F 04         [24] 1518 	orl	_INT_CLKO,#0x04
      000DB9 80 03            [24] 1519 	sjmp	00140$
      000DBB                       1520 00139$:
                                   1521 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:239: INT_CLKO &= ~M_T2CLKO;
      000DBB 53 8F FB         [24] 1522 	anl	_INT_CLKO,#0xfb
      000DBE                       1523 00140$:
                                   1524 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:243: T2 = reloadValue;
      000DBE 8E D7            [24] 1525 	mov	((_T2 >> 0) & 0xFF),r6
      000DC0 8F D6            [24] 1526 	mov	((_T2 >> 8) & 0xFF),r7
                                   1527 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:258: AUXR = (sysclkDiv1) ? (AUXR | M_T2x12) : (AUXR & ~M_T2x12);
      000DC2 90 00 73         [24] 1528 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000DC5 E0               [24] 1529 	movx	a,@dptr
      000DC6 60 07            [24] 1530 	jz	00165$
      000DC8 74 04            [12] 1531 	mov	a,#0x04
      000DCA 45 8E            [12] 1532 	orl	a,_AUXR
      000DCC FD               [12] 1533 	mov	r5,a
      000DCD 80 05            [24] 1534 	sjmp	00166$
      000DCF                       1535 00165$:
      000DCF 74 FB            [12] 1536 	mov	a,#0xfb
      000DD1 55 8E            [12] 1537 	anl	a,_AUXR
      000DD3 FD               [12] 1538 	mov	r5,a
      000DD4                       1539 00166$:
      000DD4 8D 8E            [24] 1540 	mov	_AUXR,r5
                                   1541 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:261: if (enableInterrupt == ENABLE_INTERRUPT) {
      000DD6 90 00 6F         [24] 1542 	mov	dptr,#_startTimer_PARM_4
      000DD9 E0               [24] 1543 	movx	a,@dptr
      000DDA 60 05            [24] 1544 	jz	00142$
                                   1545 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:262: IE2 |= M_T2IE;
      000DDC 43 AF 04         [24] 1546 	orl	_IE2,#0x04
      000DDF 80 03            [24] 1547 	sjmp	00143$
      000DE1                       1548 00142$:
                                   1549 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:264: IE2 &= ~M_T2IE;
      000DE1 53 AF FB         [24] 1550 	anl	_IE2,#0xfb
      000DE4                       1551 00143$:
                                   1552 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:269: AUXR |= M_T2RUN;
      000DE4 43 8E 10         [24] 1553 	orl	_AUXR,#0x10
                                   1554 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:270: break;
      000DE7 02 0E 60         [24] 1555 	ljmp	00160$
                                   1556 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:274: case TIMER3:
      000DEA                       1557 00144$:
                                   1558 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:276: T4T3M &= ~M_T3_C_T;
      000DEA 53 D1 FB         [24] 1559 	anl	_T4T3M,#0xfb
                                   1560 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:278: if (enableOutput == ENABLE_OUTPUT) {
      000DED 90 00 6E         [24] 1561 	mov	dptr,#_startTimer_PARM_3
      000DF0 E0               [24] 1562 	movx	a,@dptr
      000DF1 60 05            [24] 1563 	jz	00146$
                                   1564 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:279: T4T3M |= M_T3CLKO;
      000DF3 43 D1 01         [24] 1565 	orl	_T4T3M,#0x01
      000DF6 80 03            [24] 1566 	sjmp	00147$
      000DF8                       1567 00146$:
                                   1568 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:281: T4T3M &= ~M_T3CLKO;
      000DF8 53 D1 FE         [24] 1569 	anl	_T4T3M,#0xfe
      000DFB                       1570 00147$:
                                   1571 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:285: T4T3M = (sysclkDiv1) ? (T4T3M | M_T3x12) : (T4T3M & ~M_T3x12);
      000DFB 90 00 73         [24] 1572 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000DFE E0               [24] 1573 	movx	a,@dptr
      000DFF 60 07            [24] 1574 	jz	00167$
      000E01 74 02            [12] 1575 	mov	a,#0x02
      000E03 45 D1            [12] 1576 	orl	a,_T4T3M
      000E05 FD               [12] 1577 	mov	r5,a
      000E06 80 05            [24] 1578 	sjmp	00168$
      000E08                       1579 00167$:
      000E08 74 FD            [12] 1580 	mov	a,#0xfd
      000E0A 55 D1            [12] 1581 	anl	a,_T4T3M
      000E0C FD               [12] 1582 	mov	r5,a
      000E0D                       1583 00168$:
      000E0D 8D D1            [24] 1584 	mov	_T4T3M,r5
                                   1585 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:288: T3 = reloadValue;
      000E0F 8E D5            [24] 1586 	mov	((_T3 >> 0) & 0xFF),r6
      000E11 8F D4            [24] 1587 	mov	((_T3 >> 8) & 0xFF),r7
                                   1588 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:290: if (enableInterrupt == ENABLE_INTERRUPT) {
      000E13 90 00 6F         [24] 1589 	mov	dptr,#_startTimer_PARM_4
      000E16 E0               [24] 1590 	movx	a,@dptr
      000E17 60 05            [24] 1591 	jz	00149$
                                   1592 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:291: IE2 |= M_T3IE;
      000E19 43 AF 20         [24] 1593 	orl	_IE2,#0x20
      000E1C 80 03            [24] 1594 	sjmp	00150$
      000E1E                       1595 00149$:
                                   1596 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:293: IE2 &= ~M_T3IE;
      000E1E 53 AF DF         [24] 1597 	anl	_IE2,#0xdf
      000E21                       1598 00150$:
                                   1599 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:297: T4T3M |= M_T3RUN;
      000E21 43 D1 08         [24] 1600 	orl	_T4T3M,#0x08
                                   1601 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:298: break;
                                   1602 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:300: case TIMER4:
      000E24 80 3A            [24] 1603 	sjmp	00160$
      000E26                       1604 00151$:
                                   1605 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:302: T4T3M &= ~M_T4_C_T;
      000E26 53 D1 BF         [24] 1606 	anl	_T4T3M,#0xbf
                                   1607 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:304: if (enableOutput == ENABLE_OUTPUT) {
      000E29 90 00 6E         [24] 1608 	mov	dptr,#_startTimer_PARM_3
      000E2C E0               [24] 1609 	movx	a,@dptr
      000E2D 60 05            [24] 1610 	jz	00153$
                                   1611 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:305: T4T3M |= M_T4CLKO;
      000E2F 43 D1 10         [24] 1612 	orl	_T4T3M,#0x10
      000E32 80 03            [24] 1613 	sjmp	00154$
      000E34                       1614 00153$:
                                   1615 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:307: T4T3M &= ~M_T4CLKO;
      000E34 53 D1 EF         [24] 1616 	anl	_T4T3M,#0xef
      000E37                       1617 00154$:
                                   1618 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:311: T4T3M = (sysclkDiv1) ? (T4T3M | M_T4x12) : (T4T3M & ~M_T4x12);
      000E37 90 00 73         [24] 1619 	mov	dptr,#_startTimer_sysclkDiv1_10000_85
      000E3A E0               [24] 1620 	movx	a,@dptr
      000E3B 60 07            [24] 1621 	jz	00169$
      000E3D 74 20            [12] 1622 	mov	a,#0x20
      000E3F 45 D1            [12] 1623 	orl	a,_T4T3M
      000E41 FD               [12] 1624 	mov	r5,a
      000E42 80 05            [24] 1625 	sjmp	00170$
      000E44                       1626 00169$:
      000E44 74 DF            [12] 1627 	mov	a,#0xdf
      000E46 55 D1            [12] 1628 	anl	a,_T4T3M
      000E48 FD               [12] 1629 	mov	r5,a
      000E49                       1630 00170$:
      000E49 8D D1            [24] 1631 	mov	_T4T3M,r5
                                   1632 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:314: T4 = reloadValue;
      000E4B 8E D3            [24] 1633 	mov	((_T4 >> 0) & 0xFF),r6
      000E4D 8F D2            [24] 1634 	mov	((_T4 >> 8) & 0xFF),r7
                                   1635 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:316: if (enableInterrupt == ENABLE_INTERRUPT) {
      000E4F 90 00 6F         [24] 1636 	mov	dptr,#_startTimer_PARM_4
      000E52 E0               [24] 1637 	movx	a,@dptr
      000E53 60 05            [24] 1638 	jz	00156$
                                   1639 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:317: IE2 |= M_T4IE;
      000E55 43 AF 40         [24] 1640 	orl	_IE2,#0x40
      000E58 80 03            [24] 1641 	sjmp	00157$
      000E5A                       1642 00156$:
                                   1643 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:319: IE2 &= ~M_T4IE;
      000E5A 53 AF BF         [24] 1644 	anl	_IE2,#0xbf
      000E5D                       1645 00157$:
                                   1646 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:323: T4T3M |= M_T4RUN;
      000E5D 43 D1 80         [24] 1647 	orl	_T4T3M,#0x80
                                   1648 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:355: }
      000E60                       1649 00160$:
                                   1650 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:358: return rc;
      000E60 90 00 72         [24] 1651 	mov	dptr,#_startTimer_rc_10000_85
      000E63 E0               [24] 1652 	movx	a,@dptr
                                   1653 ;	/Users/ambadran717/.stc/uni-stc/hal/timer-hal.c:359: }
      000E64 F5 82            [12] 1654 	mov	dpl,a
      000E66 22               [24] 1655 	ret
                                   1656 	.area CSEG    (CODE)
                                   1657 	.area CONST   (CODE)
                                   1658 	.area XINIT   (CODE)
                                   1659 	.area CABS    (ABS,CODE)
