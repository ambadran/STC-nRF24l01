                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _gpioConfigure
                                     12 	.globl _memset
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
                                    158 	.globl _spiReceive_PARM_3
                                    159 	.globl _spiReceive_PARM_2
                                    160 	.globl _spiSend_PARM_3
                                    161 	.globl _spiSend_PARM_2
                                    162 	.globl _spiConfigure_PARM_5
                                    163 	.globl _spiConfigure_PARM_4
                                    164 	.globl _spiConfigure_PARM_3
                                    165 	.globl _spiConfigure_PARM_2
                                    166 	.globl _DMA_UR4R_TXAL
                                    167 	.globl _DMA_UR4R_TXAH
                                    168 	.globl _DMA_UR4R_DONE
                                    169 	.globl _DMA_UR4R_AMT
                                    170 	.globl _DMA_UR4R_STA
                                    171 	.globl _DMA_UR4R_CR
                                    172 	.globl _DMA_UR4R_CFG
                                    173 	.globl _DMA_UR4T_TXAL
                                    174 	.globl _DMA_UR4T_TXAH
                                    175 	.globl _DMA_UR4T_DONE
                                    176 	.globl _DMA_UR4T_AMT
                                    177 	.globl _DMA_UR4T_STA
                                    178 	.globl _DMA_UR4T_CR
                                    179 	.globl _DMA_UR4T_CFG
                                    180 	.globl _DMA_UR3R_TXAL
                                    181 	.globl _DMA_UR3R_TXAH
                                    182 	.globl _DMA_UR3R_DONE
                                    183 	.globl _DMA_UR3R_AMT
                                    184 	.globl _DMA_UR3R_STA
                                    185 	.globl _DMA_UR3R_CR
                                    186 	.globl _DMA_UR3R_CFG
                                    187 	.globl _DMA_UR3T_TXAL
                                    188 	.globl _DMA_UR3T_TXAH
                                    189 	.globl _DMA_UR3T_DONE
                                    190 	.globl _DMA_UR3T_AMT
                                    191 	.globl _DMA_UR3T_STA
                                    192 	.globl _DMA_UR3T_CR
                                    193 	.globl _DMA_UR3T_CFG
                                    194 	.globl _DMA_UR2R_TXAL
                                    195 	.globl _DMA_UR2R_TXAH
                                    196 	.globl _DMA_UR2R_DONE
                                    197 	.globl _DMA_UR2R_AMT
                                    198 	.globl _DMA_UR2R_STA
                                    199 	.globl _DMA_UR2R_CR
                                    200 	.globl _DMA_UR2R_CFG
                                    201 	.globl _DMA_UR2T_TXAL
                                    202 	.globl _DMA_UR2T_TXAH
                                    203 	.globl _DMA_UR2T_DONE
                                    204 	.globl _DMA_UR2T_AMT
                                    205 	.globl _DMA_UR2T_STA
                                    206 	.globl _DMA_UR2T_CR
                                    207 	.globl _DMA_UR2T_CFG
                                    208 	.globl _DMA_UR1R_TXAL
                                    209 	.globl _DMA_UR1R_TXAH
                                    210 	.globl _DMA_UR1R_DONE
                                    211 	.globl _DMA_UR1R_AMT
                                    212 	.globl _DMA_UR1R_STA
                                    213 	.globl _DMA_UR1R_CR
                                    214 	.globl _DMA_UR1R_CFG
                                    215 	.globl _DMA_UR1T_TXAL
                                    216 	.globl _DMA_UR1T_TXAH
                                    217 	.globl _DMA_UR1T_DONE
                                    218 	.globl _DMA_URTX_AMT
                                    219 	.globl _DMA_UR1T_STA
                                    220 	.globl _DMA_UR1T_CR
                                    221 	.globl _DMA_UR1T_CFG
                                    222 	.globl _TM4PS
                                    223 	.globl _TM3PS
                                    224 	.globl _TM2PS
                                    225 	.globl _IRC48MCR
                                    226 	.globl _IRCDB
                                    227 	.globl _MCLKOCR
                                    228 	.globl _CKSEL
                                    229 	.globl _IRC32KCR
                                    230 	.globl _XOSCCR
                                    231 	.globl _HIRCCR
                                    232 	.globl _CLKDIV
                                    233 	.globl _DMA_SPI_CFG2
                                    234 	.globl _DMA_SPI_RXAL
                                    235 	.globl _DMA_SPI_RXAH
                                    236 	.globl _DMA_SPI_TXAL
                                    237 	.globl _DMA_SPI_TXAH
                                    238 	.globl _DMA_SPI_DONE
                                    239 	.globl _DMA_SPI_AMT
                                    240 	.globl _DMA_SPI_STA
                                    241 	.globl _DMA_SPI_CR
                                    242 	.globl _DMA_SPI_CFG
                                    243 	.globl _SSEC
                                    244 	.globl _SEC
                                    245 	.globl _MIN
                                    246 	.globl _HOUR
                                    247 	.globl _DAY
                                    248 	.globl _MONTH
                                    249 	.globl _YEAR
                                    250 	.globl _INISSEC
                                    251 	.globl _INISEC
                                    252 	.globl _INIMIN
                                    253 	.globl _INIHOUR
                                    254 	.globl _INIDAY
                                    255 	.globl _INIMONTH
                                    256 	.globl _INIYEAR
                                    257 	.globl _ALASSEC
                                    258 	.globl _ALASEC
                                    259 	.globl _ALAMIN
                                    260 	.globl _ALAHOUR
                                    261 	.globl _RTCIF
                                    262 	.globl _RTCIEN
                                    263 	.globl _RTCCFG
                                    264 	.globl _RTCCR
                                    265 	.globl _PWMB_OISR
                                    266 	.globl _PWMB_DTR
                                    267 	.globl _PWMB_BKR
                                    268 	.globl _PWMB_CCR4L
                                    269 	.globl _PWMB_CCR4H
                                    270 	.globl _PWMB_CCR3L
                                    271 	.globl _PWMB_CCR3H
                                    272 	.globl _PWMB_CCR2L
                                    273 	.globl _PWMB_CCR2H
                                    274 	.globl _PWMB_CCR1L
                                    275 	.globl _PWMB_CCR1H
                                    276 	.globl _PWMB_RCR
                                    277 	.globl _PWMB_ARRL
                                    278 	.globl _PWMB_ARRH
                                    279 	.globl _PWMB_PSCRL
                                    280 	.globl _PWMB_PSCRH
                                    281 	.globl _PWMB_CNTRL
                                    282 	.globl _PWMB_CNTRH
                                    283 	.globl _PWMB_CCER2
                                    284 	.globl _PWMB_CCER1
                                    285 	.globl _PWMB_CCMR4
                                    286 	.globl _PWMB_CCMR3
                                    287 	.globl _PWMB_CCMR2
                                    288 	.globl _PWMB_CCMR1
                                    289 	.globl _PWMB_EGR
                                    290 	.globl _PWMB_SR2
                                    291 	.globl _PWMB_SR1
                                    292 	.globl _PWMB_IER
                                    293 	.globl _PWMB_ETR
                                    294 	.globl _PWMB_SMCR
                                    295 	.globl _PWMB_CR2
                                    296 	.globl _PWMB_CR1
                                    297 	.globl _PWMA_OISR
                                    298 	.globl _PWMA_DTR
                                    299 	.globl _PWMA_BKR
                                    300 	.globl _PWMA_CCR4L
                                    301 	.globl _PWMA_CCR4H
                                    302 	.globl _PWMA_CCR3L
                                    303 	.globl _PWMA_CCR3H
                                    304 	.globl _PWMA_CCR2L
                                    305 	.globl _PWMA_CCR2H
                                    306 	.globl _PWMA_CCR1L
                                    307 	.globl _PWMA_CCR1H
                                    308 	.globl _PWMA_RCR
                                    309 	.globl _PWMA_ARRL
                                    310 	.globl _PWMA_ARRH
                                    311 	.globl _PWMA_PSCRL
                                    312 	.globl _PWMA_PSCRH
                                    313 	.globl _PWMA_CNTRL
                                    314 	.globl _PWMA_CNTRH
                                    315 	.globl _PWMA_CCER2
                                    316 	.globl _PWMA_CCER1
                                    317 	.globl _PWMA_CCMR4
                                    318 	.globl _PWMA_CCMR3
                                    319 	.globl _PWMA_CCMR2
                                    320 	.globl _PWMA_CCMR1
                                    321 	.globl _PWMA_EGR
                                    322 	.globl _PWMA_SR2
                                    323 	.globl _PWMA_SR1
                                    324 	.globl _PWMA_IER
                                    325 	.globl _PWMA_ETR
                                    326 	.globl _PWMA_SMCR
                                    327 	.globl _PWMA_CR2
                                    328 	.globl _PWMA_CR1
                                    329 	.globl _PWMB_IOAUX
                                    330 	.globl _PWMB_PS
                                    331 	.globl _PWMB_ENO
                                    332 	.globl _PWMB_ETRPS
                                    333 	.globl _PWMA_IOAUX
                                    334 	.globl _PWMA_PS
                                    335 	.globl _PWMA_ENO
                                    336 	.globl _PWMA_ETRPS
                                    337 	.globl _RSTFLAG
                                    338 	.globl _SPFUNC
                                    339 	.globl _OPCON
                                    340 	.globl _ARCON
                                    341 	.globl _MD4
                                    342 	.globl _MD5
                                    343 	.globl _MD0
                                    344 	.globl _MD1
                                    345 	.globl _MD2
                                    346 	.globl _MD3
                                    347 	.globl _DMA_LCM_RXAL
                                    348 	.globl _DMA_LCM_RXAH
                                    349 	.globl _DMA_LCM_TXAL
                                    350 	.globl _DMA_LCM_TXAH
                                    351 	.globl _DMA_LCM_DONE
                                    352 	.globl _DMA_LCM_AMT
                                    353 	.globl _DMA_LCM_STA
                                    354 	.globl _DMA_LCM_CR
                                    355 	.globl _DMA_LCM_CFG
                                    356 	.globl _LCMIDDAT
                                    357 	.globl _LCMIDDATH
                                    358 	.globl _LCMIDDATL
                                    359 	.globl _LCMSTA
                                    360 	.globl _LCMCR
                                    361 	.globl _LCMCFG2
                                    362 	.globl _LCMCFG
                                    363 	.globl _I2CMSAUX
                                    364 	.globl _I2CRXD
                                    365 	.globl _I2CTXD
                                    366 	.globl _I2CSLADR
                                    367 	.globl _I2CSLST
                                    368 	.globl _I2CSLCR
                                    369 	.globl _I2CMSST
                                    370 	.globl _I2CMSCR
                                    371 	.globl _I2CCFG
                                    372 	.globl _PINIPH
                                    373 	.globl _PINIPL
                                    374 	.globl _P5IE
                                    375 	.globl _P5DR
                                    376 	.globl _P5SR
                                    377 	.globl _P5NCS
                                    378 	.globl _P5PU
                                    379 	.globl _P5WKUE
                                    380 	.globl _P5IM1
                                    381 	.globl _P5IM0
                                    382 	.globl _P5INTF
                                    383 	.globl _P5INTE
                                    384 	.globl _P3IE
                                    385 	.globl _P3DR
                                    386 	.globl _P3SR
                                    387 	.globl _P3NCS
                                    388 	.globl _P3PU
                                    389 	.globl _P3WKUE
                                    390 	.globl _P3IM1
                                    391 	.globl _P3IM0
                                    392 	.globl _P3INTF
                                    393 	.globl _P3INTE
                                    394 	.globl _P2IE
                                    395 	.globl _P2DR
                                    396 	.globl _P2SR
                                    397 	.globl _P2NCS
                                    398 	.globl _P2PU
                                    399 	.globl _P2WKUE
                                    400 	.globl _P2IM1
                                    401 	.globl _P2IM0
                                    402 	.globl _P2INTF
                                    403 	.globl _P2INTE
                                    404 	.globl _P1IE
                                    405 	.globl _P1DR
                                    406 	.globl _P1SR
                                    407 	.globl _P1NCS
                                    408 	.globl _P1PU
                                    409 	.globl _P1WKUE
                                    410 	.globl _P1IM1
                                    411 	.globl _P1IM0
                                    412 	.globl _P1INTF
                                    413 	.globl _P1INTE
                                    414 	.globl _DMA_M2M_RXAL
                                    415 	.globl _DMA_M2M_RXAH
                                    416 	.globl _DMA_M2M_TXAL
                                    417 	.globl _DMA_M2M_TXAH
                                    418 	.globl _DMA_M2M_DONE
                                    419 	.globl _DMA_M2M_AMT
                                    420 	.globl _DMA_M2M_STA
                                    421 	.globl _DMA_M2M_CR
                                    422 	.globl _DMA_M2M_CFG
                                    423 	.globl _CMPEXCFG
                                    424 	.globl _DMA_ADC_CHSW1
                                    425 	.globl _DMA_ADC_CHSW0
                                    426 	.globl _DMA_ADC_CFG2
                                    427 	.globl _DMA_ADC_RXAL
                                    428 	.globl _DMA_ADC_RXAH
                                    429 	.globl _DMA_ADC_STA
                                    430 	.globl _DMA_ADC_CR
                                    431 	.globl _DMA_ADC_CFG
                                    432 	.globl _ADCEXCFG
                                    433 	.globl _ADCTIM
                                    434 	.globl _spiSelectSpeed
                                    435 	.globl _spiConfigure
                                    436 	.globl _spiSend
                                    437 	.globl _spiReceive
                                    438 	.globl _spi_isr
                                    439 ;--------------------------------------------------------
                                    440 ; special function registers
                                    441 ;--------------------------------------------------------
                                    442 	.area RSEG    (ABS,DATA)
      000000                        443 	.org 0x0000
                           0000BC   444 _ADC_CONTR	=	0x00bc
                           0000BD   445 _ADC_RESH	=	0x00bd
                           0000BE   446 _ADC_RESL	=	0x00be
                           00BDBE   447 _ADC_RES	=	0xbdbe
                           0000DE   448 _ADCCFG	=	0x00de
                           0000FA   449 _DMA_ADC_AMT	=	0x00fa
                           0000E6   450 _CMPCR1	=	0x00e6
                           0000E7   451 _CMPCR2	=	0x00e7
                           000082   452 _DPL	=	0x0082
                           000083   453 _DPH	=	0x0083
                           008382   454 _DP	=	0x8382
                           0000E3   455 _DPS	=	0x00e3
                           0000E4   456 _DPL1	=	0x00e4
                           0000E5   457 _DPH1	=	0x00e5
                           0000AE   458 _TA	=	0x00ae
                           000090   459 _P1	=	0x0090
                           000091   460 _P1M1	=	0x0091
                           000092   461 _P1M0	=	0x0092
                           0000A0   462 _P2	=	0x00a0
                           000095   463 _P2M1	=	0x0095
                           000096   464 _P2M0	=	0x0096
                           0000B0   465 _P3	=	0x00b0
                           0000B1   466 _P3M1	=	0x00b1
                           0000B2   467 _P3M0	=	0x00b2
                           0000C8   468 _P5	=	0x00c8
                           0000C9   469 _P5M1	=	0x00c9
                           0000CA   470 _P5M0	=	0x00ca
                           0000C2   471 _IAP_DATA	=	0x00c2
                           0000C3   472 _IAP_ADDRH	=	0x00c3
                           0000C4   473 _IAP_ADDRL	=	0x00c4
                           00C3C4   474 _IAP_ADDR	=	0xc3c4
                           0000C5   475 _IAP_CMD	=	0x00c5
                           0000C6   476 _IAP_TRIG	=	0x00c6
                           0000C7   477 _IAP_CONTR	=	0x00c7
                           0000F5   478 _IAP_TPS	=	0x00f5
                           00008F   479 _INT_CLKO	=	0x008f
                           0000A8   480 _IE1	=	0x00a8
                           0000B8   481 _IP1L	=	0x00b8
                           0000B7   482 _IP1H	=	0x00b7
                           0000AF   483 _IE2	=	0x00af
                           0000B5   484 _IP2L	=	0x00b5
                           0000B6   485 _IP2H	=	0x00b6
                           0000DF   486 _IP3L	=	0x00df
                           0000EE   487 _IP3H	=	0x00ee
                           000081   488 _SP	=	0x0081
                           0000D0   489 _PSW	=	0x00d0
                           0000E0   490 _ACC	=	0x00e0
                           0000F0   491 _B	=	0x00f0
                           000087   492 _PCON	=	0x0087
                           0000FF   493 _RSTCFG	=	0x00ff
                           0000A2   494 _P_SW1	=	0x00a2
                           0000BA   495 _P_SW2	=	0x00ba
                           0000A1   496 _BUS_SPEED	=	0x00a1
                           0000AA   497 _WKTCL	=	0x00aa
                           0000AB   498 _WKTCH	=	0x00ab
                           00ABAA   499 _WKTC	=	0xabaa
                           0000CD   500 _SPSTAT	=	0x00cd
                           0000CE   501 _SPCTL	=	0x00ce
                           0000CF   502 _SPDAT	=	0x00cf
                           00009D   503 _IRCBAND	=	0x009d
                           00009E   504 _LIRTRIM	=	0x009e
                           00009F   505 _IRTRIM	=	0x009f
                           000088   506 _TCON	=	0x0088
                           000089   507 _TMOD	=	0x0089
                           00008A   508 _T0L	=	0x008a
                           00008C   509 _T0H	=	0x008c
                           008C8A   510 _T0	=	0x8c8a
                           00008B   511 _T1L	=	0x008b
                           00008D   512 _T1H	=	0x008d
                           008D8B   513 _T1	=	0x8d8b
                           0000D7   514 _T2L	=	0x00d7
                           0000D6   515 _T2H	=	0x00d6
                           00D6D7   516 _T2	=	0xd6d7
                           00008E   517 _AUXR	=	0x008e
                           0000C1   518 _WDT_CONTR	=	0x00c1
                           0000D1   519 _T4T3M	=	0x00d1
                           0000D2   520 _T4H	=	0x00d2
                           0000D3   521 _T4L	=	0x00d3
                           00D2D3   522 _T4	=	0xd2d3
                           0000D4   523 _T3H	=	0x00d4
                           0000D5   524 _T3L	=	0x00d5
                           00D4D5   525 _T3	=	0xd4d5
                           0000EF   526 _AUXINTIF	=	0x00ef
                           0000A9   527 _SADDR	=	0x00a9
                           0000B9   528 _SADEN	=	0x00b9
                           000098   529 _S1CON	=	0x0098
                           000099   530 _S1BUF	=	0x0099
                           00009A   531 _S2CON	=	0x009a
                           00009B   532 _S2BUF	=	0x009b
                           0000AC   533 _S3CON	=	0x00ac
                           0000AD   534 _S3BUF	=	0x00ad
                           000084   535 _S4CON	=	0x0084
                           000085   536 _S4BUF	=	0x0085
                           0000DC   537 _USBCLK	=	0x00dc
                           0000EC   538 _USBDAT	=	0x00ec
                           0000F4   539 _USBCON	=	0x00f4
                           0000FC   540 _USBADR	=	0x00fc
                                    541 ;--------------------------------------------------------
                                    542 ; special function bits
                                    543 ;--------------------------------------------------------
                                    544 	.area RSEG    (ABS,DATA)
      000000                        545 	.org 0x0000
                           000090   546 _P1_0	=	0x0090
                           000091   547 _P1_1	=	0x0091
                           000092   548 _P1_2	=	0x0092
                           000093   549 _P1_3	=	0x0093
                           000094   550 _P1_4	=	0x0094
                           000095   551 _P1_5	=	0x0095
                           000096   552 _P1_6	=	0x0096
                           000097   553 _P1_7	=	0x0097
                           0000A0   554 _P2_0	=	0x00a0
                           0000A1   555 _P2_1	=	0x00a1
                           0000A2   556 _P2_2	=	0x00a2
                           0000A3   557 _P2_3	=	0x00a3
                           0000A4   558 _P2_4	=	0x00a4
                           0000A5   559 _P2_5	=	0x00a5
                           0000A6   560 _P2_6	=	0x00a6
                           0000A7   561 _P2_7	=	0x00a7
                           0000B0   562 _P3_0	=	0x00b0
                           0000B1   563 _P3_1	=	0x00b1
                           0000B2   564 _P3_2	=	0x00b2
                           0000B3   565 _P3_3	=	0x00b3
                           0000B4   566 _P3_4	=	0x00b4
                           0000B5   567 _P3_5	=	0x00b5
                           0000B6   568 _P3_6	=	0x00b6
                           0000B7   569 _P3_7	=	0x00b7
                           0000C8   570 _P5_0	=	0x00c8
                           0000C9   571 _P5_1	=	0x00c9
                           0000CA   572 _P5_2	=	0x00ca
                           0000CB   573 _P5_3	=	0x00cb
                           0000CC   574 _P5_4	=	0x00cc
                           0000CD   575 _P5_5	=	0x00cd
                           000088   576 _INT0TR	=	0x0088
                           00008A   577 _INT1TR	=	0x008a
                           0000A8   578 _INT0IE	=	0x00a8
                           0000AA   579 _INT1IE	=	0x00aa
                           0000AF   580 _EA	=	0x00af
                           0000D0   581 _P	=	0x00d0
                           0000D1   582 _F1	=	0x00d1
                           0000D2   583 _OV	=	0x00d2
                           0000D3   584 _RS0	=	0x00d3
                           0000D4   585 _RS1	=	0x00d4
                           0000D5   586 _F0	=	0x00d5
                           0000D6   587 _AC	=	0x00d6
                           0000D7   588 _CY	=	0x00d7
                           00008C   589 _T0RUN	=	0x008c
                           00008E   590 _T1RUN	=	0x008e
                           0000A9   591 _T0IE	=	0x00a9
                           0000AB   592 _T1IE	=	0x00ab
                           00009F   593 _S1SM0_FE	=	0x009f
                                    594 ;--------------------------------------------------------
                                    595 ; overlayable register banks
                                    596 ;--------------------------------------------------------
                                    597 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        598 	.ds 8
                                    599 ;--------------------------------------------------------
                                    600 ; internal ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area DSEG    (DATA)
                                    603 ;--------------------------------------------------------
                                    604 ; overlayable items in internal ram 
                                    605 ;--------------------------------------------------------
                                    606 ;--------------------------------------------------------
                                    607 ; indirectly addressable internal ram data
                                    608 ;--------------------------------------------------------
                                    609 	.area ISEG    (DATA)
      00005F                        610 ___spiState:
      00005F                        611 	.ds 10
                                    612 ;--------------------------------------------------------
                                    613 ; absolute internal ram data
                                    614 ;--------------------------------------------------------
                                    615 	.area IABS    (ABS,DATA)
                                    616 	.area IABS    (ABS,DATA)
                                    617 ;--------------------------------------------------------
                                    618 ; bit data
                                    619 ;--------------------------------------------------------
                                    620 	.area BSEG    (BIT)
                                    621 ;--------------------------------------------------------
                                    622 ; paged external ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area PSEG    (PAG,XDATA)
                                    625 ;--------------------------------------------------------
                                    626 ; external ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area XSEG    (XDATA)
                           00FEA8   629 _ADCTIM	=	0xfea8
                           00FEAD   630 _ADCEXCFG	=	0xfead
                           00FA10   631 _DMA_ADC_CFG	=	0xfa10
                           00FA11   632 _DMA_ADC_CR	=	0xfa11
                           00FA12   633 _DMA_ADC_STA	=	0xfa12
                           00FA17   634 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   635 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   636 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   637 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   638 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   639 _CMPEXCFG	=	0xfeae
                           00FA00   640 _DMA_M2M_CFG	=	0xfa00
                           00FA01   641 _DMA_M2M_CR	=	0xfa01
                           00FA02   642 _DMA_M2M_STA	=	0xfa02
                           00FA03   643 _DMA_M2M_AMT	=	0xfa03
                           00FA04   644 _DMA_M2M_DONE	=	0xfa04
                           00FA05   645 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   646 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   647 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   648 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   649 _P1INTE	=	0xfd01
                           00FD11   650 _P1INTF	=	0xfd11
                           00FD21   651 _P1IM0	=	0xfd21
                           00FD31   652 _P1IM1	=	0xfd31
                           00FD41   653 _P1WKUE	=	0xfd41
                           00FE11   654 _P1PU	=	0xfe11
                           00FE19   655 _P1NCS	=	0xfe19
                           00FE21   656 _P1SR	=	0xfe21
                           00FE29   657 _P1DR	=	0xfe29
                           00FE31   658 _P1IE	=	0xfe31
                           00FD02   659 _P2INTE	=	0xfd02
                           00FD12   660 _P2INTF	=	0xfd12
                           00FD22   661 _P2IM0	=	0xfd22
                           00FD32   662 _P2IM1	=	0xfd32
                           00FD42   663 _P2WKUE	=	0xfd42
                           00FE12   664 _P2PU	=	0xfe12
                           00FE1A   665 _P2NCS	=	0xfe1a
                           00FE22   666 _P2SR	=	0xfe22
                           00FE2A   667 _P2DR	=	0xfe2a
                           00FE32   668 _P2IE	=	0xfe32
                           00FD03   669 _P3INTE	=	0xfd03
                           00FD13   670 _P3INTF	=	0xfd13
                           00FD23   671 _P3IM0	=	0xfd23
                           00FD33   672 _P3IM1	=	0xfd33
                           00FD43   673 _P3WKUE	=	0xfd43
                           00FE13   674 _P3PU	=	0xfe13
                           00FE1B   675 _P3NCS	=	0xfe1b
                           00FE23   676 _P3SR	=	0xfe23
                           00FE2B   677 _P3DR	=	0xfe2b
                           00FE33   678 _P3IE	=	0xfe33
                           00FD05   679 _P5INTE	=	0xfd05
                           00FD15   680 _P5INTF	=	0xfd15
                           00FD25   681 _P5IM0	=	0xfd25
                           00FD35   682 _P5IM1	=	0xfd35
                           00FD45   683 _P5WKUE	=	0xfd45
                           00FE15   684 _P5PU	=	0xfe15
                           00FE1D   685 _P5NCS	=	0xfe1d
                           00FE25   686 _P5SR	=	0xfe25
                           00FE2D   687 _P5DR	=	0xfe2d
                           00FE35   688 _P5IE	=	0xfe35
                           00FD60   689 _PINIPL	=	0xfd60
                           00FD61   690 _PINIPH	=	0xfd61
                           00FE80   691 _I2CCFG	=	0xfe80
                           00FE81   692 _I2CMSCR	=	0xfe81
                           00FE82   693 _I2CMSST	=	0xfe82
                           00FE83   694 _I2CSLCR	=	0xfe83
                           00FE84   695 _I2CSLST	=	0xfe84
                           00FE85   696 _I2CSLADR	=	0xfe85
                           00FE86   697 _I2CTXD	=	0xfe86
                           00FE87   698 _I2CRXD	=	0xfe87
                           00FE88   699 _I2CMSAUX	=	0xfe88
                           00FE50   700 _LCMCFG	=	0xfe50
                           00FE51   701 _LCMCFG2	=	0xfe51
                           00FE52   702 _LCMCR	=	0xfe52
                           00FE53   703 _LCMSTA	=	0xfe53
                           00FE54   704 _LCMIDDATL	=	0xfe54
                           00FE55   705 _LCMIDDATH	=	0xfe55
                           00FE54   706 _LCMIDDAT	=	0xfe54
                           00FA70   707 _DMA_LCM_CFG	=	0xfa70
                           00FA71   708 _DMA_LCM_CR	=	0xfa71
                           00FA72   709 _DMA_LCM_STA	=	0xfa72
                           00FA73   710 _DMA_LCM_AMT	=	0xfa73
                           00FA74   711 _DMA_LCM_DONE	=	0xfa74
                           00FA75   712 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   713 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   714 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   715 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   716 _MD3	=	0xfcf0
                           00FCF1   717 _MD2	=	0xfcf1
                           00FCF2   718 _MD1	=	0xfcf2
                           00FCF3   719 _MD0	=	0xfcf3
                           00FCF4   720 _MD5	=	0xfcf4
                           00FCF5   721 _MD4	=	0xfcf5
                           00FCF6   722 _ARCON	=	0xfcf6
                           00FCF7   723 _OPCON	=	0xfcf7
                           00FE08   724 _SPFUNC	=	0xfe08
                           00FE09   725 _RSTFLAG	=	0xfe09
                           00FEB0   726 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   727 _PWMA_ENO	=	0xfeb1
                           00FEB2   728 _PWMA_PS	=	0xfeb2
                           00FEB3   729 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   730 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   731 _PWMB_ENO	=	0xfeb5
                           00FEB6   732 _PWMB_PS	=	0xfeb6
                           00FEB7   733 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   734 _PWMA_CR1	=	0xfec0
                           00FEC1   735 _PWMA_CR2	=	0xfec1
                           00FEC2   736 _PWMA_SMCR	=	0xfec2
                           00FEC3   737 _PWMA_ETR	=	0xfec3
                           00FEC4   738 _PWMA_IER	=	0xfec4
                           00FEC5   739 _PWMA_SR1	=	0xfec5
                           00FEC6   740 _PWMA_SR2	=	0xfec6
                           00FEC7   741 _PWMA_EGR	=	0xfec7
                           00FEC8   742 _PWMA_CCMR1	=	0xfec8
                           00FEC9   743 _PWMA_CCMR2	=	0xfec9
                           00FECA   744 _PWMA_CCMR3	=	0xfeca
                           00FECB   745 _PWMA_CCMR4	=	0xfecb
                           00FECC   746 _PWMA_CCER1	=	0xfecc
                           00FECD   747 _PWMA_CCER2	=	0xfecd
                           00FECE   748 _PWMA_CNTRH	=	0xfece
                           00FECF   749 _PWMA_CNTRL	=	0xfecf
                           00FED0   750 _PWMA_PSCRH	=	0xfed0
                           00FED1   751 _PWMA_PSCRL	=	0xfed1
                           00FED2   752 _PWMA_ARRH	=	0xfed2
                           00FED3   753 _PWMA_ARRL	=	0xfed3
                           00FED4   754 _PWMA_RCR	=	0xfed4
                           00FED5   755 _PWMA_CCR1H	=	0xfed5
                           00FED6   756 _PWMA_CCR1L	=	0xfed6
                           00FED7   757 _PWMA_CCR2H	=	0xfed7
                           00FED8   758 _PWMA_CCR2L	=	0xfed8
                           00FED9   759 _PWMA_CCR3H	=	0xfed9
                           00FEDA   760 _PWMA_CCR3L	=	0xfeda
                           00FEDB   761 _PWMA_CCR4H	=	0xfedb
                           00FEDC   762 _PWMA_CCR4L	=	0xfedc
                           00FEDD   763 _PWMA_BKR	=	0xfedd
                           00FEDE   764 _PWMA_DTR	=	0xfede
                           00FEDF   765 _PWMA_OISR	=	0xfedf
                           00FEE0   766 _PWMB_CR1	=	0xfee0
                           00FEE1   767 _PWMB_CR2	=	0xfee1
                           00FEE2   768 _PWMB_SMCR	=	0xfee2
                           00FEE3   769 _PWMB_ETR	=	0xfee3
                           00FEE4   770 _PWMB_IER	=	0xfee4
                           00FEE5   771 _PWMB_SR1	=	0xfee5
                           00FEE6   772 _PWMB_SR2	=	0xfee6
                           00FEE7   773 _PWMB_EGR	=	0xfee7
                           00FEE8   774 _PWMB_CCMR1	=	0xfee8
                           00FEE9   775 _PWMB_CCMR2	=	0xfee9
                           00FEEA   776 _PWMB_CCMR3	=	0xfeea
                           00FEEB   777 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   778 _PWMB_CCER1	=	0xfeec
                           00FEED   779 _PWMB_CCER2	=	0xfeed
                           00FEEE   780 _PWMB_CNTRH	=	0xfeee
                           00FEEF   781 _PWMB_CNTRL	=	0xfeef
                           00FEF0   782 _PWMB_PSCRH	=	0xfef0
                           00FEF1   783 _PWMB_PSCRL	=	0xfef1
                           00FEF2   784 _PWMB_ARRH	=	0xfef2
                           00FEF3   785 _PWMB_ARRL	=	0xfef3
                           00FEF4   786 _PWMB_RCR	=	0xfef4
                           00FEF5   787 _PWMB_CCR1H	=	0xfef5
                           00FEF6   788 _PWMB_CCR1L	=	0xfef6
                           00FEF7   789 _PWMB_CCR2H	=	0xfef7
                           00FEF8   790 _PWMB_CCR2L	=	0xfef8
                           00FEF9   791 _PWMB_CCR3H	=	0xfef9
                           00FEFA   792 _PWMB_CCR3L	=	0xfefa
                           00FEFB   793 _PWMB_CCR4H	=	0xfefb
                           00FEFC   794 _PWMB_CCR4L	=	0xfefc
                           00FEFD   795 _PWMB_BKR	=	0xfefd
                           00FEFE   796 _PWMB_DTR	=	0xfefe
                           00FEFF   797 _PWMB_OISR	=	0xfeff
                           00FE60   798 _RTCCR	=	0xfe60
                           00FE61   799 _RTCCFG	=	0xfe61
                           00FE62   800 _RTCIEN	=	0xfe62
                           00FE63   801 _RTCIF	=	0xfe63
                           00FE64   802 _ALAHOUR	=	0xfe64
                           00FE65   803 _ALAMIN	=	0xfe65
                           00FE66   804 _ALASEC	=	0xfe66
                           00FE67   805 _ALASSEC	=	0xfe67
                           00FE68   806 _INIYEAR	=	0xfe68
                           00FE69   807 _INIMONTH	=	0xfe69
                           00FE6A   808 _INIDAY	=	0xfe6a
                           00FE6B   809 _INIHOUR	=	0xfe6b
                           00FE6C   810 _INIMIN	=	0xfe6c
                           00FE6D   811 _INISEC	=	0xfe6d
                           00FE6E   812 _INISSEC	=	0xfe6e
                           00FE70   813 _YEAR	=	0xfe70
                           00FE71   814 _MONTH	=	0xfe71
                           00FE72   815 _DAY	=	0xfe72
                           00FE73   816 _HOUR	=	0xfe73
                           00FE74   817 _MIN	=	0xfe74
                           00FE75   818 _SEC	=	0xfe75
                           00FE76   819 _SSEC	=	0xfe76
                           00FA20   820 _DMA_SPI_CFG	=	0xfa20
                           00FA21   821 _DMA_SPI_CR	=	0xfa21
                           00FA22   822 _DMA_SPI_STA	=	0xfa22
                           00FA23   823 _DMA_SPI_AMT	=	0xfa23
                           00FA24   824 _DMA_SPI_DONE	=	0xfa24
                           00FA25   825 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   826 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   827 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   828 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   829 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   830 _CLKDIV	=	0xfe01
                           00FE02   831 _HIRCCR	=	0xfe02
                           00FE03   832 _XOSCCR	=	0xfe03
                           00FE04   833 _IRC32KCR	=	0xfe04
                           00FE00   834 _CKSEL	=	0xfe00
                           00FE05   835 _MCLKOCR	=	0xfe05
                           00FE06   836 _IRCDB	=	0xfe06
                           00FE07   837 _IRC48MCR	=	0xfe07
                           00FEA2   838 _TM2PS	=	0xfea2
                           00FEA3   839 _TM3PS	=	0xfea3
                           00FEA4   840 _TM4PS	=	0xfea4
                           00FA30   841 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   842 _DMA_UR1T_CR	=	0xfa31
                           00FA32   843 _DMA_UR1T_STA	=	0xfa32
                           00FA33   844 _DMA_URTX_AMT	=	0xfa33
                           00FA34   845 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   846 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   847 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   848 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   849 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   850 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   851 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   852 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   853 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   854 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   855 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   856 _DMA_UR2T_CR	=	0xfa31
                           00FA32   857 _DMA_UR2T_STA	=	0xfa32
                           00FA33   858 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   859 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   860 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   861 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   862 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   863 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   864 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   865 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   866 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   867 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   868 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   869 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   870 _DMA_UR3T_CR	=	0xfa31
                           00FA32   871 _DMA_UR3T_STA	=	0xfa32
                           00FA33   872 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   873 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   874 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   875 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   876 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   877 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   878 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   879 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   880 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   881 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   882 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   883 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   884 _DMA_UR4T_CR	=	0xfa31
                           00FA32   885 _DMA_UR4T_STA	=	0xfa32
                           00FA33   886 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   887 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   888 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   889 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   890 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   891 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   892 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   893 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   894 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   895 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   896 _DMA_UR4R_TXAL	=	0xfa3e
      00007D                        897 _uartGetCharacter_result_65536_74:
      00007D                        898 	.ds 1
      00007E                        899 ___configurePins_PARM_2:
      00007E                        900 	.ds 1
      00007F                        901 ___configurePins_pinSwitch_65536_113:
      00007F                        902 	.ds 1
      000080                        903 ___configurePins_pinConfig_262145_118:
      000080                        904 	.ds 13
      00008D                        905 _spiSelectSpeed_maxDeviceRate_65536_119:
      00008D                        906 	.ds 4
      000091                        907 _spiSelectSpeed_divisor_65536_120:
      000091                        908 	.ds 2
      000093                        909 _spiSelectSpeed_pot_65537_122:
      000093                        910 	.ds 1
      000094                        911 _spiSelectSpeed_n_131073_123:
      000094                        912 	.ds 2
      000096                        913 _spiSelectSpeed_result_65538_125:
      000096                        914 	.ds 1
      000097                        915 _spiConfigure_PARM_2:
      000097                        916 	.ds 1
      000098                        917 _spiConfigure_PARM_3:
      000098                        918 	.ds 1
      000099                        919 _spiConfigure_PARM_4:
      000099                        920 	.ds 1
      00009A                        921 _spiConfigure_PARM_5:
      00009A                        922 	.ds 1
      00009B                        923 _spiConfigure_bitOrder_65536_129:
      00009B                        924 	.ds 1
      00009C                        925 _spiSend_PARM_2:
      00009C                        926 	.ds 2
      00009E                        927 _spiSend_PARM_3:
      00009E                        928 	.ds 3
      0000A1                        929 _spiSend_buffer_65536_131:
      0000A1                        930 	.ds 3
      0000A4                        931 _spiReceive_PARM_2:
      0000A4                        932 	.ds 2
      0000A6                        933 _spiReceive_PARM_3:
      0000A6                        934 	.ds 3
      0000A9                        935 _spiReceive_buffer_65536_133:
      0000A9                        936 	.ds 3
                                    937 ;--------------------------------------------------------
                                    938 ; absolute external ram data
                                    939 ;--------------------------------------------------------
                                    940 	.area XABS    (ABS,XDATA)
                                    941 ;--------------------------------------------------------
                                    942 ; external initialized ram data
                                    943 ;--------------------------------------------------------
                                    944 	.area XISEG   (XDATA)
                                    945 	.area HOME    (CODE)
                                    946 	.area GSINIT0 (CODE)
                                    947 	.area GSINIT1 (CODE)
                                    948 	.area GSINIT2 (CODE)
                                    949 	.area GSINIT3 (CODE)
                                    950 	.area GSINIT4 (CODE)
                                    951 	.area GSINIT5 (CODE)
                                    952 	.area GSINIT  (CODE)
                                    953 	.area GSFINAL (CODE)
                                    954 	.area CSEG    (CODE)
                                    955 ;--------------------------------------------------------
                                    956 ; global & static initialisations
                                    957 ;--------------------------------------------------------
                                    958 	.area HOME    (CODE)
                                    959 	.area GSINIT  (CODE)
                                    960 	.area GSFINAL (CODE)
                                    961 	.area GSINIT  (CODE)
                                    962 ;--------------------------------------------------------
                                    963 ; Home
                                    964 ;--------------------------------------------------------
                                    965 	.area HOME    (CODE)
                                    966 	.area HOME    (CODE)
                                    967 ;--------------------------------------------------------
                                    968 ; code
                                    969 ;--------------------------------------------------------
                                    970 	.area CSEG    (CODE)
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function '__configurePins'
                                    973 ;------------------------------------------------------------
                                    974 ;outputPinMode             Allocated with name '___configurePins_PARM_2'
                                    975 ;pinSwitch                 Allocated with name '___configurePins_pinSwitch_65536_113'
                                    976 ;i                         Allocated with name '___configurePins_i_131072_115'
                                    977 ;pinConfig                 Allocated with name '___configurePins_pinConfig_262145_118'
                                    978 ;pinDefinition             Allocated with name '___configurePins_pinDefinition_262145_118'
                                    979 ;------------------------------------------------------------
                                    980 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:101: static void __configurePins(uint8_t pinSwitch, GpioPinMode outputPinMode) {
                                    981 ;	-----------------------------------------
                                    982 ;	 function __configurePins
                                    983 ;	-----------------------------------------
      0018FF                        984 ___configurePins:
                           000007   985 	ar7 = 0x07
                           000006   986 	ar6 = 0x06
                           000005   987 	ar5 = 0x05
                           000004   988 	ar4 = 0x04
                           000003   989 	ar3 = 0x03
                           000002   990 	ar2 = 0x02
                           000001   991 	ar1 = 0x01
                           000000   992 	ar0 = 0x00
      0018FF E5 82            [12]  993 	mov	a,dpl
      001901 90 00 7F         [24]  994 	mov	dptr,#___configurePins_pinSwitch_65536_113
      001904 F0               [24]  995 	movx	@dptr,a
                                    996 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / SPI_ROW_SIZE); i++) {
      001905 7F 00            [12]  997 	mov	r7,#0x00
      001907                        998 00105$:
      001907 BF 03 00         [24]  999 	cjne	r7,#0x03,00121$
      00190A                       1000 00121$:
      00190A 40 01            [24] 1001 	jc	00122$
      00190C 22               [24] 1002 	ret
      00190D                       1003 00122$:
                                   1004 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:103: if (__pinConfigurations[i][SPI_PIN_SWITCH] == pinSwitch) {
      00190D EF               [12] 1005 	mov	a,r7
      00190E 75 F0 05         [24] 1006 	mov	b,#0x05
      001911 A4               [48] 1007 	mul	ab
      001912 FD               [12] 1008 	mov	r5,a
      001913 AE F0            [24] 1009 	mov	r6,b
      001915 24 38            [12] 1010 	add	a,#___pinConfigurations
      001917 F5 82            [12] 1011 	mov	dpl,a
      001919 EE               [12] 1012 	mov	a,r6
      00191A 34 3C            [12] 1013 	addc	a,#(___pinConfigurations >> 8)
      00191C F5 83            [12] 1014 	mov	dph,a
      00191E E4               [12] 1015 	clr	a
      00191F 93               [24] 1016 	movc	a,@a+dptr
      001920 FC               [12] 1017 	mov	r4,a
      001921 90 00 7F         [24] 1018 	mov	dptr,#___configurePins_pinSwitch_65536_113
      001924 E0               [24] 1019 	movx	a,@dptr
      001925 FB               [12] 1020 	mov	r3,a
      001926 EC               [12] 1021 	mov	a,r4
      001927 B5 03 02         [24] 1022 	cjne	a,ar3,00123$
      00192A 80 03            [24] 1023 	sjmp	00124$
      00192C                       1024 00123$:
      00192C 02 1A 03         [24] 1025 	ljmp	00106$
      00192F                       1026 00124$:
                                   1027 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:104: P_SW1 = (P_SW1 & ~M_SPI_S) | ((pinSwitch << P_SPI_S) & M_SPI_S);
      00192F 74 F3            [12] 1028 	mov	a,#0xf3
      001931 55 A2            [12] 1029 	anl	a,_P_SW1
      001933 FC               [12] 1030 	mov	r4,a
      001934 EB               [12] 1031 	mov	a,r3
      001935 2B               [12] 1032 	add	a,r3
      001936 25 E0            [12] 1033 	add	a,acc
      001938 FB               [12] 1034 	mov	r3,a
      001939 74 0C            [12] 1035 	mov	a,#0x0c
      00193B 5B               [12] 1036 	anl	a,r3
      00193C 4C               [12] 1037 	orl	a,r4
      00193D F5 A2            [12] 1038 	mov	_P_SW1,a
                                   1039 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:106: GpioConfig pinConfig = GPIO_PIN_CONFIG(GPIO_PORT3, GPIO_PIN0, outputPinMode);
      00193F 90 00 80         [24] 1040 	mov	dptr,#___configurePins_pinConfig_262145_118
      001942 74 03            [12] 1041 	mov	a,#0x03
      001944 F0               [24] 1042 	movx	@dptr,a
      001945 90 00 81         [24] 1043 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0001)
      001948 E4               [12] 1044 	clr	a
      001949 F0               [24] 1045 	movx	@dptr,a
      00194A 90 00 82         [24] 1046 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0002)
      00194D 04               [12] 1047 	inc	a
      00194E F0               [24] 1048 	movx	@dptr,a
      00194F 90 00 7E         [24] 1049 	mov	dptr,#___configurePins_PARM_2
      001952 E0               [24] 1050 	movx	a,@dptr
      001953 90 00 83         [24] 1051 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0003)
      001956 F0               [24] 1052 	movx	@dptr,a
      001957 90 00 84         [24] 1053 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0004)
      00195A E4               [12] 1054 	clr	a
      00195B F0               [24] 1055 	movx	@dptr,a
      00195C 90 00 85         [24] 1056 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0005)
      00195F F0               [24] 1057 	movx	@dptr,a
      001960 90 00 86         [24] 1058 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0006)
      001963 74 03            [12] 1059 	mov	a,#0x03
      001965 F0               [24] 1060 	movx	@dptr,a
      001966 90 00 87         [24] 1061 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0007)
      001969 74 01            [12] 1062 	mov	a,#0x01
      00196B F0               [24] 1063 	movx	@dptr,a
      00196C 90 00 88         [24] 1064 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0008)
      00196F E4               [12] 1065 	clr	a
      001970 F0               [24] 1066 	movx	@dptr,a
      001971 90 00 89         [24] 1067 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0009)
      001974 F0               [24] 1068 	movx	@dptr,a
      001975 90 00 8A         [24] 1069 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x000a)
      001978 F0               [24] 1070 	movx	@dptr,a
      001979 90 00 8B         [24] 1071 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x000b)
      00197C F0               [24] 1072 	movx	@dptr,a
      00197D 90 00 8C         [24] 1073 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x000c)
      001980 F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:111: pinDefinition = __pinConfigurations[i][SPI_MOSI_PIN];
      001981 ED               [12] 1076 	mov	a,r5
      001982 24 38            [12] 1077 	add	a,#___pinConfigurations
      001984 FD               [12] 1078 	mov	r5,a
      001985 EE               [12] 1079 	mov	a,r6
      001986 34 3C            [12] 1080 	addc	a,#(___pinConfigurations >> 8)
      001988 FE               [12] 1081 	mov	r6,a
      001989 8D 82            [24] 1082 	mov	dpl,r5
      00198B 8E 83            [24] 1083 	mov	dph,r6
      00198D A3               [24] 1084 	inc	dptr
      00198E A3               [24] 1085 	inc	dptr
      00198F E4               [12] 1086 	clr	a
      001990 93               [24] 1087 	movc	a,@a+dptr
                                   1088 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:112: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      001991 FC               [12] 1089 	mov	r4,a
      001992 C4               [12] 1090 	swap	a
      001993 54 0F            [12] 1091 	anl	a,#0x0f
      001995 90 00 80         [24] 1092 	mov	dptr,#___configurePins_pinConfig_262145_118
      001998 F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:113: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      001999 53 04 0F         [24] 1095 	anl	ar4,#0x0f
      00199C 90 00 81         [24] 1096 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0001)
      00199F EC               [12] 1097 	mov	a,r4
      0019A0 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:114: gpioConfigure(&pinConfig);
      0019A1 90 00 80         [24] 1100 	mov	dptr,#___configurePins_pinConfig_262145_118
      0019A4 75 F0 00         [24] 1101 	mov	b,#0x00
      0019A7 C0 06            [24] 1102 	push	ar6
      0019A9 C0 05            [24] 1103 	push	ar5
      0019AB 12 10 0E         [24] 1104 	lcall	_gpioConfigure
      0019AE D0 05            [24] 1105 	pop	ar5
      0019B0 D0 06            [24] 1106 	pop	ar6
                                   1107 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:116: pinDefinition = __pinConfigurations[i][SPI_SCLK_PIN];
      0019B2 8D 82            [24] 1108 	mov	dpl,r5
      0019B4 8E 83            [24] 1109 	mov	dph,r6
      0019B6 A3               [24] 1110 	inc	dptr
      0019B7 A3               [24] 1111 	inc	dptr
      0019B8 A3               [24] 1112 	inc	dptr
      0019B9 A3               [24] 1113 	inc	dptr
      0019BA E4               [12] 1114 	clr	a
      0019BB 93               [24] 1115 	movc	a,@a+dptr
                                   1116 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:117: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      0019BC FC               [12] 1117 	mov	r4,a
      0019BD C4               [12] 1118 	swap	a
      0019BE 54 0F            [12] 1119 	anl	a,#0x0f
      0019C0 90 00 80         [24] 1120 	mov	dptr,#___configurePins_pinConfig_262145_118
      0019C3 F0               [24] 1121 	movx	@dptr,a
                                   1122 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:118: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      0019C4 53 04 0F         [24] 1123 	anl	ar4,#0x0f
      0019C7 90 00 81         [24] 1124 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0001)
      0019CA EC               [12] 1125 	mov	a,r4
      0019CB F0               [24] 1126 	movx	@dptr,a
                                   1127 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:119: gpioConfigure(&pinConfig);
      0019CC 90 00 80         [24] 1128 	mov	dptr,#___configurePins_pinConfig_262145_118
      0019CF 75 F0 00         [24] 1129 	mov	b,#0x00
      0019D2 C0 06            [24] 1130 	push	ar6
      0019D4 C0 05            [24] 1131 	push	ar5
      0019D6 12 10 0E         [24] 1132 	lcall	_gpioConfigure
      0019D9 D0 05            [24] 1133 	pop	ar5
      0019DB D0 06            [24] 1134 	pop	ar6
                                   1135 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:122: pinConfig.pinMode = GPIO_BIDIRECTIONAL_MODE;
      0019DD 90 00 83         [24] 1136 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0003)
      0019E0 E4               [12] 1137 	clr	a
      0019E1 F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:124: pinDefinition = __pinConfigurations[i][SPI_MISO_PIN];
      0019E2 8D 82            [24] 1140 	mov	dpl,r5
      0019E4 8E 83            [24] 1141 	mov	dph,r6
      0019E6 A3               [24] 1142 	inc	dptr
      0019E7 A3               [24] 1143 	inc	dptr
      0019E8 A3               [24] 1144 	inc	dptr
                                   1145 ;	genFromRTrack removed	clr	a
      0019E9 93               [24] 1146 	movc	a,@a+dptr
                                   1147 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:125: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      0019EA FE               [12] 1148 	mov	r6,a
      0019EB C4               [12] 1149 	swap	a
      0019EC 54 0F            [12] 1150 	anl	a,#0x0f
      0019EE 90 00 80         [24] 1151 	mov	dptr,#___configurePins_pinConfig_262145_118
      0019F1 F0               [24] 1152 	movx	@dptr,a
                                   1153 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:126: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      0019F2 53 06 0F         [24] 1154 	anl	ar6,#0x0f
      0019F5 90 00 81         [24] 1155 	mov	dptr,#(___configurePins_pinConfig_262145_118 + 0x0001)
      0019F8 EE               [12] 1156 	mov	a,r6
      0019F9 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:127: gpioConfigure(&pinConfig);
      0019FA 90 00 80         [24] 1159 	mov	dptr,#___configurePins_pinConfig_262145_118
      0019FD 75 F0 00         [24] 1160 	mov	b,#0x00
                                   1161 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:153: break;
      001A00 02 10 0E         [24] 1162 	ljmp	_gpioConfigure
      001A03                       1163 00106$:
                                   1164 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / SPI_ROW_SIZE); i++) {
      001A03 0F               [12] 1165 	inc	r7
                                   1166 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:156: }
      001A04 02 19 07         [24] 1167 	ljmp	00105$
                                   1168 ;------------------------------------------------------------
                                   1169 ;Allocation info for local variables in function 'spiSelectSpeed'
                                   1170 ;------------------------------------------------------------
                                   1171 ;maxDeviceRate             Allocated with name '_spiSelectSpeed_maxDeviceRate_65536_119'
                                   1172 ;divisor                   Allocated with name '_spiSelectSpeed_divisor_65536_120'
                                   1173 ;pot                       Allocated with name '_spiSelectSpeed_pot_65537_122'
                                   1174 ;n                         Allocated with name '_spiSelectSpeed_n_131073_123'
                                   1175 ;result                    Allocated with name '_spiSelectSpeed_result_65538_125'
                                   1176 ;------------------------------------------------------------
                                   1177 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:165: SpiSpeed spiSelectSpeed(uint32_t maxDeviceRate) {
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function spiSelectSpeed
                                   1180 ;	-----------------------------------------
      001A07                       1181 _spiSelectSpeed:
      001A07 AF 82            [24] 1182 	mov	r7,dpl
      001A09 AE 83            [24] 1183 	mov	r6,dph
      001A0B AD F0            [24] 1184 	mov	r5,b
      001A0D FC               [12] 1185 	mov	r4,a
      001A0E 90 00 8D         [24] 1186 	mov	dptr,#_spiSelectSpeed_maxDeviceRate_65536_119
      001A11 EF               [12] 1187 	mov	a,r7
      001A12 F0               [24] 1188 	movx	@dptr,a
      001A13 EE               [12] 1189 	mov	a,r6
      001A14 A3               [24] 1190 	inc	dptr
      001A15 F0               [24] 1191 	movx	@dptr,a
      001A16 ED               [12] 1192 	mov	a,r5
      001A17 A3               [24] 1193 	inc	dptr
      001A18 F0               [24] 1194 	movx	@dptr,a
      001A19 EC               [12] 1195 	mov	a,r4
      001A1A A3               [24] 1196 	inc	dptr
      001A1B F0               [24] 1197 	movx	@dptr,a
                                   1198 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:166: uint16_t divisor = (uint16_t) (MCU_FREQ / maxDeviceRate);
      001A1C 90 00 8D         [24] 1199 	mov	dptr,#_spiSelectSpeed_maxDeviceRate_65536_119
      001A1F E0               [24] 1200 	movx	a,@dptr
      001A20 FC               [12] 1201 	mov	r4,a
      001A21 A3               [24] 1202 	inc	dptr
      001A22 E0               [24] 1203 	movx	a,@dptr
      001A23 FD               [12] 1204 	mov	r5,a
      001A24 A3               [24] 1205 	inc	dptr
      001A25 E0               [24] 1206 	movx	a,@dptr
      001A26 FE               [12] 1207 	mov	r6,a
      001A27 A3               [24] 1208 	inc	dptr
      001A28 E0               [24] 1209 	movx	a,@dptr
      001A29 FF               [12] 1210 	mov	r7,a
      001A2A 90 01 07         [24] 1211 	mov	dptr,#__divulong_PARM_2
      001A2D EC               [12] 1212 	mov	a,r4
      001A2E F0               [24] 1213 	movx	@dptr,a
      001A2F ED               [12] 1214 	mov	a,r5
      001A30 A3               [24] 1215 	inc	dptr
      001A31 F0               [24] 1216 	movx	@dptr,a
      001A32 EE               [12] 1217 	mov	a,r6
      001A33 A3               [24] 1218 	inc	dptr
      001A34 F0               [24] 1219 	movx	@dptr,a
      001A35 EF               [12] 1220 	mov	a,r7
      001A36 A3               [24] 1221 	inc	dptr
      001A37 F0               [24] 1222 	movx	@dptr,a
      001A38 90 0E C0         [24] 1223 	mov	dptr,#0x0ec0
      001A3B 75 F0 16         [24] 1224 	mov	b,#0x16
      001A3E 74 02            [12] 1225 	mov	a,#0x02
      001A40 C0 07            [24] 1226 	push	ar7
      001A42 C0 06            [24] 1227 	push	ar6
      001A44 C0 05            [24] 1228 	push	ar5
      001A46 C0 04            [24] 1229 	push	ar4
      001A48 12 30 51         [24] 1230 	lcall	__divulong
      001A4B A8 82            [24] 1231 	mov	r0,dpl
      001A4D A9 83            [24] 1232 	mov	r1,dph
      001A4F D0 04            [24] 1233 	pop	ar4
      001A51 D0 05            [24] 1234 	pop	ar5
      001A53 D0 06            [24] 1235 	pop	ar6
      001A55 D0 07            [24] 1236 	pop	ar7
      001A57 90 00 91         [24] 1237 	mov	dptr,#_spiSelectSpeed_divisor_65536_120
      001A5A E8               [12] 1238 	mov	a,r0
      001A5B F0               [24] 1239 	movx	@dptr,a
      001A5C E9               [12] 1240 	mov	a,r1
      001A5D A3               [24] 1241 	inc	dptr
      001A5E F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:168: if (MCU_FREQ % maxDeviceRate) {
      001A5F 90 00 FE         [24] 1244 	mov	dptr,#__modulong_PARM_2
      001A62 EC               [12] 1245 	mov	a,r4
      001A63 F0               [24] 1246 	movx	@dptr,a
      001A64 ED               [12] 1247 	mov	a,r5
      001A65 A3               [24] 1248 	inc	dptr
      001A66 F0               [24] 1249 	movx	@dptr,a
      001A67 EE               [12] 1250 	mov	a,r6
      001A68 A3               [24] 1251 	inc	dptr
      001A69 F0               [24] 1252 	movx	@dptr,a
      001A6A EF               [12] 1253 	mov	a,r7
      001A6B A3               [24] 1254 	inc	dptr
      001A6C F0               [24] 1255 	movx	@dptr,a
      001A6D 90 0E C0         [24] 1256 	mov	dptr,#0x0ec0
      001A70 75 F0 16         [24] 1257 	mov	b,#0x16
      001A73 74 02            [12] 1258 	mov	a,#0x02
      001A75 C0 01            [24] 1259 	push	ar1
      001A77 C0 00            [24] 1260 	push	ar0
      001A79 12 2F 11         [24] 1261 	lcall	__modulong
      001A7C AC 82            [24] 1262 	mov	r4,dpl
      001A7E AD 83            [24] 1263 	mov	r5,dph
      001A80 AE F0            [24] 1264 	mov	r6,b
      001A82 FF               [12] 1265 	mov	r7,a
      001A83 D0 00            [24] 1266 	pop	ar0
      001A85 D0 01            [24] 1267 	pop	ar1
      001A87 EC               [12] 1268 	mov	a,r4
      001A88 4D               [12] 1269 	orl	a,r5
      001A89 4E               [12] 1270 	orl	a,r6
      001A8A 4F               [12] 1271 	orl	a,r7
      001A8B 60 0B            [24] 1272 	jz	00102$
                                   1273 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:169: divisor++;
      001A8D 90 00 91         [24] 1274 	mov	dptr,#_spiSelectSpeed_divisor_65536_120
      001A90 74 01            [12] 1275 	mov	a,#0x01
      001A92 28               [12] 1276 	add	a,r0
      001A93 F0               [24] 1277 	movx	@dptr,a
      001A94 E4               [12] 1278 	clr	a
      001A95 39               [12] 1279 	addc	a,r1
      001A96 A3               [24] 1280 	inc	dptr
      001A97 F0               [24] 1281 	movx	@dptr,a
      001A98                       1282 00102$:
                                   1283 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:176: for (uint16_t n = divisor; n > 1; n = n >> 1, pot++);
      001A98 90 00 91         [24] 1284 	mov	dptr,#_spiSelectSpeed_divisor_65536_120
      001A9B E0               [24] 1285 	movx	a,@dptr
      001A9C FE               [12] 1286 	mov	r6,a
      001A9D A3               [24] 1287 	inc	dptr
      001A9E E0               [24] 1288 	movx	a,@dptr
      001A9F FF               [12] 1289 	mov	r7,a
      001AA0 90 00 94         [24] 1290 	mov	dptr,#_spiSelectSpeed_n_131073_123
      001AA3 EE               [12] 1291 	mov	a,r6
      001AA4 F0               [24] 1292 	movx	@dptr,a
      001AA5 EF               [12] 1293 	mov	a,r7
      001AA6 A3               [24] 1294 	inc	dptr
      001AA7 F0               [24] 1295 	movx	@dptr,a
      001AA8 7D 00            [12] 1296 	mov	r5,#0x00
      001AAA                       1297 00116$:
      001AAA 90 00 94         [24] 1298 	mov	dptr,#_spiSelectSpeed_n_131073_123
      001AAD E0               [24] 1299 	movx	a,@dptr
      001AAE FB               [12] 1300 	mov	r3,a
      001AAF A3               [24] 1301 	inc	dptr
      001AB0 E0               [24] 1302 	movx	a,@dptr
      001AB1 FC               [12] 1303 	mov	r4,a
      001AB2 8B 01            [24] 1304 	mov	ar1,r3
      001AB4 8C 02            [24] 1305 	mov	ar2,r4
      001AB6 C3               [12] 1306 	clr	c
      001AB7 74 01            [12] 1307 	mov	a,#0x01
      001AB9 99               [12] 1308 	subb	a,r1
      001ABA E4               [12] 1309 	clr	a
      001ABB 9A               [12] 1310 	subb	a,r2
      001ABC 50 12            [24] 1311 	jnc	00128$
      001ABE EC               [12] 1312 	mov	a,r4
      001ABF C3               [12] 1313 	clr	c
      001AC0 13               [12] 1314 	rrc	a
      001AC1 CB               [12] 1315 	xch	a,r3
      001AC2 13               [12] 1316 	rrc	a
      001AC3 CB               [12] 1317 	xch	a,r3
      001AC4 FC               [12] 1318 	mov	r4,a
      001AC5 90 00 94         [24] 1319 	mov	dptr,#_spiSelectSpeed_n_131073_123
      001AC8 EB               [12] 1320 	mov	a,r3
      001AC9 F0               [24] 1321 	movx	@dptr,a
      001ACA EC               [12] 1322 	mov	a,r4
      001ACB A3               [24] 1323 	inc	dptr
      001ACC F0               [24] 1324 	movx	@dptr,a
      001ACD 0D               [12] 1325 	inc	r5
      001ACE 80 DA            [24] 1326 	sjmp	00116$
      001AD0                       1327 00128$:
      001AD0 90 00 93         [24] 1328 	mov	dptr,#_spiSelectSpeed_pot_65537_122
      001AD3 ED               [12] 1329 	mov	a,r5
      001AD4 F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:178: if (divisor > (1 << pot)) {
      001AD5 8D F0            [24] 1332 	mov	b,r5
      001AD7 05 F0            [12] 1333 	inc	b
      001AD9 7B 01            [12] 1334 	mov	r3,#0x01
      001ADB 7C 00            [12] 1335 	mov	r4,#0x00
      001ADD 80 06            [24] 1336 	sjmp	00156$
      001ADF                       1337 00155$:
      001ADF EB               [12] 1338 	mov	a,r3
      001AE0 2B               [12] 1339 	add	a,r3
      001AE1 FB               [12] 1340 	mov	r3,a
      001AE2 EC               [12] 1341 	mov	a,r4
      001AE3 33               [12] 1342 	rlc	a
      001AE4 FC               [12] 1343 	mov	r4,a
      001AE5                       1344 00156$:
      001AE5 D5 F0 F7         [24] 1345 	djnz	b,00155$
      001AE8 C3               [12] 1346 	clr	c
      001AE9 EB               [12] 1347 	mov	a,r3
      001AEA 9E               [12] 1348 	subb	a,r6
      001AEB EC               [12] 1349 	mov	a,r4
      001AEC 9F               [12] 1350 	subb	a,r7
      001AED 50 06            [24] 1351 	jnc	00105$
                                   1352 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:179: pot++;
      001AEF 90 00 93         [24] 1353 	mov	dptr,#_spiSelectSpeed_pot_65537_122
      001AF2 ED               [12] 1354 	mov	a,r5
      001AF3 04               [12] 1355 	inc	a
      001AF4 F0               [24] 1356 	movx	@dptr,a
      001AF5                       1357 00105$:
                                   1358 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:183: SpiSpeed result = SPI_SYSCLK_DIV_4;
      001AF5 90 00 96         [24] 1359 	mov	dptr,#_spiSelectSpeed_result_65538_125
      001AF8 E4               [12] 1360 	clr	a
      001AF9 F0               [24] 1361 	movx	@dptr,a
                                   1362 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:198: if (pot > 2 && pot <= 3) {
      001AFA 90 00 93         [24] 1363 	mov	dptr,#_spiSelectSpeed_pot_65537_122
      001AFD E0               [24] 1364 	movx	a,@dptr
      001AFE FF               [12] 1365 	mov  r7,a
      001AFF 24 FD            [12] 1366 	add	a,#0xff - 0x02
      001B01 50 0D            [24] 1367 	jnc	00112$
      001B03 EF               [12] 1368 	mov	a,r7
      001B04 24 FC            [12] 1369 	add	a,#0xff - 0x03
      001B06 40 08            [24] 1370 	jc	00112$
                                   1371 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:199: result = SPI_SYSCLK_DIV_8;
      001B08 90 00 96         [24] 1372 	mov	dptr,#_spiSelectSpeed_result_65538_125
      001B0B 74 01            [12] 1373 	mov	a,#0x01
      001B0D F0               [24] 1374 	movx	@dptr,a
      001B0E 80 1D            [24] 1375 	sjmp	00113$
      001B10                       1376 00112$:
                                   1377 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:200: } else if (pot < 2) {
      001B10 90 00 93         [24] 1378 	mov	dptr,#_spiSelectSpeed_pot_65537_122
      001B13 E0               [24] 1379 	movx	a,@dptr
      001B14 FF               [12] 1380 	mov	r7,a
      001B15 BF 02 00         [24] 1381 	cjne	r7,#0x02,00160$
      001B18                       1382 00160$:
      001B18 50 08            [24] 1383 	jnc	00109$
                                   1384 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:201: result = SPI_SYSCLK_DIV_2;
      001B1A 90 00 96         [24] 1385 	mov	dptr,#_spiSelectSpeed_result_65538_125
      001B1D 74 03            [12] 1386 	mov	a,#0x03
      001B1F F0               [24] 1387 	movx	@dptr,a
      001B20 80 0B            [24] 1388 	sjmp	00113$
      001B22                       1389 00109$:
                                   1390 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:202: } else if (pot > 3) {
      001B22 EF               [12] 1391 	mov	a,r7
      001B23 24 FC            [12] 1392 	add	a,#0xff - 0x03
      001B25 50 06            [24] 1393 	jnc	00113$
                                   1394 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:203: result = SPI_SYSCLK_DIV_16;
      001B27 90 00 96         [24] 1395 	mov	dptr,#_spiSelectSpeed_result_65538_125
      001B2A 74 02            [12] 1396 	mov	a,#0x02
      001B2C F0               [24] 1397 	movx	@dptr,a
      001B2D                       1398 00113$:
                                   1399 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:217: return result;
      001B2D 90 00 96         [24] 1400 	mov	dptr,#_spiSelectSpeed_result_65538_125
      001B30 E0               [24] 1401 	movx	a,@dptr
                                   1402 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:218: }
      001B31 F5 82            [12] 1403 	mov	dpl,a
      001B33 22               [24] 1404 	ret
                                   1405 ;------------------------------------------------------------
                                   1406 ;Allocation info for local variables in function 'spiConfigure'
                                   1407 ;------------------------------------------------------------
                                   1408 ;mode                      Allocated with name '_spiConfigure_PARM_2'
                                   1409 ;speed                     Allocated with name '_spiConfigure_PARM_3'
                                   1410 ;pinSwitch                 Allocated with name '_spiConfigure_PARM_4'
                                   1411 ;outputPinMode             Allocated with name '_spiConfigure_PARM_5'
                                   1412 ;bitOrder                  Allocated with name '_spiConfigure_bitOrder_65536_129'
                                   1413 ;------------------------------------------------------------
                                   1414 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:220: void spiConfigure(SpiBitOrder bitOrder, SpiMode mode, SpiSpeed speed, uint8_t pinSwitch, GpioPinMode outputPinMode) {
                                   1415 ;	-----------------------------------------
                                   1416 ;	 function spiConfigure
                                   1417 ;	-----------------------------------------
      001B34                       1418 _spiConfigure:
      001B34 E5 82            [12] 1419 	mov	a,dpl
      001B36 90 00 9B         [24] 1420 	mov	dptr,#_spiConfigure_bitOrder_65536_129
      001B39 F0               [24] 1421 	movx	@dptr,a
                                   1422 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:221: __configurePins(pinSwitch, outputPinMode);
      001B3A 90 00 99         [24] 1423 	mov	dptr,#_spiConfigure_PARM_4
      001B3D E0               [24] 1424 	movx	a,@dptr
      001B3E FF               [12] 1425 	mov	r7,a
      001B3F 90 00 9A         [24] 1426 	mov	dptr,#_spiConfigure_PARM_5
      001B42 E0               [24] 1427 	movx	a,@dptr
      001B43 90 00 7E         [24] 1428 	mov	dptr,#___configurePins_PARM_2
      001B46 F0               [24] 1429 	movx	@dptr,a
      001B47 8F 82            [24] 1430 	mov	dpl,r7
      001B49 12 18 FF         [24] 1431 	lcall	___configurePins
                                   1432 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:222: SPCTL = bitOrder | mode | speed |
      001B4C 90 00 97         [24] 1433 	mov	dptr,#_spiConfigure_PARM_2
      001B4F E0               [24] 1434 	movx	a,@dptr
      001B50 FF               [12] 1435 	mov	r7,a
      001B51 90 00 9B         [24] 1436 	mov	dptr,#_spiConfigure_bitOrder_65536_129
      001B54 E0               [24] 1437 	movx	a,@dptr
      001B55 42 07            [12] 1438 	orl	ar7,a
      001B57 90 00 98         [24] 1439 	mov	dptr,#_spiConfigure_PARM_3
      001B5A E0               [24] 1440 	movx	a,@dptr
      001B5B 4F               [12] 1441 	orl	a,r7
      001B5C 44 D0            [12] 1442 	orl	a,#0xd0
      001B5E F5 CE            [12] 1443 	mov	_SPCTL,a
                                   1444 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:228: IE2 = IE2 | M_SPIEN;
      001B60 43 AF 02         [24] 1445 	orl	_IE2,#0x02
                                   1446 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:229: }
      001B63 22               [24] 1447 	ret
                                   1448 ;------------------------------------------------------------
                                   1449 ;Allocation info for local variables in function 'spiSend'
                                   1450 ;------------------------------------------------------------
                                   1451 ;bufferSize                Allocated with name '_spiSend_PARM_2'
                                   1452 ;readyFlag                 Allocated with name '_spiSend_PARM_3'
                                   1453 ;buffer                    Allocated with name '_spiSend_buffer_65536_131'
                                   1454 ;------------------------------------------------------------
                                   1455 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:231: void spiSend(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
                                   1456 ;	-----------------------------------------
                                   1457 ;	 function spiSend
                                   1458 ;	-----------------------------------------
      001B64                       1459 _spiSend:
      001B64 AF F0            [24] 1460 	mov	r7,b
      001B66 AE 83            [24] 1461 	mov	r6,dph
      001B68 E5 82            [12] 1462 	mov	a,dpl
      001B6A 90 00 A1         [24] 1463 	mov	dptr,#_spiSend_buffer_65536_131
      001B6D F0               [24] 1464 	movx	@dptr,a
      001B6E EE               [12] 1465 	mov	a,r6
      001B6F A3               [24] 1466 	inc	dptr
      001B70 F0               [24] 1467 	movx	@dptr,a
      001B71 EF               [12] 1468 	mov	a,r7
      001B72 A3               [24] 1469 	inc	dptr
      001B73 F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:232: __spiState.buffer = buffer;
      001B74 90 00 A1         [24] 1472 	mov	dptr,#_spiSend_buffer_65536_131
      001B77 E0               [24] 1473 	movx	a,@dptr
      001B78 FD               [12] 1474 	mov	r5,a
      001B79 A3               [24] 1475 	inc	dptr
      001B7A E0               [24] 1476 	movx	a,@dptr
      001B7B FE               [12] 1477 	mov	r6,a
      001B7C A3               [24] 1478 	inc	dptr
      001B7D E0               [24] 1479 	movx	a,@dptr
      001B7E FF               [12] 1480 	mov	r7,a
      001B7F 78 5F            [12] 1481 	mov	r0,#___spiState
      001B81 A6 05            [24] 1482 	mov	@r0,ar5
      001B83 08               [12] 1483 	inc	r0
      001B84 A6 06            [24] 1484 	mov	@r0,ar6
      001B86 08               [12] 1485 	inc	r0
      001B87 A6 07            [24] 1486 	mov	@r0,ar7
                                   1487 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:233: __spiState.bufferSize = bufferSize;
      001B89 90 00 9C         [24] 1488 	mov	dptr,#_spiSend_PARM_2
      001B8C E0               [24] 1489 	movx	a,@dptr
      001B8D FE               [12] 1490 	mov	r6,a
      001B8E A3               [24] 1491 	inc	dptr
      001B8F E0               [24] 1492 	movx	a,@dptr
      001B90 FF               [12] 1493 	mov	r7,a
      001B91 78 64            [12] 1494 	mov	r0,#(___spiState + 0x0005)
      001B93 A6 06            [24] 1495 	mov	@r0,ar6
      001B95 08               [12] 1496 	inc	r0
      001B96 A6 07            [24] 1497 	mov	@r0,ar7
                                   1498 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:234: __spiState.readyFlag = readyFlag;
      001B98 90 00 9E         [24] 1499 	mov	dptr,#_spiSend_PARM_3
      001B9B E0               [24] 1500 	movx	a,@dptr
      001B9C FD               [12] 1501 	mov	r5,a
      001B9D A3               [24] 1502 	inc	dptr
      001B9E E0               [24] 1503 	movx	a,@dptr
      001B9F FE               [12] 1504 	mov	r6,a
      001BA0 A3               [24] 1505 	inc	dptr
      001BA1 E0               [24] 1506 	movx	a,@dptr
      001BA2 FF               [12] 1507 	mov	r7,a
      001BA3 78 66            [12] 1508 	mov	r0,#(___spiState + 0x0007)
      001BA5 A6 05            [24] 1509 	mov	@r0,ar5
      001BA7 08               [12] 1510 	inc	r0
      001BA8 A6 06            [24] 1511 	mov	@r0,ar6
      001BAA 08               [12] 1512 	inc	r0
      001BAB A6 07            [24] 1513 	mov	@r0,ar7
                                   1514 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:235: *__spiState.readyFlag = false;
      001BAD 8D 82            [24] 1515 	mov	dpl,r5
      001BAF 8E 83            [24] 1516 	mov	dph,r6
      001BB1 8F F0            [24] 1517 	mov	b,r7
      001BB3 E4               [12] 1518 	clr	a
      001BB4 12 31 6D         [24] 1519 	lcall	__gptrput
                                   1520 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:236: __spiState.index = 0;
      001BB7 78 62            [12] 1521 	mov	r0,#(___spiState + 0x0003)
      001BB9 76 00            [12] 1522 	mov	@r0,#0x00
      001BBB 08               [12] 1523 	inc	r0
      001BBC 76 00            [12] 1524 	mov	@r0,#0x00
                                   1525 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:239: SPDAT = __spiState.buffer[__spiState.index];
      001BBE 78 5F            [12] 1526 	mov	r0,#___spiState
      001BC0 86 05            [24] 1527 	mov	ar5,@r0
      001BC2 08               [12] 1528 	inc	r0
      001BC3 86 06            [24] 1529 	mov	ar6,@r0
      001BC5 08               [12] 1530 	inc	r0
      001BC6 86 07            [24] 1531 	mov	ar7,@r0
      001BC8 78 62            [12] 1532 	mov	r0,#(___spiState + 0x0003)
      001BCA 86 03            [24] 1533 	mov	ar3,@r0
      001BCC 08               [12] 1534 	inc	r0
      001BCD 86 04            [24] 1535 	mov	ar4,@r0
      001BCF EB               [12] 1536 	mov	a,r3
      001BD0 2D               [12] 1537 	add	a,r5
      001BD1 FD               [12] 1538 	mov	r5,a
      001BD2 EC               [12] 1539 	mov	a,r4
      001BD3 3E               [12] 1540 	addc	a,r6
      001BD4 FE               [12] 1541 	mov	r6,a
      001BD5 8D 82            [24] 1542 	mov	dpl,r5
      001BD7 8E 83            [24] 1543 	mov	dph,r6
      001BD9 8F F0            [24] 1544 	mov	b,r7
      001BDB 12 3C 18         [24] 1545 	lcall	__gptrget
      001BDE F5 CF            [12] 1546 	mov	_SPDAT,a
                                   1547 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:241: }
      001BE0 22               [24] 1548 	ret
                                   1549 ;------------------------------------------------------------
                                   1550 ;Allocation info for local variables in function 'spiReceive'
                                   1551 ;------------------------------------------------------------
                                   1552 ;bufferSize                Allocated with name '_spiReceive_PARM_2'
                                   1553 ;readyFlag                 Allocated with name '_spiReceive_PARM_3'
                                   1554 ;buffer                    Allocated with name '_spiReceive_buffer_65536_133'
                                   1555 ;------------------------------------------------------------
                                   1556 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:243: void spiReceive(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
                                   1557 ;	-----------------------------------------
                                   1558 ;	 function spiReceive
                                   1559 ;	-----------------------------------------
      001BE1                       1560 _spiReceive:
      001BE1 AF F0            [24] 1561 	mov	r7,b
      001BE3 AE 83            [24] 1562 	mov	r6,dph
      001BE5 E5 82            [12] 1563 	mov	a,dpl
      001BE7 90 00 A9         [24] 1564 	mov	dptr,#_spiReceive_buffer_65536_133
      001BEA F0               [24] 1565 	movx	@dptr,a
      001BEB EE               [12] 1566 	mov	a,r6
      001BEC A3               [24] 1567 	inc	dptr
      001BED F0               [24] 1568 	movx	@dptr,a
      001BEE EF               [12] 1569 	mov	a,r7
      001BEF A3               [24] 1570 	inc	dptr
      001BF0 F0               [24] 1571 	movx	@dptr,a
                                   1572 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:244: memset(buffer, 0, bufferSize);
      001BF1 90 00 A9         [24] 1573 	mov	dptr,#_spiReceive_buffer_65536_133
      001BF4 E0               [24] 1574 	movx	a,@dptr
      001BF5 FD               [12] 1575 	mov	r5,a
      001BF6 A3               [24] 1576 	inc	dptr
      001BF7 E0               [24] 1577 	movx	a,@dptr
      001BF8 FE               [12] 1578 	mov	r6,a
      001BF9 A3               [24] 1579 	inc	dptr
      001BFA E0               [24] 1580 	movx	a,@dptr
      001BFB FF               [12] 1581 	mov	r7,a
      001BFC 8D 02            [24] 1582 	mov	ar2,r5
      001BFE 8E 03            [24] 1583 	mov	ar3,r6
      001C00 8F 04            [24] 1584 	mov	ar4,r7
      001C02 90 00 A4         [24] 1585 	mov	dptr,#_spiReceive_PARM_2
      001C05 E0               [24] 1586 	movx	a,@dptr
      001C06 F8               [12] 1587 	mov	r0,a
      001C07 A3               [24] 1588 	inc	dptr
      001C08 E0               [24] 1589 	movx	a,@dptr
      001C09 F9               [12] 1590 	mov	r1,a
      001C0A 90 01 14         [24] 1591 	mov	dptr,#_memset_PARM_2
      001C0D E4               [12] 1592 	clr	a
      001C0E F0               [24] 1593 	movx	@dptr,a
      001C0F 90 01 15         [24] 1594 	mov	dptr,#_memset_PARM_3
      001C12 E8               [12] 1595 	mov	a,r0
      001C13 F0               [24] 1596 	movx	@dptr,a
      001C14 E9               [12] 1597 	mov	a,r1
      001C15 A3               [24] 1598 	inc	dptr
      001C16 F0               [24] 1599 	movx	@dptr,a
      001C17 8A 82            [24] 1600 	mov	dpl,r2
      001C19 8B 83            [24] 1601 	mov	dph,r3
      001C1B 8C F0            [24] 1602 	mov	b,r4
      001C1D C0 07            [24] 1603 	push	ar7
      001C1F C0 06            [24] 1604 	push	ar6
      001C21 C0 05            [24] 1605 	push	ar5
      001C23 C0 01            [24] 1606 	push	ar1
      001C25 C0 00            [24] 1607 	push	ar0
      001C27 12 31 45         [24] 1608 	lcall	_memset
      001C2A D0 00            [24] 1609 	pop	ar0
      001C2C D0 01            [24] 1610 	pop	ar1
      001C2E D0 05            [24] 1611 	pop	ar5
      001C30 D0 06            [24] 1612 	pop	ar6
      001C32 D0 07            [24] 1613 	pop	ar7
                                   1614 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:245: spiSend(buffer, bufferSize, readyFlag);
      001C34 90 00 A6         [24] 1615 	mov	dptr,#_spiReceive_PARM_3
      001C37 E0               [24] 1616 	movx	a,@dptr
      001C38 FA               [12] 1617 	mov	r2,a
      001C39 A3               [24] 1618 	inc	dptr
      001C3A E0               [24] 1619 	movx	a,@dptr
      001C3B FB               [12] 1620 	mov	r3,a
      001C3C A3               [24] 1621 	inc	dptr
      001C3D E0               [24] 1622 	movx	a,@dptr
      001C3E FC               [12] 1623 	mov	r4,a
      001C3F 90 00 9C         [24] 1624 	mov	dptr,#_spiSend_PARM_2
      001C42 E8               [12] 1625 	mov	a,r0
      001C43 F0               [24] 1626 	movx	@dptr,a
      001C44 E9               [12] 1627 	mov	a,r1
      001C45 A3               [24] 1628 	inc	dptr
      001C46 F0               [24] 1629 	movx	@dptr,a
      001C47 90 00 9E         [24] 1630 	mov	dptr,#_spiSend_PARM_3
      001C4A EA               [12] 1631 	mov	a,r2
      001C4B F0               [24] 1632 	movx	@dptr,a
      001C4C EB               [12] 1633 	mov	a,r3
      001C4D A3               [24] 1634 	inc	dptr
      001C4E F0               [24] 1635 	movx	@dptr,a
      001C4F EC               [12] 1636 	mov	a,r4
      001C50 A3               [24] 1637 	inc	dptr
      001C51 F0               [24] 1638 	movx	@dptr,a
      001C52 8D 82            [24] 1639 	mov	dpl,r5
      001C54 8E 83            [24] 1640 	mov	dph,r6
      001C56 8F F0            [24] 1641 	mov	b,r7
                                   1642 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:246: }
      001C58 02 1B 64         [24] 1643 	ljmp	_spiSend
                                   1644 ;------------------------------------------------------------
                                   1645 ;Allocation info for local variables in function 'spi_isr'
                                   1646 ;------------------------------------------------------------
                                   1647 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:248: INTERRUPT(spi_isr, SPI_INTERRUPT) {
                                   1648 ;	-----------------------------------------
                                   1649 ;	 function spi_isr
                                   1650 ;	-----------------------------------------
      001C5B                       1651 _spi_isr:
      001C5B C0 E0            [24] 1652 	push	acc
      001C5D C0 F0            [24] 1653 	push	b
      001C5F C0 82            [24] 1654 	push	dpl
      001C61 C0 83            [24] 1655 	push	dph
      001C63 C0 07            [24] 1656 	push	ar7
      001C65 C0 06            [24] 1657 	push	ar6
      001C67 C0 05            [24] 1658 	push	ar5
      001C69 C0 04            [24] 1659 	push	ar4
      001C6B C0 03            [24] 1660 	push	ar3
      001C6D C0 02            [24] 1661 	push	ar2
      001C6F C0 00            [24] 1662 	push	ar0
      001C71 C0 D0            [24] 1663 	push	psw
      001C73 75 D0 00         [24] 1664 	mov	psw,#0x00
                                   1665 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:249: SPSTAT |= M_SPIIF | M_WCOL;
      001C76 43 CD C0         [24] 1666 	orl	_SPSTAT,#0xc0
                                   1667 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:252: __spiState.buffer[__spiState.index] = SPDAT;
      001C79 78 5F            [12] 1668 	mov	r0,#___spiState
      001C7B 86 05            [24] 1669 	mov	ar5,@r0
      001C7D 08               [12] 1670 	inc	r0
      001C7E 86 06            [24] 1671 	mov	ar6,@r0
      001C80 08               [12] 1672 	inc	r0
      001C81 86 07            [24] 1673 	mov	ar7,@r0
      001C83 78 62            [12] 1674 	mov	r0,#(___spiState + 0x0003)
      001C85 86 03            [24] 1675 	mov	ar3,@r0
      001C87 08               [12] 1676 	inc	r0
      001C88 86 04            [24] 1677 	mov	ar4,@r0
      001C8A EB               [12] 1678 	mov	a,r3
      001C8B 2D               [12] 1679 	add	a,r5
      001C8C FD               [12] 1680 	mov	r5,a
      001C8D EC               [12] 1681 	mov	a,r4
      001C8E 3E               [12] 1682 	addc	a,r6
      001C8F FE               [12] 1683 	mov	r6,a
      001C90 8D 82            [24] 1684 	mov	dpl,r5
      001C92 8E 83            [24] 1685 	mov	dph,r6
      001C94 8F F0            [24] 1686 	mov	b,r7
      001C96 E5 CF            [12] 1687 	mov	a,_SPDAT
      001C98 12 31 6D         [24] 1688 	lcall	__gptrput
                                   1689 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:253: __spiState.index++;
      001C9B 78 62            [12] 1690 	mov	r0,#(___spiState + 0x0003)
      001C9D 86 06            [24] 1691 	mov	ar6,@r0
      001C9F 08               [12] 1692 	inc	r0
      001CA0 86 07            [24] 1693 	mov	ar7,@r0
      001CA2 0E               [12] 1694 	inc	r6
      001CA3 BE 00 01         [24] 1695 	cjne	r6,#0x00,00110$
      001CA6 0F               [12] 1696 	inc	r7
      001CA7                       1697 00110$:
      001CA7 78 62            [12] 1698 	mov	r0,#(___spiState + 0x0003)
      001CA9 A6 06            [24] 1699 	mov	@r0,ar6
      001CAB 08               [12] 1700 	inc	r0
      001CAC A6 07            [24] 1701 	mov	@r0,ar7
                                   1702 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:255: if (__spiState.index < __spiState.bufferSize) {
      001CAE 78 62            [12] 1703 	mov	r0,#(___spiState + 0x0003)
      001CB0 86 04            [24] 1704 	mov	ar4,@r0
      001CB2 08               [12] 1705 	inc	r0
      001CB3 86 05            [24] 1706 	mov	ar5,@r0
      001CB5 78 64            [12] 1707 	mov	r0,#(___spiState + 0x0005)
      001CB7 86 02            [24] 1708 	mov	ar2,@r0
      001CB9 08               [12] 1709 	inc	r0
      001CBA 86 03            [24] 1710 	mov	ar3,@r0
      001CBC C3               [12] 1711 	clr	c
      001CBD EE               [12] 1712 	mov	a,r6
      001CBE 9A               [12] 1713 	subb	a,r2
      001CBF EF               [12] 1714 	mov	a,r7
      001CC0 9B               [12] 1715 	subb	a,r3
      001CC1 50 1F            [24] 1716 	jnc	00102$
                                   1717 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:257: SPDAT = __spiState.buffer[__spiState.index];
      001CC3 78 5F            [12] 1718 	mov	r0,#___spiState
      001CC5 86 03            [24] 1719 	mov	ar3,@r0
      001CC7 08               [12] 1720 	inc	r0
      001CC8 86 06            [24] 1721 	mov	ar6,@r0
      001CCA 08               [12] 1722 	inc	r0
      001CCB 86 07            [24] 1723 	mov	ar7,@r0
      001CCD EC               [12] 1724 	mov	a,r4
      001CCE 2B               [12] 1725 	add	a,r3
      001CCF FC               [12] 1726 	mov	r4,a
      001CD0 ED               [12] 1727 	mov	a,r5
      001CD1 3E               [12] 1728 	addc	a,r6
      001CD2 FD               [12] 1729 	mov	r5,a
      001CD3 8F 02            [24] 1730 	mov	ar2,r7
      001CD5 8C 82            [24] 1731 	mov	dpl,r4
      001CD7 8D 83            [24] 1732 	mov	dph,r5
      001CD9 8A F0            [24] 1733 	mov	b,r2
      001CDB 12 3C 18         [24] 1734 	lcall	__gptrget
      001CDE F5 CF            [12] 1735 	mov	_SPDAT,a
      001CE0 80 15            [24] 1736 	sjmp	00104$
      001CE2                       1737 00102$:
                                   1738 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:260: *__spiState.readyFlag = true;
      001CE2 78 66            [12] 1739 	mov	r0,#(___spiState + 0x0007)
      001CE4 86 05            [24] 1740 	mov	ar5,@r0
      001CE6 08               [12] 1741 	inc	r0
      001CE7 86 06            [24] 1742 	mov	ar6,@r0
      001CE9 08               [12] 1743 	inc	r0
      001CEA 86 07            [24] 1744 	mov	ar7,@r0
      001CEC 8D 82            [24] 1745 	mov	dpl,r5
      001CEE 8E 83            [24] 1746 	mov	dph,r6
      001CF0 8F F0            [24] 1747 	mov	b,r7
      001CF2 74 01            [12] 1748 	mov	a,#0x01
      001CF4 12 31 6D         [24] 1749 	lcall	__gptrput
      001CF7                       1750 00104$:
                                   1751 ;	/home/mr-atom/.stc/uni-stc/hal/spi-hal.c:275: }
      001CF7 D0 D0            [24] 1752 	pop	psw
      001CF9 D0 00            [24] 1753 	pop	ar0
      001CFB D0 02            [24] 1754 	pop	ar2
      001CFD D0 03            [24] 1755 	pop	ar3
      001CFF D0 04            [24] 1756 	pop	ar4
      001D01 D0 05            [24] 1757 	pop	ar5
      001D03 D0 06            [24] 1758 	pop	ar6
      001D05 D0 07            [24] 1759 	pop	ar7
      001D07 D0 83            [24] 1760 	pop	dph
      001D09 D0 82            [24] 1761 	pop	dpl
      001D0B D0 F0            [24] 1762 	pop	b
      001D0D D0 E0            [24] 1763 	pop	acc
      001D0F 32               [24] 1764 	reti
                                   1765 ;	eliminated unneeded push/pop ar1
                                   1766 	.area CSEG    (CODE)
                                   1767 	.area CONST   (CODE)
      003C38                       1768 ___pinConfigurations:
      003C38 00                    1769 	.db #0x00	; 0
      003C39 54                    1770 	.db #0x54	; 84	'T'
      003C3A 13                    1771 	.db #0x13	; 19
      003C3B 14                    1772 	.db #0x14	; 20
      003C3C 15                    1773 	.db #0x15	; 21
      003C3D 01                    1774 	.db #0x01	; 1
      003C3E 22                    1775 	.db #0x22	; 34
      003C3F 23                    1776 	.db #0x23	; 35
      003C40 24                    1777 	.db #0x24	; 36
      003C41 25                    1778 	.db #0x25	; 37
      003C42 03                    1779 	.db #0x03	; 3
      003C43 35                    1780 	.db #0x35	; 53	'5'
      003C44 34                    1781 	.db #0x34	; 52	'4'
      003C45 33                    1782 	.db #0x33	; 51	'3'
      003C46 32                    1783 	.db #0x32	; 50	'2'
                                   1784 	.area XINIT   (CODE)
                                   1785 	.area CABS    (ABS,CODE)
