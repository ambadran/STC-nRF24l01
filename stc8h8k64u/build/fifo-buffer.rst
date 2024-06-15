                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
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
      000021                        593 bits:
      000021                        594 	.ds 1
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
      000004                        623 _fifoIsFull_sloc0_1_0:
      000004                        624 	.ds 1
                                    625 ;--------------------------------------------------------
                                    626 ; paged external ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area PSEG    (PAG,XDATA)
                                    629 ;--------------------------------------------------------
                                    630 ; uninitialized external ram data
                                    631 ;--------------------------------------------------------
                                    632 	.area XSEG    (XDATA)
                           00FEA8   633 _ADCTIM	=	0xfea8
                           00FEAD   634 _ADCEXCFG	=	0xfead
                           00FA10   635 _DMA_ADC_CFG	=	0xfa10
                           00FA11   636 _DMA_ADC_CR	=	0xfa11
                           00FA12   637 _DMA_ADC_STA	=	0xfa12
                           00FA17   638 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   639 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   640 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   641 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   642 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   643 _CMPEXCFG	=	0xfeae
                           00FA00   644 _DMA_M2M_CFG	=	0xfa00
                           00FA01   645 _DMA_M2M_CR	=	0xfa01
                           00FA02   646 _DMA_M2M_STA	=	0xfa02
                           00FA03   647 _DMA_M2M_AMT	=	0xfa03
                           00FA04   648 _DMA_M2M_DONE	=	0xfa04
                           00FA05   649 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   650 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   651 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   652 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   653 _P1INTE	=	0xfd01
                           00FD11   654 _P1INTF	=	0xfd11
                           00FD21   655 _P1IM0	=	0xfd21
                           00FD31   656 _P1IM1	=	0xfd31
                           00FD41   657 _P1WKUE	=	0xfd41
                           00FE11   658 _P1PU	=	0xfe11
                           00FE19   659 _P1NCS	=	0xfe19
                           00FE21   660 _P1SR	=	0xfe21
                           00FE29   661 _P1DR	=	0xfe29
                           00FE31   662 _P1IE	=	0xfe31
                           00FD02   663 _P2INTE	=	0xfd02
                           00FD12   664 _P2INTF	=	0xfd12
                           00FD22   665 _P2IM0	=	0xfd22
                           00FD32   666 _P2IM1	=	0xfd32
                           00FD42   667 _P2WKUE	=	0xfd42
                           00FE12   668 _P2PU	=	0xfe12
                           00FE1A   669 _P2NCS	=	0xfe1a
                           00FE22   670 _P2SR	=	0xfe22
                           00FE2A   671 _P2DR	=	0xfe2a
                           00FE32   672 _P2IE	=	0xfe32
                           00FD03   673 _P3INTE	=	0xfd03
                           00FD13   674 _P3INTF	=	0xfd13
                           00FD23   675 _P3IM0	=	0xfd23
                           00FD33   676 _P3IM1	=	0xfd33
                           00FD43   677 _P3WKUE	=	0xfd43
                           00FE13   678 _P3PU	=	0xfe13
                           00FE1B   679 _P3NCS	=	0xfe1b
                           00FE23   680 _P3SR	=	0xfe23
                           00FE2B   681 _P3DR	=	0xfe2b
                           00FE33   682 _P3IE	=	0xfe33
                           00FD05   683 _P5INTE	=	0xfd05
                           00FD15   684 _P5INTF	=	0xfd15
                           00FD25   685 _P5IM0	=	0xfd25
                           00FD35   686 _P5IM1	=	0xfd35
                           00FD45   687 _P5WKUE	=	0xfd45
                           00FE15   688 _P5PU	=	0xfe15
                           00FE1D   689 _P5NCS	=	0xfe1d
                           00FE25   690 _P5SR	=	0xfe25
                           00FE2D   691 _P5DR	=	0xfe2d
                           00FE35   692 _P5IE	=	0xfe35
                           00FD60   693 _PINIPL	=	0xfd60
                           00FD61   694 _PINIPH	=	0xfd61
                           00FE80   695 _I2CCFG	=	0xfe80
                           00FE81   696 _I2CMSCR	=	0xfe81
                           00FE82   697 _I2CMSST	=	0xfe82
                           00FE83   698 _I2CSLCR	=	0xfe83
                           00FE84   699 _I2CSLST	=	0xfe84
                           00FE85   700 _I2CSLADR	=	0xfe85
                           00FE86   701 _I2CTXD	=	0xfe86
                           00FE87   702 _I2CRXD	=	0xfe87
                           00FE88   703 _I2CMSAUX	=	0xfe88
                           00FE50   704 _LCMCFG	=	0xfe50
                           00FE51   705 _LCMCFG2	=	0xfe51
                           00FE52   706 _LCMCR	=	0xfe52
                           00FE53   707 _LCMSTA	=	0xfe53
                           00FE54   708 _LCMIDDATL	=	0xfe54
                           00FE55   709 _LCMIDDATH	=	0xfe55
                           00FE54   710 _LCMIDDAT	=	0xfe54
                           00FA70   711 _DMA_LCM_CFG	=	0xfa70
                           00FA71   712 _DMA_LCM_CR	=	0xfa71
                           00FA72   713 _DMA_LCM_STA	=	0xfa72
                           00FA73   714 _DMA_LCM_AMT	=	0xfa73
                           00FA74   715 _DMA_LCM_DONE	=	0xfa74
                           00FA75   716 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   717 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   718 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   719 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   720 _MD3	=	0xfcf0
                           00FCF1   721 _MD2	=	0xfcf1
                           00FCF2   722 _MD1	=	0xfcf2
                           00FCF3   723 _MD0	=	0xfcf3
                           00FCF4   724 _MD5	=	0xfcf4
                           00FCF5   725 _MD4	=	0xfcf5
                           00FCF6   726 _ARCON	=	0xfcf6
                           00FCF7   727 _OPCON	=	0xfcf7
                           00FE08   728 _SPFUNC	=	0xfe08
                           00FE09   729 _RSTFLAG	=	0xfe09
                           00FEB0   730 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   731 _PWMA_ENO	=	0xfeb1
                           00FEB2   732 _PWMA_PS	=	0xfeb2
                           00FEB3   733 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   734 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   735 _PWMB_ENO	=	0xfeb5
                           00FEB6   736 _PWMB_PS	=	0xfeb6
                           00FEB7   737 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   738 _PWMA_CR1	=	0xfec0
                           00FEC1   739 _PWMA_CR2	=	0xfec1
                           00FEC2   740 _PWMA_SMCR	=	0xfec2
                           00FEC3   741 _PWMA_ETR	=	0xfec3
                           00FEC4   742 _PWMA_IER	=	0xfec4
                           00FEC5   743 _PWMA_SR1	=	0xfec5
                           00FEC6   744 _PWMA_SR2	=	0xfec6
                           00FEC7   745 _PWMA_EGR	=	0xfec7
                           00FEC8   746 _PWMA_CCMR1	=	0xfec8
                           00FEC9   747 _PWMA_CCMR2	=	0xfec9
                           00FECA   748 _PWMA_CCMR3	=	0xfeca
                           00FECB   749 _PWMA_CCMR4	=	0xfecb
                           00FECC   750 _PWMA_CCER1	=	0xfecc
                           00FECD   751 _PWMA_CCER2	=	0xfecd
                           00FECE   752 _PWMA_CNTRH	=	0xfece
                           00FECF   753 _PWMA_CNTRL	=	0xfecf
                           00FED0   754 _PWMA_PSCRH	=	0xfed0
                           00FED1   755 _PWMA_PSCRL	=	0xfed1
                           00FED2   756 _PWMA_ARRH	=	0xfed2
                           00FED3   757 _PWMA_ARRL	=	0xfed3
                           00FED4   758 _PWMA_RCR	=	0xfed4
                           00FED5   759 _PWMA_CCR1H	=	0xfed5
                           00FED6   760 _PWMA_CCR1L	=	0xfed6
                           00FED7   761 _PWMA_CCR2H	=	0xfed7
                           00FED8   762 _PWMA_CCR2L	=	0xfed8
                           00FED9   763 _PWMA_CCR3H	=	0xfed9
                           00FEDA   764 _PWMA_CCR3L	=	0xfeda
                           00FEDB   765 _PWMA_CCR4H	=	0xfedb
                           00FEDC   766 _PWMA_CCR4L	=	0xfedc
                           00FEDD   767 _PWMA_BKR	=	0xfedd
                           00FEDE   768 _PWMA_DTR	=	0xfede
                           00FEDF   769 _PWMA_OISR	=	0xfedf
                           00FEE0   770 _PWMB_CR1	=	0xfee0
                           00FEE1   771 _PWMB_CR2	=	0xfee1
                           00FEE2   772 _PWMB_SMCR	=	0xfee2
                           00FEE3   773 _PWMB_ETR	=	0xfee3
                           00FEE4   774 _PWMB_IER	=	0xfee4
                           00FEE5   775 _PWMB_SR1	=	0xfee5
                           00FEE6   776 _PWMB_SR2	=	0xfee6
                           00FEE7   777 _PWMB_EGR	=	0xfee7
                           00FEE8   778 _PWMB_CCMR1	=	0xfee8
                           00FEE9   779 _PWMB_CCMR2	=	0xfee9
                           00FEEA   780 _PWMB_CCMR3	=	0xfeea
                           00FEEB   781 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   782 _PWMB_CCER1	=	0xfeec
                           00FEED   783 _PWMB_CCER2	=	0xfeed
                           00FEEE   784 _PWMB_CNTRH	=	0xfeee
                           00FEEF   785 _PWMB_CNTRL	=	0xfeef
                           00FEF0   786 _PWMB_PSCRH	=	0xfef0
                           00FEF1   787 _PWMB_PSCRL	=	0xfef1
                           00FEF2   788 _PWMB_ARRH	=	0xfef2
                           00FEF3   789 _PWMB_ARRL	=	0xfef3
                           00FEF4   790 _PWMB_RCR	=	0xfef4
                           00FEF5   791 _PWMB_CCR1H	=	0xfef5
                           00FEF6   792 _PWMB_CCR1L	=	0xfef6
                           00FEF7   793 _PWMB_CCR2H	=	0xfef7
                           00FEF8   794 _PWMB_CCR2L	=	0xfef8
                           00FEF9   795 _PWMB_CCR3H	=	0xfef9
                           00FEFA   796 _PWMB_CCR3L	=	0xfefa
                           00FEFB   797 _PWMB_CCR4H	=	0xfefb
                           00FEFC   798 _PWMB_CCR4L	=	0xfefc
                           00FEFD   799 _PWMB_BKR	=	0xfefd
                           00FEFE   800 _PWMB_DTR	=	0xfefe
                           00FEFF   801 _PWMB_OISR	=	0xfeff
                           00FE60   802 _RTCCR	=	0xfe60
                           00FE61   803 _RTCCFG	=	0xfe61
                           00FE62   804 _RTCIEN	=	0xfe62
                           00FE63   805 _RTCIF	=	0xfe63
                           00FE64   806 _ALAHOUR	=	0xfe64
                           00FE65   807 _ALAMIN	=	0xfe65
                           00FE66   808 _ALASEC	=	0xfe66
                           00FE67   809 _ALASSEC	=	0xfe67
                           00FE68   810 _INIYEAR	=	0xfe68
                           00FE69   811 _INIMONTH	=	0xfe69
                           00FE6A   812 _INIDAY	=	0xfe6a
                           00FE6B   813 _INIHOUR	=	0xfe6b
                           00FE6C   814 _INIMIN	=	0xfe6c
                           00FE6D   815 _INISEC	=	0xfe6d
                           00FE6E   816 _INISSEC	=	0xfe6e
                           00FE70   817 _YEAR	=	0xfe70
                           00FE71   818 _MONTH	=	0xfe71
                           00FE72   819 _DAY	=	0xfe72
                           00FE73   820 _HOUR	=	0xfe73
                           00FE74   821 _MIN	=	0xfe74
                           00FE75   822 _SEC	=	0xfe75
                           00FE76   823 _SSEC	=	0xfe76
                           00FA20   824 _DMA_SPI_CFG	=	0xfa20
                           00FA21   825 _DMA_SPI_CR	=	0xfa21
                           00FA22   826 _DMA_SPI_STA	=	0xfa22
                           00FA23   827 _DMA_SPI_AMT	=	0xfa23
                           00FA24   828 _DMA_SPI_DONE	=	0xfa24
                           00FA25   829 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   830 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   831 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   832 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   833 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   834 _CLKDIV	=	0xfe01
                           00FE02   835 _HIRCCR	=	0xfe02
                           00FE03   836 _XOSCCR	=	0xfe03
                           00FE04   837 _IRC32KCR	=	0xfe04
                           00FE00   838 _CKSEL	=	0xfe00
                           00FE05   839 _MCLKOCR	=	0xfe05
                           00FE06   840 _IRCDB	=	0xfe06
                           00FE07   841 _IRC48MCR	=	0xfe07
                           00FEA2   842 _TM2PS	=	0xfea2
                           00FEA3   843 _TM3PS	=	0xfea3
                           00FEA4   844 _TM4PS	=	0xfea4
                           00FA30   845 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   846 _DMA_UR1T_CR	=	0xfa31
                           00FA32   847 _DMA_UR1T_STA	=	0xfa32
                           00FA33   848 _DMA_URTX_AMT	=	0xfa33
                           00FA34   849 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   850 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   851 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   852 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   853 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   854 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   855 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   856 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   857 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   858 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   859 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   860 _DMA_UR2T_CR	=	0xfa31
                           00FA32   861 _DMA_UR2T_STA	=	0xfa32
                           00FA33   862 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   863 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   864 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   865 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   866 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   867 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   868 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   869 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   870 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   871 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   872 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   873 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   874 _DMA_UR3T_CR	=	0xfa31
                           00FA32   875 _DMA_UR3T_STA	=	0xfa32
                           00FA33   876 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   877 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   878 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   879 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   880 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   881 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   882 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   883 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   884 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   885 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   886 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   887 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   888 _DMA_UR4T_CR	=	0xfa31
                           00FA32   889 _DMA_UR4T_STA	=	0xfa32
                           00FA33   890 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   891 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   892 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   893 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   894 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   895 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   896 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   897 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   898 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   899 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   900 _DMA_UR4R_TXAL	=	0xfa3e
      00009B                        901 _uartGetCharacter_result_10000_50:
      00009B                        902 	.ds 1
      00009C                        903 _fifoClear_buffer_10000_84:
      00009C                        904 	.ds 3
      00009F                        905 _fifoIsFull_fifo_10000_86:
      00009F                        906 	.ds 3
      0000A2                        907 _fifoBytesFree_fifo_10000_91:
      0000A2                        908 	.ds 3
                                    909 ;--------------------------------------------------------
                                    910 ; absolute external ram data
                                    911 ;--------------------------------------------------------
                                    912 	.area XABS    (ABS,XDATA)
                                    913 ;--------------------------------------------------------
                                    914 ; initialized external ram data
                                    915 ;--------------------------------------------------------
                                    916 	.area XISEG   (XDATA)
                                    917 	.area HOME    (CODE)
                                    918 	.area GSINIT0 (CODE)
                                    919 	.area GSINIT1 (CODE)
                                    920 	.area GSINIT2 (CODE)
                                    921 	.area GSINIT3 (CODE)
                                    922 	.area GSINIT4 (CODE)
                                    923 	.area GSINIT5 (CODE)
                                    924 	.area GSINIT  (CODE)
                                    925 	.area GSFINAL (CODE)
                                    926 	.area CSEG    (CODE)
                                    927 ;--------------------------------------------------------
                                    928 ; global & static initialisations
                                    929 ;--------------------------------------------------------
                                    930 	.area HOME    (CODE)
                                    931 	.area GSINIT  (CODE)
                                    932 	.area GSFINAL (CODE)
                                    933 	.area GSINIT  (CODE)
                                    934 ;--------------------------------------------------------
                                    935 ; Home
                                    936 ;--------------------------------------------------------
                                    937 	.area HOME    (CODE)
                                    938 	.area HOME    (CODE)
                                    939 ;--------------------------------------------------------
                                    940 ; code
                                    941 ;--------------------------------------------------------
                                    942 	.area CSEG    (CODE)
                                    943 ;------------------------------------------------------------
                                    944 ;Allocation info for local variables in function 'fifoClear'
                                    945 ;------------------------------------------------------------
                                    946 ;buffer                    Allocated with name '_fifoClear_buffer_10000_84'
                                    947 ;------------------------------------------------------------
                                    948 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:39: void fifoClear(FifoState *buffer) {
                                    949 ;	-----------------------------------------
                                    950 ;	 function fifoClear
                                    951 ;	-----------------------------------------
      001828                        952 _fifoClear:
                           000007   953 	ar7 = 0x07
                           000006   954 	ar6 = 0x06
                           000005   955 	ar5 = 0x05
                           000004   956 	ar4 = 0x04
                           000003   957 	ar3 = 0x03
                           000002   958 	ar2 = 0x02
                           000001   959 	ar1 = 0x01
                           000000   960 	ar0 = 0x00
      001828 AF F0            [24]  961 	mov	r7,b
      00182A AE 83            [24]  962 	mov	r6,dph
      00182C E5 82            [12]  963 	mov	a,dpl
      00182E 90 00 9C         [24]  964 	mov	dptr,#_fifoClear_buffer_10000_84
      001831 F0               [24]  965 	movx	@dptr,a
      001832 EE               [12]  966 	mov	a,r6
      001833 A3               [24]  967 	inc	dptr
      001834 F0               [24]  968 	movx	@dptr,a
      001835 EF               [12]  969 	mov	a,r7
      001836 A3               [24]  970 	inc	dptr
      001837 F0               [24]  971 	movx	@dptr,a
                                    972 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:40: buffer->length = 0;
      001838 90 00 9C         [24]  973 	mov	dptr,#_fifoClear_buffer_10000_84
      00183B E0               [24]  974 	movx	a,@dptr
      00183C FD               [12]  975 	mov	r5,a
      00183D A3               [24]  976 	inc	dptr
      00183E E0               [24]  977 	movx	a,@dptr
      00183F FE               [12]  978 	mov	r6,a
      001840 A3               [24]  979 	inc	dptr
      001841 E0               [24]  980 	movx	a,@dptr
      001842 FF               [12]  981 	mov	r7,a
      001843 74 01            [12]  982 	mov	a,#0x01
      001845 2D               [12]  983 	add	a, r5
      001846 FA               [12]  984 	mov	r2,a
      001847 E4               [12]  985 	clr	a
      001848 3E               [12]  986 	addc	a, r6
      001849 FB               [12]  987 	mov	r3,a
      00184A 8F 04            [24]  988 	mov	ar4,r7
      00184C 8A 82            [24]  989 	mov	dpl,r2
      00184E 8B 83            [24]  990 	mov	dph,r3
      001850 8C F0            [24]  991 	mov	b,r4
      001852 E4               [12]  992 	clr	a
      001853 12 2F F5         [24]  993 	lcall	__gptrput
                                    994 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:41: buffer->rIndex = 0;
      001856 74 02            [12]  995 	mov	a,#0x02
      001858 2D               [12]  996 	add	a, r5
      001859 FA               [12]  997 	mov	r2,a
      00185A E4               [12]  998 	clr	a
      00185B 3E               [12]  999 	addc	a, r6
      00185C FB               [12] 1000 	mov	r3,a
      00185D 8F 04            [24] 1001 	mov	ar4,r7
      00185F 8A 82            [24] 1002 	mov	dpl,r2
      001861 8B 83            [24] 1003 	mov	dph,r3
      001863 8C F0            [24] 1004 	mov	b,r4
      001865 E4               [12] 1005 	clr	a
      001866 12 2F F5         [24] 1006 	lcall	__gptrput
                                   1007 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:42: buffer->wIndex = 0;
      001869 74 03            [12] 1008 	mov	a,#0x03
      00186B 2D               [12] 1009 	add	a, r5
      00186C FA               [12] 1010 	mov	r2,a
      00186D E4               [12] 1011 	clr	a
      00186E 3E               [12] 1012 	addc	a, r6
      00186F FB               [12] 1013 	mov	r3,a
      001870 8F 04            [24] 1014 	mov	ar4,r7
      001872 8A 82            [24] 1015 	mov	dpl,r2
      001874 8B 83            [24] 1016 	mov	dph,r3
      001876 8C F0            [24] 1017 	mov	b,r4
      001878 E4               [12] 1018 	clr	a
      001879 12 2F F5         [24] 1019 	lcall	__gptrput
                                   1020 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:43: buffer->status = 0;
      00187C 74 04            [12] 1021 	mov	a,#0x04
      00187E 2D               [12] 1022 	add	a, r5
      00187F FD               [12] 1023 	mov	r5,a
      001880 E4               [12] 1024 	clr	a
      001881 3E               [12] 1025 	addc	a, r6
      001882 FE               [12] 1026 	mov	r6,a
      001883 8D 82            [24] 1027 	mov	dpl,r5
      001885 8E 83            [24] 1028 	mov	dph,r6
      001887 8F F0            [24] 1029 	mov	b,r7
      001889 E4               [12] 1030 	clr	a
                                   1031 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:44: }
      00188A 02 2F F5         [24] 1032 	ljmp	__gptrput
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'fifoIsFull'
                                   1035 ;------------------------------------------------------------
                                   1036 ;fifo                      Allocated with name '_fifoIsFull_fifo_10000_86'
                                   1037 ;__200000007               Allocated with name '_fifoIsFull___200000007_20000_87'
                                   1038 ;__200000008               Allocated with name '_fifoIsFull___200000008_20000_88'
                                   1039 ;buffer                    Allocated with name '_fifoIsFull_buffer_30000_89'
                                   1040 ;------------------------------------------------------------
                                   1041 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:46: bool fifoIsFull(FifoState *fifo) {
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function fifoIsFull
                                   1044 ;	-----------------------------------------
      00188D                       1045 _fifoIsFull:
      00188D AF F0            [24] 1046 	mov	r7,b
      00188F AE 83            [24] 1047 	mov	r6,dph
      001891 E5 82            [12] 1048 	mov	a,dpl
      001893 90 00 9F         [24] 1049 	mov	dptr,#_fifoIsFull_fifo_10000_86
      001896 F0               [24] 1050 	movx	@dptr,a
      001897 EE               [12] 1051 	mov	a,r6
      001898 A3               [24] 1052 	inc	dptr
      001899 F0               [24] 1053 	movx	@dptr,a
      00189A EF               [12] 1054 	mov	a,r7
      00189B A3               [24] 1055 	inc	dptr
      00189C F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      00189D 90 00 9F         [24] 1058 	mov	dptr,#_fifoIsFull_fifo_10000_86
      0018A0 E0               [24] 1059 	movx	a,@dptr
      0018A1 FD               [12] 1060 	mov	r5,a
      0018A2 A3               [24] 1061 	inc	dptr
      0018A3 E0               [24] 1062 	movx	a,@dptr
      0018A4 FE               [12] 1063 	mov	r6,a
      0018A5 A3               [24] 1064 	inc	dptr
      0018A6 E0               [24] 1065 	movx	a,@dptr
      0018A7 FF               [12] 1066 	mov	r7,a
                                   1067 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      0018A8 74 01            [12] 1068 	mov	a,#0x01
      0018AA 2D               [12] 1069 	add	a, r5
      0018AB FA               [12] 1070 	mov	r2,a
      0018AC E4               [12] 1071 	clr	a
      0018AD 3E               [12] 1072 	addc	a, r6
      0018AE FB               [12] 1073 	mov	r3,a
      0018AF 8F 04            [24] 1074 	mov	ar4,r7
      0018B1 8A 82            [24] 1075 	mov	dpl,r2
      0018B3 8B 83            [24] 1076 	mov	dph,r3
      0018B5 8C F0            [24] 1077 	mov	b,r4
      0018B7 12 3A A0         [24] 1078 	lcall	__gptrget
      0018BA FA               [12] 1079 	mov	r2,a
                                   1080 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      0018BB 8D 82            [24] 1081 	mov	dpl,r5
      0018BD 8E 83            [24] 1082 	mov	dph,r6
      0018BF 8F F0            [24] 1083 	mov	b,r7
      0018C1 12 3A A0         [24] 1084 	lcall	__gptrget
      0018C4 FD               [12] 1085 	mov	r5,a
      0018C5 EA               [12] 1086 	mov	a,r2
      0018C6 B5 05 03         [24] 1087 	cjne	a,ar5,00104$
      0018C9 D3               [12] 1088 	setb	c
      0018CA 80 01            [24] 1089 	sjmp	00105$
      0018CC                       1090 00104$:
      0018CC C3               [12] 1091 	clr	c
      0018CD                       1092 00105$:
      0018CD 92 04            [24] 1093 	mov  _fifoIsFull_sloc0_1_0,c
      0018CF E4               [12] 1094 	clr	a
      0018D0 33               [12] 1095 	rlc	a
      0018D1 F5 82            [12] 1096 	mov	dpl, a
                                   1097 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:48: }
      0018D3 22               [24] 1098 	ret
                                   1099 ;------------------------------------------------------------
                                   1100 ;Allocation info for local variables in function 'fifoBytesFree'
                                   1101 ;------------------------------------------------------------
                                   1102 ;fifo                      Allocated with name '_fifoBytesFree_fifo_10000_91'
                                   1103 ;__200000010               Allocated with name '_fifoBytesFree___200000010_20000_92'
                                   1104 ;__200000011               Allocated with name '_fifoBytesFree___200000011_20000_93'
                                   1105 ;buffer                    Allocated with name '_fifoBytesFree_buffer_30000_94'
                                   1106 ;------------------------------------------------------------
                                   1107 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:50: uint8_t fifoBytesFree(FifoState *fifo) {
                                   1108 ;	-----------------------------------------
                                   1109 ;	 function fifoBytesFree
                                   1110 ;	-----------------------------------------
      0018D4                       1111 _fifoBytesFree:
      0018D4 AF F0            [24] 1112 	mov	r7,b
      0018D6 AE 83            [24] 1113 	mov	r6,dph
      0018D8 E5 82            [12] 1114 	mov	a,dpl
      0018DA 90 00 A2         [24] 1115 	mov	dptr,#_fifoBytesFree_fifo_10000_91
      0018DD F0               [24] 1116 	movx	@dptr,a
      0018DE EE               [12] 1117 	mov	a,r6
      0018DF A3               [24] 1118 	inc	dptr
      0018E0 F0               [24] 1119 	movx	@dptr,a
      0018E1 EF               [12] 1120 	mov	a,r7
      0018E2 A3               [24] 1121 	inc	dptr
      0018E3 F0               [24] 1122 	movx	@dptr,a
                                   1123 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      0018E4 90 00 A2         [24] 1124 	mov	dptr,#_fifoBytesFree_fifo_10000_91
      0018E7 E0               [24] 1125 	movx	a,@dptr
      0018E8 FD               [12] 1126 	mov	r5,a
      0018E9 A3               [24] 1127 	inc	dptr
      0018EA E0               [24] 1128 	movx	a,@dptr
      0018EB FE               [12] 1129 	mov	r6,a
      0018EC A3               [24] 1130 	inc	dptr
      0018ED E0               [24] 1131 	movx	a,@dptr
      0018EE FF               [12] 1132 	mov	r7,a
      0018EF 8D 82            [24] 1133 	mov	dpl,r5
      0018F1 8E 83            [24] 1134 	mov	dph,r6
      0018F3 8F F0            [24] 1135 	mov	b,r7
      0018F5 12 3A A0         [24] 1136 	lcall	__gptrget
      0018F8 FC               [12] 1137 	mov	r4,a
                                   1138 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      0018F9 0D               [12] 1139 	inc	r5
      0018FA BD 00 01         [24] 1140 	cjne	r5,#0x00,00104$
      0018FD 0E               [12] 1141 	inc	r6
      0018FE                       1142 00104$:
      0018FE 8D 82            [24] 1143 	mov	dpl,r5
      001900 8E 83            [24] 1144 	mov	dph,r6
      001902 8F F0            [24] 1145 	mov	b,r7
      001904 12 3A A0         [24] 1146 	lcall	__gptrget
      001907 FD               [12] 1147 	mov	r5,a
                                   1148 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      001908 EC               [12] 1149 	mov	a,r4
      001909 C3               [12] 1150 	clr	c
      00190A 9D               [12] 1151 	subb	a,r5
                                   1152 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:52: }
      00190B F5 82            [12] 1153 	mov	dpl,a
      00190D 22               [24] 1154 	ret
                                   1155 ;------------------------------------------------------------
                                   1156 ;Allocation info for local variables in function 'fifoWrite'
                                   1157 ;------------------------------------------------------------
                                   1158 ;data                      Allocated to stack - _bp -5 +3 
                                   1159 ;count                     Allocated to stack - _bp -6 +1 
                                   1160 ;buffer                    Allocated to stack - _bp +1 +3 
                                   1161 ;rc                        Allocated to registers r4 
                                   1162 ;wIndex                    Allocated to stack - _bp +10 +1 
                                   1163 ;n                         Allocated to stack - _bp +11 +1 
                                   1164 ;sloc0                     Allocated to stack - _bp +4 +3 
                                   1165 ;sloc1                     Allocated to stack - _bp +7 +3 
                                   1166 ;------------------------------------------------------------
                                   1167 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:64: bool fifoWrite(FifoState *buffer, const void *data, uint8_t count) REENTRANT {
                                   1168 ;	-----------------------------------------
                                   1169 ;	 function fifoWrite
                                   1170 ;	-----------------------------------------
      00190E                       1171 _fifoWrite:
      00190E C0 1F            [24] 1172 	push	_bp
      001910 85 81 1F         [24] 1173 	mov	_bp,sp
      001913 C0 82            [24] 1174 	push	dpl
      001915 C0 83            [24] 1175 	push	dph
      001917 C0 F0            [24] 1176 	push	b
      001919 E5 81            [12] 1177 	mov	a,sp
      00191B 24 08            [12] 1178 	add	a,#0x08
      00191D F5 81            [12] 1179 	mov	sp,a
                                   1180 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:65: bool rc = fifoBytesFree(buffer) >= count;
      00191F A8 1F            [24] 1181 	mov	r0,_bp
      001921 08               [12] 1182 	inc	r0
      001922 86 82            [24] 1183 	mov	dpl, @r0
      001924 08               [12] 1184 	inc	r0
      001925 86 83            [24] 1185 	mov	dph, @r0
      001927 08               [12] 1186 	inc	r0
      001928 86 F0            [24] 1187 	mov	b, @r0
      00192A 12 18 D4         [24] 1188 	lcall	_fifoBytesFree
      00192D AC 82            [24] 1189 	mov	r4, dpl
      00192F E5 1F            [12] 1190 	mov	a,_bp
      001931 24 FA            [12] 1191 	add	a,#0xfa
      001933 F8               [12] 1192 	mov	r0,a
      001934 C3               [12] 1193 	clr	c
      001935 EC               [12] 1194 	mov	a,r4
      001936 96               [12] 1195 	subb	a,@r0
      001937 B3               [12] 1196 	cpl	c
      001938 92 08            [24] 1197 	mov	b0,c
      00193A E4               [12] 1198 	clr	a
      00193B 33               [12] 1199 	rlc	a
      00193C FC               [12] 1200 	mov	r4,a
                                   1201 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:67: if (rc) {
      00193D 20 08 03         [24] 1202 	jb	b0,00136$
      001940 02 1A 66         [24] 1203 	ljmp	00105$
      001943                       1204 00136$:
                                   1205 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:68: uint8_t wIndex = buffer->wIndex;
      001943 A8 1F            [24] 1206 	mov	r0,_bp
      001945 08               [12] 1207 	inc	r0
      001946 E5 1F            [12] 1208 	mov	a,_bp
      001948 24 04            [12] 1209 	add	a,#0x04
      00194A F9               [12] 1210 	mov	r1,a
      00194B 74 03            [12] 1211 	mov	a,#0x03
      00194D 26               [12] 1212 	add	a, @r0
      00194E F7               [12] 1213 	mov	@r1,a
      00194F E4               [12] 1214 	clr	a
      001950 08               [12] 1215 	inc	r0
      001951 36               [12] 1216 	addc	a, @r0
      001952 09               [12] 1217 	inc	r1
      001953 F7               [12] 1218 	mov	@r1,a
      001954 08               [12] 1219 	inc	r0
      001955 E6               [12] 1220 	mov	a,@r0
      001956 09               [12] 1221 	inc	r1
      001957 F7               [12] 1222 	mov	@r1,a
      001958 E5 1F            [12] 1223 	mov	a,_bp
      00195A 24 04            [12] 1224 	add	a,#0x04
      00195C F8               [12] 1225 	mov	r0,a
      00195D 86 82            [24] 1226 	mov	dpl,@r0
      00195F 08               [12] 1227 	inc	r0
      001960 86 83            [24] 1228 	mov	dph,@r0
      001962 08               [12] 1229 	inc	r0
      001963 86 F0            [24] 1230 	mov	b,@r0
      001965 E5 1F            [12] 1231 	mov	a,_bp
      001967 24 0A            [12] 1232 	add	a,#0x0a
      001969 F9               [12] 1233 	mov	r1,a
      00196A 12 3A A0         [24] 1234 	lcall	__gptrget
      00196D F7               [12] 1235 	mov	@r1,a
                                   1236 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      00196E A8 1F            [24] 1237 	mov	r0,_bp
      001970 08               [12] 1238 	inc	r0
      001971 E5 1F            [12] 1239 	mov	a,_bp
      001973 24 07            [12] 1240 	add	a,#0x07
      001975 F9               [12] 1241 	mov	r1,a
      001976 74 05            [12] 1242 	mov	a,#0x05
      001978 26               [12] 1243 	add	a, @r0
      001979 F7               [12] 1244 	mov	@r1,a
      00197A E4               [12] 1245 	clr	a
      00197B 08               [12] 1246 	inc	r0
      00197C 36               [12] 1247 	addc	a, @r0
      00197D 09               [12] 1248 	inc	r1
      00197E F7               [12] 1249 	mov	@r1,a
      00197F 08               [12] 1250 	inc	r0
      001980 E6               [12] 1251 	mov	a,@r0
      001981 09               [12] 1252 	inc	r1
      001982 F7               [12] 1253 	mov	@r1,a
      001983 E5 1F            [12] 1254 	mov	a,_bp
      001985 24 0B            [12] 1255 	add	a,#0x0b
      001987 F8               [12] 1256 	mov	r0,a
      001988 76 00            [12] 1257 	mov	@r0,#0x00
      00198A                       1258 00107$:
      00198A E5 1F            [12] 1259 	mov	a,_bp
      00198C 24 0B            [12] 1260 	add	a,#0x0b
      00198E F8               [12] 1261 	mov	r0,a
      00198F E5 1F            [12] 1262 	mov	a,_bp
      001991 24 FA            [12] 1263 	add	a,#0xfa
      001993 F9               [12] 1264 	mov	r1,a
      001994 C3               [12] 1265 	clr	c
      001995 E6               [12] 1266 	mov	a,@r0
      001996 97               [12] 1267 	subb	a,@r1
      001997 40 03            [24] 1268 	jc	00137$
      001999 02 1A 28         [24] 1269 	ljmp	00103$
      00199C                       1270 00137$:
                                   1271 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:71: if (wIndex == buffer->size) {
      00199C C0 04            [24] 1272 	push	ar4
      00199E A8 1F            [24] 1273 	mov	r0,_bp
      0019A0 08               [12] 1274 	inc	r0
      0019A1 86 82            [24] 1275 	mov	dpl,@r0
      0019A3 08               [12] 1276 	inc	r0
      0019A4 86 83            [24] 1277 	mov	dph,@r0
      0019A6 08               [12] 1278 	inc	r0
      0019A7 86 F0            [24] 1279 	mov	b,@r0
      0019A9 12 3A A0         [24] 1280 	lcall	__gptrget
      0019AC FC               [12] 1281 	mov	r4,a
      0019AD E5 1F            [12] 1282 	mov	a,_bp
      0019AF 24 0A            [12] 1283 	add	a,#0x0a
      0019B1 F8               [12] 1284 	mov	r0,a
      0019B2 E6               [12] 1285 	mov	a,@r0
      0019B3 B5 04 02         [24] 1286 	cjne	a,ar4,00138$
      0019B6 80 04            [24] 1287 	sjmp	00139$
      0019B8                       1288 00138$:
      0019B8 D0 04            [24] 1289 	pop	ar4
      0019BA 80 09            [24] 1290 	sjmp	00102$
      0019BC                       1291 00139$:
      0019BC D0 04            [24] 1292 	pop	ar4
                                   1293 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:72: wIndex = 0;
      0019BE E5 1F            [12] 1294 	mov	a,_bp
      0019C0 24 0A            [12] 1295 	add	a,#0x0a
      0019C2 F8               [12] 1296 	mov	r0,a
      0019C3 76 00            [12] 1297 	mov	@r0,#0x00
      0019C5                       1298 00102$:
                                   1299 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:75: buffer->data[wIndex] = ((const uint8_t *) data)[n];
      0019C5 C0 04            [24] 1300 	push	ar4
      0019C7 E5 1F            [12] 1301 	mov	a,_bp
      0019C9 24 07            [12] 1302 	add	a,#0x07
      0019CB F8               [12] 1303 	mov	r0,a
      0019CC 86 82            [24] 1304 	mov	dpl,@r0
      0019CE 08               [12] 1305 	inc	r0
      0019CF 86 83            [24] 1306 	mov	dph,@r0
      0019D1 08               [12] 1307 	inc	r0
      0019D2 86 F0            [24] 1308 	mov	b,@r0
      0019D4 12 3A A0         [24] 1309 	lcall	__gptrget
      0019D7 FA               [12] 1310 	mov	r2,a
      0019D8 A3               [24] 1311 	inc	dptr
      0019D9 12 3A A0         [24] 1312 	lcall	__gptrget
      0019DC FB               [12] 1313 	mov	r3,a
      0019DD A3               [24] 1314 	inc	dptr
      0019DE 12 3A A0         [24] 1315 	lcall	__gptrget
      0019E1 FC               [12] 1316 	mov	r4,a
      0019E2 E5 1F            [12] 1317 	mov	a,_bp
      0019E4 24 0A            [12] 1318 	add	a,#0x0a
      0019E6 F8               [12] 1319 	mov	r0,a
      0019E7 E6               [12] 1320 	mov	a,@r0
      0019E8 2A               [12] 1321 	add	a, r2
      0019E9 FA               [12] 1322 	mov	r2,a
      0019EA E4               [12] 1323 	clr	a
      0019EB 3B               [12] 1324 	addc	a, r3
      0019EC FB               [12] 1325 	mov	r3,a
      0019ED E5 1F            [12] 1326 	mov	a,_bp
      0019EF 24 FB            [12] 1327 	add	a,#0xfb
      0019F1 F8               [12] 1328 	mov	r0,a
      0019F2 86 05            [24] 1329 	mov	ar5,@r0
      0019F4 08               [12] 1330 	inc	r0
      0019F5 86 06            [24] 1331 	mov	ar6,@r0
      0019F7 08               [12] 1332 	inc	r0
      0019F8 86 07            [24] 1333 	mov	ar7,@r0
      0019FA E5 1F            [12] 1334 	mov	a,_bp
      0019FC 24 0B            [12] 1335 	add	a,#0x0b
      0019FE F8               [12] 1336 	mov	r0,a
      0019FF E6               [12] 1337 	mov	a,@r0
      001A00 2D               [12] 1338 	add	a, r5
      001A01 FD               [12] 1339 	mov	r5,a
      001A02 E4               [12] 1340 	clr	a
      001A03 3E               [12] 1341 	addc	a, r6
      001A04 FE               [12] 1342 	mov	r6,a
      001A05 8D 82            [24] 1343 	mov	dpl,r5
      001A07 8E 83            [24] 1344 	mov	dph,r6
      001A09 8F F0            [24] 1345 	mov	b,r7
      001A0B 12 3A A0         [24] 1346 	lcall	__gptrget
      001A0E 8A 82            [24] 1347 	mov	dpl,r2
      001A10 8B 83            [24] 1348 	mov	dph,r3
      001A12 8C F0            [24] 1349 	mov	b,r4
      001A14 12 2F F5         [24] 1350 	lcall	__gptrput
                                   1351 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:76: wIndex++;
      001A17 E5 1F            [12] 1352 	mov	a,_bp
      001A19 24 0A            [12] 1353 	add	a,#0x0a
      001A1B F8               [12] 1354 	mov	r0,a
      001A1C 06               [12] 1355 	inc	@r0
                                   1356 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      001A1D E5 1F            [12] 1357 	mov	a,_bp
      001A1F 24 0B            [12] 1358 	add	a,#0x0b
      001A21 F8               [12] 1359 	mov	r0,a
      001A22 06               [12] 1360 	inc	@r0
      001A23 D0 04            [24] 1361 	pop	ar4
      001A25 02 19 8A         [24] 1362 	ljmp	00107$
      001A28                       1363 00103$:
                                   1364 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:79: buffer->wIndex = wIndex;
      001A28 E5 1F            [12] 1365 	mov	a,_bp
      001A2A 24 04            [12] 1366 	add	a,#0x04
      001A2C F8               [12] 1367 	mov	r0,a
      001A2D 86 82            [24] 1368 	mov	dpl,@r0
      001A2F 08               [12] 1369 	inc	r0
      001A30 86 83            [24] 1370 	mov	dph,@r0
      001A32 08               [12] 1371 	inc	r0
      001A33 86 F0            [24] 1372 	mov	b,@r0
      001A35 E5 1F            [12] 1373 	mov	a,_bp
      001A37 24 0A            [12] 1374 	add	a,#0x0a
      001A39 F9               [12] 1375 	mov	r1,a
      001A3A E7               [12] 1376 	mov	a,@r1
      001A3B 12 2F F5         [24] 1377 	lcall	__gptrput
                                   1378 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:80: buffer->length += count;
      001A3E A8 1F            [24] 1379 	mov	r0,_bp
      001A40 08               [12] 1380 	inc	r0
      001A41 74 01            [12] 1381 	mov	a,#0x01
      001A43 26               [12] 1382 	add	a, @r0
      001A44 FD               [12] 1383 	mov	r5,a
      001A45 E4               [12] 1384 	clr	a
      001A46 08               [12] 1385 	inc	r0
      001A47 36               [12] 1386 	addc	a, @r0
      001A48 FE               [12] 1387 	mov	r6,a
      001A49 08               [12] 1388 	inc	r0
      001A4A 86 07            [24] 1389 	mov	ar7,@r0
      001A4C 8D 82            [24] 1390 	mov	dpl,r5
      001A4E 8E 83            [24] 1391 	mov	dph,r6
      001A50 8F F0            [24] 1392 	mov	b,r7
      001A52 12 3A A0         [24] 1393 	lcall	__gptrget
      001A55 FB               [12] 1394 	mov	r3,a
      001A56 E5 1F            [12] 1395 	mov	a,_bp
      001A58 24 FA            [12] 1396 	add	a,#0xfa
      001A5A F8               [12] 1397 	mov	r0,a
      001A5B E6               [12] 1398 	mov	a,@r0
      001A5C 2B               [12] 1399 	add	a, r3
      001A5D 8D 82            [24] 1400 	mov	dpl,r5
      001A5F 8E 83            [24] 1401 	mov	dph,r6
      001A61 8F F0            [24] 1402 	mov	b,r7
      001A63 12 2F F5         [24] 1403 	lcall	__gptrput
      001A66                       1404 00105$:
                                   1405 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:83: return rc;
      001A66 8C 82            [24] 1406 	mov	dpl, r4
                                   1407 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:84: }
      001A68 85 1F 81         [24] 1408 	mov	sp,_bp
      001A6B D0 1F            [24] 1409 	pop	_bp
      001A6D 22               [24] 1410 	ret
                                   1411 ;------------------------------------------------------------
                                   1412 ;Allocation info for local variables in function 'fifoRead'
                                   1413 ;------------------------------------------------------------
                                   1414 ;data                      Allocated to stack - _bp -5 +3 
                                   1415 ;count                     Allocated to stack - _bp -6 +1 
                                   1416 ;buffer                    Allocated to stack - _bp +1 +3 
                                   1417 ;__200000013               Allocated to registers r7 
                                   1418 ;rc                        Allocated to stack - _bp +4 +1 
                                   1419 ;__200000014               Allocated to registers 
                                   1420 ;buffer                    Allocated to registers 
                                   1421 ;rIndex                    Allocated to stack - _bp +11 +1 
                                   1422 ;n                         Allocated to stack - _bp +12 +1 
                                   1423 ;sloc0                     Allocated to stack - _bp +4 +1 
                                   1424 ;sloc1                     Allocated to stack - _bp +5 +3 
                                   1425 ;sloc2                     Allocated to stack - _bp +8 +3 
                                   1426 ;------------------------------------------------------------
                                   1427 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:86: bool fifoRead(FifoState *buffer, void *data, uint8_t count) REENTRANT {
                                   1428 ;	-----------------------------------------
                                   1429 ;	 function fifoRead
                                   1430 ;	-----------------------------------------
      001A6E                       1431 _fifoRead:
      001A6E C0 1F            [24] 1432 	push	_bp
      001A70 85 81 1F         [24] 1433 	mov	_bp,sp
      001A73 C0 82            [24] 1434 	push	dpl
      001A75 C0 83            [24] 1435 	push	dph
      001A77 C0 F0            [24] 1436 	push	b
      001A79 E5 81            [12] 1437 	mov	a,sp
      001A7B 24 09            [12] 1438 	add	a,#0x09
      001A7D F5 81            [12] 1439 	mov	sp,a
                                   1440 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:87: bool rc = fifoLength(buffer) >= count;
      001A7F A8 1F            [24] 1441 	mov	r0,_bp
      001A81 08               [12] 1442 	inc	r0
      001A82 74 01            [12] 1443 	mov	a,#0x01
      001A84 26               [12] 1444 	add	a, @r0
      001A85 FA               [12] 1445 	mov	r2,a
      001A86 E4               [12] 1446 	clr	a
      001A87 08               [12] 1447 	inc	r0
      001A88 36               [12] 1448 	addc	a, @r0
      001A89 FB               [12] 1449 	mov	r3,a
      001A8A 08               [12] 1450 	inc	r0
      001A8B 86 04            [24] 1451 	mov	ar4,@r0
      001A8D 8A 82            [24] 1452 	mov	dpl,r2
      001A8F 8B 83            [24] 1453 	mov	dph,r3
      001A91 8C F0            [24] 1454 	mov	b,r4
      001A93 12 3A A0         [24] 1455 	lcall	__gptrget
      001A96 FF               [12] 1456 	mov	r7,a
      001A97 E5 1F            [12] 1457 	mov	a,_bp
      001A99 24 FA            [12] 1458 	add	a,#0xfa
      001A9B F8               [12] 1459 	mov	r0,a
      001A9C C3               [12] 1460 	clr	c
      001A9D EF               [12] 1461 	mov	a,r7
      001A9E 96               [12] 1462 	subb	a,@r0
      001A9F B3               [12] 1463 	cpl	c
      001AA0 92 08            [24] 1464 	mov	b0,c
      001AA2 E5 1F            [12] 1465 	mov	a,_bp
      001AA4 24 04            [12] 1466 	add	a,#0x04
      001AA6 F8               [12] 1467 	mov	r0,a
      001AA7 A2 08            [12] 1468 	mov	c,b0
      001AA9 E4               [12] 1469 	clr	a
      001AAA 33               [12] 1470 	rlc	a
      001AAB F6               [12] 1471 	mov	@r0,a
                                   1472 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:89: if (rc) {
      001AAC 20 08 03         [24] 1473 	jb	b0,00137$
      001AAF 02 1B C6         [24] 1474 	ljmp	00105$
      001AB2                       1475 00137$:
                                   1476 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:90: uint8_t rIndex = buffer->rIndex;
      001AB2 A8 1F            [24] 1477 	mov	r0,_bp
      001AB4 08               [12] 1478 	inc	r0
      001AB5 E5 1F            [12] 1479 	mov	a,_bp
      001AB7 24 05            [12] 1480 	add	a,#0x05
      001AB9 F9               [12] 1481 	mov	r1,a
      001ABA 74 02            [12] 1482 	mov	a,#0x02
      001ABC 26               [12] 1483 	add	a, @r0
      001ABD F7               [12] 1484 	mov	@r1,a
      001ABE E4               [12] 1485 	clr	a
      001ABF 08               [12] 1486 	inc	r0
      001AC0 36               [12] 1487 	addc	a, @r0
      001AC1 09               [12] 1488 	inc	r1
      001AC2 F7               [12] 1489 	mov	@r1,a
      001AC3 08               [12] 1490 	inc	r0
      001AC4 E6               [12] 1491 	mov	a,@r0
      001AC5 09               [12] 1492 	inc	r1
      001AC6 F7               [12] 1493 	mov	@r1,a
      001AC7 E5 1F            [12] 1494 	mov	a,_bp
      001AC9 24 05            [12] 1495 	add	a,#0x05
      001ACB F8               [12] 1496 	mov	r0,a
      001ACC 86 82            [24] 1497 	mov	dpl,@r0
      001ACE 08               [12] 1498 	inc	r0
      001ACF 86 83            [24] 1499 	mov	dph,@r0
      001AD1 08               [12] 1500 	inc	r0
      001AD2 86 F0            [24] 1501 	mov	b,@r0
      001AD4 E5 1F            [12] 1502 	mov	a,_bp
      001AD6 24 0B            [12] 1503 	add	a,#0x0b
      001AD8 F9               [12] 1504 	mov	r1,a
      001AD9 12 3A A0         [24] 1505 	lcall	__gptrget
      001ADC F7               [12] 1506 	mov	@r1,a
                                   1507 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      001ADD A8 1F            [24] 1508 	mov	r0,_bp
      001ADF 08               [12] 1509 	inc	r0
      001AE0 E5 1F            [12] 1510 	mov	a,_bp
      001AE2 24 08            [12] 1511 	add	a,#0x08
      001AE4 F9               [12] 1512 	mov	r1,a
      001AE5 74 05            [12] 1513 	mov	a,#0x05
      001AE7 26               [12] 1514 	add	a, @r0
      001AE8 F7               [12] 1515 	mov	@r1,a
      001AE9 E4               [12] 1516 	clr	a
      001AEA 08               [12] 1517 	inc	r0
      001AEB 36               [12] 1518 	addc	a, @r0
      001AEC 09               [12] 1519 	inc	r1
      001AED F7               [12] 1520 	mov	@r1,a
      001AEE 08               [12] 1521 	inc	r0
      001AEF E6               [12] 1522 	mov	a,@r0
      001AF0 09               [12] 1523 	inc	r1
      001AF1 F7               [12] 1524 	mov	@r1,a
      001AF2 E5 1F            [12] 1525 	mov	a,_bp
      001AF4 24 0C            [12] 1526 	add	a,#0x0c
      001AF6 F8               [12] 1527 	mov	r0,a
      001AF7 76 00            [12] 1528 	mov	@r0,#0x00
      001AF9                       1529 00108$:
      001AF9 E5 1F            [12] 1530 	mov	a,_bp
      001AFB 24 0C            [12] 1531 	add	a,#0x0c
      001AFD F8               [12] 1532 	mov	r0,a
      001AFE E5 1F            [12] 1533 	mov	a,_bp
      001B00 24 FA            [12] 1534 	add	a,#0xfa
      001B02 F9               [12] 1535 	mov	r1,a
      001B03 C3               [12] 1536 	clr	c
      001B04 E6               [12] 1537 	mov	a,@r0
      001B05 97               [12] 1538 	subb	a,@r1
      001B06 40 03            [24] 1539 	jc	00138$
      001B08 02 1B 95         [24] 1540 	ljmp	00103$
      001B0B                       1541 00138$:
                                   1542 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:93: if (rIndex == buffer->size) {
      001B0B A8 1F            [24] 1543 	mov	r0,_bp
      001B0D 08               [12] 1544 	inc	r0
      001B0E 86 82            [24] 1545 	mov	dpl,@r0
      001B10 08               [12] 1546 	inc	r0
      001B11 86 83            [24] 1547 	mov	dph,@r0
      001B13 08               [12] 1548 	inc	r0
      001B14 86 F0            [24] 1549 	mov	b,@r0
      001B16 12 3A A0         [24] 1550 	lcall	__gptrget
      001B19 FD               [12] 1551 	mov	r5,a
      001B1A E5 1F            [12] 1552 	mov	a,_bp
      001B1C 24 0B            [12] 1553 	add	a,#0x0b
      001B1E F8               [12] 1554 	mov	r0,a
      001B1F E6               [12] 1555 	mov	a,@r0
      001B20 B5 05 07         [24] 1556 	cjne	a,ar5,00102$
                                   1557 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:94: rIndex = 0;
      001B23 E5 1F            [12] 1558 	mov	a,_bp
      001B25 24 0B            [12] 1559 	add	a,#0x0b
      001B27 F8               [12] 1560 	mov	r0,a
      001B28 76 00            [12] 1561 	mov	@r0,#0x00
      001B2A                       1562 00102$:
                                   1563 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:98: ((uint8_t *) data)[n] = buffer->data[rIndex];
      001B2A C0 02            [24] 1564 	push	ar2
      001B2C C0 03            [24] 1565 	push	ar3
      001B2E C0 04            [24] 1566 	push	ar4
      001B30 E5 1F            [12] 1567 	mov	a,_bp
      001B32 24 FB            [12] 1568 	add	a,#0xfb
      001B34 F8               [12] 1569 	mov	r0,a
      001B35 86 03            [24] 1570 	mov	ar3,@r0
      001B37 08               [12] 1571 	inc	r0
      001B38 86 04            [24] 1572 	mov	ar4,@r0
      001B3A 08               [12] 1573 	inc	r0
      001B3B 86 05            [24] 1574 	mov	ar5,@r0
      001B3D E5 1F            [12] 1575 	mov	a,_bp
      001B3F 24 0C            [12] 1576 	add	a,#0x0c
      001B41 F8               [12] 1577 	mov	r0,a
      001B42 E6               [12] 1578 	mov	a,@r0
      001B43 2B               [12] 1579 	add	a, r3
      001B44 FB               [12] 1580 	mov	r3,a
      001B45 E4               [12] 1581 	clr	a
      001B46 3C               [12] 1582 	addc	a, r4
      001B47 FC               [12] 1583 	mov	r4,a
      001B48 E5 1F            [12] 1584 	mov	a,_bp
      001B4A 24 08            [12] 1585 	add	a,#0x08
      001B4C F8               [12] 1586 	mov	r0,a
      001B4D 86 82            [24] 1587 	mov	dpl,@r0
      001B4F 08               [12] 1588 	inc	r0
      001B50 86 83            [24] 1589 	mov	dph,@r0
      001B52 08               [12] 1590 	inc	r0
      001B53 86 F0            [24] 1591 	mov	b,@r0
      001B55 12 3A A0         [24] 1592 	lcall	__gptrget
      001B58 FA               [12] 1593 	mov	r2,a
      001B59 A3               [24] 1594 	inc	dptr
      001B5A 12 3A A0         [24] 1595 	lcall	__gptrget
      001B5D FE               [12] 1596 	mov	r6,a
      001B5E A3               [24] 1597 	inc	dptr
      001B5F 12 3A A0         [24] 1598 	lcall	__gptrget
      001B62 FF               [12] 1599 	mov	r7,a
      001B63 E5 1F            [12] 1600 	mov	a,_bp
      001B65 24 0B            [12] 1601 	add	a,#0x0b
      001B67 F8               [12] 1602 	mov	r0,a
      001B68 E6               [12] 1603 	mov	a,@r0
      001B69 2A               [12] 1604 	add	a, r2
      001B6A FA               [12] 1605 	mov	r2,a
      001B6B E4               [12] 1606 	clr	a
      001B6C 3E               [12] 1607 	addc	a, r6
      001B6D FE               [12] 1608 	mov	r6,a
      001B6E 8A 82            [24] 1609 	mov	dpl,r2
      001B70 8E 83            [24] 1610 	mov	dph,r6
      001B72 8F F0            [24] 1611 	mov	b,r7
      001B74 12 3A A0         [24] 1612 	lcall	__gptrget
      001B77 8B 82            [24] 1613 	mov	dpl,r3
      001B79 8C 83            [24] 1614 	mov	dph,r4
      001B7B 8D F0            [24] 1615 	mov	b,r5
      001B7D 12 2F F5         [24] 1616 	lcall	__gptrput
                                   1617 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:99: rIndex++;
      001B80 E5 1F            [12] 1618 	mov	a,_bp
      001B82 24 0B            [12] 1619 	add	a,#0x0b
      001B84 F8               [12] 1620 	mov	r0,a
      001B85 06               [12] 1621 	inc	@r0
                                   1622 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      001B86 E5 1F            [12] 1623 	mov	a,_bp
      001B88 24 0C            [12] 1624 	add	a,#0x0c
      001B8A F8               [12] 1625 	mov	r0,a
      001B8B 06               [12] 1626 	inc	@r0
      001B8C D0 04            [24] 1627 	pop	ar4
      001B8E D0 03            [24] 1628 	pop	ar3
      001B90 D0 02            [24] 1629 	pop	ar2
      001B92 02 1A F9         [24] 1630 	ljmp	00108$
      001B95                       1631 00103$:
                                   1632 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:102: buffer->rIndex = rIndex;
      001B95 E5 1F            [12] 1633 	mov	a,_bp
      001B97 24 05            [12] 1634 	add	a,#0x05
      001B99 F8               [12] 1635 	mov	r0,a
      001B9A 86 82            [24] 1636 	mov	dpl,@r0
      001B9C 08               [12] 1637 	inc	r0
      001B9D 86 83            [24] 1638 	mov	dph,@r0
      001B9F 08               [12] 1639 	inc	r0
      001BA0 86 F0            [24] 1640 	mov	b,@r0
      001BA2 E5 1F            [12] 1641 	mov	a,_bp
      001BA4 24 0B            [12] 1642 	add	a,#0x0b
      001BA6 F9               [12] 1643 	mov	r1,a
      001BA7 E7               [12] 1644 	mov	a,@r1
      001BA8 12 2F F5         [24] 1645 	lcall	__gptrput
                                   1646 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:103: buffer->length -= count;
      001BAB 8A 82            [24] 1647 	mov	dpl,r2
      001BAD 8B 83            [24] 1648 	mov	dph,r3
      001BAF 8C F0            [24] 1649 	mov	b,r4
      001BB1 12 3A A0         [24] 1650 	lcall	__gptrget
      001BB4 FF               [12] 1651 	mov	r7,a
      001BB5 E5 1F            [12] 1652 	mov	a,_bp
      001BB7 24 FA            [12] 1653 	add	a,#0xfa
      001BB9 F8               [12] 1654 	mov	r0,a
      001BBA EF               [12] 1655 	mov	a,r7
      001BBB C3               [12] 1656 	clr	c
      001BBC 96               [12] 1657 	subb	a,@r0
      001BBD 8A 82            [24] 1658 	mov	dpl,r2
      001BBF 8B 83            [24] 1659 	mov	dph,r3
      001BC1 8C F0            [24] 1660 	mov	b,r4
      001BC3 12 2F F5         [24] 1661 	lcall	__gptrput
      001BC6                       1662 00105$:
                                   1663 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:106: return rc;
      001BC6 E5 1F            [12] 1664 	mov	a,_bp
      001BC8 24 04            [12] 1665 	add	a,#0x04
      001BCA F8               [12] 1666 	mov	r0,a
      001BCB 86 82            [24] 1667 	mov	dpl, @r0
                                   1668 ;	/Users/ambadran717/.stc/uni-stc/hal/fifo-buffer.c:107: }
      001BCD 85 1F 81         [24] 1669 	mov	sp,_bp
      001BD0 D0 1F            [24] 1670 	pop	_bp
      001BD2 22               [24] 1671 	ret
                                   1672 	.area CSEG    (CODE)
                                   1673 	.area CONST   (CODE)
                                   1674 	.area XINIT   (CODE)
                                   1675 	.area CABS    (ABS,CODE)
