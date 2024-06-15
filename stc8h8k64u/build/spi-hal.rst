                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _memset
                                     12 	.globl _gpioConfigure
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
      000030                        610 ___spiState:
      000030                        611 	.ds 10
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
                                    626 ; uninitialized external ram data
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
      000013                        897 _uartGetCharacter_result_10000_50:
      000013                        898 	.ds 1
      000014                        899 ___configurePins_PARM_2:
      000014                        900 	.ds 1
      000015                        901 ___configurePins_pinSwitch_10000_109:
      000015                        902 	.ds 1
      000016                        903 ___configurePins_pinConfig_40001_114:
      000016                        904 	.ds 13
      000023                        905 _spiSelectSpeed_maxDeviceRate_10000_115:
      000023                        906 	.ds 4
      000027                        907 _spiSelectSpeed_divisor_10000_116:
      000027                        908 	.ds 2
      000029                        909 _spiSelectSpeed_pot_10001_118:
      000029                        910 	.ds 1
      00002A                        911 _spiSelectSpeed_n_20001_119:
      00002A                        912 	.ds 2
      00002C                        913 _spiSelectSpeed_result_10002_121:
      00002C                        914 	.ds 1
      00002D                        915 _spiConfigure_PARM_2:
      00002D                        916 	.ds 1
      00002E                        917 _spiConfigure_PARM_3:
      00002E                        918 	.ds 1
      00002F                        919 _spiConfigure_PARM_4:
      00002F                        920 	.ds 1
      000030                        921 _spiConfigure_PARM_5:
      000030                        922 	.ds 1
      000031                        923 _spiConfigure_bitOrder_10000_125:
      000031                        924 	.ds 1
      000032                        925 _spiSend_PARM_2:
      000032                        926 	.ds 2
      000034                        927 _spiSend_PARM_3:
      000034                        928 	.ds 3
      000037                        929 _spiSend_buffer_10000_127:
      000037                        930 	.ds 3
      00003A                        931 _spiReceive_PARM_2:
      00003A                        932 	.ds 2
      00003C                        933 _spiReceive_PARM_3:
      00003C                        934 	.ds 3
      00003F                        935 _spiReceive_buffer_10000_129:
      00003F                        936 	.ds 3
                                    937 ;--------------------------------------------------------
                                    938 ; absolute external ram data
                                    939 ;--------------------------------------------------------
                                    940 	.area XABS    (ABS,XDATA)
                                    941 ;--------------------------------------------------------
                                    942 ; initialized external ram data
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
                                    975 ;pinSwitch                 Allocated with name '___configurePins_pinSwitch_10000_109'
                                    976 ;i                         Allocated with name '___configurePins_i_20000_111'
                                    977 ;pinConfig                 Allocated with name '___configurePins_pinConfig_40001_114'
                                    978 ;pinDefinition             Allocated with name '___configurePins_pinDefinition_40001_114'
                                    979 ;------------------------------------------------------------
                                    980 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:101: static void __configurePins(uint8_t pinSwitch, GpioPinMode outputPinMode) {
                                    981 ;	-----------------------------------------
                                    982 ;	 function __configurePins
                                    983 ;	-----------------------------------------
      000246                        984 ___configurePins:
                           000007   985 	ar7 = 0x07
                           000006   986 	ar6 = 0x06
                           000005   987 	ar5 = 0x05
                           000004   988 	ar4 = 0x04
                           000003   989 	ar3 = 0x03
                           000002   990 	ar2 = 0x02
                           000001   991 	ar1 = 0x01
                           000000   992 	ar0 = 0x00
      000246 E5 82            [12]  993 	mov	a,dpl
      000248 90 00 15         [24]  994 	mov	dptr,#___configurePins_pinSwitch_10000_109
      00024B F0               [24]  995 	movx	@dptr,a
                                    996 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / SPI_ROW_SIZE); i++) {
      00024C 7F 00            [12]  997 	mov	r7,#0x00
      00024E                        998 00105$:
      00024E BF 03 00         [24]  999 	cjne	r7,#0x03,00127$
      000251                       1000 00127$:
      000251 40 01            [24] 1001 	jc	00128$
      000253 22               [24] 1002 	ret
      000254                       1003 00128$:
                                   1004 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:103: if (__pinConfigurations[i][SPI_PIN_SWITCH] == pinSwitch) {
      000254 EF               [12] 1005 	mov	a,r7
      000255 75 F0 05         [24] 1006 	mov	b,#0x05
      000258 A4               [48] 1007 	mul	ab
      000259 FD               [12] 1008 	mov	r5,a
      00025A AE F0            [24] 1009 	mov	r6,b
      00025C 24 C0            [12] 1010 	add	a, #___pinConfigurations
      00025E F5 82            [12] 1011 	mov	dpl,a
      000260 EE               [12] 1012 	mov	a,r6
      000261 34 3A            [12] 1013 	addc	a, #(___pinConfigurations >> 8)
      000263 F5 83            [12] 1014 	mov	dph,a
      000265 E4               [12] 1015 	clr	a
      000266 93               [24] 1016 	movc	a,@a+dptr
      000267 FC               [12] 1017 	mov	r4,a
      000268 90 00 15         [24] 1018 	mov	dptr,#___configurePins_pinSwitch_10000_109
      00026B E0               [24] 1019 	movx	a,@dptr
      00026C FB               [12] 1020 	mov	r3,a
      00026D EC               [12] 1021 	mov	a,r4
      00026E B5 03 02         [24] 1022 	cjne	a,ar3,00129$
      000271 80 03            [24] 1023 	sjmp	00130$
      000273                       1024 00129$:
      000273 02 03 4A         [24] 1025 	ljmp	00106$
      000276                       1026 00130$:
                                   1027 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:104: P_SW1 = (P_SW1 & ~M_SPI_S) | ((pinSwitch << P_SPI_S) & M_SPI_S);
      000276 74 F3            [12] 1028 	mov	a,#0xf3
      000278 55 A2            [12] 1029 	anl	a,_P_SW1
      00027A FC               [12] 1030 	mov	r4,a
      00027B EB               [12] 1031 	mov	a,r3
      00027C 2B               [12] 1032 	add	a,r3
      00027D 25 E0            [12] 1033 	add	a,acc
      00027F FB               [12] 1034 	mov	r3,a
      000280 74 0C            [12] 1035 	mov	a,#0x0c
      000282 5B               [12] 1036 	anl	a,r3
      000283 4C               [12] 1037 	orl	a,r4
      000284 F5 A2            [12] 1038 	mov	_P_SW1,a
                                   1039 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:106: GpioConfig pinConfig = GPIO_PIN_CONFIG(GPIO_PORT3, GPIO_PIN0, outputPinMode);
      000286 90 00 16         [24] 1040 	mov	dptr,#___configurePins_pinConfig_40001_114
      000289 74 03            [12] 1041 	mov	a,#0x03
      00028B F0               [24] 1042 	movx	@dptr,a
      00028C 90 00 17         [24] 1043 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
      00028F E4               [12] 1044 	clr	a
      000290 F0               [24] 1045 	movx	@dptr,a
      000291 90 00 18         [24] 1046 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0002)
      000294 04               [12] 1047 	inc	a
      000295 F0               [24] 1048 	movx	@dptr,a
      000296 90 00 14         [24] 1049 	mov	dptr,#___configurePins_PARM_2
      000299 E0               [24] 1050 	movx	a,@dptr
      00029A 90 00 19         [24] 1051 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0003)
      00029D F0               [24] 1052 	movx	@dptr,a
      00029E 90 00 1A         [24] 1053 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0004)
      0002A1 E4               [12] 1054 	clr	a
      0002A2 F0               [24] 1055 	movx	@dptr,a
      0002A3 90 00 1B         [24] 1056 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0005)
      0002A6 F0               [24] 1057 	movx	@dptr,a
      0002A7 90 00 1C         [24] 1058 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0006)
      0002AA 74 03            [12] 1059 	mov	a,#0x03
      0002AC F0               [24] 1060 	movx	@dptr,a
      0002AD 90 00 1D         [24] 1061 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0007)
      0002B0 74 01            [12] 1062 	mov	a,#0x01
      0002B2 F0               [24] 1063 	movx	@dptr,a
      0002B3 90 00 1E         [24] 1064 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0008)
      0002B6 E4               [12] 1065 	clr	a
      0002B7 F0               [24] 1066 	movx	@dptr,a
      0002B8 90 00 1F         [24] 1067 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0009)
      0002BB F0               [24] 1068 	movx	@dptr,a
      0002BC 90 00 20         [24] 1069 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x000a)
      0002BF F0               [24] 1070 	movx	@dptr,a
      0002C0 90 00 21         [24] 1071 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x000b)
      0002C3 F0               [24] 1072 	movx	@dptr,a
      0002C4 90 00 22         [24] 1073 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x000c)
      0002C7 F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:111: pinDefinition = __pinConfigurations[i][SPI_MOSI_PIN];
      0002C8 ED               [12] 1076 	mov	a,r5
      0002C9 24 C0            [12] 1077 	add	a, #___pinConfigurations
      0002CB FD               [12] 1078 	mov	r5,a
      0002CC EE               [12] 1079 	mov	a,r6
      0002CD 34 3A            [12] 1080 	addc	a, #(___pinConfigurations >> 8)
      0002CF FE               [12] 1081 	mov	r6,a
      0002D0 8D 82            [24] 1082 	mov	dpl,r5
      0002D2 8E 83            [24] 1083 	mov	dph,r6
      0002D4 A3               [24] 1084 	inc	dptr
      0002D5 A3               [24] 1085 	inc	dptr
      0002D6 E4               [12] 1086 	clr	a
      0002D7 93               [24] 1087 	movc	a,@a+dptr
                                   1088 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:112: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      0002D8 FC               [12] 1089 	mov	r4,a
      0002D9 C4               [12] 1090 	swap	a
      0002DA 54 0F            [12] 1091 	anl	a,#0x0f
      0002DC 90 00 16         [24] 1092 	mov	dptr,#___configurePins_pinConfig_40001_114
      0002DF F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:113: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      0002E0 53 04 0F         [24] 1095 	anl	ar4,#0x0f
      0002E3 90 00 17         [24] 1096 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
      0002E6 EC               [12] 1097 	mov	a,r4
      0002E7 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:114: gpioConfigure(&pinConfig);
      0002E8 90 00 16         [24] 1100 	mov	dptr,#___configurePins_pinConfig_40001_114
      0002EB 75 F0 00         [24] 1101 	mov	b, #0x00
      0002EE C0 06            [24] 1102 	push	ar6
      0002F0 C0 05            [24] 1103 	push	ar5
      0002F2 12 0F 41         [24] 1104 	lcall	_gpioConfigure
      0002F5 D0 05            [24] 1105 	pop	ar5
      0002F7 D0 06            [24] 1106 	pop	ar6
                                   1107 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:116: pinDefinition = __pinConfigurations[i][SPI_SCLK_PIN];
      0002F9 8D 82            [24] 1108 	mov	dpl,r5
      0002FB 8E 83            [24] 1109 	mov	dph,r6
      0002FD A3               [24] 1110 	inc	dptr
      0002FE A3               [24] 1111 	inc	dptr
      0002FF A3               [24] 1112 	inc	dptr
      000300 A3               [24] 1113 	inc	dptr
      000301 E4               [12] 1114 	clr	a
      000302 93               [24] 1115 	movc	a,@a+dptr
                                   1116 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:117: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      000303 FC               [12] 1117 	mov	r4,a
      000304 C4               [12] 1118 	swap	a
      000305 54 0F            [12] 1119 	anl	a,#0x0f
      000307 90 00 16         [24] 1120 	mov	dptr,#___configurePins_pinConfig_40001_114
      00030A F0               [24] 1121 	movx	@dptr,a
                                   1122 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:118: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      00030B 53 04 0F         [24] 1123 	anl	ar4,#0x0f
      00030E 90 00 17         [24] 1124 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
      000311 EC               [12] 1125 	mov	a,r4
      000312 F0               [24] 1126 	movx	@dptr,a
                                   1127 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:119: gpioConfigure(&pinConfig);
      000313 90 00 16         [24] 1128 	mov	dptr,#___configurePins_pinConfig_40001_114
      000316 75 F0 00         [24] 1129 	mov	b, #0x00
      000319 C0 06            [24] 1130 	push	ar6
      00031B C0 05            [24] 1131 	push	ar5
      00031D 12 0F 41         [24] 1132 	lcall	_gpioConfigure
      000320 D0 05            [24] 1133 	pop	ar5
      000322 D0 06            [24] 1134 	pop	ar6
                                   1135 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:122: pinConfig.pinMode = GPIO_BIDIRECTIONAL_MODE;
      000324 90 00 19         [24] 1136 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0003)
      000327 E4               [12] 1137 	clr	a
      000328 F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:124: pinDefinition = __pinConfigurations[i][SPI_MISO_PIN];
      000329 8D 82            [24] 1140 	mov	dpl,r5
      00032B 8E 83            [24] 1141 	mov	dph,r6
      00032D A3               [24] 1142 	inc	dptr
      00032E A3               [24] 1143 	inc	dptr
      00032F A3               [24] 1144 	inc	dptr
      000330 93               [24] 1145 	movc	a,@a+dptr
                                   1146 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:125: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      000331 FE               [12] 1147 	mov	r6,a
      000332 C4               [12] 1148 	swap	a
      000333 54 0F            [12] 1149 	anl	a,#0x0f
      000335 90 00 16         [24] 1150 	mov	dptr,#___configurePins_pinConfig_40001_114
      000338 F0               [24] 1151 	movx	@dptr,a
                                   1152 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:126: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      000339 53 06 0F         [24] 1153 	anl	ar6,#0x0f
      00033C 90 00 17         [24] 1154 	mov	dptr,#(___configurePins_pinConfig_40001_114 + 0x0001)
      00033F EE               [12] 1155 	mov	a,r6
      000340 F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:127: gpioConfigure(&pinConfig);
      000341 90 00 16         [24] 1158 	mov	dptr,#___configurePins_pinConfig_40001_114
      000344 75 F0 00         [24] 1159 	mov	b, #0x00
                                   1160 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:153: break;
      000347 02 0F 41         [24] 1161 	ljmp	_gpioConfigure
      00034A                       1162 00106$:
                                   1163 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:102: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / SPI_ROW_SIZE); i++) {
      00034A 0F               [12] 1164 	inc	r7
                                   1165 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:156: }
      00034B 02 02 4E         [24] 1166 	ljmp	00105$
                                   1167 ;------------------------------------------------------------
                                   1168 ;Allocation info for local variables in function 'spiSelectSpeed'
                                   1169 ;------------------------------------------------------------
                                   1170 ;maxDeviceRate             Allocated with name '_spiSelectSpeed_maxDeviceRate_10000_115'
                                   1171 ;divisor                   Allocated with name '_spiSelectSpeed_divisor_10000_116'
                                   1172 ;pot                       Allocated with name '_spiSelectSpeed_pot_10001_118'
                                   1173 ;n                         Allocated with name '_spiSelectSpeed_n_20001_119'
                                   1174 ;result                    Allocated with name '_spiSelectSpeed_result_10002_121'
                                   1175 ;------------------------------------------------------------
                                   1176 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:165: SpiSpeed spiSelectSpeed(uint32_t maxDeviceRate) {
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function spiSelectSpeed
                                   1179 ;	-----------------------------------------
      00034E                       1180 _spiSelectSpeed:
      00034E AF 82            [24] 1181 	mov	r7,dpl
      000350 AE 83            [24] 1182 	mov	r6,dph
      000352 AD F0            [24] 1183 	mov	r5,b
      000354 FC               [12] 1184 	mov	r4,a
      000355 90 00 23         [24] 1185 	mov	dptr,#_spiSelectSpeed_maxDeviceRate_10000_115
      000358 EF               [12] 1186 	mov	a,r7
      000359 F0               [24] 1187 	movx	@dptr,a
      00035A EE               [12] 1188 	mov	a,r6
      00035B A3               [24] 1189 	inc	dptr
      00035C F0               [24] 1190 	movx	@dptr,a
      00035D ED               [12] 1191 	mov	a,r5
      00035E A3               [24] 1192 	inc	dptr
      00035F F0               [24] 1193 	movx	@dptr,a
      000360 EC               [12] 1194 	mov	a,r4
      000361 A3               [24] 1195 	inc	dptr
      000362 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:166: uint16_t divisor = (uint16_t) (MCU_FREQ / maxDeviceRate);
      000363 90 00 23         [24] 1198 	mov	dptr,#_spiSelectSpeed_maxDeviceRate_10000_115
      000366 E0               [24] 1199 	movx	a,@dptr
      000367 FC               [12] 1200 	mov	r4,a
      000368 A3               [24] 1201 	inc	dptr
      000369 E0               [24] 1202 	movx	a,@dptr
      00036A FD               [12] 1203 	mov	r5,a
      00036B A3               [24] 1204 	inc	dptr
      00036C E0               [24] 1205 	movx	a,@dptr
      00036D FE               [12] 1206 	mov	r6,a
      00036E A3               [24] 1207 	inc	dptr
      00036F E0               [24] 1208 	movx	a,@dptr
      000370 FF               [12] 1209 	mov	r7,a
      000371 90 01 00         [24] 1210 	mov	dptr,#__divulong_PARM_2
      000374 EC               [12] 1211 	mov	a,r4
      000375 F0               [24] 1212 	movx	@dptr,a
      000376 ED               [12] 1213 	mov	a,r5
      000377 A3               [24] 1214 	inc	dptr
      000378 F0               [24] 1215 	movx	@dptr,a
      000379 EE               [12] 1216 	mov	a,r6
      00037A A3               [24] 1217 	inc	dptr
      00037B F0               [24] 1218 	movx	@dptr,a
      00037C EF               [12] 1219 	mov	a,r7
      00037D A3               [24] 1220 	inc	dptr
      00037E F0               [24] 1221 	movx	@dptr,a
      00037F 90 0E C0         [24] 1222 	mov	dptr,#0x0ec0
      000382 75 F0 16         [24] 1223 	mov	b, #0x16
      000385 74 02            [12] 1224 	mov	a, #0x02
      000387 C0 07            [24] 1225 	push	ar7
      000389 C0 06            [24] 1226 	push	ar6
      00038B C0 05            [24] 1227 	push	ar5
      00038D C0 04            [24] 1228 	push	ar4
      00038F 12 2E D9         [24] 1229 	lcall	__divulong
      000392 A8 82            [24] 1230 	mov	r0, dpl
      000394 A9 83            [24] 1231 	mov	r1, dph
      000396 D0 04            [24] 1232 	pop	ar4
      000398 D0 05            [24] 1233 	pop	ar5
      00039A D0 06            [24] 1234 	pop	ar6
      00039C D0 07            [24] 1235 	pop	ar7
      00039E 90 00 27         [24] 1236 	mov	dptr,#_spiSelectSpeed_divisor_10000_116
      0003A1 E8               [12] 1237 	mov	a,r0
      0003A2 F0               [24] 1238 	movx	@dptr,a
      0003A3 E9               [12] 1239 	mov	a,r1
      0003A4 A3               [24] 1240 	inc	dptr
      0003A5 F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:168: if (MCU_FREQ % maxDeviceRate) {
      0003A6 90 00 F7         [24] 1243 	mov	dptr,#__modulong_PARM_2
      0003A9 EC               [12] 1244 	mov	a,r4
      0003AA F0               [24] 1245 	movx	@dptr,a
      0003AB ED               [12] 1246 	mov	a,r5
      0003AC A3               [24] 1247 	inc	dptr
      0003AD F0               [24] 1248 	movx	@dptr,a
      0003AE EE               [12] 1249 	mov	a,r6
      0003AF A3               [24] 1250 	inc	dptr
      0003B0 F0               [24] 1251 	movx	@dptr,a
      0003B1 EF               [12] 1252 	mov	a,r7
      0003B2 A3               [24] 1253 	inc	dptr
      0003B3 F0               [24] 1254 	movx	@dptr,a
      0003B4 90 0E C0         [24] 1255 	mov	dptr,#0x0ec0
      0003B7 75 F0 16         [24] 1256 	mov	b, #0x16
      0003BA 74 02            [12] 1257 	mov	a, #0x02
      0003BC C0 01            [24] 1258 	push	ar1
      0003BE C0 00            [24] 1259 	push	ar0
      0003C0 12 2D 9A         [24] 1260 	lcall	__modulong
      0003C3 AC 82            [24] 1261 	mov	r4, dpl
      0003C5 AD 83            [24] 1262 	mov	r5, dph
      0003C7 AE F0            [24] 1263 	mov	r6, b
      0003C9 FF               [12] 1264 	mov	r7, a
      0003CA D0 00            [24] 1265 	pop	ar0
      0003CC D0 01            [24] 1266 	pop	ar1
      0003CE EC               [12] 1267 	mov	a,r4
      0003CF 4D               [12] 1268 	orl	a,r5
      0003D0 4E               [12] 1269 	orl	a,r6
      0003D1 4F               [12] 1270 	orl	a,r7
      0003D2 60 0B            [24] 1271 	jz	00102$
                                   1272 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:169: divisor++;
      0003D4 90 00 27         [24] 1273 	mov	dptr,#_spiSelectSpeed_divisor_10000_116
      0003D7 74 01            [12] 1274 	mov	a,#0x01
      0003D9 28               [12] 1275 	add	a, r0
      0003DA F0               [24] 1276 	movx	@dptr,a
      0003DB E4               [12] 1277 	clr	a
      0003DC 39               [12] 1278 	addc	a, r1
      0003DD A3               [24] 1279 	inc	dptr
      0003DE F0               [24] 1280 	movx	@dptr,a
      0003DF                       1281 00102$:
                                   1282 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:176: for (uint16_t n = divisor; n > 1; n = n >> 1, pot++);
      0003DF 90 00 27         [24] 1283 	mov	dptr,#_spiSelectSpeed_divisor_10000_116
      0003E2 E0               [24] 1284 	movx	a,@dptr
      0003E3 FE               [12] 1285 	mov	r6,a
      0003E4 A3               [24] 1286 	inc	dptr
      0003E5 E0               [24] 1287 	movx	a,@dptr
      0003E6 FF               [12] 1288 	mov	r7,a
      0003E7 90 00 2A         [24] 1289 	mov	dptr,#_spiSelectSpeed_n_20001_119
      0003EA EE               [12] 1290 	mov	a,r6
      0003EB F0               [24] 1291 	movx	@dptr,a
      0003EC EF               [12] 1292 	mov	a,r7
      0003ED A3               [24] 1293 	inc	dptr
      0003EE F0               [24] 1294 	movx	@dptr,a
      0003EF 7D 00            [12] 1295 	mov	r5,#0x00
      0003F1                       1296 00116$:
      0003F1 90 00 2A         [24] 1297 	mov	dptr,#_spiSelectSpeed_n_20001_119
      0003F4 E0               [24] 1298 	movx	a,@dptr
      0003F5 FB               [12] 1299 	mov	r3,a
      0003F6 A3               [24] 1300 	inc	dptr
      0003F7 E0               [24] 1301 	movx	a,@dptr
      0003F8 FC               [12] 1302 	mov	r4,a
      0003F9 8B 01            [24] 1303 	mov	ar1,r3
      0003FB 8C 02            [24] 1304 	mov	ar2,r4
      0003FD C3               [12] 1305 	clr	c
      0003FE 74 01            [12] 1306 	mov	a,#0x01
      000400 99               [12] 1307 	subb	a,r1
      000401 E4               [12] 1308 	clr	a
      000402 9A               [12] 1309 	subb	a,r2
      000403 50 12            [24] 1310 	jnc	00128$
      000405 EC               [12] 1311 	mov	a,r4
      000406 C3               [12] 1312 	clr	c
      000407 13               [12] 1313 	rrc	a
      000408 CB               [12] 1314 	xch	a,r3
      000409 13               [12] 1315 	rrc	a
      00040A CB               [12] 1316 	xch	a,r3
      00040B FC               [12] 1317 	mov	r4,a
      00040C 90 00 2A         [24] 1318 	mov	dptr,#_spiSelectSpeed_n_20001_119
      00040F EB               [12] 1319 	mov	a,r3
      000410 F0               [24] 1320 	movx	@dptr,a
      000411 EC               [12] 1321 	mov	a,r4
      000412 A3               [24] 1322 	inc	dptr
      000413 F0               [24] 1323 	movx	@dptr,a
      000414 0D               [12] 1324 	inc	r5
      000415 80 DA            [24] 1325 	sjmp	00116$
      000417                       1326 00128$:
      000417 90 00 29         [24] 1327 	mov	dptr,#_spiSelectSpeed_pot_10001_118
      00041A ED               [12] 1328 	mov	a,r5
      00041B F0               [24] 1329 	movx	@dptr,a
                                   1330 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:178: if (divisor > (1 << pot)) {
      00041C 8D F0            [24] 1331 	mov	b,r5
      00041E 05 F0            [12] 1332 	inc	b
      000420 7B 01            [12] 1333 	mov	r3,#0x01
      000422 7C 00            [12] 1334 	mov	r4,#0x00
      000424 80 06            [24] 1335 	sjmp	00172$
      000426                       1336 00171$:
      000426 EB               [12] 1337 	mov	a,r3
      000427 2B               [12] 1338 	add	a,r3
      000428 FB               [12] 1339 	mov	r3,a
      000429 EC               [12] 1340 	mov	a,r4
      00042A 33               [12] 1341 	rlc	a
      00042B FC               [12] 1342 	mov	r4,a
      00042C                       1343 00172$:
      00042C D5 F0 F7         [24] 1344 	djnz	b,00171$
      00042F C3               [12] 1345 	clr	c
      000430 EB               [12] 1346 	mov	a,r3
      000431 9E               [12] 1347 	subb	a,r6
      000432 EC               [12] 1348 	mov	a,r4
      000433 9F               [12] 1349 	subb	a,r7
      000434 50 06            [24] 1350 	jnc	00105$
                                   1351 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:179: pot++;
      000436 90 00 29         [24] 1352 	mov	dptr,#_spiSelectSpeed_pot_10001_118
      000439 ED               [12] 1353 	mov	a,r5
      00043A 04               [12] 1354 	inc	a
      00043B F0               [24] 1355 	movx	@dptr,a
      00043C                       1356 00105$:
                                   1357 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:183: SpiSpeed result = SPI_SYSCLK_DIV_4;
      00043C 90 00 2C         [24] 1358 	mov	dptr,#_spiSelectSpeed_result_10002_121
      00043F E4               [12] 1359 	clr	a
      000440 F0               [24] 1360 	movx	@dptr,a
                                   1361 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:198: if (pot > 2 && pot <= 3) {
      000441 90 00 29         [24] 1362 	mov	dptr,#_spiSelectSpeed_pot_10001_118
      000444 E0               [24] 1363 	movx	a,@dptr
      000445 FF               [12] 1364 	mov  r7,a
      000446 24 FD            [12] 1365 	add	a,#0xff - 0x02
      000448 50 0D            [24] 1366 	jnc	00112$
      00044A EF               [12] 1367 	mov	a,r7
      00044B 24 FC            [12] 1368 	add	a,#0xff - 0x03
      00044D 40 08            [24] 1369 	jc	00112$
                                   1370 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:199: result = SPI_SYSCLK_DIV_8;
      00044F 90 00 2C         [24] 1371 	mov	dptr,#_spiSelectSpeed_result_10002_121
      000452 74 01            [12] 1372 	mov	a,#0x01
      000454 F0               [24] 1373 	movx	@dptr,a
      000455 80 1D            [24] 1374 	sjmp	00113$
      000457                       1375 00112$:
                                   1376 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:200: } else if (pot < 2) {
      000457 90 00 29         [24] 1377 	mov	dptr,#_spiSelectSpeed_pot_10001_118
      00045A E0               [24] 1378 	movx	a,@dptr
      00045B FF               [12] 1379 	mov	r7,a
      00045C BF 02 00         [24] 1380 	cjne	r7,#0x02,00176$
      00045F                       1381 00176$:
      00045F 50 08            [24] 1382 	jnc	00109$
                                   1383 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:201: result = SPI_SYSCLK_DIV_2;
      000461 90 00 2C         [24] 1384 	mov	dptr,#_spiSelectSpeed_result_10002_121
      000464 74 03            [12] 1385 	mov	a,#0x03
      000466 F0               [24] 1386 	movx	@dptr,a
      000467 80 0B            [24] 1387 	sjmp	00113$
      000469                       1388 00109$:
                                   1389 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:202: } else if (pot > 3) {
      000469 EF               [12] 1390 	mov	a,r7
      00046A 24 FC            [12] 1391 	add	a,#0xff - 0x03
      00046C 50 06            [24] 1392 	jnc	00113$
                                   1393 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:203: result = SPI_SYSCLK_DIV_16;
      00046E 90 00 2C         [24] 1394 	mov	dptr,#_spiSelectSpeed_result_10002_121
      000471 74 02            [12] 1395 	mov	a,#0x02
      000473 F0               [24] 1396 	movx	@dptr,a
      000474                       1397 00113$:
                                   1398 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:217: return result;
      000474 90 00 2C         [24] 1399 	mov	dptr,#_spiSelectSpeed_result_10002_121
      000477 E0               [24] 1400 	movx	a,@dptr
                                   1401 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:218: }
      000478 F5 82            [12] 1402 	mov	dpl,a
      00047A 22               [24] 1403 	ret
                                   1404 ;------------------------------------------------------------
                                   1405 ;Allocation info for local variables in function 'spiConfigure'
                                   1406 ;------------------------------------------------------------
                                   1407 ;mode                      Allocated with name '_spiConfigure_PARM_2'
                                   1408 ;speed                     Allocated with name '_spiConfigure_PARM_3'
                                   1409 ;pinSwitch                 Allocated with name '_spiConfigure_PARM_4'
                                   1410 ;outputPinMode             Allocated with name '_spiConfigure_PARM_5'
                                   1411 ;bitOrder                  Allocated with name '_spiConfigure_bitOrder_10000_125'
                                   1412 ;------------------------------------------------------------
                                   1413 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:220: void spiConfigure(SpiBitOrder bitOrder, SpiMode mode, SpiSpeed speed, uint8_t pinSwitch, GpioPinMode outputPinMode) {
                                   1414 ;	-----------------------------------------
                                   1415 ;	 function spiConfigure
                                   1416 ;	-----------------------------------------
      00047B                       1417 _spiConfigure:
      00047B E5 82            [12] 1418 	mov	a,dpl
      00047D 90 00 31         [24] 1419 	mov	dptr,#_spiConfigure_bitOrder_10000_125
      000480 F0               [24] 1420 	movx	@dptr,a
                                   1421 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:221: __configurePins(pinSwitch, outputPinMode);
      000481 90 00 2F         [24] 1422 	mov	dptr,#_spiConfigure_PARM_4
      000484 E0               [24] 1423 	movx	a,@dptr
      000485 FF               [12] 1424 	mov	r7,a
      000486 90 00 30         [24] 1425 	mov	dptr,#_spiConfigure_PARM_5
      000489 E0               [24] 1426 	movx	a,@dptr
      00048A 90 00 14         [24] 1427 	mov	dptr,#___configurePins_PARM_2
      00048D F0               [24] 1428 	movx	@dptr,a
      00048E 8F 82            [24] 1429 	mov	dpl, r7
      000490 12 02 46         [24] 1430 	lcall	___configurePins
                                   1431 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:222: SPCTL = bitOrder | mode | speed |
      000493 90 00 31         [24] 1432 	mov	dptr,#_spiConfigure_bitOrder_10000_125
      000496 E0               [24] 1433 	movx	a,@dptr
      000497 FF               [12] 1434 	mov	r7,a
      000498 90 00 2D         [24] 1435 	mov	dptr,#_spiConfigure_PARM_2
      00049B E0               [24] 1436 	movx	a,@dptr
      00049C 42 07            [12] 1437 	orl	ar7,a
      00049E 90 00 2E         [24] 1438 	mov	dptr,#_spiConfigure_PARM_3
      0004A1 E0               [24] 1439 	movx	a,@dptr
      0004A2 4F               [12] 1440 	orl	a,r7
      0004A3 44 D0            [12] 1441 	orl	a,#0xd0
      0004A5 F5 CE            [12] 1442 	mov	_SPCTL,a
                                   1443 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:228: IE2 = IE2 | M_SPIEN;
      0004A7 43 AF 02         [24] 1444 	orl	_IE2,#0x02
                                   1445 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:229: }
      0004AA 22               [24] 1446 	ret
                                   1447 ;------------------------------------------------------------
                                   1448 ;Allocation info for local variables in function 'spiSend'
                                   1449 ;------------------------------------------------------------
                                   1450 ;bufferSize                Allocated with name '_spiSend_PARM_2'
                                   1451 ;readyFlag                 Allocated with name '_spiSend_PARM_3'
                                   1452 ;buffer                    Allocated with name '_spiSend_buffer_10000_127'
                                   1453 ;------------------------------------------------------------
                                   1454 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:231: void spiSend(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
                                   1455 ;	-----------------------------------------
                                   1456 ;	 function spiSend
                                   1457 ;	-----------------------------------------
      0004AB                       1458 _spiSend:
      0004AB AF F0            [24] 1459 	mov	r7,b
      0004AD AE 83            [24] 1460 	mov	r6,dph
      0004AF E5 82            [12] 1461 	mov	a,dpl
      0004B1 90 00 37         [24] 1462 	mov	dptr,#_spiSend_buffer_10000_127
      0004B4 F0               [24] 1463 	movx	@dptr,a
      0004B5 EE               [12] 1464 	mov	a,r6
      0004B6 A3               [24] 1465 	inc	dptr
      0004B7 F0               [24] 1466 	movx	@dptr,a
      0004B8 EF               [12] 1467 	mov	a,r7
      0004B9 A3               [24] 1468 	inc	dptr
      0004BA F0               [24] 1469 	movx	@dptr,a
                                   1470 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:232: __spiState.buffer = buffer;
      0004BB 90 00 37         [24] 1471 	mov	dptr,#_spiSend_buffer_10000_127
      0004BE E0               [24] 1472 	movx	a,@dptr
      0004BF FD               [12] 1473 	mov	r5,a
      0004C0 A3               [24] 1474 	inc	dptr
      0004C1 E0               [24] 1475 	movx	a,@dptr
      0004C2 FE               [12] 1476 	mov	r6,a
      0004C3 A3               [24] 1477 	inc	dptr
      0004C4 E0               [24] 1478 	movx	a,@dptr
      0004C5 FF               [12] 1479 	mov	r7,a
      0004C6 78 30            [12] 1480 	mov	r0,#___spiState
      0004C8 A6 05            [24] 1481 	mov	@r0,ar5
      0004CA 08               [12] 1482 	inc	r0
      0004CB A6 06            [24] 1483 	mov	@r0,ar6
      0004CD 08               [12] 1484 	inc	r0
      0004CE A6 07            [24] 1485 	mov	@r0,ar7
                                   1486 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:233: __spiState.bufferSize = bufferSize;
      0004D0 90 00 32         [24] 1487 	mov	dptr,#_spiSend_PARM_2
      0004D3 E0               [24] 1488 	movx	a,@dptr
      0004D4 FE               [12] 1489 	mov	r6,a
      0004D5 A3               [24] 1490 	inc	dptr
      0004D6 E0               [24] 1491 	movx	a,@dptr
      0004D7 FF               [12] 1492 	mov	r7,a
      0004D8 78 35            [12] 1493 	mov	r0,#(___spiState + 0x0005)
      0004DA A6 06            [24] 1494 	mov	@r0,ar6
      0004DC 08               [12] 1495 	inc	r0
      0004DD A6 07            [24] 1496 	mov	@r0,ar7
                                   1497 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:234: __spiState.readyFlag = readyFlag;
      0004DF 90 00 34         [24] 1498 	mov	dptr,#_spiSend_PARM_3
      0004E2 E0               [24] 1499 	movx	a,@dptr
      0004E3 FD               [12] 1500 	mov	r5,a
      0004E4 A3               [24] 1501 	inc	dptr
      0004E5 E0               [24] 1502 	movx	a,@dptr
      0004E6 FE               [12] 1503 	mov	r6,a
      0004E7 A3               [24] 1504 	inc	dptr
      0004E8 E0               [24] 1505 	movx	a,@dptr
      0004E9 FF               [12] 1506 	mov	r7,a
      0004EA 78 37            [12] 1507 	mov	r0,#(___spiState + 0x0007)
      0004EC A6 05            [24] 1508 	mov	@r0,ar5
      0004EE 08               [12] 1509 	inc	r0
      0004EF A6 06            [24] 1510 	mov	@r0,ar6
      0004F1 08               [12] 1511 	inc	r0
      0004F2 A6 07            [24] 1512 	mov	@r0,ar7
                                   1513 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:235: *__spiState.readyFlag = false;
      0004F4 8D 82            [24] 1514 	mov	dpl,r5
      0004F6 8E 83            [24] 1515 	mov	dph,r6
      0004F8 8F F0            [24] 1516 	mov	b,r7
      0004FA E4               [12] 1517 	clr	a
      0004FB 12 2F F5         [24] 1518 	lcall	__gptrput
                                   1519 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:236: __spiState.index = 0;
      0004FE 78 33            [12] 1520 	mov	r0,#(___spiState + 0x0003)
      000500 76 00            [12] 1521 	mov	@r0,#0x00
      000502 08               [12] 1522 	inc	r0
      000503 76 00            [12] 1523 	mov	@r0,#0x00
                                   1524 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:239: SPDAT = __spiState.buffer[__spiState.index];
      000505 78 30            [12] 1525 	mov	r0,#___spiState
      000507 86 05            [24] 1526 	mov	ar5,@r0
      000509 08               [12] 1527 	inc	r0
      00050A 86 06            [24] 1528 	mov	ar6,@r0
      00050C 08               [12] 1529 	inc	r0
      00050D 86 07            [24] 1530 	mov	ar7,@r0
      00050F 78 33            [12] 1531 	mov	r0,#(___spiState + 0x0003)
      000511 86 03            [24] 1532 	mov	ar3,@r0
      000513 08               [12] 1533 	inc	r0
      000514 86 04            [24] 1534 	mov	ar4,@r0
      000516 EB               [12] 1535 	mov	a,r3
      000517 2D               [12] 1536 	add	a, r5
      000518 FD               [12] 1537 	mov	r5,a
      000519 EC               [12] 1538 	mov	a,r4
      00051A 3E               [12] 1539 	addc	a, r6
      00051B FE               [12] 1540 	mov	r6,a
      00051C 8D 82            [24] 1541 	mov	dpl,r5
      00051E 8E 83            [24] 1542 	mov	dph,r6
      000520 8F F0            [24] 1543 	mov	b,r7
      000522 12 3A A0         [24] 1544 	lcall	__gptrget
      000525 F5 CF            [12] 1545 	mov	_SPDAT,a
                                   1546 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:241: }
      000527 22               [24] 1547 	ret
                                   1548 ;------------------------------------------------------------
                                   1549 ;Allocation info for local variables in function 'spiReceive'
                                   1550 ;------------------------------------------------------------
                                   1551 ;bufferSize                Allocated with name '_spiReceive_PARM_2'
                                   1552 ;readyFlag                 Allocated with name '_spiReceive_PARM_3'
                                   1553 ;buffer                    Allocated with name '_spiReceive_buffer_10000_129'
                                   1554 ;------------------------------------------------------------
                                   1555 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:243: void spiReceive(uint8_t *buffer, size_t bufferSize, bool *readyFlag) {
                                   1556 ;	-----------------------------------------
                                   1557 ;	 function spiReceive
                                   1558 ;	-----------------------------------------
      000528                       1559 _spiReceive:
      000528 AF F0            [24] 1560 	mov	r7,b
      00052A AE 83            [24] 1561 	mov	r6,dph
      00052C E5 82            [12] 1562 	mov	a,dpl
      00052E 90 00 3F         [24] 1563 	mov	dptr,#_spiReceive_buffer_10000_129
      000531 F0               [24] 1564 	movx	@dptr,a
      000532 EE               [12] 1565 	mov	a,r6
      000533 A3               [24] 1566 	inc	dptr
      000534 F0               [24] 1567 	movx	@dptr,a
      000535 EF               [12] 1568 	mov	a,r7
      000536 A3               [24] 1569 	inc	dptr
      000537 F0               [24] 1570 	movx	@dptr,a
                                   1571 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:244: memset(buffer, 0, bufferSize);
      000538 90 00 3F         [24] 1572 	mov	dptr,#_spiReceive_buffer_10000_129
      00053B E0               [24] 1573 	movx	a,@dptr
      00053C FD               [12] 1574 	mov	r5,a
      00053D A3               [24] 1575 	inc	dptr
      00053E E0               [24] 1576 	movx	a,@dptr
      00053F FE               [12] 1577 	mov	r6,a
      000540 A3               [24] 1578 	inc	dptr
      000541 E0               [24] 1579 	movx	a,@dptr
      000542 FF               [12] 1580 	mov	r7,a
      000543 8D 02            [24] 1581 	mov	ar2,r5
      000545 8E 03            [24] 1582 	mov	ar3,r6
      000547 8F 04            [24] 1583 	mov	ar4,r7
      000549 90 00 3A         [24] 1584 	mov	dptr,#_spiReceive_PARM_2
      00054C E0               [24] 1585 	movx	a,@dptr
      00054D F8               [12] 1586 	mov	r0,a
      00054E A3               [24] 1587 	inc	dptr
      00054F E0               [24] 1588 	movx	a,@dptr
      000550 F9               [12] 1589 	mov	r1,a
      000551 90 01 0D         [24] 1590 	mov	dptr,#_memset_PARM_2
      000554 E4               [12] 1591 	clr	a
      000555 F0               [24] 1592 	movx	@dptr,a
      000556 90 01 0E         [24] 1593 	mov	dptr,#_memset_PARM_3
      000559 E8               [12] 1594 	mov	a,r0
      00055A F0               [24] 1595 	movx	@dptr,a
      00055B E9               [12] 1596 	mov	a,r1
      00055C A3               [24] 1597 	inc	dptr
      00055D F0               [24] 1598 	movx	@dptr,a
      00055E 8A 82            [24] 1599 	mov	dpl, r2
      000560 8B 83            [24] 1600 	mov	dph, r3
      000562 8C F0            [24] 1601 	mov	b, r4
      000564 C0 07            [24] 1602 	push	ar7
      000566 C0 06            [24] 1603 	push	ar6
      000568 C0 05            [24] 1604 	push	ar5
      00056A C0 01            [24] 1605 	push	ar1
      00056C C0 00            [24] 1606 	push	ar0
      00056E 12 2F CD         [24] 1607 	lcall	_memset
      000571 D0 00            [24] 1608 	pop	ar0
      000573 D0 01            [24] 1609 	pop	ar1
      000575 D0 05            [24] 1610 	pop	ar5
      000577 D0 06            [24] 1611 	pop	ar6
      000579 D0 07            [24] 1612 	pop	ar7
                                   1613 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:245: spiSend(buffer, bufferSize, readyFlag);
      00057B 90 00 3C         [24] 1614 	mov	dptr,#_spiReceive_PARM_3
      00057E E0               [24] 1615 	movx	a,@dptr
      00057F FA               [12] 1616 	mov	r2,a
      000580 A3               [24] 1617 	inc	dptr
      000581 E0               [24] 1618 	movx	a,@dptr
      000582 FB               [12] 1619 	mov	r3,a
      000583 A3               [24] 1620 	inc	dptr
      000584 E0               [24] 1621 	movx	a,@dptr
      000585 FC               [12] 1622 	mov	r4,a
      000586 90 00 32         [24] 1623 	mov	dptr,#_spiSend_PARM_2
      000589 E8               [12] 1624 	mov	a,r0
      00058A F0               [24] 1625 	movx	@dptr,a
      00058B E9               [12] 1626 	mov	a,r1
      00058C A3               [24] 1627 	inc	dptr
      00058D F0               [24] 1628 	movx	@dptr,a
      00058E 90 00 34         [24] 1629 	mov	dptr,#_spiSend_PARM_3
      000591 EA               [12] 1630 	mov	a,r2
      000592 F0               [24] 1631 	movx	@dptr,a
      000593 EB               [12] 1632 	mov	a,r3
      000594 A3               [24] 1633 	inc	dptr
      000595 F0               [24] 1634 	movx	@dptr,a
      000596 EC               [12] 1635 	mov	a,r4
      000597 A3               [24] 1636 	inc	dptr
      000598 F0               [24] 1637 	movx	@dptr,a
      000599 8D 82            [24] 1638 	mov	dpl, r5
      00059B 8E 83            [24] 1639 	mov	dph, r6
      00059D 8F F0            [24] 1640 	mov	b, r7
                                   1641 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:246: }
      00059F 02 04 AB         [24] 1642 	ljmp	_spiSend
                                   1643 ;------------------------------------------------------------
                                   1644 ;Allocation info for local variables in function 'spi_isr'
                                   1645 ;------------------------------------------------------------
                                   1646 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:248: INTERRUPT(spi_isr, SPI_INTERRUPT) {
                                   1647 ;	-----------------------------------------
                                   1648 ;	 function spi_isr
                                   1649 ;	-----------------------------------------
      0005A2                       1650 _spi_isr:
      0005A2 C0 E0            [24] 1651 	push	acc
      0005A4 C0 F0            [24] 1652 	push	b
      0005A6 C0 82            [24] 1653 	push	dpl
      0005A8 C0 83            [24] 1654 	push	dph
      0005AA C0 07            [24] 1655 	push	ar7
      0005AC C0 06            [24] 1656 	push	ar6
      0005AE C0 05            [24] 1657 	push	ar5
      0005B0 C0 04            [24] 1658 	push	ar4
      0005B2 C0 03            [24] 1659 	push	ar3
      0005B4 C0 00            [24] 1660 	push	ar0
      0005B6 C0 D0            [24] 1661 	push	psw
      0005B8 75 D0 00         [24] 1662 	mov	psw,#0x00
                                   1663 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:249: SPSTAT |= M_SPIIF | M_WCOL;
      0005BB 43 CD C0         [24] 1664 	orl	_SPSTAT,#0xc0
                                   1665 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:252: __spiState.buffer[__spiState.index] = SPDAT;
      0005BE 78 30            [12] 1666 	mov	r0,#___spiState
      0005C0 86 05            [24] 1667 	mov	ar5,@r0
      0005C2 08               [12] 1668 	inc	r0
      0005C3 86 06            [24] 1669 	mov	ar6,@r0
      0005C5 08               [12] 1670 	inc	r0
      0005C6 86 07            [24] 1671 	mov	ar7,@r0
      0005C8 78 33            [12] 1672 	mov	r0,#(___spiState + 0x0003)
      0005CA 86 03            [24] 1673 	mov	ar3,@r0
      0005CC 08               [12] 1674 	inc	r0
      0005CD 86 04            [24] 1675 	mov	ar4,@r0
      0005CF EB               [12] 1676 	mov	a,r3
      0005D0 2D               [12] 1677 	add	a, r5
      0005D1 FD               [12] 1678 	mov	r5,a
      0005D2 EC               [12] 1679 	mov	a,r4
      0005D3 3E               [12] 1680 	addc	a, r6
      0005D4 FE               [12] 1681 	mov	r6,a
      0005D5 8D 82            [24] 1682 	mov	dpl,r5
      0005D7 8E 83            [24] 1683 	mov	dph,r6
      0005D9 8F F0            [24] 1684 	mov	b,r7
      0005DB E5 CF            [12] 1685 	mov	a,_SPDAT
      0005DD 12 2F F5         [24] 1686 	lcall	__gptrput
                                   1687 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:253: __spiState.index++;
      0005E0 78 33            [12] 1688 	mov	r0,#(___spiState + 0x0003)
      0005E2 86 06            [24] 1689 	mov	ar6,@r0
      0005E4 08               [12] 1690 	inc	r0
      0005E5 86 07            [24] 1691 	mov	ar7,@r0
      0005E7 0E               [12] 1692 	inc	r6
      0005E8 BE 00 01         [24] 1693 	cjne	r6,#0x00,00112$
      0005EB 0F               [12] 1694 	inc	r7
      0005EC                       1695 00112$:
      0005EC 78 33            [12] 1696 	mov	r0,#(___spiState + 0x0003)
      0005EE A6 06            [24] 1697 	mov	@r0,ar6
      0005F0 08               [12] 1698 	inc	r0
      0005F1 A6 07            [24] 1699 	mov	@r0,ar7
                                   1700 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:255: if (__spiState.index < __spiState.bufferSize) {
      0005F3 78 35            [12] 1701 	mov	r0,#(___spiState + 0x0005)
      0005F5 86 04            [24] 1702 	mov	ar4,@r0
      0005F7 08               [12] 1703 	inc	r0
      0005F8 86 05            [24] 1704 	mov	ar5,@r0
      0005FA C3               [12] 1705 	clr	c
      0005FB EE               [12] 1706 	mov	a,r6
      0005FC 9C               [12] 1707 	subb	a,r4
      0005FD EF               [12] 1708 	mov	a,r7
      0005FE 9D               [12] 1709 	subb	a,r5
      0005FF 50 24            [24] 1710 	jnc	00102$
                                   1711 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:257: SPDAT = __spiState.buffer[__spiState.index];
      000601 78 30            [12] 1712 	mov	r0,#___spiState
      000603 86 05            [24] 1713 	mov	ar5,@r0
      000605 08               [12] 1714 	inc	r0
      000606 86 06            [24] 1715 	mov	ar6,@r0
      000608 08               [12] 1716 	inc	r0
      000609 86 07            [24] 1717 	mov	ar7,@r0
      00060B 78 33            [12] 1718 	mov	r0,#(___spiState + 0x0003)
      00060D 86 03            [24] 1719 	mov	ar3,@r0
      00060F 08               [12] 1720 	inc	r0
      000610 86 04            [24] 1721 	mov	ar4,@r0
      000612 EB               [12] 1722 	mov	a,r3
      000613 2D               [12] 1723 	add	a, r5
      000614 FD               [12] 1724 	mov	r5,a
      000615 EC               [12] 1725 	mov	a,r4
      000616 3E               [12] 1726 	addc	a, r6
      000617 FE               [12] 1727 	mov	r6,a
      000618 8D 82            [24] 1728 	mov	dpl,r5
      00061A 8E 83            [24] 1729 	mov	dph,r6
      00061C 8F F0            [24] 1730 	mov	b,r7
      00061E 12 3A A0         [24] 1731 	lcall	__gptrget
      000621 F5 CF            [12] 1732 	mov	_SPDAT,a
      000623 80 15            [24] 1733 	sjmp	00104$
      000625                       1734 00102$:
                                   1735 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:260: *__spiState.readyFlag = true;
      000625 78 37            [12] 1736 	mov	r0,#(___spiState + 0x0007)
      000627 86 05            [24] 1737 	mov	ar5,@r0
      000629 08               [12] 1738 	inc	r0
      00062A 86 06            [24] 1739 	mov	ar6,@r0
      00062C 08               [12] 1740 	inc	r0
      00062D 86 07            [24] 1741 	mov	ar7,@r0
      00062F 8D 82            [24] 1742 	mov	dpl,r5
      000631 8E 83            [24] 1743 	mov	dph,r6
      000633 8F F0            [24] 1744 	mov	b,r7
      000635 74 01            [12] 1745 	mov	a,#0x01
      000637 12 2F F5         [24] 1746 	lcall	__gptrput
      00063A                       1747 00104$:
                                   1748 ;	/Users/ambadran717/.stc/uni-stc/hal/spi-hal.c:275: }
      00063A D0 D0            [24] 1749 	pop	psw
      00063C D0 00            [24] 1750 	pop	ar0
      00063E D0 03            [24] 1751 	pop	ar3
      000640 D0 04            [24] 1752 	pop	ar4
      000642 D0 05            [24] 1753 	pop	ar5
      000644 D0 06            [24] 1754 	pop	ar6
      000646 D0 07            [24] 1755 	pop	ar7
      000648 D0 83            [24] 1756 	pop	dph
      00064A D0 82            [24] 1757 	pop	dpl
      00064C D0 F0            [24] 1758 	pop	b
      00064E D0 E0            [24] 1759 	pop	acc
      000650 32               [24] 1760 	reti
                                   1761 ;	eliminated unneeded push/pop ar1
                                   1762 	.area CSEG    (CODE)
                                   1763 	.area CONST   (CODE)
      003AC0                       1764 ___pinConfigurations:
      003AC0 00                    1765 	.db #0x00	; 0
      003AC1 54                    1766 	.db #0x54	; 84	'T'
      003AC2 13                    1767 	.db #0x13	; 19
      003AC3 14                    1768 	.db #0x14	; 20
      003AC4 15                    1769 	.db #0x15	; 21
      003AC5 01                    1770 	.db #0x01	; 1
      003AC6 22                    1771 	.db #0x22	; 34
      003AC7 23                    1772 	.db #0x23	; 35
      003AC8 24                    1773 	.db #0x24	; 36
      003AC9 25                    1774 	.db #0x25	; 37
      003ACA 03                    1775 	.db #0x03	; 3
      003ACB 35                    1776 	.db #0x35	; 53	'5'
      003ACC 34                    1777 	.db #0x34	; 52	'4'
      003ACD 33                    1778 	.db #0x33	; 51	'3'
      003ACE 32                    1779 	.db #0x32	; 50	'2'
                                   1780 	.area XINIT   (CODE)
                                   1781 	.area CABS    (ABS,CODE)
