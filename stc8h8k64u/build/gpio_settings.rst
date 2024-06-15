                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module gpio_settings
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _tssstt_off
                                     12 	.globl _tssstt_on
                                     13 	.globl _gpioWrite
                                     14 	.globl _gpioConfigure
                                     15 	.globl _S1SM0_FE
                                     16 	.globl _T1IE
                                     17 	.globl _T0IE
                                     18 	.globl _T1RUN
                                     19 	.globl _T0RUN
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _EA
                                     29 	.globl _INT1IE
                                     30 	.globl _INT0IE
                                     31 	.globl _INT1TR
                                     32 	.globl _INT0TR
                                     33 	.globl _P5_5
                                     34 	.globl _P5_4
                                     35 	.globl _P5_3
                                     36 	.globl _P5_2
                                     37 	.globl _P5_1
                                     38 	.globl _P5_0
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _P1_7
                                     56 	.globl _P1_6
                                     57 	.globl _P1_5
                                     58 	.globl _P1_4
                                     59 	.globl _P1_3
                                     60 	.globl _P1_2
                                     61 	.globl _P1_1
                                     62 	.globl _P1_0
                                     63 	.globl _USBADR
                                     64 	.globl _USBCON
                                     65 	.globl _USBDAT
                                     66 	.globl _USBCLK
                                     67 	.globl _S4BUF
                                     68 	.globl _S4CON
                                     69 	.globl _S3BUF
                                     70 	.globl _S3CON
                                     71 	.globl _S2BUF
                                     72 	.globl _S2CON
                                     73 	.globl _S1BUF
                                     74 	.globl _S1CON
                                     75 	.globl _SADEN
                                     76 	.globl _SADDR
                                     77 	.globl _AUXINTIF
                                     78 	.globl _T3
                                     79 	.globl _T3L
                                     80 	.globl _T3H
                                     81 	.globl _T4
                                     82 	.globl _T4L
                                     83 	.globl _T4H
                                     84 	.globl _T4T3M
                                     85 	.globl _WDT_CONTR
                                     86 	.globl _AUXR
                                     87 	.globl _T2
                                     88 	.globl _T2H
                                     89 	.globl _T2L
                                     90 	.globl _T1
                                     91 	.globl _T1H
                                     92 	.globl _T1L
                                     93 	.globl _T0
                                     94 	.globl _T0H
                                     95 	.globl _T0L
                                     96 	.globl _TMOD
                                     97 	.globl _TCON
                                     98 	.globl _IRTRIM
                                     99 	.globl _LIRTRIM
                                    100 	.globl _IRCBAND
                                    101 	.globl _SPDAT
                                    102 	.globl _SPCTL
                                    103 	.globl _SPSTAT
                                    104 	.globl _WKTC
                                    105 	.globl _WKTCH
                                    106 	.globl _WKTCL
                                    107 	.globl _BUS_SPEED
                                    108 	.globl _P_SW2
                                    109 	.globl _P_SW1
                                    110 	.globl _RSTCFG
                                    111 	.globl _PCON
                                    112 	.globl _B
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _SP
                                    116 	.globl _IP3H
                                    117 	.globl _IP3L
                                    118 	.globl _IP2H
                                    119 	.globl _IP2L
                                    120 	.globl _IE2
                                    121 	.globl _IP1H
                                    122 	.globl _IP1L
                                    123 	.globl _IE1
                                    124 	.globl _INT_CLKO
                                    125 	.globl _IAP_TPS
                                    126 	.globl _IAP_CONTR
                                    127 	.globl _IAP_TRIG
                                    128 	.globl _IAP_CMD
                                    129 	.globl _IAP_ADDR
                                    130 	.globl _IAP_ADDRL
                                    131 	.globl _IAP_ADDRH
                                    132 	.globl _IAP_DATA
                                    133 	.globl _P5M0
                                    134 	.globl _P5M1
                                    135 	.globl _P5
                                    136 	.globl _P3M0
                                    137 	.globl _P3M1
                                    138 	.globl _P3
                                    139 	.globl _P2M0
                                    140 	.globl _P2M1
                                    141 	.globl _P2
                                    142 	.globl _P1M0
                                    143 	.globl _P1M1
                                    144 	.globl _P1
                                    145 	.globl _TA
                                    146 	.globl _DPH1
                                    147 	.globl _DPL1
                                    148 	.globl _DPS
                                    149 	.globl _DP
                                    150 	.globl _DPH
                                    151 	.globl _DPL
                                    152 	.globl _CMPCR2
                                    153 	.globl _CMPCR1
                                    154 	.globl _DMA_ADC_AMT
                                    155 	.globl _ADCCFG
                                    156 	.globl _ADC_RES
                                    157 	.globl _ADC_RESL
                                    158 	.globl _ADC_RESH
                                    159 	.globl _ADC_CONTR
                                    160 	.globl _tssstt
                                    161 	.globl _DMA_UR4R_TXAL
                                    162 	.globl _DMA_UR4R_TXAH
                                    163 	.globl _DMA_UR4R_DONE
                                    164 	.globl _DMA_UR4R_AMT
                                    165 	.globl _DMA_UR4R_STA
                                    166 	.globl _DMA_UR4R_CR
                                    167 	.globl _DMA_UR4R_CFG
                                    168 	.globl _DMA_UR4T_TXAL
                                    169 	.globl _DMA_UR4T_TXAH
                                    170 	.globl _DMA_UR4T_DONE
                                    171 	.globl _DMA_UR4T_AMT
                                    172 	.globl _DMA_UR4T_STA
                                    173 	.globl _DMA_UR4T_CR
                                    174 	.globl _DMA_UR4T_CFG
                                    175 	.globl _DMA_UR3R_TXAL
                                    176 	.globl _DMA_UR3R_TXAH
                                    177 	.globl _DMA_UR3R_DONE
                                    178 	.globl _DMA_UR3R_AMT
                                    179 	.globl _DMA_UR3R_STA
                                    180 	.globl _DMA_UR3R_CR
                                    181 	.globl _DMA_UR3R_CFG
                                    182 	.globl _DMA_UR3T_TXAL
                                    183 	.globl _DMA_UR3T_TXAH
                                    184 	.globl _DMA_UR3T_DONE
                                    185 	.globl _DMA_UR3T_AMT
                                    186 	.globl _DMA_UR3T_STA
                                    187 	.globl _DMA_UR3T_CR
                                    188 	.globl _DMA_UR3T_CFG
                                    189 	.globl _DMA_UR2R_TXAL
                                    190 	.globl _DMA_UR2R_TXAH
                                    191 	.globl _DMA_UR2R_DONE
                                    192 	.globl _DMA_UR2R_AMT
                                    193 	.globl _DMA_UR2R_STA
                                    194 	.globl _DMA_UR2R_CR
                                    195 	.globl _DMA_UR2R_CFG
                                    196 	.globl _DMA_UR2T_TXAL
                                    197 	.globl _DMA_UR2T_TXAH
                                    198 	.globl _DMA_UR2T_DONE
                                    199 	.globl _DMA_UR2T_AMT
                                    200 	.globl _DMA_UR2T_STA
                                    201 	.globl _DMA_UR2T_CR
                                    202 	.globl _DMA_UR2T_CFG
                                    203 	.globl _DMA_UR1R_TXAL
                                    204 	.globl _DMA_UR1R_TXAH
                                    205 	.globl _DMA_UR1R_DONE
                                    206 	.globl _DMA_UR1R_AMT
                                    207 	.globl _DMA_UR1R_STA
                                    208 	.globl _DMA_UR1R_CR
                                    209 	.globl _DMA_UR1R_CFG
                                    210 	.globl _DMA_UR1T_TXAL
                                    211 	.globl _DMA_UR1T_TXAH
                                    212 	.globl _DMA_UR1T_DONE
                                    213 	.globl _DMA_URTX_AMT
                                    214 	.globl _DMA_UR1T_STA
                                    215 	.globl _DMA_UR1T_CR
                                    216 	.globl _DMA_UR1T_CFG
                                    217 	.globl _TM4PS
                                    218 	.globl _TM3PS
                                    219 	.globl _TM2PS
                                    220 	.globl _IRC48MCR
                                    221 	.globl _IRCDB
                                    222 	.globl _MCLKOCR
                                    223 	.globl _CKSEL
                                    224 	.globl _IRC32KCR
                                    225 	.globl _XOSCCR
                                    226 	.globl _HIRCCR
                                    227 	.globl _CLKDIV
                                    228 	.globl _DMA_SPI_CFG2
                                    229 	.globl _DMA_SPI_RXAL
                                    230 	.globl _DMA_SPI_RXAH
                                    231 	.globl _DMA_SPI_TXAL
                                    232 	.globl _DMA_SPI_TXAH
                                    233 	.globl _DMA_SPI_DONE
                                    234 	.globl _DMA_SPI_AMT
                                    235 	.globl _DMA_SPI_STA
                                    236 	.globl _DMA_SPI_CR
                                    237 	.globl _DMA_SPI_CFG
                                    238 	.globl _SSEC
                                    239 	.globl _SEC
                                    240 	.globl _MIN
                                    241 	.globl _HOUR
                                    242 	.globl _DAY
                                    243 	.globl _MONTH
                                    244 	.globl _YEAR
                                    245 	.globl _INISSEC
                                    246 	.globl _INISEC
                                    247 	.globl _INIMIN
                                    248 	.globl _INIHOUR
                                    249 	.globl _INIDAY
                                    250 	.globl _INIMONTH
                                    251 	.globl _INIYEAR
                                    252 	.globl _ALASSEC
                                    253 	.globl _ALASEC
                                    254 	.globl _ALAMIN
                                    255 	.globl _ALAHOUR
                                    256 	.globl _RTCIF
                                    257 	.globl _RTCIEN
                                    258 	.globl _RTCCFG
                                    259 	.globl _RTCCR
                                    260 	.globl _PWMB_OISR
                                    261 	.globl _PWMB_DTR
                                    262 	.globl _PWMB_BKR
                                    263 	.globl _PWMB_CCR4L
                                    264 	.globl _PWMB_CCR4H
                                    265 	.globl _PWMB_CCR3L
                                    266 	.globl _PWMB_CCR3H
                                    267 	.globl _PWMB_CCR2L
                                    268 	.globl _PWMB_CCR2H
                                    269 	.globl _PWMB_CCR1L
                                    270 	.globl _PWMB_CCR1H
                                    271 	.globl _PWMB_RCR
                                    272 	.globl _PWMB_ARRL
                                    273 	.globl _PWMB_ARRH
                                    274 	.globl _PWMB_PSCRL
                                    275 	.globl _PWMB_PSCRH
                                    276 	.globl _PWMB_CNTRL
                                    277 	.globl _PWMB_CNTRH
                                    278 	.globl _PWMB_CCER2
                                    279 	.globl _PWMB_CCER1
                                    280 	.globl _PWMB_CCMR4
                                    281 	.globl _PWMB_CCMR3
                                    282 	.globl _PWMB_CCMR2
                                    283 	.globl _PWMB_CCMR1
                                    284 	.globl _PWMB_EGR
                                    285 	.globl _PWMB_SR2
                                    286 	.globl _PWMB_SR1
                                    287 	.globl _PWMB_IER
                                    288 	.globl _PWMB_ETR
                                    289 	.globl _PWMB_SMCR
                                    290 	.globl _PWMB_CR2
                                    291 	.globl _PWMB_CR1
                                    292 	.globl _PWMA_OISR
                                    293 	.globl _PWMA_DTR
                                    294 	.globl _PWMA_BKR
                                    295 	.globl _PWMA_CCR4L
                                    296 	.globl _PWMA_CCR4H
                                    297 	.globl _PWMA_CCR3L
                                    298 	.globl _PWMA_CCR3H
                                    299 	.globl _PWMA_CCR2L
                                    300 	.globl _PWMA_CCR2H
                                    301 	.globl _PWMA_CCR1L
                                    302 	.globl _PWMA_CCR1H
                                    303 	.globl _PWMA_RCR
                                    304 	.globl _PWMA_ARRL
                                    305 	.globl _PWMA_ARRH
                                    306 	.globl _PWMA_PSCRL
                                    307 	.globl _PWMA_PSCRH
                                    308 	.globl _PWMA_CNTRL
                                    309 	.globl _PWMA_CNTRH
                                    310 	.globl _PWMA_CCER2
                                    311 	.globl _PWMA_CCER1
                                    312 	.globl _PWMA_CCMR4
                                    313 	.globl _PWMA_CCMR3
                                    314 	.globl _PWMA_CCMR2
                                    315 	.globl _PWMA_CCMR1
                                    316 	.globl _PWMA_EGR
                                    317 	.globl _PWMA_SR2
                                    318 	.globl _PWMA_SR1
                                    319 	.globl _PWMA_IER
                                    320 	.globl _PWMA_ETR
                                    321 	.globl _PWMA_SMCR
                                    322 	.globl _PWMA_CR2
                                    323 	.globl _PWMA_CR1
                                    324 	.globl _PWMB_IOAUX
                                    325 	.globl _PWMB_PS
                                    326 	.globl _PWMB_ENO
                                    327 	.globl _PWMB_ETRPS
                                    328 	.globl _PWMA_IOAUX
                                    329 	.globl _PWMA_PS
                                    330 	.globl _PWMA_ENO
                                    331 	.globl _PWMA_ETRPS
                                    332 	.globl _RSTFLAG
                                    333 	.globl _SPFUNC
                                    334 	.globl _OPCON
                                    335 	.globl _ARCON
                                    336 	.globl _MD4
                                    337 	.globl _MD5
                                    338 	.globl _MD0
                                    339 	.globl _MD1
                                    340 	.globl _MD2
                                    341 	.globl _MD3
                                    342 	.globl _DMA_LCM_RXAL
                                    343 	.globl _DMA_LCM_RXAH
                                    344 	.globl _DMA_LCM_TXAL
                                    345 	.globl _DMA_LCM_TXAH
                                    346 	.globl _DMA_LCM_DONE
                                    347 	.globl _DMA_LCM_AMT
                                    348 	.globl _DMA_LCM_STA
                                    349 	.globl _DMA_LCM_CR
                                    350 	.globl _DMA_LCM_CFG
                                    351 	.globl _LCMIDDAT
                                    352 	.globl _LCMIDDATH
                                    353 	.globl _LCMIDDATL
                                    354 	.globl _LCMSTA
                                    355 	.globl _LCMCR
                                    356 	.globl _LCMCFG2
                                    357 	.globl _LCMCFG
                                    358 	.globl _I2CMSAUX
                                    359 	.globl _I2CRXD
                                    360 	.globl _I2CTXD
                                    361 	.globl _I2CSLADR
                                    362 	.globl _I2CSLST
                                    363 	.globl _I2CSLCR
                                    364 	.globl _I2CMSST
                                    365 	.globl _I2CMSCR
                                    366 	.globl _I2CCFG
                                    367 	.globl _PINIPH
                                    368 	.globl _PINIPL
                                    369 	.globl _P5IE
                                    370 	.globl _P5DR
                                    371 	.globl _P5SR
                                    372 	.globl _P5NCS
                                    373 	.globl _P5PU
                                    374 	.globl _P5WKUE
                                    375 	.globl _P5IM1
                                    376 	.globl _P5IM0
                                    377 	.globl _P5INTF
                                    378 	.globl _P5INTE
                                    379 	.globl _P3IE
                                    380 	.globl _P3DR
                                    381 	.globl _P3SR
                                    382 	.globl _P3NCS
                                    383 	.globl _P3PU
                                    384 	.globl _P3WKUE
                                    385 	.globl _P3IM1
                                    386 	.globl _P3IM0
                                    387 	.globl _P3INTF
                                    388 	.globl _P3INTE
                                    389 	.globl _P2IE
                                    390 	.globl _P2DR
                                    391 	.globl _P2SR
                                    392 	.globl _P2NCS
                                    393 	.globl _P2PU
                                    394 	.globl _P2WKUE
                                    395 	.globl _P2IM1
                                    396 	.globl _P2IM0
                                    397 	.globl _P2INTF
                                    398 	.globl _P2INTE
                                    399 	.globl _P1IE
                                    400 	.globl _P1DR
                                    401 	.globl _P1SR
                                    402 	.globl _P1NCS
                                    403 	.globl _P1PU
                                    404 	.globl _P1WKUE
                                    405 	.globl _P1IM1
                                    406 	.globl _P1IM0
                                    407 	.globl _P1INTF
                                    408 	.globl _P1INTE
                                    409 	.globl _DMA_M2M_RXAL
                                    410 	.globl _DMA_M2M_RXAH
                                    411 	.globl _DMA_M2M_TXAL
                                    412 	.globl _DMA_M2M_TXAH
                                    413 	.globl _DMA_M2M_DONE
                                    414 	.globl _DMA_M2M_AMT
                                    415 	.globl _DMA_M2M_STA
                                    416 	.globl _DMA_M2M_CR
                                    417 	.globl _DMA_M2M_CFG
                                    418 	.globl _CMPEXCFG
                                    419 	.globl _DMA_ADC_CHSW1
                                    420 	.globl _DMA_ADC_CHSW0
                                    421 	.globl _DMA_ADC_CFG2
                                    422 	.globl _DMA_ADC_RXAL
                                    423 	.globl _DMA_ADC_RXAH
                                    424 	.globl _DMA_ADC_STA
                                    425 	.globl _DMA_ADC_CR
                                    426 	.globl _DMA_ADC_CFG
                                    427 	.globl _ADCEXCFG
                                    428 	.globl _ADCTIM
                                    429 	.globl _gpio_init
                                    430 ;--------------------------------------------------------
                                    431 ; special function registers
                                    432 ;--------------------------------------------------------
                                    433 	.area RSEG    (ABS,DATA)
      000000                        434 	.org 0x0000
                           0000BC   435 _ADC_CONTR	=	0x00bc
                           0000BD   436 _ADC_RESH	=	0x00bd
                           0000BE   437 _ADC_RESL	=	0x00be
                           00BDBE   438 _ADC_RES	=	0xbdbe
                           0000DE   439 _ADCCFG	=	0x00de
                           0000FA   440 _DMA_ADC_AMT	=	0x00fa
                           0000E6   441 _CMPCR1	=	0x00e6
                           0000E7   442 _CMPCR2	=	0x00e7
                           000082   443 _DPL	=	0x0082
                           000083   444 _DPH	=	0x0083
                           008382   445 _DP	=	0x8382
                           0000E3   446 _DPS	=	0x00e3
                           0000E4   447 _DPL1	=	0x00e4
                           0000E5   448 _DPH1	=	0x00e5
                           0000AE   449 _TA	=	0x00ae
                           000090   450 _P1	=	0x0090
                           000091   451 _P1M1	=	0x0091
                           000092   452 _P1M0	=	0x0092
                           0000A0   453 _P2	=	0x00a0
                           000095   454 _P2M1	=	0x0095
                           000096   455 _P2M0	=	0x0096
                           0000B0   456 _P3	=	0x00b0
                           0000B1   457 _P3M1	=	0x00b1
                           0000B2   458 _P3M0	=	0x00b2
                           0000C8   459 _P5	=	0x00c8
                           0000C9   460 _P5M1	=	0x00c9
                           0000CA   461 _P5M0	=	0x00ca
                           0000C2   462 _IAP_DATA	=	0x00c2
                           0000C3   463 _IAP_ADDRH	=	0x00c3
                           0000C4   464 _IAP_ADDRL	=	0x00c4
                           00C3C4   465 _IAP_ADDR	=	0xc3c4
                           0000C5   466 _IAP_CMD	=	0x00c5
                           0000C6   467 _IAP_TRIG	=	0x00c6
                           0000C7   468 _IAP_CONTR	=	0x00c7
                           0000F5   469 _IAP_TPS	=	0x00f5
                           00008F   470 _INT_CLKO	=	0x008f
                           0000A8   471 _IE1	=	0x00a8
                           0000B8   472 _IP1L	=	0x00b8
                           0000B7   473 _IP1H	=	0x00b7
                           0000AF   474 _IE2	=	0x00af
                           0000B5   475 _IP2L	=	0x00b5
                           0000B6   476 _IP2H	=	0x00b6
                           0000DF   477 _IP3L	=	0x00df
                           0000EE   478 _IP3H	=	0x00ee
                           000081   479 _SP	=	0x0081
                           0000D0   480 _PSW	=	0x00d0
                           0000E0   481 _ACC	=	0x00e0
                           0000F0   482 _B	=	0x00f0
                           000087   483 _PCON	=	0x0087
                           0000FF   484 _RSTCFG	=	0x00ff
                           0000A2   485 _P_SW1	=	0x00a2
                           0000BA   486 _P_SW2	=	0x00ba
                           0000A1   487 _BUS_SPEED	=	0x00a1
                           0000AA   488 _WKTCL	=	0x00aa
                           0000AB   489 _WKTCH	=	0x00ab
                           00ABAA   490 _WKTC	=	0xabaa
                           0000CD   491 _SPSTAT	=	0x00cd
                           0000CE   492 _SPCTL	=	0x00ce
                           0000CF   493 _SPDAT	=	0x00cf
                           00009D   494 _IRCBAND	=	0x009d
                           00009E   495 _LIRTRIM	=	0x009e
                           00009F   496 _IRTRIM	=	0x009f
                           000088   497 _TCON	=	0x0088
                           000089   498 _TMOD	=	0x0089
                           00008A   499 _T0L	=	0x008a
                           00008C   500 _T0H	=	0x008c
                           008C8A   501 _T0	=	0x8c8a
                           00008B   502 _T1L	=	0x008b
                           00008D   503 _T1H	=	0x008d
                           008D8B   504 _T1	=	0x8d8b
                           0000D7   505 _T2L	=	0x00d7
                           0000D6   506 _T2H	=	0x00d6
                           00D6D7   507 _T2	=	0xd6d7
                           00008E   508 _AUXR	=	0x008e
                           0000C1   509 _WDT_CONTR	=	0x00c1
                           0000D1   510 _T4T3M	=	0x00d1
                           0000D2   511 _T4H	=	0x00d2
                           0000D3   512 _T4L	=	0x00d3
                           00D2D3   513 _T4	=	0xd2d3
                           0000D4   514 _T3H	=	0x00d4
                           0000D5   515 _T3L	=	0x00d5
                           00D4D5   516 _T3	=	0xd4d5
                           0000EF   517 _AUXINTIF	=	0x00ef
                           0000A9   518 _SADDR	=	0x00a9
                           0000B9   519 _SADEN	=	0x00b9
                           000098   520 _S1CON	=	0x0098
                           000099   521 _S1BUF	=	0x0099
                           00009A   522 _S2CON	=	0x009a
                           00009B   523 _S2BUF	=	0x009b
                           0000AC   524 _S3CON	=	0x00ac
                           0000AD   525 _S3BUF	=	0x00ad
                           000084   526 _S4CON	=	0x0084
                           000085   527 _S4BUF	=	0x0085
                           0000DC   528 _USBCLK	=	0x00dc
                           0000EC   529 _USBDAT	=	0x00ec
                           0000F4   530 _USBCON	=	0x00f4
                           0000FC   531 _USBADR	=	0x00fc
                                    532 ;--------------------------------------------------------
                                    533 ; special function bits
                                    534 ;--------------------------------------------------------
                                    535 	.area RSEG    (ABS,DATA)
      000000                        536 	.org 0x0000
                           000090   537 _P1_0	=	0x0090
                           000091   538 _P1_1	=	0x0091
                           000092   539 _P1_2	=	0x0092
                           000093   540 _P1_3	=	0x0093
                           000094   541 _P1_4	=	0x0094
                           000095   542 _P1_5	=	0x0095
                           000096   543 _P1_6	=	0x0096
                           000097   544 _P1_7	=	0x0097
                           0000A0   545 _P2_0	=	0x00a0
                           0000A1   546 _P2_1	=	0x00a1
                           0000A2   547 _P2_2	=	0x00a2
                           0000A3   548 _P2_3	=	0x00a3
                           0000A4   549 _P2_4	=	0x00a4
                           0000A5   550 _P2_5	=	0x00a5
                           0000A6   551 _P2_6	=	0x00a6
                           0000A7   552 _P2_7	=	0x00a7
                           0000B0   553 _P3_0	=	0x00b0
                           0000B1   554 _P3_1	=	0x00b1
                           0000B2   555 _P3_2	=	0x00b2
                           0000B3   556 _P3_3	=	0x00b3
                           0000B4   557 _P3_4	=	0x00b4
                           0000B5   558 _P3_5	=	0x00b5
                           0000B6   559 _P3_6	=	0x00b6
                           0000B7   560 _P3_7	=	0x00b7
                           0000C8   561 _P5_0	=	0x00c8
                           0000C9   562 _P5_1	=	0x00c9
                           0000CA   563 _P5_2	=	0x00ca
                           0000CB   564 _P5_3	=	0x00cb
                           0000CC   565 _P5_4	=	0x00cc
                           0000CD   566 _P5_5	=	0x00cd
                           000088   567 _INT0TR	=	0x0088
                           00008A   568 _INT1TR	=	0x008a
                           0000A8   569 _INT0IE	=	0x00a8
                           0000AA   570 _INT1IE	=	0x00aa
                           0000AF   571 _EA	=	0x00af
                           0000D0   572 _P	=	0x00d0
                           0000D1   573 _F1	=	0x00d1
                           0000D2   574 _OV	=	0x00d2
                           0000D3   575 _RS0	=	0x00d3
                           0000D4   576 _RS1	=	0x00d4
                           0000D5   577 _F0	=	0x00d5
                           0000D6   578 _AC	=	0x00d6
                           0000D7   579 _CY	=	0x00d7
                           00008C   580 _T0RUN	=	0x008c
                           00008E   581 _T1RUN	=	0x008e
                           0000A9   582 _T0IE	=	0x00a9
                           0000AB   583 _T1IE	=	0x00ab
                           00009F   584 _S1SM0_FE	=	0x009f
                                    585 ;--------------------------------------------------------
                                    586 ; overlayable register banks
                                    587 ;--------------------------------------------------------
                                    588 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        589 	.ds 8
                                    590 ;--------------------------------------------------------
                                    591 ; internal ram data
                                    592 ;--------------------------------------------------------
                                    593 	.area DSEG    (DATA)
                                    594 ;--------------------------------------------------------
                                    595 ; overlayable items in internal ram
                                    596 ;--------------------------------------------------------
                                    597 ;--------------------------------------------------------
                                    598 ; indirectly addressable internal ram data
                                    599 ;--------------------------------------------------------
                                    600 	.area ISEG    (DATA)
                                    601 ;--------------------------------------------------------
                                    602 ; absolute internal ram data
                                    603 ;--------------------------------------------------------
                                    604 	.area IABS    (ABS,DATA)
                                    605 	.area IABS    (ABS,DATA)
                                    606 ;--------------------------------------------------------
                                    607 ; bit data
                                    608 ;--------------------------------------------------------
                                    609 	.area BSEG    (BIT)
                                    610 ;--------------------------------------------------------
                                    611 ; paged external ram data
                                    612 ;--------------------------------------------------------
                                    613 	.area PSEG    (PAG,XDATA)
                                    614 ;--------------------------------------------------------
                                    615 ; uninitialized external ram data
                                    616 ;--------------------------------------------------------
                                    617 	.area XSEG    (XDATA)
                           00FEA8   618 _ADCTIM	=	0xfea8
                           00FEAD   619 _ADCEXCFG	=	0xfead
                           00FA10   620 _DMA_ADC_CFG	=	0xfa10
                           00FA11   621 _DMA_ADC_CR	=	0xfa11
                           00FA12   622 _DMA_ADC_STA	=	0xfa12
                           00FA17   623 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   624 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   625 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   626 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   627 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   628 _CMPEXCFG	=	0xfeae
                           00FA00   629 _DMA_M2M_CFG	=	0xfa00
                           00FA01   630 _DMA_M2M_CR	=	0xfa01
                           00FA02   631 _DMA_M2M_STA	=	0xfa02
                           00FA03   632 _DMA_M2M_AMT	=	0xfa03
                           00FA04   633 _DMA_M2M_DONE	=	0xfa04
                           00FA05   634 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   635 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   636 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   637 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   638 _P1INTE	=	0xfd01
                           00FD11   639 _P1INTF	=	0xfd11
                           00FD21   640 _P1IM0	=	0xfd21
                           00FD31   641 _P1IM1	=	0xfd31
                           00FD41   642 _P1WKUE	=	0xfd41
                           00FE11   643 _P1PU	=	0xfe11
                           00FE19   644 _P1NCS	=	0xfe19
                           00FE21   645 _P1SR	=	0xfe21
                           00FE29   646 _P1DR	=	0xfe29
                           00FE31   647 _P1IE	=	0xfe31
                           00FD02   648 _P2INTE	=	0xfd02
                           00FD12   649 _P2INTF	=	0xfd12
                           00FD22   650 _P2IM0	=	0xfd22
                           00FD32   651 _P2IM1	=	0xfd32
                           00FD42   652 _P2WKUE	=	0xfd42
                           00FE12   653 _P2PU	=	0xfe12
                           00FE1A   654 _P2NCS	=	0xfe1a
                           00FE22   655 _P2SR	=	0xfe22
                           00FE2A   656 _P2DR	=	0xfe2a
                           00FE32   657 _P2IE	=	0xfe32
                           00FD03   658 _P3INTE	=	0xfd03
                           00FD13   659 _P3INTF	=	0xfd13
                           00FD23   660 _P3IM0	=	0xfd23
                           00FD33   661 _P3IM1	=	0xfd33
                           00FD43   662 _P3WKUE	=	0xfd43
                           00FE13   663 _P3PU	=	0xfe13
                           00FE1B   664 _P3NCS	=	0xfe1b
                           00FE23   665 _P3SR	=	0xfe23
                           00FE2B   666 _P3DR	=	0xfe2b
                           00FE33   667 _P3IE	=	0xfe33
                           00FD05   668 _P5INTE	=	0xfd05
                           00FD15   669 _P5INTF	=	0xfd15
                           00FD25   670 _P5IM0	=	0xfd25
                           00FD35   671 _P5IM1	=	0xfd35
                           00FD45   672 _P5WKUE	=	0xfd45
                           00FE15   673 _P5PU	=	0xfe15
                           00FE1D   674 _P5NCS	=	0xfe1d
                           00FE25   675 _P5SR	=	0xfe25
                           00FE2D   676 _P5DR	=	0xfe2d
                           00FE35   677 _P5IE	=	0xfe35
                           00FD60   678 _PINIPL	=	0xfd60
                           00FD61   679 _PINIPH	=	0xfd61
                           00FE80   680 _I2CCFG	=	0xfe80
                           00FE81   681 _I2CMSCR	=	0xfe81
                           00FE82   682 _I2CMSST	=	0xfe82
                           00FE83   683 _I2CSLCR	=	0xfe83
                           00FE84   684 _I2CSLST	=	0xfe84
                           00FE85   685 _I2CSLADR	=	0xfe85
                           00FE86   686 _I2CTXD	=	0xfe86
                           00FE87   687 _I2CRXD	=	0xfe87
                           00FE88   688 _I2CMSAUX	=	0xfe88
                           00FE50   689 _LCMCFG	=	0xfe50
                           00FE51   690 _LCMCFG2	=	0xfe51
                           00FE52   691 _LCMCR	=	0xfe52
                           00FE53   692 _LCMSTA	=	0xfe53
                           00FE54   693 _LCMIDDATL	=	0xfe54
                           00FE55   694 _LCMIDDATH	=	0xfe55
                           00FE54   695 _LCMIDDAT	=	0xfe54
                           00FA70   696 _DMA_LCM_CFG	=	0xfa70
                           00FA71   697 _DMA_LCM_CR	=	0xfa71
                           00FA72   698 _DMA_LCM_STA	=	0xfa72
                           00FA73   699 _DMA_LCM_AMT	=	0xfa73
                           00FA74   700 _DMA_LCM_DONE	=	0xfa74
                           00FA75   701 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   702 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   703 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   704 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   705 _MD3	=	0xfcf0
                           00FCF1   706 _MD2	=	0xfcf1
                           00FCF2   707 _MD1	=	0xfcf2
                           00FCF3   708 _MD0	=	0xfcf3
                           00FCF4   709 _MD5	=	0xfcf4
                           00FCF5   710 _MD4	=	0xfcf5
                           00FCF6   711 _ARCON	=	0xfcf6
                           00FCF7   712 _OPCON	=	0xfcf7
                           00FE08   713 _SPFUNC	=	0xfe08
                           00FE09   714 _RSTFLAG	=	0xfe09
                           00FEB0   715 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   716 _PWMA_ENO	=	0xfeb1
                           00FEB2   717 _PWMA_PS	=	0xfeb2
                           00FEB3   718 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   719 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   720 _PWMB_ENO	=	0xfeb5
                           00FEB6   721 _PWMB_PS	=	0xfeb6
                           00FEB7   722 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   723 _PWMA_CR1	=	0xfec0
                           00FEC1   724 _PWMA_CR2	=	0xfec1
                           00FEC2   725 _PWMA_SMCR	=	0xfec2
                           00FEC3   726 _PWMA_ETR	=	0xfec3
                           00FEC4   727 _PWMA_IER	=	0xfec4
                           00FEC5   728 _PWMA_SR1	=	0xfec5
                           00FEC6   729 _PWMA_SR2	=	0xfec6
                           00FEC7   730 _PWMA_EGR	=	0xfec7
                           00FEC8   731 _PWMA_CCMR1	=	0xfec8
                           00FEC9   732 _PWMA_CCMR2	=	0xfec9
                           00FECA   733 _PWMA_CCMR3	=	0xfeca
                           00FECB   734 _PWMA_CCMR4	=	0xfecb
                           00FECC   735 _PWMA_CCER1	=	0xfecc
                           00FECD   736 _PWMA_CCER2	=	0xfecd
                           00FECE   737 _PWMA_CNTRH	=	0xfece
                           00FECF   738 _PWMA_CNTRL	=	0xfecf
                           00FED0   739 _PWMA_PSCRH	=	0xfed0
                           00FED1   740 _PWMA_PSCRL	=	0xfed1
                           00FED2   741 _PWMA_ARRH	=	0xfed2
                           00FED3   742 _PWMA_ARRL	=	0xfed3
                           00FED4   743 _PWMA_RCR	=	0xfed4
                           00FED5   744 _PWMA_CCR1H	=	0xfed5
                           00FED6   745 _PWMA_CCR1L	=	0xfed6
                           00FED7   746 _PWMA_CCR2H	=	0xfed7
                           00FED8   747 _PWMA_CCR2L	=	0xfed8
                           00FED9   748 _PWMA_CCR3H	=	0xfed9
                           00FEDA   749 _PWMA_CCR3L	=	0xfeda
                           00FEDB   750 _PWMA_CCR4H	=	0xfedb
                           00FEDC   751 _PWMA_CCR4L	=	0xfedc
                           00FEDD   752 _PWMA_BKR	=	0xfedd
                           00FEDE   753 _PWMA_DTR	=	0xfede
                           00FEDF   754 _PWMA_OISR	=	0xfedf
                           00FEE0   755 _PWMB_CR1	=	0xfee0
                           00FEE1   756 _PWMB_CR2	=	0xfee1
                           00FEE2   757 _PWMB_SMCR	=	0xfee2
                           00FEE3   758 _PWMB_ETR	=	0xfee3
                           00FEE4   759 _PWMB_IER	=	0xfee4
                           00FEE5   760 _PWMB_SR1	=	0xfee5
                           00FEE6   761 _PWMB_SR2	=	0xfee6
                           00FEE7   762 _PWMB_EGR	=	0xfee7
                           00FEE8   763 _PWMB_CCMR1	=	0xfee8
                           00FEE9   764 _PWMB_CCMR2	=	0xfee9
                           00FEEA   765 _PWMB_CCMR3	=	0xfeea
                           00FEEB   766 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   767 _PWMB_CCER1	=	0xfeec
                           00FEED   768 _PWMB_CCER2	=	0xfeed
                           00FEEE   769 _PWMB_CNTRH	=	0xfeee
                           00FEEF   770 _PWMB_CNTRL	=	0xfeef
                           00FEF0   771 _PWMB_PSCRH	=	0xfef0
                           00FEF1   772 _PWMB_PSCRL	=	0xfef1
                           00FEF2   773 _PWMB_ARRH	=	0xfef2
                           00FEF3   774 _PWMB_ARRL	=	0xfef3
                           00FEF4   775 _PWMB_RCR	=	0xfef4
                           00FEF5   776 _PWMB_CCR1H	=	0xfef5
                           00FEF6   777 _PWMB_CCR1L	=	0xfef6
                           00FEF7   778 _PWMB_CCR2H	=	0xfef7
                           00FEF8   779 _PWMB_CCR2L	=	0xfef8
                           00FEF9   780 _PWMB_CCR3H	=	0xfef9
                           00FEFA   781 _PWMB_CCR3L	=	0xfefa
                           00FEFB   782 _PWMB_CCR4H	=	0xfefb
                           00FEFC   783 _PWMB_CCR4L	=	0xfefc
                           00FEFD   784 _PWMB_BKR	=	0xfefd
                           00FEFE   785 _PWMB_DTR	=	0xfefe
                           00FEFF   786 _PWMB_OISR	=	0xfeff
                           00FE60   787 _RTCCR	=	0xfe60
                           00FE61   788 _RTCCFG	=	0xfe61
                           00FE62   789 _RTCIEN	=	0xfe62
                           00FE63   790 _RTCIF	=	0xfe63
                           00FE64   791 _ALAHOUR	=	0xfe64
                           00FE65   792 _ALAMIN	=	0xfe65
                           00FE66   793 _ALASEC	=	0xfe66
                           00FE67   794 _ALASSEC	=	0xfe67
                           00FE68   795 _INIYEAR	=	0xfe68
                           00FE69   796 _INIMONTH	=	0xfe69
                           00FE6A   797 _INIDAY	=	0xfe6a
                           00FE6B   798 _INIHOUR	=	0xfe6b
                           00FE6C   799 _INIMIN	=	0xfe6c
                           00FE6D   800 _INISEC	=	0xfe6d
                           00FE6E   801 _INISSEC	=	0xfe6e
                           00FE70   802 _YEAR	=	0xfe70
                           00FE71   803 _MONTH	=	0xfe71
                           00FE72   804 _DAY	=	0xfe72
                           00FE73   805 _HOUR	=	0xfe73
                           00FE74   806 _MIN	=	0xfe74
                           00FE75   807 _SEC	=	0xfe75
                           00FE76   808 _SSEC	=	0xfe76
                           00FA20   809 _DMA_SPI_CFG	=	0xfa20
                           00FA21   810 _DMA_SPI_CR	=	0xfa21
                           00FA22   811 _DMA_SPI_STA	=	0xfa22
                           00FA23   812 _DMA_SPI_AMT	=	0xfa23
                           00FA24   813 _DMA_SPI_DONE	=	0xfa24
                           00FA25   814 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   815 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   816 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   817 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   818 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   819 _CLKDIV	=	0xfe01
                           00FE02   820 _HIRCCR	=	0xfe02
                           00FE03   821 _XOSCCR	=	0xfe03
                           00FE04   822 _IRC32KCR	=	0xfe04
                           00FE00   823 _CKSEL	=	0xfe00
                           00FE05   824 _MCLKOCR	=	0xfe05
                           00FE06   825 _IRCDB	=	0xfe06
                           00FE07   826 _IRC48MCR	=	0xfe07
                           00FEA2   827 _TM2PS	=	0xfea2
                           00FEA3   828 _TM3PS	=	0xfea3
                           00FEA4   829 _TM4PS	=	0xfea4
                           00FA30   830 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   831 _DMA_UR1T_CR	=	0xfa31
                           00FA32   832 _DMA_UR1T_STA	=	0xfa32
                           00FA33   833 _DMA_URTX_AMT	=	0xfa33
                           00FA34   834 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   835 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   836 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   837 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   838 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   839 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   840 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   841 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   842 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   843 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   844 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   845 _DMA_UR2T_CR	=	0xfa31
                           00FA32   846 _DMA_UR2T_STA	=	0xfa32
                           00FA33   847 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   848 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   849 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   850 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   851 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   852 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   853 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   854 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   855 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   856 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   857 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   858 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   859 _DMA_UR3T_CR	=	0xfa31
                           00FA32   860 _DMA_UR3T_STA	=	0xfa32
                           00FA33   861 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   862 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   863 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   864 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   865 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   866 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   867 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   868 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   869 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   870 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   871 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   872 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   873 _DMA_UR4T_CR	=	0xfa31
                           00FA32   874 _DMA_UR4T_STA	=	0xfa32
                           00FA33   875 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   876 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   877 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   878 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   879 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   880 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   881 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   882 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   883 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   884 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   885 _DMA_UR4R_TXAL	=	0xfa3e
      0000A5                        886 _uartGetCharacter_result_10000_50:
      0000A5                        887 	.ds 1
                                    888 ;--------------------------------------------------------
                                    889 ; absolute external ram data
                                    890 ;--------------------------------------------------------
                                    891 	.area XABS    (ABS,XDATA)
                                    892 ;--------------------------------------------------------
                                    893 ; initialized external ram data
                                    894 ;--------------------------------------------------------
                                    895 	.area XISEG   (XDATA)
      00014A                        896 _tssstt::
      00014A                        897 	.ds 13
                                    898 	.area HOME    (CODE)
                                    899 	.area GSINIT0 (CODE)
                                    900 	.area GSINIT1 (CODE)
                                    901 	.area GSINIT2 (CODE)
                                    902 	.area GSINIT3 (CODE)
                                    903 	.area GSINIT4 (CODE)
                                    904 	.area GSINIT5 (CODE)
                                    905 	.area GSINIT  (CODE)
                                    906 	.area GSFINAL (CODE)
                                    907 	.area CSEG    (CODE)
                                    908 ;--------------------------------------------------------
                                    909 ; global & static initialisations
                                    910 ;--------------------------------------------------------
                                    911 	.area HOME    (CODE)
                                    912 	.area GSINIT  (CODE)
                                    913 	.area GSFINAL (CODE)
                                    914 	.area GSINIT  (CODE)
                                    915 ;--------------------------------------------------------
                                    916 ; Home
                                    917 ;--------------------------------------------------------
                                    918 	.area HOME    (CODE)
                                    919 	.area HOME    (CODE)
                                    920 ;--------------------------------------------------------
                                    921 ; code
                                    922 ;--------------------------------------------------------
                                    923 	.area CSEG    (CODE)
                                    924 ;------------------------------------------------------------
                                    925 ;Allocation info for local variables in function 'gpio_init'
                                    926 ;------------------------------------------------------------
                                    927 ;	gpio_settings.c:6: void gpio_init(void) {
                                    928 ;	-----------------------------------------
                                    929 ;	 function gpio_init
                                    930 ;	-----------------------------------------
      001BD3                        931 _gpio_init:
                           000007   932 	ar7 = 0x07
                           000006   933 	ar6 = 0x06
                           000005   934 	ar5 = 0x05
                           000004   935 	ar4 = 0x04
                           000003   936 	ar3 = 0x03
                           000002   937 	ar2 = 0x02
                           000001   938 	ar1 = 0x01
                           000000   939 	ar0 = 0x00
                                    940 ;	gpio_settings.c:8: gpioConfigure(&tssstt);
      001BD3 90 01 4A         [24]  941 	mov	dptr,#_tssstt
      001BD6 75 F0 00         [24]  942 	mov	b, #0x00
      001BD9 12 0F 41         [24]  943 	lcall	_gpioConfigure
                                    944 ;	gpio_settings.c:9: tssstt_off();
                                    945 ;	gpio_settings.c:11: return;
                                    946 ;	gpio_settings.c:12: }
      001BDC 02 1B EE         [24]  947 	ljmp	_tssstt_off
                                    948 ;------------------------------------------------------------
                                    949 ;Allocation info for local variables in function 'tssstt_on'
                                    950 ;------------------------------------------------------------
                                    951 ;	gpio_settings.c:14: void tssstt_on(void) {
                                    952 ;	-----------------------------------------
                                    953 ;	 function tssstt_on
                                    954 ;	-----------------------------------------
      001BDF                        955 _tssstt_on:
                                    956 ;	gpio_settings.c:15: gpioWrite(&tssstt, 1);
      001BDF 90 00 97         [24]  957 	mov	dptr,#_gpioWrite_PARM_2
      001BE2 74 01            [12]  958 	mov	a,#0x01
      001BE4 F0               [24]  959 	movx	@dptr,a
      001BE5 90 01 4A         [24]  960 	mov	dptr,#_tssstt
      001BE8 75 F0 00         [24]  961 	mov	b, #0x00
                                    962 ;	gpio_settings.c:16: }
      001BEB 02 17 3F         [24]  963 	ljmp	_gpioWrite
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'tssstt_off'
                                    966 ;------------------------------------------------------------
                                    967 ;	gpio_settings.c:18: void tssstt_off(void) {
                                    968 ;	-----------------------------------------
                                    969 ;	 function tssstt_off
                                    970 ;	-----------------------------------------
      001BEE                        971 _tssstt_off:
                                    972 ;	gpio_settings.c:19: gpioWrite(&tssstt, 0);
      001BEE 90 00 97         [24]  973 	mov	dptr,#_gpioWrite_PARM_2
      001BF1 E4               [12]  974 	clr	a
      001BF2 F0               [24]  975 	movx	@dptr,a
      001BF3 90 01 4A         [24]  976 	mov	dptr,#_tssstt
      001BF6 F5 F0            [12]  977 	mov	b,a
                                    978 ;	gpio_settings.c:20: }
      001BF8 02 17 3F         [24]  979 	ljmp	_gpioWrite
                                    980 	.area CSEG    (CODE)
                                    981 	.area CONST   (CODE)
                                    982 	.area XINIT   (CODE)
      003CBA                        983 __xinit__tssstt:
      003CBA 02                     984 	.db #0x02	; 2
      003CBB 05                     985 	.db #0x05	; 5
      003CBC 01                     986 	.db #0x01	; 1
      003CBD 00                     987 	.db #0x00	; 0
      003CBE 00                     988 	.db #0x00	;  0
      003CBF 00                     989 	.db #0x00	;  0
      003CC0 03                     990 	.db #0x03	; 3
      003CC1 01                     991 	.db #0x01	;  1
      003CC2 00                     992 	.db #0x00	;  0
      003CC3 00                     993 	.db #0x00	; 0
      003CC4 00                     994 	.db #0x00	;  0
      003CC5 00                     995 	.db #0x00	; 0
      003CC6 00                     996 	.db #0x00	; 0
                                    997 	.area CABS    (ABS,CODE)
