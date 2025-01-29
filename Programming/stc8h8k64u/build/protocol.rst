                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module protocol
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
                                    156 	.globl _DMA_UR4R_TXAL
                                    157 	.globl _DMA_UR4R_TXAH
                                    158 	.globl _DMA_UR4R_DONE
                                    159 	.globl _DMA_UR4R_AMT
                                    160 	.globl _DMA_UR4R_STA
                                    161 	.globl _DMA_UR4R_CR
                                    162 	.globl _DMA_UR4R_CFG
                                    163 	.globl _DMA_UR4T_TXAL
                                    164 	.globl _DMA_UR4T_TXAH
                                    165 	.globl _DMA_UR4T_DONE
                                    166 	.globl _DMA_UR4T_AMT
                                    167 	.globl _DMA_UR4T_STA
                                    168 	.globl _DMA_UR4T_CR
                                    169 	.globl _DMA_UR4T_CFG
                                    170 	.globl _DMA_UR3R_TXAL
                                    171 	.globl _DMA_UR3R_TXAH
                                    172 	.globl _DMA_UR3R_DONE
                                    173 	.globl _DMA_UR3R_AMT
                                    174 	.globl _DMA_UR3R_STA
                                    175 	.globl _DMA_UR3R_CR
                                    176 	.globl _DMA_UR3R_CFG
                                    177 	.globl _DMA_UR3T_TXAL
                                    178 	.globl _DMA_UR3T_TXAH
                                    179 	.globl _DMA_UR3T_DONE
                                    180 	.globl _DMA_UR3T_AMT
                                    181 	.globl _DMA_UR3T_STA
                                    182 	.globl _DMA_UR3T_CR
                                    183 	.globl _DMA_UR3T_CFG
                                    184 	.globl _DMA_UR2R_TXAL
                                    185 	.globl _DMA_UR2R_TXAH
                                    186 	.globl _DMA_UR2R_DONE
                                    187 	.globl _DMA_UR2R_AMT
                                    188 	.globl _DMA_UR2R_STA
                                    189 	.globl _DMA_UR2R_CR
                                    190 	.globl _DMA_UR2R_CFG
                                    191 	.globl _DMA_UR2T_TXAL
                                    192 	.globl _DMA_UR2T_TXAH
                                    193 	.globl _DMA_UR2T_DONE
                                    194 	.globl _DMA_UR2T_AMT
                                    195 	.globl _DMA_UR2T_STA
                                    196 	.globl _DMA_UR2T_CR
                                    197 	.globl _DMA_UR2T_CFG
                                    198 	.globl _DMA_UR1R_TXAL
                                    199 	.globl _DMA_UR1R_TXAH
                                    200 	.globl _DMA_UR1R_DONE
                                    201 	.globl _DMA_UR1R_AMT
                                    202 	.globl _DMA_UR1R_STA
                                    203 	.globl _DMA_UR1R_CR
                                    204 	.globl _DMA_UR1R_CFG
                                    205 	.globl _DMA_UR1T_TXAL
                                    206 	.globl _DMA_UR1T_TXAH
                                    207 	.globl _DMA_UR1T_DONE
                                    208 	.globl _DMA_URTX_AMT
                                    209 	.globl _DMA_UR1T_STA
                                    210 	.globl _DMA_UR1T_CR
                                    211 	.globl _DMA_UR1T_CFG
                                    212 	.globl _TM4PS
                                    213 	.globl _TM3PS
                                    214 	.globl _TM2PS
                                    215 	.globl _IRC48MCR
                                    216 	.globl _IRCDB
                                    217 	.globl _MCLKOCR
                                    218 	.globl _CKSEL
                                    219 	.globl _IRC32KCR
                                    220 	.globl _XOSCCR
                                    221 	.globl _HIRCCR
                                    222 	.globl _CLKDIV
                                    223 	.globl _DMA_SPI_CFG2
                                    224 	.globl _DMA_SPI_RXAL
                                    225 	.globl _DMA_SPI_RXAH
                                    226 	.globl _DMA_SPI_TXAL
                                    227 	.globl _DMA_SPI_TXAH
                                    228 	.globl _DMA_SPI_DONE
                                    229 	.globl _DMA_SPI_AMT
                                    230 	.globl _DMA_SPI_STA
                                    231 	.globl _DMA_SPI_CR
                                    232 	.globl _DMA_SPI_CFG
                                    233 	.globl _SSEC
                                    234 	.globl _SEC
                                    235 	.globl _MIN
                                    236 	.globl _HOUR
                                    237 	.globl _DAY
                                    238 	.globl _MONTH
                                    239 	.globl _YEAR
                                    240 	.globl _INISSEC
                                    241 	.globl _INISEC
                                    242 	.globl _INIMIN
                                    243 	.globl _INIHOUR
                                    244 	.globl _INIDAY
                                    245 	.globl _INIMONTH
                                    246 	.globl _INIYEAR
                                    247 	.globl _ALASSEC
                                    248 	.globl _ALASEC
                                    249 	.globl _ALAMIN
                                    250 	.globl _ALAHOUR
                                    251 	.globl _RTCIF
                                    252 	.globl _RTCIEN
                                    253 	.globl _RTCCFG
                                    254 	.globl _RTCCR
                                    255 	.globl _PWMB_OISR
                                    256 	.globl _PWMB_DTR
                                    257 	.globl _PWMB_BKR
                                    258 	.globl _PWMB_CCR4L
                                    259 	.globl _PWMB_CCR4H
                                    260 	.globl _PWMB_CCR3L
                                    261 	.globl _PWMB_CCR3H
                                    262 	.globl _PWMB_CCR2L
                                    263 	.globl _PWMB_CCR2H
                                    264 	.globl _PWMB_CCR1L
                                    265 	.globl _PWMB_CCR1H
                                    266 	.globl _PWMB_RCR
                                    267 	.globl _PWMB_ARRL
                                    268 	.globl _PWMB_ARRH
                                    269 	.globl _PWMB_PSCRL
                                    270 	.globl _PWMB_PSCRH
                                    271 	.globl _PWMB_CNTRL
                                    272 	.globl _PWMB_CNTRH
                                    273 	.globl _PWMB_CCER2
                                    274 	.globl _PWMB_CCER1
                                    275 	.globl _PWMB_CCMR4
                                    276 	.globl _PWMB_CCMR3
                                    277 	.globl _PWMB_CCMR2
                                    278 	.globl _PWMB_CCMR1
                                    279 	.globl _PWMB_EGR
                                    280 	.globl _PWMB_SR2
                                    281 	.globl _PWMB_SR1
                                    282 	.globl _PWMB_IER
                                    283 	.globl _PWMB_ETR
                                    284 	.globl _PWMB_SMCR
                                    285 	.globl _PWMB_CR2
                                    286 	.globl _PWMB_CR1
                                    287 	.globl _PWMA_OISR
                                    288 	.globl _PWMA_DTR
                                    289 	.globl _PWMA_BKR
                                    290 	.globl _PWMA_CCR4L
                                    291 	.globl _PWMA_CCR4H
                                    292 	.globl _PWMA_CCR3L
                                    293 	.globl _PWMA_CCR3H
                                    294 	.globl _PWMA_CCR2L
                                    295 	.globl _PWMA_CCR2H
                                    296 	.globl _PWMA_CCR1L
                                    297 	.globl _PWMA_CCR1H
                                    298 	.globl _PWMA_RCR
                                    299 	.globl _PWMA_ARRL
                                    300 	.globl _PWMA_ARRH
                                    301 	.globl _PWMA_PSCRL
                                    302 	.globl _PWMA_PSCRH
                                    303 	.globl _PWMA_CNTRL
                                    304 	.globl _PWMA_CNTRH
                                    305 	.globl _PWMA_CCER2
                                    306 	.globl _PWMA_CCER1
                                    307 	.globl _PWMA_CCMR4
                                    308 	.globl _PWMA_CCMR3
                                    309 	.globl _PWMA_CCMR2
                                    310 	.globl _PWMA_CCMR1
                                    311 	.globl _PWMA_EGR
                                    312 	.globl _PWMA_SR2
                                    313 	.globl _PWMA_SR1
                                    314 	.globl _PWMA_IER
                                    315 	.globl _PWMA_ETR
                                    316 	.globl _PWMA_SMCR
                                    317 	.globl _PWMA_CR2
                                    318 	.globl _PWMA_CR1
                                    319 	.globl _PWMB_IOAUX
                                    320 	.globl _PWMB_PS
                                    321 	.globl _PWMB_ENO
                                    322 	.globl _PWMB_ETRPS
                                    323 	.globl _PWMA_IOAUX
                                    324 	.globl _PWMA_PS
                                    325 	.globl _PWMA_ENO
                                    326 	.globl _PWMA_ETRPS
                                    327 	.globl _RSTFLAG
                                    328 	.globl _SPFUNC
                                    329 	.globl _OPCON
                                    330 	.globl _ARCON
                                    331 	.globl _MD4
                                    332 	.globl _MD5
                                    333 	.globl _MD0
                                    334 	.globl _MD1
                                    335 	.globl _MD2
                                    336 	.globl _MD3
                                    337 	.globl _DMA_LCM_RXAL
                                    338 	.globl _DMA_LCM_RXAH
                                    339 	.globl _DMA_LCM_TXAL
                                    340 	.globl _DMA_LCM_TXAH
                                    341 	.globl _DMA_LCM_DONE
                                    342 	.globl _DMA_LCM_AMT
                                    343 	.globl _DMA_LCM_STA
                                    344 	.globl _DMA_LCM_CR
                                    345 	.globl _DMA_LCM_CFG
                                    346 	.globl _LCMIDDAT
                                    347 	.globl _LCMIDDATH
                                    348 	.globl _LCMIDDATL
                                    349 	.globl _LCMSTA
                                    350 	.globl _LCMCR
                                    351 	.globl _LCMCFG2
                                    352 	.globl _LCMCFG
                                    353 	.globl _I2CMSAUX
                                    354 	.globl _I2CRXD
                                    355 	.globl _I2CTXD
                                    356 	.globl _I2CSLADR
                                    357 	.globl _I2CSLST
                                    358 	.globl _I2CSLCR
                                    359 	.globl _I2CMSST
                                    360 	.globl _I2CMSCR
                                    361 	.globl _I2CCFG
                                    362 	.globl _PINIPH
                                    363 	.globl _PINIPL
                                    364 	.globl _P5IE
                                    365 	.globl _P5DR
                                    366 	.globl _P5SR
                                    367 	.globl _P5NCS
                                    368 	.globl _P5PU
                                    369 	.globl _P5WKUE
                                    370 	.globl _P5IM1
                                    371 	.globl _P5IM0
                                    372 	.globl _P5INTF
                                    373 	.globl _P5INTE
                                    374 	.globl _P3IE
                                    375 	.globl _P3DR
                                    376 	.globl _P3SR
                                    377 	.globl _P3NCS
                                    378 	.globl _P3PU
                                    379 	.globl _P3WKUE
                                    380 	.globl _P3IM1
                                    381 	.globl _P3IM0
                                    382 	.globl _P3INTF
                                    383 	.globl _P3INTE
                                    384 	.globl _P2IE
                                    385 	.globl _P2DR
                                    386 	.globl _P2SR
                                    387 	.globl _P2NCS
                                    388 	.globl _P2PU
                                    389 	.globl _P2WKUE
                                    390 	.globl _P2IM1
                                    391 	.globl _P2IM0
                                    392 	.globl _P2INTF
                                    393 	.globl _P2INTE
                                    394 	.globl _P1IE
                                    395 	.globl _P1DR
                                    396 	.globl _P1SR
                                    397 	.globl _P1NCS
                                    398 	.globl _P1PU
                                    399 	.globl _P1WKUE
                                    400 	.globl _P1IM1
                                    401 	.globl _P1IM0
                                    402 	.globl _P1INTF
                                    403 	.globl _P1INTE
                                    404 	.globl _DMA_M2M_RXAL
                                    405 	.globl _DMA_M2M_RXAH
                                    406 	.globl _DMA_M2M_TXAL
                                    407 	.globl _DMA_M2M_TXAH
                                    408 	.globl _DMA_M2M_DONE
                                    409 	.globl _DMA_M2M_AMT
                                    410 	.globl _DMA_M2M_STA
                                    411 	.globl _DMA_M2M_CR
                                    412 	.globl _DMA_M2M_CFG
                                    413 	.globl _CMPEXCFG
                                    414 	.globl _DMA_ADC_CHSW1
                                    415 	.globl _DMA_ADC_CHSW0
                                    416 	.globl _DMA_ADC_CFG2
                                    417 	.globl _DMA_ADC_RXAL
                                    418 	.globl _DMA_ADC_RXAH
                                    419 	.globl _DMA_ADC_STA
                                    420 	.globl _DMA_ADC_CR
                                    421 	.globl _DMA_ADC_CFG
                                    422 	.globl _ADCEXCFG
                                    423 	.globl _ADCTIM
                                    424 ;--------------------------------------------------------
                                    425 ; special function registers
                                    426 ;--------------------------------------------------------
                                    427 	.area RSEG    (ABS,DATA)
      000000                        428 	.org 0x0000
                           0000BC   429 _ADC_CONTR	=	0x00bc
                           0000BD   430 _ADC_RESH	=	0x00bd
                           0000BE   431 _ADC_RESL	=	0x00be
                           00BDBE   432 _ADC_RES	=	0xbdbe
                           0000DE   433 _ADCCFG	=	0x00de
                           0000FA   434 _DMA_ADC_AMT	=	0x00fa
                           0000E6   435 _CMPCR1	=	0x00e6
                           0000E7   436 _CMPCR2	=	0x00e7
                           000082   437 _DPL	=	0x0082
                           000083   438 _DPH	=	0x0083
                           008382   439 _DP	=	0x8382
                           0000E3   440 _DPS	=	0x00e3
                           0000E4   441 _DPL1	=	0x00e4
                           0000E5   442 _DPH1	=	0x00e5
                           0000AE   443 _TA	=	0x00ae
                           000090   444 _P1	=	0x0090
                           000091   445 _P1M1	=	0x0091
                           000092   446 _P1M0	=	0x0092
                           0000A0   447 _P2	=	0x00a0
                           000095   448 _P2M1	=	0x0095
                           000096   449 _P2M0	=	0x0096
                           0000B0   450 _P3	=	0x00b0
                           0000B1   451 _P3M1	=	0x00b1
                           0000B2   452 _P3M0	=	0x00b2
                           0000C8   453 _P5	=	0x00c8
                           0000C9   454 _P5M1	=	0x00c9
                           0000CA   455 _P5M0	=	0x00ca
                           0000C2   456 _IAP_DATA	=	0x00c2
                           0000C3   457 _IAP_ADDRH	=	0x00c3
                           0000C4   458 _IAP_ADDRL	=	0x00c4
                           00C3C4   459 _IAP_ADDR	=	0xc3c4
                           0000C5   460 _IAP_CMD	=	0x00c5
                           0000C6   461 _IAP_TRIG	=	0x00c6
                           0000C7   462 _IAP_CONTR	=	0x00c7
                           0000F5   463 _IAP_TPS	=	0x00f5
                           00008F   464 _INT_CLKO	=	0x008f
                           0000A8   465 _IE1	=	0x00a8
                           0000B8   466 _IP1L	=	0x00b8
                           0000B7   467 _IP1H	=	0x00b7
                           0000AF   468 _IE2	=	0x00af
                           0000B5   469 _IP2L	=	0x00b5
                           0000B6   470 _IP2H	=	0x00b6
                           0000DF   471 _IP3L	=	0x00df
                           0000EE   472 _IP3H	=	0x00ee
                           000081   473 _SP	=	0x0081
                           0000D0   474 _PSW	=	0x00d0
                           0000E0   475 _ACC	=	0x00e0
                           0000F0   476 _B	=	0x00f0
                           000087   477 _PCON	=	0x0087
                           0000FF   478 _RSTCFG	=	0x00ff
                           0000A2   479 _P_SW1	=	0x00a2
                           0000BA   480 _P_SW2	=	0x00ba
                           0000A1   481 _BUS_SPEED	=	0x00a1
                           0000AA   482 _WKTCL	=	0x00aa
                           0000AB   483 _WKTCH	=	0x00ab
                           00ABAA   484 _WKTC	=	0xabaa
                           0000CD   485 _SPSTAT	=	0x00cd
                           0000CE   486 _SPCTL	=	0x00ce
                           0000CF   487 _SPDAT	=	0x00cf
                           00009D   488 _IRCBAND	=	0x009d
                           00009E   489 _LIRTRIM	=	0x009e
                           00009F   490 _IRTRIM	=	0x009f
                           000088   491 _TCON	=	0x0088
                           000089   492 _TMOD	=	0x0089
                           00008A   493 _T0L	=	0x008a
                           00008C   494 _T0H	=	0x008c
                           008C8A   495 _T0	=	0x8c8a
                           00008B   496 _T1L	=	0x008b
                           00008D   497 _T1H	=	0x008d
                           008D8B   498 _T1	=	0x8d8b
                           0000D7   499 _T2L	=	0x00d7
                           0000D6   500 _T2H	=	0x00d6
                           00D6D7   501 _T2	=	0xd6d7
                           00008E   502 _AUXR	=	0x008e
                           0000C1   503 _WDT_CONTR	=	0x00c1
                           0000D1   504 _T4T3M	=	0x00d1
                           0000D2   505 _T4H	=	0x00d2
                           0000D3   506 _T4L	=	0x00d3
                           00D2D3   507 _T4	=	0xd2d3
                           0000D4   508 _T3H	=	0x00d4
                           0000D5   509 _T3L	=	0x00d5
                           00D4D5   510 _T3	=	0xd4d5
                           0000EF   511 _AUXINTIF	=	0x00ef
                           0000A9   512 _SADDR	=	0x00a9
                           0000B9   513 _SADEN	=	0x00b9
                           000098   514 _S1CON	=	0x0098
                           000099   515 _S1BUF	=	0x0099
                           00009A   516 _S2CON	=	0x009a
                           00009B   517 _S2BUF	=	0x009b
                           0000AC   518 _S3CON	=	0x00ac
                           0000AD   519 _S3BUF	=	0x00ad
                           000084   520 _S4CON	=	0x0084
                           000085   521 _S4BUF	=	0x0085
                           0000DC   522 _USBCLK	=	0x00dc
                           0000EC   523 _USBDAT	=	0x00ec
                           0000F4   524 _USBCON	=	0x00f4
                           0000FC   525 _USBADR	=	0x00fc
                                    526 ;--------------------------------------------------------
                                    527 ; special function bits
                                    528 ;--------------------------------------------------------
                                    529 	.area RSEG    (ABS,DATA)
      000000                        530 	.org 0x0000
                           000090   531 _P1_0	=	0x0090
                           000091   532 _P1_1	=	0x0091
                           000092   533 _P1_2	=	0x0092
                           000093   534 _P1_3	=	0x0093
                           000094   535 _P1_4	=	0x0094
                           000095   536 _P1_5	=	0x0095
                           000096   537 _P1_6	=	0x0096
                           000097   538 _P1_7	=	0x0097
                           0000A0   539 _P2_0	=	0x00a0
                           0000A1   540 _P2_1	=	0x00a1
                           0000A2   541 _P2_2	=	0x00a2
                           0000A3   542 _P2_3	=	0x00a3
                           0000A4   543 _P2_4	=	0x00a4
                           0000A5   544 _P2_5	=	0x00a5
                           0000A6   545 _P2_6	=	0x00a6
                           0000A7   546 _P2_7	=	0x00a7
                           0000B0   547 _P3_0	=	0x00b0
                           0000B1   548 _P3_1	=	0x00b1
                           0000B2   549 _P3_2	=	0x00b2
                           0000B3   550 _P3_3	=	0x00b3
                           0000B4   551 _P3_4	=	0x00b4
                           0000B5   552 _P3_5	=	0x00b5
                           0000B6   553 _P3_6	=	0x00b6
                           0000B7   554 _P3_7	=	0x00b7
                           0000C8   555 _P5_0	=	0x00c8
                           0000C9   556 _P5_1	=	0x00c9
                           0000CA   557 _P5_2	=	0x00ca
                           0000CB   558 _P5_3	=	0x00cb
                           0000CC   559 _P5_4	=	0x00cc
                           0000CD   560 _P5_5	=	0x00cd
                           000088   561 _INT0TR	=	0x0088
                           00008A   562 _INT1TR	=	0x008a
                           0000A8   563 _INT0IE	=	0x00a8
                           0000AA   564 _INT1IE	=	0x00aa
                           0000AF   565 _EA	=	0x00af
                           0000D0   566 _P	=	0x00d0
                           0000D1   567 _F1	=	0x00d1
                           0000D2   568 _OV	=	0x00d2
                           0000D3   569 _RS0	=	0x00d3
                           0000D4   570 _RS1	=	0x00d4
                           0000D5   571 _F0	=	0x00d5
                           0000D6   572 _AC	=	0x00d6
                           0000D7   573 _CY	=	0x00d7
                           00008C   574 _T0RUN	=	0x008c
                           00008E   575 _T1RUN	=	0x008e
                           0000A9   576 _T0IE	=	0x00a9
                           0000AB   577 _T1IE	=	0x00ab
                           00009F   578 _S1SM0_FE	=	0x009f
                                    579 ;--------------------------------------------------------
                                    580 ; overlayable register banks
                                    581 ;--------------------------------------------------------
                                    582 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        583 	.ds 8
                                    584 ;--------------------------------------------------------
                                    585 ; internal ram data
                                    586 ;--------------------------------------------------------
                                    587 	.area DSEG    (DATA)
                                    588 ;--------------------------------------------------------
                                    589 ; overlayable items in internal ram 
                                    590 ;--------------------------------------------------------
                                    591 ;--------------------------------------------------------
                                    592 ; indirectly addressable internal ram data
                                    593 ;--------------------------------------------------------
                                    594 	.area ISEG    (DATA)
                                    595 ;--------------------------------------------------------
                                    596 ; absolute internal ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area IABS    (ABS,DATA)
                                    599 	.area IABS    (ABS,DATA)
                                    600 ;--------------------------------------------------------
                                    601 ; bit data
                                    602 ;--------------------------------------------------------
                                    603 	.area BSEG    (BIT)
                                    604 ;--------------------------------------------------------
                                    605 ; paged external ram data
                                    606 ;--------------------------------------------------------
                                    607 	.area PSEG    (PAG,XDATA)
                                    608 ;--------------------------------------------------------
                                    609 ; external ram data
                                    610 ;--------------------------------------------------------
                                    611 	.area XSEG    (XDATA)
                           00FEA8   612 _ADCTIM	=	0xfea8
                           00FEAD   613 _ADCEXCFG	=	0xfead
                           00FA10   614 _DMA_ADC_CFG	=	0xfa10
                           00FA11   615 _DMA_ADC_CR	=	0xfa11
                           00FA12   616 _DMA_ADC_STA	=	0xfa12
                           00FA17   617 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   618 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   619 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   620 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   621 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   622 _CMPEXCFG	=	0xfeae
                           00FA00   623 _DMA_M2M_CFG	=	0xfa00
                           00FA01   624 _DMA_M2M_CR	=	0xfa01
                           00FA02   625 _DMA_M2M_STA	=	0xfa02
                           00FA03   626 _DMA_M2M_AMT	=	0xfa03
                           00FA04   627 _DMA_M2M_DONE	=	0xfa04
                           00FA05   628 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   629 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   630 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   631 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   632 _P1INTE	=	0xfd01
                           00FD11   633 _P1INTF	=	0xfd11
                           00FD21   634 _P1IM0	=	0xfd21
                           00FD31   635 _P1IM1	=	0xfd31
                           00FD41   636 _P1WKUE	=	0xfd41
                           00FE11   637 _P1PU	=	0xfe11
                           00FE19   638 _P1NCS	=	0xfe19
                           00FE21   639 _P1SR	=	0xfe21
                           00FE29   640 _P1DR	=	0xfe29
                           00FE31   641 _P1IE	=	0xfe31
                           00FD02   642 _P2INTE	=	0xfd02
                           00FD12   643 _P2INTF	=	0xfd12
                           00FD22   644 _P2IM0	=	0xfd22
                           00FD32   645 _P2IM1	=	0xfd32
                           00FD42   646 _P2WKUE	=	0xfd42
                           00FE12   647 _P2PU	=	0xfe12
                           00FE1A   648 _P2NCS	=	0xfe1a
                           00FE22   649 _P2SR	=	0xfe22
                           00FE2A   650 _P2DR	=	0xfe2a
                           00FE32   651 _P2IE	=	0xfe32
                           00FD03   652 _P3INTE	=	0xfd03
                           00FD13   653 _P3INTF	=	0xfd13
                           00FD23   654 _P3IM0	=	0xfd23
                           00FD33   655 _P3IM1	=	0xfd33
                           00FD43   656 _P3WKUE	=	0xfd43
                           00FE13   657 _P3PU	=	0xfe13
                           00FE1B   658 _P3NCS	=	0xfe1b
                           00FE23   659 _P3SR	=	0xfe23
                           00FE2B   660 _P3DR	=	0xfe2b
                           00FE33   661 _P3IE	=	0xfe33
                           00FD05   662 _P5INTE	=	0xfd05
                           00FD15   663 _P5INTF	=	0xfd15
                           00FD25   664 _P5IM0	=	0xfd25
                           00FD35   665 _P5IM1	=	0xfd35
                           00FD45   666 _P5WKUE	=	0xfd45
                           00FE15   667 _P5PU	=	0xfe15
                           00FE1D   668 _P5NCS	=	0xfe1d
                           00FE25   669 _P5SR	=	0xfe25
                           00FE2D   670 _P5DR	=	0xfe2d
                           00FE35   671 _P5IE	=	0xfe35
                           00FD60   672 _PINIPL	=	0xfd60
                           00FD61   673 _PINIPH	=	0xfd61
                           00FE80   674 _I2CCFG	=	0xfe80
                           00FE81   675 _I2CMSCR	=	0xfe81
                           00FE82   676 _I2CMSST	=	0xfe82
                           00FE83   677 _I2CSLCR	=	0xfe83
                           00FE84   678 _I2CSLST	=	0xfe84
                           00FE85   679 _I2CSLADR	=	0xfe85
                           00FE86   680 _I2CTXD	=	0xfe86
                           00FE87   681 _I2CRXD	=	0xfe87
                           00FE88   682 _I2CMSAUX	=	0xfe88
                           00FE50   683 _LCMCFG	=	0xfe50
                           00FE51   684 _LCMCFG2	=	0xfe51
                           00FE52   685 _LCMCR	=	0xfe52
                           00FE53   686 _LCMSTA	=	0xfe53
                           00FE54   687 _LCMIDDATL	=	0xfe54
                           00FE55   688 _LCMIDDATH	=	0xfe55
                           00FE54   689 _LCMIDDAT	=	0xfe54
                           00FA70   690 _DMA_LCM_CFG	=	0xfa70
                           00FA71   691 _DMA_LCM_CR	=	0xfa71
                           00FA72   692 _DMA_LCM_STA	=	0xfa72
                           00FA73   693 _DMA_LCM_AMT	=	0xfa73
                           00FA74   694 _DMA_LCM_DONE	=	0xfa74
                           00FA75   695 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   696 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   697 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   698 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   699 _MD3	=	0xfcf0
                           00FCF1   700 _MD2	=	0xfcf1
                           00FCF2   701 _MD1	=	0xfcf2
                           00FCF3   702 _MD0	=	0xfcf3
                           00FCF4   703 _MD5	=	0xfcf4
                           00FCF5   704 _MD4	=	0xfcf5
                           00FCF6   705 _ARCON	=	0xfcf6
                           00FCF7   706 _OPCON	=	0xfcf7
                           00FE08   707 _SPFUNC	=	0xfe08
                           00FE09   708 _RSTFLAG	=	0xfe09
                           00FEB0   709 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   710 _PWMA_ENO	=	0xfeb1
                           00FEB2   711 _PWMA_PS	=	0xfeb2
                           00FEB3   712 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   713 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   714 _PWMB_ENO	=	0xfeb5
                           00FEB6   715 _PWMB_PS	=	0xfeb6
                           00FEB7   716 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   717 _PWMA_CR1	=	0xfec0
                           00FEC1   718 _PWMA_CR2	=	0xfec1
                           00FEC2   719 _PWMA_SMCR	=	0xfec2
                           00FEC3   720 _PWMA_ETR	=	0xfec3
                           00FEC4   721 _PWMA_IER	=	0xfec4
                           00FEC5   722 _PWMA_SR1	=	0xfec5
                           00FEC6   723 _PWMA_SR2	=	0xfec6
                           00FEC7   724 _PWMA_EGR	=	0xfec7
                           00FEC8   725 _PWMA_CCMR1	=	0xfec8
                           00FEC9   726 _PWMA_CCMR2	=	0xfec9
                           00FECA   727 _PWMA_CCMR3	=	0xfeca
                           00FECB   728 _PWMA_CCMR4	=	0xfecb
                           00FECC   729 _PWMA_CCER1	=	0xfecc
                           00FECD   730 _PWMA_CCER2	=	0xfecd
                           00FECE   731 _PWMA_CNTRH	=	0xfece
                           00FECF   732 _PWMA_CNTRL	=	0xfecf
                           00FED0   733 _PWMA_PSCRH	=	0xfed0
                           00FED1   734 _PWMA_PSCRL	=	0xfed1
                           00FED2   735 _PWMA_ARRH	=	0xfed2
                           00FED3   736 _PWMA_ARRL	=	0xfed3
                           00FED4   737 _PWMA_RCR	=	0xfed4
                           00FED5   738 _PWMA_CCR1H	=	0xfed5
                           00FED6   739 _PWMA_CCR1L	=	0xfed6
                           00FED7   740 _PWMA_CCR2H	=	0xfed7
                           00FED8   741 _PWMA_CCR2L	=	0xfed8
                           00FED9   742 _PWMA_CCR3H	=	0xfed9
                           00FEDA   743 _PWMA_CCR3L	=	0xfeda
                           00FEDB   744 _PWMA_CCR4H	=	0xfedb
                           00FEDC   745 _PWMA_CCR4L	=	0xfedc
                           00FEDD   746 _PWMA_BKR	=	0xfedd
                           00FEDE   747 _PWMA_DTR	=	0xfede
                           00FEDF   748 _PWMA_OISR	=	0xfedf
                           00FEE0   749 _PWMB_CR1	=	0xfee0
                           00FEE1   750 _PWMB_CR2	=	0xfee1
                           00FEE2   751 _PWMB_SMCR	=	0xfee2
                           00FEE3   752 _PWMB_ETR	=	0xfee3
                           00FEE4   753 _PWMB_IER	=	0xfee4
                           00FEE5   754 _PWMB_SR1	=	0xfee5
                           00FEE6   755 _PWMB_SR2	=	0xfee6
                           00FEE7   756 _PWMB_EGR	=	0xfee7
                           00FEE8   757 _PWMB_CCMR1	=	0xfee8
                           00FEE9   758 _PWMB_CCMR2	=	0xfee9
                           00FEEA   759 _PWMB_CCMR3	=	0xfeea
                           00FEEB   760 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   761 _PWMB_CCER1	=	0xfeec
                           00FEED   762 _PWMB_CCER2	=	0xfeed
                           00FEEE   763 _PWMB_CNTRH	=	0xfeee
                           00FEEF   764 _PWMB_CNTRL	=	0xfeef
                           00FEF0   765 _PWMB_PSCRH	=	0xfef0
                           00FEF1   766 _PWMB_PSCRL	=	0xfef1
                           00FEF2   767 _PWMB_ARRH	=	0xfef2
                           00FEF3   768 _PWMB_ARRL	=	0xfef3
                           00FEF4   769 _PWMB_RCR	=	0xfef4
                           00FEF5   770 _PWMB_CCR1H	=	0xfef5
                           00FEF6   771 _PWMB_CCR1L	=	0xfef6
                           00FEF7   772 _PWMB_CCR2H	=	0xfef7
                           00FEF8   773 _PWMB_CCR2L	=	0xfef8
                           00FEF9   774 _PWMB_CCR3H	=	0xfef9
                           00FEFA   775 _PWMB_CCR3L	=	0xfefa
                           00FEFB   776 _PWMB_CCR4H	=	0xfefb
                           00FEFC   777 _PWMB_CCR4L	=	0xfefc
                           00FEFD   778 _PWMB_BKR	=	0xfefd
                           00FEFE   779 _PWMB_DTR	=	0xfefe
                           00FEFF   780 _PWMB_OISR	=	0xfeff
                           00FE60   781 _RTCCR	=	0xfe60
                           00FE61   782 _RTCCFG	=	0xfe61
                           00FE62   783 _RTCIEN	=	0xfe62
                           00FE63   784 _RTCIF	=	0xfe63
                           00FE64   785 _ALAHOUR	=	0xfe64
                           00FE65   786 _ALAMIN	=	0xfe65
                           00FE66   787 _ALASEC	=	0xfe66
                           00FE67   788 _ALASSEC	=	0xfe67
                           00FE68   789 _INIYEAR	=	0xfe68
                           00FE69   790 _INIMONTH	=	0xfe69
                           00FE6A   791 _INIDAY	=	0xfe6a
                           00FE6B   792 _INIHOUR	=	0xfe6b
                           00FE6C   793 _INIMIN	=	0xfe6c
                           00FE6D   794 _INISEC	=	0xfe6d
                           00FE6E   795 _INISSEC	=	0xfe6e
                           00FE70   796 _YEAR	=	0xfe70
                           00FE71   797 _MONTH	=	0xfe71
                           00FE72   798 _DAY	=	0xfe72
                           00FE73   799 _HOUR	=	0xfe73
                           00FE74   800 _MIN	=	0xfe74
                           00FE75   801 _SEC	=	0xfe75
                           00FE76   802 _SSEC	=	0xfe76
                           00FA20   803 _DMA_SPI_CFG	=	0xfa20
                           00FA21   804 _DMA_SPI_CR	=	0xfa21
                           00FA22   805 _DMA_SPI_STA	=	0xfa22
                           00FA23   806 _DMA_SPI_AMT	=	0xfa23
                           00FA24   807 _DMA_SPI_DONE	=	0xfa24
                           00FA25   808 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   809 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   810 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   811 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   812 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   813 _CLKDIV	=	0xfe01
                           00FE02   814 _HIRCCR	=	0xfe02
                           00FE03   815 _XOSCCR	=	0xfe03
                           00FE04   816 _IRC32KCR	=	0xfe04
                           00FE00   817 _CKSEL	=	0xfe00
                           00FE05   818 _MCLKOCR	=	0xfe05
                           00FE06   819 _IRCDB	=	0xfe06
                           00FE07   820 _IRC48MCR	=	0xfe07
                           00FEA2   821 _TM2PS	=	0xfea2
                           00FEA3   822 _TM3PS	=	0xfea3
                           00FEA4   823 _TM4PS	=	0xfea4
                           00FA30   824 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   825 _DMA_UR1T_CR	=	0xfa31
                           00FA32   826 _DMA_UR1T_STA	=	0xfa32
                           00FA33   827 _DMA_URTX_AMT	=	0xfa33
                           00FA34   828 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   829 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   830 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   831 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   832 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   833 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   834 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   835 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   836 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   837 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   838 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   839 _DMA_UR2T_CR	=	0xfa31
                           00FA32   840 _DMA_UR2T_STA	=	0xfa32
                           00FA33   841 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   842 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   843 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   844 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   845 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   846 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   847 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   848 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   849 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   850 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   851 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   852 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   853 _DMA_UR3T_CR	=	0xfa31
                           00FA32   854 _DMA_UR3T_STA	=	0xfa32
                           00FA33   855 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   856 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   857 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   858 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   859 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   860 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   861 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   862 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   863 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   864 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   865 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   866 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   867 _DMA_UR4T_CR	=	0xfa31
                           00FA32   868 _DMA_UR4T_STA	=	0xfa32
                           00FA33   869 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   870 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   871 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   872 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   873 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   874 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   875 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   876 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   877 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   878 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   879 _DMA_UR4R_TXAL	=	0xfa3e
      0000F8                        880 _uartGetCharacter_result_65536_74:
      0000F8                        881 	.ds 1
                                    882 ;--------------------------------------------------------
                                    883 ; absolute external ram data
                                    884 ;--------------------------------------------------------
                                    885 	.area XABS    (ABS,XDATA)
                                    886 ;--------------------------------------------------------
                                    887 ; external initialized ram data
                                    888 ;--------------------------------------------------------
                                    889 	.area XISEG   (XDATA)
                                    890 	.area HOME    (CODE)
                                    891 	.area GSINIT0 (CODE)
                                    892 	.area GSINIT1 (CODE)
                                    893 	.area GSINIT2 (CODE)
                                    894 	.area GSINIT3 (CODE)
                                    895 	.area GSINIT4 (CODE)
                                    896 	.area GSINIT5 (CODE)
                                    897 	.area GSINIT  (CODE)
                                    898 	.area GSFINAL (CODE)
                                    899 	.area CSEG    (CODE)
                                    900 ;--------------------------------------------------------
                                    901 ; global & static initialisations
                                    902 ;--------------------------------------------------------
                                    903 	.area HOME    (CODE)
                                    904 	.area GSINIT  (CODE)
                                    905 	.area GSFINAL (CODE)
                                    906 	.area GSINIT  (CODE)
                                    907 ;--------------------------------------------------------
                                    908 ; Home
                                    909 ;--------------------------------------------------------
                                    910 	.area HOME    (CODE)
                                    911 	.area HOME    (CODE)
                                    912 ;--------------------------------------------------------
                                    913 ; code
                                    914 ;--------------------------------------------------------
                                    915 	.area CSEG    (CODE)
                                    916 	.area CSEG    (CODE)
                                    917 	.area CONST   (CODE)
                                    918 	.area XINIT   (CODE)
                                    919 	.area CABS    (ABS,CODE)
