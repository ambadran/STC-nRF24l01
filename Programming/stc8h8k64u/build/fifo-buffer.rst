                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fifo_buffer
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
                                    424 	.globl _fifoClear
                                    425 	.globl _fifoIsFull
                                    426 	.globl _fifoBytesFree
                                    427 	.globl _fifoWrite
                                    428 	.globl _fifoRead
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
                                    590 ; overlayable bit register bank
                                    591 ;--------------------------------------------------------
                                    592 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        593 bits:
      000020                        594 	.ds 1
                           008000   595 	b0 = bits[0]
                           008100   596 	b1 = bits[1]
                           008200   597 	b2 = bits[2]
                           008300   598 	b3 = bits[3]
                           008400   599 	b4 = bits[4]
                           008500   600 	b5 = bits[5]
                           008600   601 	b6 = bits[6]
                           008700   602 	b7 = bits[7]
                                    603 ;--------------------------------------------------------
                                    604 ; internal ram data
                                    605 ;--------------------------------------------------------
                                    606 	.area DSEG    (DATA)
                                    607 ;--------------------------------------------------------
                                    608 ; overlayable items in internal ram 
                                    609 ;--------------------------------------------------------
                                    610 ;--------------------------------------------------------
                                    611 ; indirectly addressable internal ram data
                                    612 ;--------------------------------------------------------
                                    613 	.area ISEG    (DATA)
                                    614 ;--------------------------------------------------------
                                    615 ; absolute internal ram data
                                    616 ;--------------------------------------------------------
                                    617 	.area IABS    (ABS,DATA)
                                    618 	.area IABS    (ABS,DATA)
                                    619 ;--------------------------------------------------------
                                    620 ; bit data
                                    621 ;--------------------------------------------------------
                                    622 	.area BSEG    (BIT)
                                    623 ;--------------------------------------------------------
                                    624 ; paged external ram data
                                    625 ;--------------------------------------------------------
                                    626 	.area PSEG    (PAG,XDATA)
                                    627 ;--------------------------------------------------------
                                    628 ; external ram data
                                    629 ;--------------------------------------------------------
                                    630 	.area XSEG    (XDATA)
                           00FEA8   631 _ADCTIM	=	0xfea8
                           00FEAD   632 _ADCEXCFG	=	0xfead
                           00FA10   633 _DMA_ADC_CFG	=	0xfa10
                           00FA11   634 _DMA_ADC_CR	=	0xfa11
                           00FA12   635 _DMA_ADC_STA	=	0xfa12
                           00FA17   636 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   637 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   638 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   639 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   640 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   641 _CMPEXCFG	=	0xfeae
                           00FA00   642 _DMA_M2M_CFG	=	0xfa00
                           00FA01   643 _DMA_M2M_CR	=	0xfa01
                           00FA02   644 _DMA_M2M_STA	=	0xfa02
                           00FA03   645 _DMA_M2M_AMT	=	0xfa03
                           00FA04   646 _DMA_M2M_DONE	=	0xfa04
                           00FA05   647 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   648 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   649 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   650 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   651 _P1INTE	=	0xfd01
                           00FD11   652 _P1INTF	=	0xfd11
                           00FD21   653 _P1IM0	=	0xfd21
                           00FD31   654 _P1IM1	=	0xfd31
                           00FD41   655 _P1WKUE	=	0xfd41
                           00FE11   656 _P1PU	=	0xfe11
                           00FE19   657 _P1NCS	=	0xfe19
                           00FE21   658 _P1SR	=	0xfe21
                           00FE29   659 _P1DR	=	0xfe29
                           00FE31   660 _P1IE	=	0xfe31
                           00FD02   661 _P2INTE	=	0xfd02
                           00FD12   662 _P2INTF	=	0xfd12
                           00FD22   663 _P2IM0	=	0xfd22
                           00FD32   664 _P2IM1	=	0xfd32
                           00FD42   665 _P2WKUE	=	0xfd42
                           00FE12   666 _P2PU	=	0xfe12
                           00FE1A   667 _P2NCS	=	0xfe1a
                           00FE22   668 _P2SR	=	0xfe22
                           00FE2A   669 _P2DR	=	0xfe2a
                           00FE32   670 _P2IE	=	0xfe32
                           00FD03   671 _P3INTE	=	0xfd03
                           00FD13   672 _P3INTF	=	0xfd13
                           00FD23   673 _P3IM0	=	0xfd23
                           00FD33   674 _P3IM1	=	0xfd33
                           00FD43   675 _P3WKUE	=	0xfd43
                           00FE13   676 _P3PU	=	0xfe13
                           00FE1B   677 _P3NCS	=	0xfe1b
                           00FE23   678 _P3SR	=	0xfe23
                           00FE2B   679 _P3DR	=	0xfe2b
                           00FE33   680 _P3IE	=	0xfe33
                           00FD05   681 _P5INTE	=	0xfd05
                           00FD15   682 _P5INTF	=	0xfd15
                           00FD25   683 _P5IM0	=	0xfd25
                           00FD35   684 _P5IM1	=	0xfd35
                           00FD45   685 _P5WKUE	=	0xfd45
                           00FE15   686 _P5PU	=	0xfe15
                           00FE1D   687 _P5NCS	=	0xfe1d
                           00FE25   688 _P5SR	=	0xfe25
                           00FE2D   689 _P5DR	=	0xfe2d
                           00FE35   690 _P5IE	=	0xfe35
                           00FD60   691 _PINIPL	=	0xfd60
                           00FD61   692 _PINIPH	=	0xfd61
                           00FE80   693 _I2CCFG	=	0xfe80
                           00FE81   694 _I2CMSCR	=	0xfe81
                           00FE82   695 _I2CMSST	=	0xfe82
                           00FE83   696 _I2CSLCR	=	0xfe83
                           00FE84   697 _I2CSLST	=	0xfe84
                           00FE85   698 _I2CSLADR	=	0xfe85
                           00FE86   699 _I2CTXD	=	0xfe86
                           00FE87   700 _I2CRXD	=	0xfe87
                           00FE88   701 _I2CMSAUX	=	0xfe88
                           00FE50   702 _LCMCFG	=	0xfe50
                           00FE51   703 _LCMCFG2	=	0xfe51
                           00FE52   704 _LCMCR	=	0xfe52
                           00FE53   705 _LCMSTA	=	0xfe53
                           00FE54   706 _LCMIDDATL	=	0xfe54
                           00FE55   707 _LCMIDDATH	=	0xfe55
                           00FE54   708 _LCMIDDAT	=	0xfe54
                           00FA70   709 _DMA_LCM_CFG	=	0xfa70
                           00FA71   710 _DMA_LCM_CR	=	0xfa71
                           00FA72   711 _DMA_LCM_STA	=	0xfa72
                           00FA73   712 _DMA_LCM_AMT	=	0xfa73
                           00FA74   713 _DMA_LCM_DONE	=	0xfa74
                           00FA75   714 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   715 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   716 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   717 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   718 _MD3	=	0xfcf0
                           00FCF1   719 _MD2	=	0xfcf1
                           00FCF2   720 _MD1	=	0xfcf2
                           00FCF3   721 _MD0	=	0xfcf3
                           00FCF4   722 _MD5	=	0xfcf4
                           00FCF5   723 _MD4	=	0xfcf5
                           00FCF6   724 _ARCON	=	0xfcf6
                           00FCF7   725 _OPCON	=	0xfcf7
                           00FE08   726 _SPFUNC	=	0xfe08
                           00FE09   727 _RSTFLAG	=	0xfe09
                           00FEB0   728 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   729 _PWMA_ENO	=	0xfeb1
                           00FEB2   730 _PWMA_PS	=	0xfeb2
                           00FEB3   731 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   732 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   733 _PWMB_ENO	=	0xfeb5
                           00FEB6   734 _PWMB_PS	=	0xfeb6
                           00FEB7   735 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   736 _PWMA_CR1	=	0xfec0
                           00FEC1   737 _PWMA_CR2	=	0xfec1
                           00FEC2   738 _PWMA_SMCR	=	0xfec2
                           00FEC3   739 _PWMA_ETR	=	0xfec3
                           00FEC4   740 _PWMA_IER	=	0xfec4
                           00FEC5   741 _PWMA_SR1	=	0xfec5
                           00FEC6   742 _PWMA_SR2	=	0xfec6
                           00FEC7   743 _PWMA_EGR	=	0xfec7
                           00FEC8   744 _PWMA_CCMR1	=	0xfec8
                           00FEC9   745 _PWMA_CCMR2	=	0xfec9
                           00FECA   746 _PWMA_CCMR3	=	0xfeca
                           00FECB   747 _PWMA_CCMR4	=	0xfecb
                           00FECC   748 _PWMA_CCER1	=	0xfecc
                           00FECD   749 _PWMA_CCER2	=	0xfecd
                           00FECE   750 _PWMA_CNTRH	=	0xfece
                           00FECF   751 _PWMA_CNTRL	=	0xfecf
                           00FED0   752 _PWMA_PSCRH	=	0xfed0
                           00FED1   753 _PWMA_PSCRL	=	0xfed1
                           00FED2   754 _PWMA_ARRH	=	0xfed2
                           00FED3   755 _PWMA_ARRL	=	0xfed3
                           00FED4   756 _PWMA_RCR	=	0xfed4
                           00FED5   757 _PWMA_CCR1H	=	0xfed5
                           00FED6   758 _PWMA_CCR1L	=	0xfed6
                           00FED7   759 _PWMA_CCR2H	=	0xfed7
                           00FED8   760 _PWMA_CCR2L	=	0xfed8
                           00FED9   761 _PWMA_CCR3H	=	0xfed9
                           00FEDA   762 _PWMA_CCR3L	=	0xfeda
                           00FEDB   763 _PWMA_CCR4H	=	0xfedb
                           00FEDC   764 _PWMA_CCR4L	=	0xfedc
                           00FEDD   765 _PWMA_BKR	=	0xfedd
                           00FEDE   766 _PWMA_DTR	=	0xfede
                           00FEDF   767 _PWMA_OISR	=	0xfedf
                           00FEE0   768 _PWMB_CR1	=	0xfee0
                           00FEE1   769 _PWMB_CR2	=	0xfee1
                           00FEE2   770 _PWMB_SMCR	=	0xfee2
                           00FEE3   771 _PWMB_ETR	=	0xfee3
                           00FEE4   772 _PWMB_IER	=	0xfee4
                           00FEE5   773 _PWMB_SR1	=	0xfee5
                           00FEE6   774 _PWMB_SR2	=	0xfee6
                           00FEE7   775 _PWMB_EGR	=	0xfee7
                           00FEE8   776 _PWMB_CCMR1	=	0xfee8
                           00FEE9   777 _PWMB_CCMR2	=	0xfee9
                           00FEEA   778 _PWMB_CCMR3	=	0xfeea
                           00FEEB   779 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   780 _PWMB_CCER1	=	0xfeec
                           00FEED   781 _PWMB_CCER2	=	0xfeed
                           00FEEE   782 _PWMB_CNTRH	=	0xfeee
                           00FEEF   783 _PWMB_CNTRL	=	0xfeef
                           00FEF0   784 _PWMB_PSCRH	=	0xfef0
                           00FEF1   785 _PWMB_PSCRL	=	0xfef1
                           00FEF2   786 _PWMB_ARRH	=	0xfef2
                           00FEF3   787 _PWMB_ARRL	=	0xfef3
                           00FEF4   788 _PWMB_RCR	=	0xfef4
                           00FEF5   789 _PWMB_CCR1H	=	0xfef5
                           00FEF6   790 _PWMB_CCR1L	=	0xfef6
                           00FEF7   791 _PWMB_CCR2H	=	0xfef7
                           00FEF8   792 _PWMB_CCR2L	=	0xfef8
                           00FEF9   793 _PWMB_CCR3H	=	0xfef9
                           00FEFA   794 _PWMB_CCR3L	=	0xfefa
                           00FEFB   795 _PWMB_CCR4H	=	0xfefb
                           00FEFC   796 _PWMB_CCR4L	=	0xfefc
                           00FEFD   797 _PWMB_BKR	=	0xfefd
                           00FEFE   798 _PWMB_DTR	=	0xfefe
                           00FEFF   799 _PWMB_OISR	=	0xfeff
                           00FE60   800 _RTCCR	=	0xfe60
                           00FE61   801 _RTCCFG	=	0xfe61
                           00FE62   802 _RTCIEN	=	0xfe62
                           00FE63   803 _RTCIF	=	0xfe63
                           00FE64   804 _ALAHOUR	=	0xfe64
                           00FE65   805 _ALAMIN	=	0xfe65
                           00FE66   806 _ALASEC	=	0xfe66
                           00FE67   807 _ALASSEC	=	0xfe67
                           00FE68   808 _INIYEAR	=	0xfe68
                           00FE69   809 _INIMONTH	=	0xfe69
                           00FE6A   810 _INIDAY	=	0xfe6a
                           00FE6B   811 _INIHOUR	=	0xfe6b
                           00FE6C   812 _INIMIN	=	0xfe6c
                           00FE6D   813 _INISEC	=	0xfe6d
                           00FE6E   814 _INISSEC	=	0xfe6e
                           00FE70   815 _YEAR	=	0xfe70
                           00FE71   816 _MONTH	=	0xfe71
                           00FE72   817 _DAY	=	0xfe72
                           00FE73   818 _HOUR	=	0xfe73
                           00FE74   819 _MIN	=	0xfe74
                           00FE75   820 _SEC	=	0xfe75
                           00FE76   821 _SSEC	=	0xfe76
                           00FA20   822 _DMA_SPI_CFG	=	0xfa20
                           00FA21   823 _DMA_SPI_CR	=	0xfa21
                           00FA22   824 _DMA_SPI_STA	=	0xfa22
                           00FA23   825 _DMA_SPI_AMT	=	0xfa23
                           00FA24   826 _DMA_SPI_DONE	=	0xfa24
                           00FA25   827 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   828 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   829 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   830 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   831 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   832 _CLKDIV	=	0xfe01
                           00FE02   833 _HIRCCR	=	0xfe02
                           00FE03   834 _XOSCCR	=	0xfe03
                           00FE04   835 _IRC32KCR	=	0xfe04
                           00FE00   836 _CKSEL	=	0xfe00
                           00FE05   837 _MCLKOCR	=	0xfe05
                           00FE06   838 _IRCDB	=	0xfe06
                           00FE07   839 _IRC48MCR	=	0xfe07
                           00FEA2   840 _TM2PS	=	0xfea2
                           00FEA3   841 _TM3PS	=	0xfea3
                           00FEA4   842 _TM4PS	=	0xfea4
                           00FA30   843 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   844 _DMA_UR1T_CR	=	0xfa31
                           00FA32   845 _DMA_UR1T_STA	=	0xfa32
                           00FA33   846 _DMA_URTX_AMT	=	0xfa33
                           00FA34   847 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   848 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   849 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   850 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   851 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   852 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   853 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   854 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   855 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   856 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   857 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   858 _DMA_UR2T_CR	=	0xfa31
                           00FA32   859 _DMA_UR2T_STA	=	0xfa32
                           00FA33   860 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   861 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   862 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   863 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   864 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   865 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   866 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   867 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   868 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   869 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   870 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   871 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   872 _DMA_UR3T_CR	=	0xfa31
                           00FA32   873 _DMA_UR3T_STA	=	0xfa32
                           00FA33   874 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   875 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   876 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   877 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   878 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   879 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   880 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   881 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   882 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   883 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   884 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   885 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   886 _DMA_UR4T_CR	=	0xfa31
                           00FA32   887 _DMA_UR4T_STA	=	0xfa32
                           00FA33   888 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   889 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   890 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   891 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   892 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   893 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   894 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   895 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   896 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   897 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   898 _DMA_UR4R_TXAL	=	0xfa3e
      000042                        899 _uartGetCharacter_result_65536_32:
      000042                        900 	.ds 1
      000043                        901 _fifoClear_buffer_65536_51:
      000043                        902 	.ds 3
      000046                        903 _fifoIsFull_fifo_65536_53:
      000046                        904 	.ds 3
      000049                        905 _fifoBytesFree_fifo_65536_58:
      000049                        906 	.ds 3
                                    907 ;--------------------------------------------------------
                                    908 ; absolute external ram data
                                    909 ;--------------------------------------------------------
                                    910 	.area XABS    (ABS,XDATA)
                                    911 ;--------------------------------------------------------
                                    912 ; external initialized ram data
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
                                    926 ; global & static initialisations
                                    927 ;--------------------------------------------------------
                                    928 	.area HOME    (CODE)
                                    929 	.area GSINIT  (CODE)
                                    930 	.area GSFINAL (CODE)
                                    931 	.area GSINIT  (CODE)
                                    932 ;--------------------------------------------------------
                                    933 ; Home
                                    934 ;--------------------------------------------------------
                                    935 	.area HOME    (CODE)
                                    936 	.area HOME    (CODE)
                                    937 ;--------------------------------------------------------
                                    938 ; code
                                    939 ;--------------------------------------------------------
                                    940 	.area CSEG    (CODE)
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'fifoClear'
                                    943 ;------------------------------------------------------------
                                    944 ;buffer                    Allocated with name '_fifoClear_buffer_65536_51'
                                    945 ;------------------------------------------------------------
                                    946 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:39: void fifoClear(FifoState *buffer) {
                                    947 ;	-----------------------------------------
                                    948 ;	 function fifoClear
                                    949 ;	-----------------------------------------
      000A20                        950 _fifoClear:
                           000007   951 	ar7 = 0x07
                           000006   952 	ar6 = 0x06
                           000005   953 	ar5 = 0x05
                           000004   954 	ar4 = 0x04
                           000003   955 	ar3 = 0x03
                           000002   956 	ar2 = 0x02
                           000001   957 	ar1 = 0x01
                           000000   958 	ar0 = 0x00
      000A20 AF F0            [24]  959 	mov	r7,b
      000A22 AE 83            [24]  960 	mov	r6,dph
      000A24 E5 82            [12]  961 	mov	a,dpl
      000A26 90 00 43         [24]  962 	mov	dptr,#_fifoClear_buffer_65536_51
      000A29 F0               [24]  963 	movx	@dptr,a
      000A2A EE               [12]  964 	mov	a,r6
      000A2B A3               [24]  965 	inc	dptr
      000A2C F0               [24]  966 	movx	@dptr,a
      000A2D EF               [12]  967 	mov	a,r7
      000A2E A3               [24]  968 	inc	dptr
      000A2F F0               [24]  969 	movx	@dptr,a
                                    970 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:40: buffer->length = 0;
      000A30 90 00 43         [24]  971 	mov	dptr,#_fifoClear_buffer_65536_51
      000A33 E0               [24]  972 	movx	a,@dptr
      000A34 FD               [12]  973 	mov	r5,a
      000A35 A3               [24]  974 	inc	dptr
      000A36 E0               [24]  975 	movx	a,@dptr
      000A37 FE               [12]  976 	mov	r6,a
      000A38 A3               [24]  977 	inc	dptr
      000A39 E0               [24]  978 	movx	a,@dptr
      000A3A FF               [12]  979 	mov	r7,a
      000A3B 74 01            [12]  980 	mov	a,#0x01
      000A3D 2D               [12]  981 	add	a,r5
      000A3E FA               [12]  982 	mov	r2,a
      000A3F E4               [12]  983 	clr	a
      000A40 3E               [12]  984 	addc	a,r6
      000A41 FB               [12]  985 	mov	r3,a
      000A42 8F 04            [24]  986 	mov	ar4,r7
      000A44 8A 82            [24]  987 	mov	dpl,r2
      000A46 8B 83            [24]  988 	mov	dph,r3
      000A48 8C F0            [24]  989 	mov	b,r4
      000A4A E4               [12]  990 	clr	a
      000A4B 12 1C 0F         [24]  991 	lcall	__gptrput
                                    992 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:41: buffer->rIndex = 0;
      000A4E 74 02            [12]  993 	mov	a,#0x02
      000A50 2D               [12]  994 	add	a,r5
      000A51 FA               [12]  995 	mov	r2,a
      000A52 E4               [12]  996 	clr	a
      000A53 3E               [12]  997 	addc	a,r6
      000A54 FB               [12]  998 	mov	r3,a
      000A55 8F 04            [24]  999 	mov	ar4,r7
      000A57 8A 82            [24] 1000 	mov	dpl,r2
      000A59 8B 83            [24] 1001 	mov	dph,r3
      000A5B 8C F0            [24] 1002 	mov	b,r4
      000A5D E4               [12] 1003 	clr	a
      000A5E 12 1C 0F         [24] 1004 	lcall	__gptrput
                                   1005 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:42: buffer->wIndex = 0;
      000A61 74 03            [12] 1006 	mov	a,#0x03
      000A63 2D               [12] 1007 	add	a,r5
      000A64 FA               [12] 1008 	mov	r2,a
      000A65 E4               [12] 1009 	clr	a
      000A66 3E               [12] 1010 	addc	a,r6
      000A67 FB               [12] 1011 	mov	r3,a
      000A68 8F 04            [24] 1012 	mov	ar4,r7
      000A6A 8A 82            [24] 1013 	mov	dpl,r2
      000A6C 8B 83            [24] 1014 	mov	dph,r3
      000A6E 8C F0            [24] 1015 	mov	b,r4
      000A70 E4               [12] 1016 	clr	a
      000A71 12 1C 0F         [24] 1017 	lcall	__gptrput
                                   1018 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:43: buffer->status = 0;
      000A74 74 04            [12] 1019 	mov	a,#0x04
      000A76 2D               [12] 1020 	add	a,r5
      000A77 FD               [12] 1021 	mov	r5,a
      000A78 E4               [12] 1022 	clr	a
      000A79 3E               [12] 1023 	addc	a,r6
      000A7A FE               [12] 1024 	mov	r6,a
      000A7B 8D 82            [24] 1025 	mov	dpl,r5
      000A7D 8E 83            [24] 1026 	mov	dph,r6
      000A7F 8F F0            [24] 1027 	mov	b,r7
      000A81 E4               [12] 1028 	clr	a
                                   1029 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:44: }
      000A82 02 1C 0F         [24] 1030 	ljmp	__gptrput
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'fifoIsFull'
                                   1033 ;------------------------------------------------------------
                                   1034 ;fifo                      Allocated with name '_fifoIsFull_fifo_65536_53'
                                   1035 ;__1310720007              Allocated with name '_fifoIsFull___1310720007_131072_54'
                                   1036 ;__1310720008              Allocated with name '_fifoIsFull___1310720008_131072_55'
                                   1037 ;buffer                    Allocated with name '_fifoIsFull_buffer_196608_56'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:46: bool fifoIsFull(FifoState *fifo) {
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function fifoIsFull
                                   1042 ;	-----------------------------------------
      000A85                       1043 _fifoIsFull:
      000A85 AF F0            [24] 1044 	mov	r7,b
      000A87 AE 83            [24] 1045 	mov	r6,dph
      000A89 E5 82            [12] 1046 	mov	a,dpl
      000A8B 90 00 46         [24] 1047 	mov	dptr,#_fifoIsFull_fifo_65536_53
      000A8E F0               [24] 1048 	movx	@dptr,a
      000A8F EE               [12] 1049 	mov	a,r6
      000A90 A3               [24] 1050 	inc	dptr
      000A91 F0               [24] 1051 	movx	@dptr,a
      000A92 EF               [12] 1052 	mov	a,r7
      000A93 A3               [24] 1053 	inc	dptr
      000A94 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      000A95 90 00 46         [24] 1056 	mov	dptr,#_fifoIsFull_fifo_65536_53
      000A98 E0               [24] 1057 	movx	a,@dptr
      000A99 FD               [12] 1058 	mov	r5,a
      000A9A A3               [24] 1059 	inc	dptr
      000A9B E0               [24] 1060 	movx	a,@dptr
      000A9C FE               [12] 1061 	mov	r6,a
      000A9D A3               [24] 1062 	inc	dptr
      000A9E E0               [24] 1063 	movx	a,@dptr
      000A9F FF               [12] 1064 	mov	r7,a
                                   1065 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      000AA0 74 01            [12] 1066 	mov	a,#0x01
      000AA2 2D               [12] 1067 	add	a,r5
      000AA3 FA               [12] 1068 	mov	r2,a
      000AA4 E4               [12] 1069 	clr	a
      000AA5 3E               [12] 1070 	addc	a,r6
      000AA6 FB               [12] 1071 	mov	r3,a
      000AA7 8F 04            [24] 1072 	mov	ar4,r7
      000AA9 8A 82            [24] 1073 	mov	dpl,r2
      000AAB 8B 83            [24] 1074 	mov	dph,r3
      000AAD 8C F0            [24] 1075 	mov	b,r4
      000AAF 12 1C 2A         [24] 1076 	lcall	__gptrget
      000AB2 FA               [12] 1077 	mov	r2,a
                                   1078 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      000AB3 8D 82            [24] 1079 	mov	dpl,r5
      000AB5 8E 83            [24] 1080 	mov	dph,r6
      000AB7 8F F0            [24] 1081 	mov	b,r7
      000AB9 12 1C 2A         [24] 1082 	lcall	__gptrget
      000ABC FD               [12] 1083 	mov	r5,a
      000ABD EA               [12] 1084 	mov	a,r2
      000ABE B5 05 04         [24] 1085 	cjne	a,ar5,00104$
      000AC1 74 01            [12] 1086 	mov	a,#0x01
      000AC3 80 01            [24] 1087 	sjmp	00105$
      000AC5                       1088 00104$:
      000AC5 E4               [12] 1089 	clr	a
      000AC6                       1090 00105$:
                                   1091 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:48: }
      000AC6 F5 82            [12] 1092 	mov	dpl,a
      000AC8 22               [24] 1093 	ret
                                   1094 ;------------------------------------------------------------
                                   1095 ;Allocation info for local variables in function 'fifoBytesFree'
                                   1096 ;------------------------------------------------------------
                                   1097 ;fifo                      Allocated with name '_fifoBytesFree_fifo_65536_58'
                                   1098 ;__1310720010              Allocated with name '_fifoBytesFree___1310720010_131072_59'
                                   1099 ;__1310720011              Allocated with name '_fifoBytesFree___1310720011_131072_60'
                                   1100 ;buffer                    Allocated with name '_fifoBytesFree_buffer_196608_61'
                                   1101 ;------------------------------------------------------------
                                   1102 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:50: uint8_t fifoBytesFree(FifoState *fifo) {
                                   1103 ;	-----------------------------------------
                                   1104 ;	 function fifoBytesFree
                                   1105 ;	-----------------------------------------
      000AC9                       1106 _fifoBytesFree:
      000AC9 AF F0            [24] 1107 	mov	r7,b
      000ACB AE 83            [24] 1108 	mov	r6,dph
      000ACD E5 82            [12] 1109 	mov	a,dpl
      000ACF 90 00 49         [24] 1110 	mov	dptr,#_fifoBytesFree_fifo_65536_58
      000AD2 F0               [24] 1111 	movx	@dptr,a
      000AD3 EE               [12] 1112 	mov	a,r6
      000AD4 A3               [24] 1113 	inc	dptr
      000AD5 F0               [24] 1114 	movx	@dptr,a
      000AD6 EF               [12] 1115 	mov	a,r7
      000AD7 A3               [24] 1116 	inc	dptr
      000AD8 F0               [24] 1117 	movx	@dptr,a
                                   1118 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      000AD9 90 00 49         [24] 1119 	mov	dptr,#_fifoBytesFree_fifo_65536_58
      000ADC E0               [24] 1120 	movx	a,@dptr
      000ADD FD               [12] 1121 	mov	r5,a
      000ADE A3               [24] 1122 	inc	dptr
      000ADF E0               [24] 1123 	movx	a,@dptr
      000AE0 FE               [12] 1124 	mov	r6,a
      000AE1 A3               [24] 1125 	inc	dptr
      000AE2 E0               [24] 1126 	movx	a,@dptr
      000AE3 FF               [12] 1127 	mov	r7,a
      000AE4 8D 82            [24] 1128 	mov	dpl,r5
      000AE6 8E 83            [24] 1129 	mov	dph,r6
      000AE8 8F F0            [24] 1130 	mov	b,r7
      000AEA 12 1C 2A         [24] 1131 	lcall	__gptrget
      000AED FC               [12] 1132 	mov	r4,a
                                   1133 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      000AEE 0D               [12] 1134 	inc	r5
      000AEF BD 00 01         [24] 1135 	cjne	r5,#0x00,00104$
      000AF2 0E               [12] 1136 	inc	r6
      000AF3                       1137 00104$:
      000AF3 8D 82            [24] 1138 	mov	dpl,r5
      000AF5 8E 83            [24] 1139 	mov	dph,r6
      000AF7 8F F0            [24] 1140 	mov	b,r7
      000AF9 12 1C 2A         [24] 1141 	lcall	__gptrget
      000AFC FD               [12] 1142 	mov	r5,a
                                   1143 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      000AFD EC               [12] 1144 	mov	a,r4
      000AFE C3               [12] 1145 	clr	c
      000AFF 9D               [12] 1146 	subb	a,r5
                                   1147 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:52: }
      000B00 F5 82            [12] 1148 	mov	dpl,a
      000B02 22               [24] 1149 	ret
                                   1150 ;------------------------------------------------------------
                                   1151 ;Allocation info for local variables in function 'fifoWrite'
                                   1152 ;------------------------------------------------------------
                                   1153 ;data                      Allocated to stack - _bp -5
                                   1154 ;count                     Allocated to stack - _bp -6
                                   1155 ;buffer                    Allocated to stack - _bp +1
                                   1156 ;rc                        Allocated to registers r4 
                                   1157 ;wIndex                    Allocated to stack - _bp +10
                                   1158 ;n                         Allocated to stack - _bp +11
                                   1159 ;sloc0                     Allocated to stack - _bp +4
                                   1160 ;sloc1                     Allocated to stack - _bp +7
                                   1161 ;------------------------------------------------------------
                                   1162 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:64: bool fifoWrite(FifoState *buffer, const void *data, uint8_t count) REENTRANT {
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function fifoWrite
                                   1165 ;	-----------------------------------------
      000B03                       1166 _fifoWrite:
      000B03 C0 1F            [24] 1167 	push	_bp
      000B05 85 81 1F         [24] 1168 	mov	_bp,sp
      000B08 C0 82            [24] 1169 	push	dpl
      000B0A C0 83            [24] 1170 	push	dph
      000B0C C0 F0            [24] 1171 	push	b
      000B0E E5 81            [12] 1172 	mov	a,sp
      000B10 24 08            [12] 1173 	add	a,#0x08
      000B12 F5 81            [12] 1174 	mov	sp,a
                                   1175 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:65: bool rc = fifoBytesFree(buffer) >= count;
      000B14 A8 1F            [24] 1176 	mov	r0,_bp
      000B16 08               [12] 1177 	inc	r0
      000B17 86 82            [24] 1178 	mov	dpl,@r0
      000B19 08               [12] 1179 	inc	r0
      000B1A 86 83            [24] 1180 	mov	dph,@r0
      000B1C 08               [12] 1181 	inc	r0
      000B1D 86 F0            [24] 1182 	mov	b,@r0
      000B1F 12 0A C9         [24] 1183 	lcall	_fifoBytesFree
      000B22 AC 82            [24] 1184 	mov	r4,dpl
      000B24 E5 1F            [12] 1185 	mov	a,_bp
      000B26 24 FA            [12] 1186 	add	a,#0xfa
      000B28 F8               [12] 1187 	mov	r0,a
      000B29 C3               [12] 1188 	clr	c
      000B2A EC               [12] 1189 	mov	a,r4
      000B2B 96               [12] 1190 	subb	a,@r0
      000B2C B3               [12] 1191 	cpl	c
      000B2D 92 00            [24] 1192 	mov	b0,c
      000B2F E4               [12] 1193 	clr	a
      000B30 33               [12] 1194 	rlc	a
      000B31 FC               [12] 1195 	mov	r4,a
                                   1196 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:67: if (rc) {
      000B32 20 00 03         [24] 1197 	jb	b0,00128$
      000B35 02 0C 5D         [24] 1198 	ljmp	00105$
      000B38                       1199 00128$:
                                   1200 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:68: uint8_t wIndex = buffer->wIndex;
      000B38 A8 1F            [24] 1201 	mov	r0,_bp
      000B3A 08               [12] 1202 	inc	r0
      000B3B E5 1F            [12] 1203 	mov	a,_bp
      000B3D 24 04            [12] 1204 	add	a,#0x04
      000B3F F9               [12] 1205 	mov	r1,a
      000B40 74 03            [12] 1206 	mov	a,#0x03
      000B42 26               [12] 1207 	add	a,@r0
      000B43 F7               [12] 1208 	mov	@r1,a
      000B44 E4               [12] 1209 	clr	a
      000B45 08               [12] 1210 	inc	r0
      000B46 36               [12] 1211 	addc	a,@r0
      000B47 09               [12] 1212 	inc	r1
      000B48 F7               [12] 1213 	mov	@r1,a
      000B49 08               [12] 1214 	inc	r0
      000B4A 09               [12] 1215 	inc	r1
      000B4B E6               [12] 1216 	mov	a,@r0
      000B4C F7               [12] 1217 	mov	@r1,a
      000B4D E5 1F            [12] 1218 	mov	a,_bp
      000B4F 24 04            [12] 1219 	add	a,#0x04
      000B51 F8               [12] 1220 	mov	r0,a
      000B52 86 82            [24] 1221 	mov	dpl,@r0
      000B54 08               [12] 1222 	inc	r0
      000B55 86 83            [24] 1223 	mov	dph,@r0
      000B57 08               [12] 1224 	inc	r0
      000B58 86 F0            [24] 1225 	mov	b,@r0
      000B5A E5 1F            [12] 1226 	mov	a,_bp
      000B5C 24 0A            [12] 1227 	add	a,#0x0a
      000B5E F9               [12] 1228 	mov	r1,a
      000B5F 12 1C 2A         [24] 1229 	lcall	__gptrget
      000B62 F7               [12] 1230 	mov	@r1,a
                                   1231 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      000B63 A8 1F            [24] 1232 	mov	r0,_bp
      000B65 08               [12] 1233 	inc	r0
      000B66 E5 1F            [12] 1234 	mov	a,_bp
      000B68 24 07            [12] 1235 	add	a,#0x07
      000B6A F9               [12] 1236 	mov	r1,a
      000B6B 74 05            [12] 1237 	mov	a,#0x05
      000B6D 26               [12] 1238 	add	a,@r0
      000B6E F7               [12] 1239 	mov	@r1,a
      000B6F E4               [12] 1240 	clr	a
      000B70 08               [12] 1241 	inc	r0
      000B71 36               [12] 1242 	addc	a,@r0
      000B72 09               [12] 1243 	inc	r1
      000B73 F7               [12] 1244 	mov	@r1,a
      000B74 08               [12] 1245 	inc	r0
      000B75 09               [12] 1246 	inc	r1
      000B76 E6               [12] 1247 	mov	a,@r0
      000B77 F7               [12] 1248 	mov	@r1,a
      000B78 E5 1F            [12] 1249 	mov	a,_bp
      000B7A 24 0B            [12] 1250 	add	a,#0x0b
      000B7C F8               [12] 1251 	mov	r0,a
      000B7D 76 00            [12] 1252 	mov	@r0,#0x00
      000B7F                       1253 00107$:
      000B7F E5 1F            [12] 1254 	mov	a,_bp
      000B81 24 0B            [12] 1255 	add	a,#0x0b
      000B83 F8               [12] 1256 	mov	r0,a
      000B84 E5 1F            [12] 1257 	mov	a,_bp
      000B86 24 FA            [12] 1258 	add	a,#0xfa
      000B88 F9               [12] 1259 	mov	r1,a
      000B89 C3               [12] 1260 	clr	c
      000B8A E6               [12] 1261 	mov	a,@r0
      000B8B 97               [12] 1262 	subb	a,@r1
      000B8C 40 03            [24] 1263 	jc	00129$
      000B8E 02 0C 1E         [24] 1264 	ljmp	00103$
      000B91                       1265 00129$:
                                   1266 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:71: if (wIndex == buffer->size) {
      000B91 C0 04            [24] 1267 	push	ar4
      000B93 A8 1F            [24] 1268 	mov	r0,_bp
      000B95 08               [12] 1269 	inc	r0
      000B96 86 82            [24] 1270 	mov	dpl,@r0
      000B98 08               [12] 1271 	inc	r0
      000B99 86 83            [24] 1272 	mov	dph,@r0
      000B9B 08               [12] 1273 	inc	r0
      000B9C 86 F0            [24] 1274 	mov	b,@r0
      000B9E 12 1C 2A         [24] 1275 	lcall	__gptrget
      000BA1 FC               [12] 1276 	mov	r4,a
      000BA2 E5 1F            [12] 1277 	mov	a,_bp
      000BA4 24 0A            [12] 1278 	add	a,#0x0a
      000BA6 F8               [12] 1279 	mov	r0,a
      000BA7 E6               [12] 1280 	mov	a,@r0
      000BA8 B5 04 02         [24] 1281 	cjne	a,ar4,00130$
      000BAB 80 04            [24] 1282 	sjmp	00131$
      000BAD                       1283 00130$:
      000BAD D0 04            [24] 1284 	pop	ar4
      000BAF 80 09            [24] 1285 	sjmp	00102$
      000BB1                       1286 00131$:
      000BB1 D0 04            [24] 1287 	pop	ar4
                                   1288 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:72: wIndex = 0;
      000BB3 E5 1F            [12] 1289 	mov	a,_bp
      000BB5 24 0A            [12] 1290 	add	a,#0x0a
      000BB7 F8               [12] 1291 	mov	r0,a
      000BB8 76 00            [12] 1292 	mov	@r0,#0x00
      000BBA                       1293 00102$:
                                   1294 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:75: buffer->data[wIndex] = ((const uint8_t *) data)[n];
      000BBA C0 04            [24] 1295 	push	ar4
      000BBC E5 1F            [12] 1296 	mov	a,_bp
      000BBE 24 07            [12] 1297 	add	a,#0x07
      000BC0 F8               [12] 1298 	mov	r0,a
      000BC1 86 82            [24] 1299 	mov	dpl,@r0
      000BC3 08               [12] 1300 	inc	r0
      000BC4 86 83            [24] 1301 	mov	dph,@r0
      000BC6 08               [12] 1302 	inc	r0
      000BC7 86 F0            [24] 1303 	mov	b,@r0
      000BC9 12 1C 2A         [24] 1304 	lcall	__gptrget
      000BCC FA               [12] 1305 	mov	r2,a
      000BCD A3               [24] 1306 	inc	dptr
      000BCE 12 1C 2A         [24] 1307 	lcall	__gptrget
      000BD1 FB               [12] 1308 	mov	r3,a
      000BD2 A3               [24] 1309 	inc	dptr
      000BD3 12 1C 2A         [24] 1310 	lcall	__gptrget
      000BD6 FC               [12] 1311 	mov	r4,a
      000BD7 E5 1F            [12] 1312 	mov	a,_bp
      000BD9 24 0A            [12] 1313 	add	a,#0x0a
      000BDB F8               [12] 1314 	mov	r0,a
      000BDC E6               [12] 1315 	mov	a,@r0
      000BDD 2A               [12] 1316 	add	a,r2
      000BDE FA               [12] 1317 	mov	r2,a
      000BDF E4               [12] 1318 	clr	a
      000BE0 3B               [12] 1319 	addc	a,r3
      000BE1 FB               [12] 1320 	mov	r3,a
      000BE2 E5 1F            [12] 1321 	mov	a,_bp
      000BE4 24 FB            [12] 1322 	add	a,#0xfb
      000BE6 F8               [12] 1323 	mov	r0,a
      000BE7 86 05            [24] 1324 	mov	ar5,@r0
      000BE9 08               [12] 1325 	inc	r0
      000BEA 86 06            [24] 1326 	mov	ar6,@r0
      000BEC 08               [12] 1327 	inc	r0
      000BED 86 07            [24] 1328 	mov	ar7,@r0
      000BEF E5 1F            [12] 1329 	mov	a,_bp
      000BF1 24 0B            [12] 1330 	add	a,#0x0b
      000BF3 F8               [12] 1331 	mov	r0,a
      000BF4 E6               [12] 1332 	mov	a,@r0
      000BF5 2D               [12] 1333 	add	a,r5
      000BF6 FD               [12] 1334 	mov	r5,a
      000BF7 E4               [12] 1335 	clr	a
      000BF8 3E               [12] 1336 	addc	a,r6
      000BF9 FE               [12] 1337 	mov	r6,a
      000BFA 8D 82            [24] 1338 	mov	dpl,r5
      000BFC 8E 83            [24] 1339 	mov	dph,r6
      000BFE 8F F0            [24] 1340 	mov	b,r7
      000C00 12 1C 2A         [24] 1341 	lcall	__gptrget
      000C03 FD               [12] 1342 	mov	r5,a
      000C04 8A 82            [24] 1343 	mov	dpl,r2
      000C06 8B 83            [24] 1344 	mov	dph,r3
      000C08 8C F0            [24] 1345 	mov	b,r4
      000C0A 12 1C 0F         [24] 1346 	lcall	__gptrput
                                   1347 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:76: wIndex++;
      000C0D E5 1F            [12] 1348 	mov	a,_bp
      000C0F 24 0A            [12] 1349 	add	a,#0x0a
      000C11 F8               [12] 1350 	mov	r0,a
      000C12 06               [12] 1351 	inc	@r0
                                   1352 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      000C13 E5 1F            [12] 1353 	mov	a,_bp
      000C15 24 0B            [12] 1354 	add	a,#0x0b
      000C17 F8               [12] 1355 	mov	r0,a
      000C18 06               [12] 1356 	inc	@r0
      000C19 D0 04            [24] 1357 	pop	ar4
      000C1B 02 0B 7F         [24] 1358 	ljmp	00107$
      000C1E                       1359 00103$:
                                   1360 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:79: buffer->wIndex = wIndex;
      000C1E E5 1F            [12] 1361 	mov	a,_bp
      000C20 24 04            [12] 1362 	add	a,#0x04
      000C22 F8               [12] 1363 	mov	r0,a
      000C23 86 82            [24] 1364 	mov	dpl,@r0
      000C25 08               [12] 1365 	inc	r0
      000C26 86 83            [24] 1366 	mov	dph,@r0
      000C28 08               [12] 1367 	inc	r0
      000C29 86 F0            [24] 1368 	mov	b,@r0
      000C2B E5 1F            [12] 1369 	mov	a,_bp
      000C2D 24 0A            [12] 1370 	add	a,#0x0a
      000C2F F9               [12] 1371 	mov	r1,a
      000C30 E7               [12] 1372 	mov	a,@r1
      000C31 12 1C 0F         [24] 1373 	lcall	__gptrput
                                   1374 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:80: buffer->length += count;
      000C34 A8 1F            [24] 1375 	mov	r0,_bp
      000C36 08               [12] 1376 	inc	r0
      000C37 74 01            [12] 1377 	mov	a,#0x01
      000C39 26               [12] 1378 	add	a,@r0
      000C3A FD               [12] 1379 	mov	r5,a
      000C3B E4               [12] 1380 	clr	a
      000C3C 08               [12] 1381 	inc	r0
      000C3D 36               [12] 1382 	addc	a,@r0
      000C3E FE               [12] 1383 	mov	r6,a
      000C3F 08               [12] 1384 	inc	r0
      000C40 86 07            [24] 1385 	mov	ar7,@r0
      000C42 8D 82            [24] 1386 	mov	dpl,r5
      000C44 8E 83            [24] 1387 	mov	dph,r6
      000C46 8F F0            [24] 1388 	mov	b,r7
      000C48 12 1C 2A         [24] 1389 	lcall	__gptrget
      000C4B FB               [12] 1390 	mov	r3,a
      000C4C E5 1F            [12] 1391 	mov	a,_bp
      000C4E 24 FA            [12] 1392 	add	a,#0xfa
      000C50 F8               [12] 1393 	mov	r0,a
      000C51 E6               [12] 1394 	mov	a,@r0
      000C52 2B               [12] 1395 	add	a,r3
      000C53 FB               [12] 1396 	mov	r3,a
      000C54 8D 82            [24] 1397 	mov	dpl,r5
      000C56 8E 83            [24] 1398 	mov	dph,r6
      000C58 8F F0            [24] 1399 	mov	b,r7
      000C5A 12 1C 0F         [24] 1400 	lcall	__gptrput
      000C5D                       1401 00105$:
                                   1402 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:83: return rc;
      000C5D 8C 82            [24] 1403 	mov	dpl,r4
                                   1404 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:84: }
      000C5F 85 1F 81         [24] 1405 	mov	sp,_bp
      000C62 D0 1F            [24] 1406 	pop	_bp
      000C64 22               [24] 1407 	ret
                                   1408 ;------------------------------------------------------------
                                   1409 ;Allocation info for local variables in function 'fifoRead'
                                   1410 ;------------------------------------------------------------
                                   1411 ;data                      Allocated to stack - _bp -5
                                   1412 ;count                     Allocated to stack - _bp -6
                                   1413 ;buffer                    Allocated to stack - _bp +1
                                   1414 ;__1310720013              Allocated to registers r7 
                                   1415 ;rc                        Allocated to stack - _bp +4
                                   1416 ;__1310720014              Allocated to registers 
                                   1417 ;buffer                    Allocated to registers 
                                   1418 ;rIndex                    Allocated to stack - _bp +11
                                   1419 ;n                         Allocated to stack - _bp +12
                                   1420 ;sloc0                     Allocated to stack - _bp +4
                                   1421 ;sloc1                     Allocated to stack - _bp +5
                                   1422 ;sloc2                     Allocated to stack - _bp +8
                                   1423 ;------------------------------------------------------------
                                   1424 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:86: bool fifoRead(FifoState *buffer, void *data, uint8_t count) REENTRANT {
                                   1425 ;	-----------------------------------------
                                   1426 ;	 function fifoRead
                                   1427 ;	-----------------------------------------
      000C65                       1428 _fifoRead:
      000C65 C0 1F            [24] 1429 	push	_bp
      000C67 85 81 1F         [24] 1430 	mov	_bp,sp
      000C6A C0 82            [24] 1431 	push	dpl
      000C6C C0 83            [24] 1432 	push	dph
      000C6E C0 F0            [24] 1433 	push	b
      000C70 E5 81            [12] 1434 	mov	a,sp
      000C72 24 09            [12] 1435 	add	a,#0x09
      000C74 F5 81            [12] 1436 	mov	sp,a
                                   1437 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:87: bool rc = fifoLength(buffer) >= count;
      000C76 A8 1F            [24] 1438 	mov	r0,_bp
      000C78 08               [12] 1439 	inc	r0
      000C79 74 01            [12] 1440 	mov	a,#0x01
      000C7B 26               [12] 1441 	add	a,@r0
      000C7C FA               [12] 1442 	mov	r2,a
      000C7D E4               [12] 1443 	clr	a
      000C7E 08               [12] 1444 	inc	r0
      000C7F 36               [12] 1445 	addc	a,@r0
      000C80 FB               [12] 1446 	mov	r3,a
      000C81 08               [12] 1447 	inc	r0
      000C82 86 04            [24] 1448 	mov	ar4,@r0
      000C84 8A 82            [24] 1449 	mov	dpl,r2
      000C86 8B 83            [24] 1450 	mov	dph,r3
      000C88 8C F0            [24] 1451 	mov	b,r4
      000C8A 12 1C 2A         [24] 1452 	lcall	__gptrget
      000C8D FF               [12] 1453 	mov	r7,a
      000C8E E5 1F            [12] 1454 	mov	a,_bp
      000C90 24 FA            [12] 1455 	add	a,#0xfa
      000C92 F8               [12] 1456 	mov	r0,a
      000C93 C3               [12] 1457 	clr	c
      000C94 EF               [12] 1458 	mov	a,r7
      000C95 96               [12] 1459 	subb	a,@r0
      000C96 B3               [12] 1460 	cpl	c
      000C97 92 00            [24] 1461 	mov	b0,c
      000C99 E5 1F            [12] 1462 	mov	a,_bp
      000C9B 24 04            [12] 1463 	add	a,#0x04
      000C9D F8               [12] 1464 	mov	r0,a
      000C9E A2 00            [12] 1465 	mov	c,b0
      000CA0 E4               [12] 1466 	clr	a
      000CA1 33               [12] 1467 	rlc	a
      000CA2 F6               [12] 1468 	mov	@r0,a
                                   1469 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:89: if (rc) {
      000CA3 20 00 03         [24] 1470 	jb	b0,00129$
      000CA6 02 0D BE         [24] 1471 	ljmp	00105$
      000CA9                       1472 00129$:
                                   1473 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:90: uint8_t rIndex = buffer->rIndex;
      000CA9 A8 1F            [24] 1474 	mov	r0,_bp
      000CAB 08               [12] 1475 	inc	r0
      000CAC E5 1F            [12] 1476 	mov	a,_bp
      000CAE 24 05            [12] 1477 	add	a,#0x05
      000CB0 F9               [12] 1478 	mov	r1,a
      000CB1 74 02            [12] 1479 	mov	a,#0x02
      000CB3 26               [12] 1480 	add	a,@r0
      000CB4 F7               [12] 1481 	mov	@r1,a
      000CB5 E4               [12] 1482 	clr	a
      000CB6 08               [12] 1483 	inc	r0
      000CB7 36               [12] 1484 	addc	a,@r0
      000CB8 09               [12] 1485 	inc	r1
      000CB9 F7               [12] 1486 	mov	@r1,a
      000CBA 08               [12] 1487 	inc	r0
      000CBB 09               [12] 1488 	inc	r1
      000CBC E6               [12] 1489 	mov	a,@r0
      000CBD F7               [12] 1490 	mov	@r1,a
      000CBE E5 1F            [12] 1491 	mov	a,_bp
      000CC0 24 05            [12] 1492 	add	a,#0x05
      000CC2 F8               [12] 1493 	mov	r0,a
      000CC3 86 82            [24] 1494 	mov	dpl,@r0
      000CC5 08               [12] 1495 	inc	r0
      000CC6 86 83            [24] 1496 	mov	dph,@r0
      000CC8 08               [12] 1497 	inc	r0
      000CC9 86 F0            [24] 1498 	mov	b,@r0
      000CCB E5 1F            [12] 1499 	mov	a,_bp
      000CCD 24 0B            [12] 1500 	add	a,#0x0b
      000CCF F9               [12] 1501 	mov	r1,a
      000CD0 12 1C 2A         [24] 1502 	lcall	__gptrget
      000CD3 F7               [12] 1503 	mov	@r1,a
                                   1504 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      000CD4 A8 1F            [24] 1505 	mov	r0,_bp
      000CD6 08               [12] 1506 	inc	r0
      000CD7 E5 1F            [12] 1507 	mov	a,_bp
      000CD9 24 08            [12] 1508 	add	a,#0x08
      000CDB F9               [12] 1509 	mov	r1,a
      000CDC 74 05            [12] 1510 	mov	a,#0x05
      000CDE 26               [12] 1511 	add	a,@r0
      000CDF F7               [12] 1512 	mov	@r1,a
      000CE0 E4               [12] 1513 	clr	a
      000CE1 08               [12] 1514 	inc	r0
      000CE2 36               [12] 1515 	addc	a,@r0
      000CE3 09               [12] 1516 	inc	r1
      000CE4 F7               [12] 1517 	mov	@r1,a
      000CE5 08               [12] 1518 	inc	r0
      000CE6 09               [12] 1519 	inc	r1
      000CE7 E6               [12] 1520 	mov	a,@r0
      000CE8 F7               [12] 1521 	mov	@r1,a
      000CE9 E5 1F            [12] 1522 	mov	a,_bp
      000CEB 24 0C            [12] 1523 	add	a,#0x0c
      000CED F8               [12] 1524 	mov	r0,a
      000CEE 76 00            [12] 1525 	mov	@r0,#0x00
      000CF0                       1526 00108$:
      000CF0 E5 1F            [12] 1527 	mov	a,_bp
      000CF2 24 0C            [12] 1528 	add	a,#0x0c
      000CF4 F8               [12] 1529 	mov	r0,a
      000CF5 E5 1F            [12] 1530 	mov	a,_bp
      000CF7 24 FA            [12] 1531 	add	a,#0xfa
      000CF9 F9               [12] 1532 	mov	r1,a
      000CFA C3               [12] 1533 	clr	c
      000CFB E6               [12] 1534 	mov	a,@r0
      000CFC 97               [12] 1535 	subb	a,@r1
      000CFD 40 03            [24] 1536 	jc	00130$
      000CFF 02 0D 8C         [24] 1537 	ljmp	00103$
      000D02                       1538 00130$:
                                   1539 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:93: if (rIndex == buffer->size) {
      000D02 A8 1F            [24] 1540 	mov	r0,_bp
      000D04 08               [12] 1541 	inc	r0
      000D05 86 82            [24] 1542 	mov	dpl,@r0
      000D07 08               [12] 1543 	inc	r0
      000D08 86 83            [24] 1544 	mov	dph,@r0
      000D0A 08               [12] 1545 	inc	r0
      000D0B 86 F0            [24] 1546 	mov	b,@r0
      000D0D 12 1C 2A         [24] 1547 	lcall	__gptrget
      000D10 FD               [12] 1548 	mov	r5,a
      000D11 E5 1F            [12] 1549 	mov	a,_bp
      000D13 24 0B            [12] 1550 	add	a,#0x0b
      000D15 F8               [12] 1551 	mov	r0,a
      000D16 E6               [12] 1552 	mov	a,@r0
      000D17 B5 05 07         [24] 1553 	cjne	a,ar5,00102$
                                   1554 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:94: rIndex = 0;
      000D1A E5 1F            [12] 1555 	mov	a,_bp
      000D1C 24 0B            [12] 1556 	add	a,#0x0b
      000D1E F8               [12] 1557 	mov	r0,a
      000D1F 76 00            [12] 1558 	mov	@r0,#0x00
      000D21                       1559 00102$:
                                   1560 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:98: ((uint8_t *) data)[n] = buffer->data[rIndex];
      000D21 C0 02            [24] 1561 	push	ar2
      000D23 C0 03            [24] 1562 	push	ar3
      000D25 C0 04            [24] 1563 	push	ar4
      000D27 E5 1F            [12] 1564 	mov	a,_bp
      000D29 24 FB            [12] 1565 	add	a,#0xfb
      000D2B F8               [12] 1566 	mov	r0,a
      000D2C 86 03            [24] 1567 	mov	ar3,@r0
      000D2E 08               [12] 1568 	inc	r0
      000D2F 86 04            [24] 1569 	mov	ar4,@r0
      000D31 08               [12] 1570 	inc	r0
      000D32 86 05            [24] 1571 	mov	ar5,@r0
      000D34 E5 1F            [12] 1572 	mov	a,_bp
      000D36 24 0C            [12] 1573 	add	a,#0x0c
      000D38 F8               [12] 1574 	mov	r0,a
      000D39 E6               [12] 1575 	mov	a,@r0
      000D3A 2B               [12] 1576 	add	a,r3
      000D3B FB               [12] 1577 	mov	r3,a
      000D3C E4               [12] 1578 	clr	a
      000D3D 3C               [12] 1579 	addc	a,r4
      000D3E FC               [12] 1580 	mov	r4,a
      000D3F E5 1F            [12] 1581 	mov	a,_bp
      000D41 24 08            [12] 1582 	add	a,#0x08
      000D43 F8               [12] 1583 	mov	r0,a
      000D44 86 82            [24] 1584 	mov	dpl,@r0
      000D46 08               [12] 1585 	inc	r0
      000D47 86 83            [24] 1586 	mov	dph,@r0
      000D49 08               [12] 1587 	inc	r0
      000D4A 86 F0            [24] 1588 	mov	b,@r0
      000D4C 12 1C 2A         [24] 1589 	lcall	__gptrget
      000D4F FA               [12] 1590 	mov	r2,a
      000D50 A3               [24] 1591 	inc	dptr
      000D51 12 1C 2A         [24] 1592 	lcall	__gptrget
      000D54 FE               [12] 1593 	mov	r6,a
      000D55 A3               [24] 1594 	inc	dptr
      000D56 12 1C 2A         [24] 1595 	lcall	__gptrget
      000D59 FF               [12] 1596 	mov	r7,a
      000D5A E5 1F            [12] 1597 	mov	a,_bp
      000D5C 24 0B            [12] 1598 	add	a,#0x0b
      000D5E F8               [12] 1599 	mov	r0,a
      000D5F E6               [12] 1600 	mov	a,@r0
      000D60 2A               [12] 1601 	add	a,r2
      000D61 FA               [12] 1602 	mov	r2,a
      000D62 E4               [12] 1603 	clr	a
      000D63 3E               [12] 1604 	addc	a,r6
      000D64 FE               [12] 1605 	mov	r6,a
      000D65 8A 82            [24] 1606 	mov	dpl,r2
      000D67 8E 83            [24] 1607 	mov	dph,r6
      000D69 8F F0            [24] 1608 	mov	b,r7
      000D6B 12 1C 2A         [24] 1609 	lcall	__gptrget
      000D6E 8B 82            [24] 1610 	mov	dpl,r3
      000D70 8C 83            [24] 1611 	mov	dph,r4
      000D72 8D F0            [24] 1612 	mov	b,r5
      000D74 12 1C 0F         [24] 1613 	lcall	__gptrput
                                   1614 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:99: rIndex++;
      000D77 E5 1F            [12] 1615 	mov	a,_bp
      000D79 24 0B            [12] 1616 	add	a,#0x0b
      000D7B F8               [12] 1617 	mov	r0,a
      000D7C 06               [12] 1618 	inc	@r0
                                   1619 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      000D7D E5 1F            [12] 1620 	mov	a,_bp
      000D7F 24 0C            [12] 1621 	add	a,#0x0c
      000D81 F8               [12] 1622 	mov	r0,a
      000D82 06               [12] 1623 	inc	@r0
      000D83 D0 04            [24] 1624 	pop	ar4
      000D85 D0 03            [24] 1625 	pop	ar3
      000D87 D0 02            [24] 1626 	pop	ar2
      000D89 02 0C F0         [24] 1627 	ljmp	00108$
      000D8C                       1628 00103$:
                                   1629 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:102: buffer->rIndex = rIndex;
      000D8C E5 1F            [12] 1630 	mov	a,_bp
      000D8E 24 05            [12] 1631 	add	a,#0x05
      000D90 F8               [12] 1632 	mov	r0,a
      000D91 86 82            [24] 1633 	mov	dpl,@r0
      000D93 08               [12] 1634 	inc	r0
      000D94 86 83            [24] 1635 	mov	dph,@r0
      000D96 08               [12] 1636 	inc	r0
      000D97 86 F0            [24] 1637 	mov	b,@r0
      000D99 E5 1F            [12] 1638 	mov	a,_bp
      000D9B 24 0B            [12] 1639 	add	a,#0x0b
      000D9D F9               [12] 1640 	mov	r1,a
      000D9E E7               [12] 1641 	mov	a,@r1
      000D9F 12 1C 0F         [24] 1642 	lcall	__gptrput
                                   1643 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:103: buffer->length -= count;
      000DA2 8A 82            [24] 1644 	mov	dpl,r2
      000DA4 8B 83            [24] 1645 	mov	dph,r3
      000DA6 8C F0            [24] 1646 	mov	b,r4
      000DA8 12 1C 2A         [24] 1647 	lcall	__gptrget
      000DAB FF               [12] 1648 	mov	r7,a
      000DAC E5 1F            [12] 1649 	mov	a,_bp
      000DAE 24 FA            [12] 1650 	add	a,#0xfa
      000DB0 F8               [12] 1651 	mov	r0,a
      000DB1 EF               [12] 1652 	mov	a,r7
      000DB2 C3               [12] 1653 	clr	c
      000DB3 96               [12] 1654 	subb	a,@r0
      000DB4 FF               [12] 1655 	mov	r7,a
      000DB5 8A 82            [24] 1656 	mov	dpl,r2
      000DB7 8B 83            [24] 1657 	mov	dph,r3
      000DB9 8C F0            [24] 1658 	mov	b,r4
      000DBB 12 1C 0F         [24] 1659 	lcall	__gptrput
      000DBE                       1660 00105$:
                                   1661 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:106: return rc;
      000DBE E5 1F            [12] 1662 	mov	a,_bp
      000DC0 24 04            [12] 1663 	add	a,#0x04
      000DC2 F8               [12] 1664 	mov	r0,a
      000DC3 86 82            [24] 1665 	mov	dpl,@r0
                                   1666 ;	/home/mr-atom/.stc/uni-stc/hal/fifo-buffer.c:107: }
      000DC5 85 1F 81         [24] 1667 	mov	sp,_bp
      000DC8 D0 1F            [24] 1668 	pop	_bp
      000DCA 22               [24] 1669 	ret
                                   1670 	.area CSEG    (CODE)
                                   1671 	.area CONST   (CODE)
                                   1672 	.area XINIT   (CODE)
                                   1673 	.area CABS    (ABS,CODE)
