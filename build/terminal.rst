                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module terminal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _nrf24_print_internal_register_values
                                     12 	.globl _report
                                     13 	.globl _get_current_time
                                     14 	.globl _memset
                                     15 	.globl _printf
                                     16 	.globl _S1SM0_FE
                                     17 	.globl _T1IE
                                     18 	.globl _T0IE
                                     19 	.globl _T1RUN
                                     20 	.globl _T0RUN
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _EA
                                     30 	.globl _INT1IE
                                     31 	.globl _INT0IE
                                     32 	.globl _INT1TR
                                     33 	.globl _INT0TR
                                     34 	.globl _P5_5
                                     35 	.globl _P5_4
                                     36 	.globl _P5_3
                                     37 	.globl _P5_2
                                     38 	.globl _P5_1
                                     39 	.globl _P5_0
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _P1_7
                                     57 	.globl _P1_6
                                     58 	.globl _P1_5
                                     59 	.globl _P1_4
                                     60 	.globl _P1_3
                                     61 	.globl _P1_2
                                     62 	.globl _P1_1
                                     63 	.globl _P1_0
                                     64 	.globl _USBADR
                                     65 	.globl _USBCON
                                     66 	.globl _USBDAT
                                     67 	.globl _USBCLK
                                     68 	.globl _S4BUF
                                     69 	.globl _S4CON
                                     70 	.globl _S3BUF
                                     71 	.globl _S3CON
                                     72 	.globl _S2BUF
                                     73 	.globl _S2CON
                                     74 	.globl _S1BUF
                                     75 	.globl _S1CON
                                     76 	.globl _SADEN
                                     77 	.globl _SADDR
                                     78 	.globl _AUXINTIF
                                     79 	.globl _T3
                                     80 	.globl _T3L
                                     81 	.globl _T3H
                                     82 	.globl _T4
                                     83 	.globl _T4L
                                     84 	.globl _T4H
                                     85 	.globl _T4T3M
                                     86 	.globl _WDT_CONTR
                                     87 	.globl _AUXR
                                     88 	.globl _T2
                                     89 	.globl _T2H
                                     90 	.globl _T2L
                                     91 	.globl _T1
                                     92 	.globl _T1H
                                     93 	.globl _T1L
                                     94 	.globl _T0
                                     95 	.globl _T0H
                                     96 	.globl _T0L
                                     97 	.globl _TMOD
                                     98 	.globl _TCON
                                     99 	.globl _IRTRIM
                                    100 	.globl _LIRTRIM
                                    101 	.globl _IRCBAND
                                    102 	.globl _SPDAT
                                    103 	.globl _SPCTL
                                    104 	.globl _SPSTAT
                                    105 	.globl _WKTC
                                    106 	.globl _WKTCH
                                    107 	.globl _WKTCL
                                    108 	.globl _BUS_SPEED
                                    109 	.globl _P_SW2
                                    110 	.globl _P_SW1
                                    111 	.globl _RSTCFG
                                    112 	.globl _PCON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _SP
                                    117 	.globl _IP3H
                                    118 	.globl _IP3L
                                    119 	.globl _IP2H
                                    120 	.globl _IP2L
                                    121 	.globl _IE2
                                    122 	.globl _IP1H
                                    123 	.globl _IP1L
                                    124 	.globl _IE1
                                    125 	.globl _INT_CLKO
                                    126 	.globl _IAP_TPS
                                    127 	.globl _IAP_CONTR
                                    128 	.globl _IAP_TRIG
                                    129 	.globl _IAP_CMD
                                    130 	.globl _IAP_ADDR
                                    131 	.globl _IAP_ADDRL
                                    132 	.globl _IAP_ADDRH
                                    133 	.globl _IAP_DATA
                                    134 	.globl _P5M0
                                    135 	.globl _P5M1
                                    136 	.globl _P5
                                    137 	.globl _P3M0
                                    138 	.globl _P3M1
                                    139 	.globl _P3
                                    140 	.globl _P2M0
                                    141 	.globl _P2M1
                                    142 	.globl _P2
                                    143 	.globl _P1M0
                                    144 	.globl _P1M1
                                    145 	.globl _P1
                                    146 	.globl _TA
                                    147 	.globl _DPH1
                                    148 	.globl _DPL1
                                    149 	.globl _DPS
                                    150 	.globl _DP
                                    151 	.globl _DPH
                                    152 	.globl _DPL
                                    153 	.globl _CMPCR2
                                    154 	.globl _CMPCR1
                                    155 	.globl _DMA_ADC_AMT
                                    156 	.globl _ADCCFG
                                    157 	.globl _ADC_RES
                                    158 	.globl _ADC_RESL
                                    159 	.globl _ADC_RESH
                                    160 	.globl _ADC_CONTR
                                    161 	.globl _read_int_PARM_3
                                    162 	.globl _read_int_PARM_2
                                    163 	.globl _DMA_UR4R_TXAL
                                    164 	.globl _DMA_UR4R_TXAH
                                    165 	.globl _DMA_UR4R_DONE
                                    166 	.globl _DMA_UR4R_AMT
                                    167 	.globl _DMA_UR4R_STA
                                    168 	.globl _DMA_UR4R_CR
                                    169 	.globl _DMA_UR4R_CFG
                                    170 	.globl _DMA_UR4T_TXAL
                                    171 	.globl _DMA_UR4T_TXAH
                                    172 	.globl _DMA_UR4T_DONE
                                    173 	.globl _DMA_UR4T_AMT
                                    174 	.globl _DMA_UR4T_STA
                                    175 	.globl _DMA_UR4T_CR
                                    176 	.globl _DMA_UR4T_CFG
                                    177 	.globl _DMA_UR3R_TXAL
                                    178 	.globl _DMA_UR3R_TXAH
                                    179 	.globl _DMA_UR3R_DONE
                                    180 	.globl _DMA_UR3R_AMT
                                    181 	.globl _DMA_UR3R_STA
                                    182 	.globl _DMA_UR3R_CR
                                    183 	.globl _DMA_UR3R_CFG
                                    184 	.globl _DMA_UR3T_TXAL
                                    185 	.globl _DMA_UR3T_TXAH
                                    186 	.globl _DMA_UR3T_DONE
                                    187 	.globl _DMA_UR3T_AMT
                                    188 	.globl _DMA_UR3T_STA
                                    189 	.globl _DMA_UR3T_CR
                                    190 	.globl _DMA_UR3T_CFG
                                    191 	.globl _DMA_UR2R_TXAL
                                    192 	.globl _DMA_UR2R_TXAH
                                    193 	.globl _DMA_UR2R_DONE
                                    194 	.globl _DMA_UR2R_AMT
                                    195 	.globl _DMA_UR2R_STA
                                    196 	.globl _DMA_UR2R_CR
                                    197 	.globl _DMA_UR2R_CFG
                                    198 	.globl _DMA_UR2T_TXAL
                                    199 	.globl _DMA_UR2T_TXAH
                                    200 	.globl _DMA_UR2T_DONE
                                    201 	.globl _DMA_UR2T_AMT
                                    202 	.globl _DMA_UR2T_STA
                                    203 	.globl _DMA_UR2T_CR
                                    204 	.globl _DMA_UR2T_CFG
                                    205 	.globl _DMA_UR1R_TXAL
                                    206 	.globl _DMA_UR1R_TXAH
                                    207 	.globl _DMA_UR1R_DONE
                                    208 	.globl _DMA_UR1R_AMT
                                    209 	.globl _DMA_UR1R_STA
                                    210 	.globl _DMA_UR1R_CR
                                    211 	.globl _DMA_UR1R_CFG
                                    212 	.globl _DMA_UR1T_TXAL
                                    213 	.globl _DMA_UR1T_TXAH
                                    214 	.globl _DMA_UR1T_DONE
                                    215 	.globl _DMA_URTX_AMT
                                    216 	.globl _DMA_UR1T_STA
                                    217 	.globl _DMA_UR1T_CR
                                    218 	.globl _DMA_UR1T_CFG
                                    219 	.globl _TM4PS
                                    220 	.globl _TM3PS
                                    221 	.globl _TM2PS
                                    222 	.globl _IRC48MCR
                                    223 	.globl _IRCDB
                                    224 	.globl _MCLKOCR
                                    225 	.globl _CKSEL
                                    226 	.globl _IRC32KCR
                                    227 	.globl _X32KCR
                                    228 	.globl _XOSCCR
                                    229 	.globl _HIRCCR
                                    230 	.globl _CLKDIV
                                    231 	.globl _DMA_SPI_CFG2
                                    232 	.globl _DMA_SPI_RXAL
                                    233 	.globl _DMA_SPI_RXAH
                                    234 	.globl _DMA_SPI_TXAL
                                    235 	.globl _DMA_SPI_TXAH
                                    236 	.globl _DMA_SPI_DONE
                                    237 	.globl _DMA_SPI_AMT
                                    238 	.globl _DMA_SPI_STA
                                    239 	.globl _DMA_SPI_CR
                                    240 	.globl _DMA_SPI_CFG
                                    241 	.globl _SSEC
                                    242 	.globl _SEC
                                    243 	.globl _MIN
                                    244 	.globl _HOUR
                                    245 	.globl _DAY
                                    246 	.globl _MONTH
                                    247 	.globl _YEAR
                                    248 	.globl _INISSEC
                                    249 	.globl _INISEC
                                    250 	.globl _INIMIN
                                    251 	.globl _INIHOUR
                                    252 	.globl _INIDAY
                                    253 	.globl _INIMONTH
                                    254 	.globl _INIYEAR
                                    255 	.globl _ALASSEC
                                    256 	.globl _ALASEC
                                    257 	.globl _ALAMIN
                                    258 	.globl _ALAHOUR
                                    259 	.globl _RTCIF
                                    260 	.globl _RTCIEN
                                    261 	.globl _RTCCFG
                                    262 	.globl _RTCCR
                                    263 	.globl _PWMB_OISR
                                    264 	.globl _PWMB_DTR
                                    265 	.globl _PWMB_BKR
                                    266 	.globl _PWMB_CCR4L
                                    267 	.globl _PWMB_CCR4H
                                    268 	.globl _PWMB_CCR3L
                                    269 	.globl _PWMB_CCR3H
                                    270 	.globl _PWMB_CCR2L
                                    271 	.globl _PWMB_CCR2H
                                    272 	.globl _PWMB_CCR1L
                                    273 	.globl _PWMB_CCR1H
                                    274 	.globl _PWMB_RCR
                                    275 	.globl _PWMB_ARRL
                                    276 	.globl _PWMB_ARRH
                                    277 	.globl _PWMB_PSCRL
                                    278 	.globl _PWMB_PSCRH
                                    279 	.globl _PWMB_CNTRL
                                    280 	.globl _PWMB_CNTRH
                                    281 	.globl _PWMB_CCER2
                                    282 	.globl _PWMB_CCER1
                                    283 	.globl _PWMB_CCMR4
                                    284 	.globl _PWMB_CCMR3
                                    285 	.globl _PWMB_CCMR2
                                    286 	.globl _PWMB_CCMR1
                                    287 	.globl _PWMB_EGR
                                    288 	.globl _PWMB_SR2
                                    289 	.globl _PWMB_SR1
                                    290 	.globl _PWMB_IER
                                    291 	.globl _PWMB_ETR
                                    292 	.globl _PWMB_SMCR
                                    293 	.globl _PWMB_CR2
                                    294 	.globl _PWMB_CR1
                                    295 	.globl _PWMA_OISR
                                    296 	.globl _PWMA_DTR
                                    297 	.globl _PWMA_BKR
                                    298 	.globl _PWMA_CCR4L
                                    299 	.globl _PWMA_CCR4H
                                    300 	.globl _PWMA_CCR3L
                                    301 	.globl _PWMA_CCR3H
                                    302 	.globl _PWMA_CCR2L
                                    303 	.globl _PWMA_CCR2H
                                    304 	.globl _PWMA_CCR1L
                                    305 	.globl _PWMA_CCR1H
                                    306 	.globl _PWMA_RCR
                                    307 	.globl _PWMA_ARRL
                                    308 	.globl _PWMA_ARRH
                                    309 	.globl _PWMA_PSCRL
                                    310 	.globl _PWMA_PSCRH
                                    311 	.globl _PWMA_CNTRL
                                    312 	.globl _PWMA_CNTRH
                                    313 	.globl _PWMA_CCER2
                                    314 	.globl _PWMA_CCER1
                                    315 	.globl _PWMA_CCMR4
                                    316 	.globl _PWMA_CCMR3
                                    317 	.globl _PWMA_CCMR2
                                    318 	.globl _PWMA_CCMR1
                                    319 	.globl _PWMA_EGR
                                    320 	.globl _PWMA_SR2
                                    321 	.globl _PWMA_SR1
                                    322 	.globl _PWMA_IER
                                    323 	.globl _PWMA_ETR
                                    324 	.globl _PWMA_SMCR
                                    325 	.globl _PWMA_CR2
                                    326 	.globl _PWMA_CR1
                                    327 	.globl _PWMB_IOAUX
                                    328 	.globl _PWMB_PS
                                    329 	.globl _PWMB_ENO
                                    330 	.globl _PWMB_ETRPS
                                    331 	.globl _PWMA_IOAUX
                                    332 	.globl _PWMA_PS
                                    333 	.globl _PWMA_ENO
                                    334 	.globl _PWMA_ETRPS
                                    335 	.globl _RSTFLAG
                                    336 	.globl _SPFUNC
                                    337 	.globl _OPCON
                                    338 	.globl _ARCON
                                    339 	.globl _MD4
                                    340 	.globl _MD5
                                    341 	.globl _MD0
                                    342 	.globl _MD1
                                    343 	.globl _MD2
                                    344 	.globl _MD3
                                    345 	.globl _DMA_LCM_RXAL
                                    346 	.globl _DMA_LCM_RXAH
                                    347 	.globl _DMA_LCM_TXAL
                                    348 	.globl _DMA_LCM_TXAH
                                    349 	.globl _DMA_LCM_DONE
                                    350 	.globl _DMA_LCM_AMT
                                    351 	.globl _DMA_LCM_STA
                                    352 	.globl _DMA_LCM_CR
                                    353 	.globl _DMA_LCM_CFG
                                    354 	.globl _LCMIDDAT
                                    355 	.globl _LCMIDDATH
                                    356 	.globl _LCMIDDATL
                                    357 	.globl _LCMSTA
                                    358 	.globl _LCMCR
                                    359 	.globl _LCMCFG2
                                    360 	.globl _LCMCFG
                                    361 	.globl _I2CMSAUX
                                    362 	.globl _I2CRXD
                                    363 	.globl _I2CTXD
                                    364 	.globl _I2CSLADR
                                    365 	.globl _I2CSLST
                                    366 	.globl _I2CSLCR
                                    367 	.globl _I2CMSST
                                    368 	.globl _I2CMSCR
                                    369 	.globl _I2CCFG
                                    370 	.globl _PINIPH
                                    371 	.globl _PINIPL
                                    372 	.globl _P5IE
                                    373 	.globl _P5DR
                                    374 	.globl _P5SR
                                    375 	.globl _P5NCS
                                    376 	.globl _P5PU
                                    377 	.globl _P5WKUE
                                    378 	.globl _P5IM1
                                    379 	.globl _P5IM0
                                    380 	.globl _P5INTF
                                    381 	.globl _P5INTE
                                    382 	.globl _P3IE
                                    383 	.globl _P3DR
                                    384 	.globl _P3SR
                                    385 	.globl _P3NCS
                                    386 	.globl _P3PU
                                    387 	.globl _P3WKUE
                                    388 	.globl _P3IM1
                                    389 	.globl _P3IM0
                                    390 	.globl _P3INTF
                                    391 	.globl _P3INTE
                                    392 	.globl _P2IE
                                    393 	.globl _P2DR
                                    394 	.globl _P2SR
                                    395 	.globl _P2NCS
                                    396 	.globl _P2PU
                                    397 	.globl _P2WKUE
                                    398 	.globl _P2IM1
                                    399 	.globl _P2IM0
                                    400 	.globl _P2INTF
                                    401 	.globl _P2INTE
                                    402 	.globl _P1IE
                                    403 	.globl _P1DR
                                    404 	.globl _P1SR
                                    405 	.globl _P1NCS
                                    406 	.globl _P1PU
                                    407 	.globl _P1WKUE
                                    408 	.globl _P1IM1
                                    409 	.globl _P1IM0
                                    410 	.globl _P1INTF
                                    411 	.globl _P1INTE
                                    412 	.globl _DMA_M2M_RXAL
                                    413 	.globl _DMA_M2M_RXAH
                                    414 	.globl _DMA_M2M_TXAL
                                    415 	.globl _DMA_M2M_TXAH
                                    416 	.globl _DMA_M2M_DONE
                                    417 	.globl _DMA_M2M_AMT
                                    418 	.globl _DMA_M2M_STA
                                    419 	.globl _DMA_M2M_CR
                                    420 	.globl _DMA_M2M_CFG
                                    421 	.globl _CMPEXCFG
                                    422 	.globl _CHIP_PACKAGE_TYPE
                                    423 	.globl _CHIP_TEST_DAY_BCD
                                    424 	.globl _CHIP_TEST_MONTH_BCD
                                    425 	.globl _CHIP_TEST_YEAR_BCD
                                    426 	.globl _PROGRAM_AREA_SIZE
                                    427 	.globl _VRTRIM_44MHz
                                    428 	.globl _VRTRIM_27MHz
                                    429 	.globl _VRTRIM_10MHz
                                    430 	.globl _VRTRIM_6MHz
                                    431 	.globl _IRTRIM_48MHz
                                    432 	.globl _IRTRIM_44_2368MHz
                                    433 	.globl _IRTRIM_40MHz
                                    434 	.globl _IRTRIM_36_864MHz
                                    435 	.globl _IRTRIM_35MHz
                                    436 	.globl _IRTRIM_33_1776MHz
                                    437 	.globl _IRTRIM_30MHz
                                    438 	.globl _IRTRIM_27MHz
                                    439 	.globl _IRTRIM_24MHz
                                    440 	.globl _IRTRIM_22_1184MHz
                                    441 	.globl ___OTHER_INFO
                                    442 	.globl _CHIP_GUID
                                    443 	.globl _DMA_ADC_CHSW1
                                    444 	.globl _DMA_ADC_CHSW0
                                    445 	.globl _DMA_ADC_CFG2
                                    446 	.globl _DMA_ADC_RXAL
                                    447 	.globl _DMA_ADC_RXAH
                                    448 	.globl _DMA_ADC_STA
                                    449 	.globl _DMA_ADC_CR
                                    450 	.globl _DMA_ADC_CFG
                                    451 	.globl _ADCEXCFG
                                    452 	.globl _ADCTIM
                                    453 	.globl _read_int
                                    454 	.globl _terminal_execute_line
                                    455 ;--------------------------------------------------------
                                    456 ; special function registers
                                    457 ;--------------------------------------------------------
                                    458 	.area RSEG    (ABS,DATA)
      000000                        459 	.org 0x0000
                           0000BC   460 _ADC_CONTR	=	0x00bc
                           0000BD   461 _ADC_RESH	=	0x00bd
                           0000BE   462 _ADC_RESL	=	0x00be
                           00BDBE   463 _ADC_RES	=	0xbdbe
                           0000DE   464 _ADCCFG	=	0x00de
                           0000FA   465 _DMA_ADC_AMT	=	0x00fa
                           0000E6   466 _CMPCR1	=	0x00e6
                           0000E7   467 _CMPCR2	=	0x00e7
                           000082   468 _DPL	=	0x0082
                           000083   469 _DPH	=	0x0083
                           008382   470 _DP	=	0x8382
                           0000E3   471 _DPS	=	0x00e3
                           0000E4   472 _DPL1	=	0x00e4
                           0000E5   473 _DPH1	=	0x00e5
                           0000AE   474 _TA	=	0x00ae
                           000090   475 _P1	=	0x0090
                           000091   476 _P1M1	=	0x0091
                           000092   477 _P1M0	=	0x0092
                           0000A0   478 _P2	=	0x00a0
                           000095   479 _P2M1	=	0x0095
                           000096   480 _P2M0	=	0x0096
                           0000B0   481 _P3	=	0x00b0
                           0000B1   482 _P3M1	=	0x00b1
                           0000B2   483 _P3M0	=	0x00b2
                           0000C8   484 _P5	=	0x00c8
                           0000C9   485 _P5M1	=	0x00c9
                           0000CA   486 _P5M0	=	0x00ca
                           0000C2   487 _IAP_DATA	=	0x00c2
                           0000C3   488 _IAP_ADDRH	=	0x00c3
                           0000C4   489 _IAP_ADDRL	=	0x00c4
                           00C3C4   490 _IAP_ADDR	=	0xc3c4
                           0000C5   491 _IAP_CMD	=	0x00c5
                           0000C6   492 _IAP_TRIG	=	0x00c6
                           0000C7   493 _IAP_CONTR	=	0x00c7
                           0000F5   494 _IAP_TPS	=	0x00f5
                           00008F   495 _INT_CLKO	=	0x008f
                           0000A8   496 _IE1	=	0x00a8
                           0000B8   497 _IP1L	=	0x00b8
                           0000B7   498 _IP1H	=	0x00b7
                           0000AF   499 _IE2	=	0x00af
                           0000B5   500 _IP2L	=	0x00b5
                           0000B6   501 _IP2H	=	0x00b6
                           0000DF   502 _IP3L	=	0x00df
                           0000EE   503 _IP3H	=	0x00ee
                           000081   504 _SP	=	0x0081
                           0000D0   505 _PSW	=	0x00d0
                           0000E0   506 _ACC	=	0x00e0
                           0000F0   507 _B	=	0x00f0
                           000087   508 _PCON	=	0x0087
                           0000FF   509 _RSTCFG	=	0x00ff
                           0000A2   510 _P_SW1	=	0x00a2
                           0000BA   511 _P_SW2	=	0x00ba
                           0000A1   512 _BUS_SPEED	=	0x00a1
                           0000AA   513 _WKTCL	=	0x00aa
                           0000AB   514 _WKTCH	=	0x00ab
                           00ABAA   515 _WKTC	=	0xabaa
                           0000CD   516 _SPSTAT	=	0x00cd
                           0000CE   517 _SPCTL	=	0x00ce
                           0000CF   518 _SPDAT	=	0x00cf
                           00009D   519 _IRCBAND	=	0x009d
                           00009E   520 _LIRTRIM	=	0x009e
                           00009F   521 _IRTRIM	=	0x009f
                           000088   522 _TCON	=	0x0088
                           000089   523 _TMOD	=	0x0089
                           00008A   524 _T0L	=	0x008a
                           00008C   525 _T0H	=	0x008c
                           008C8A   526 _T0	=	0x8c8a
                           00008B   527 _T1L	=	0x008b
                           00008D   528 _T1H	=	0x008d
                           008D8B   529 _T1	=	0x8d8b
                           0000D7   530 _T2L	=	0x00d7
                           0000D6   531 _T2H	=	0x00d6
                           00D6D7   532 _T2	=	0xd6d7
                           00008E   533 _AUXR	=	0x008e
                           0000C1   534 _WDT_CONTR	=	0x00c1
                           0000D1   535 _T4T3M	=	0x00d1
                           0000D2   536 _T4H	=	0x00d2
                           0000D3   537 _T4L	=	0x00d3
                           00D2D3   538 _T4	=	0xd2d3
                           0000D4   539 _T3H	=	0x00d4
                           0000D5   540 _T3L	=	0x00d5
                           00D4D5   541 _T3	=	0xd4d5
                           0000EF   542 _AUXINTIF	=	0x00ef
                           0000A9   543 _SADDR	=	0x00a9
                           0000B9   544 _SADEN	=	0x00b9
                           000098   545 _S1CON	=	0x0098
                           000099   546 _S1BUF	=	0x0099
                           00009A   547 _S2CON	=	0x009a
                           00009B   548 _S2BUF	=	0x009b
                           0000AC   549 _S3CON	=	0x00ac
                           0000AD   550 _S3BUF	=	0x00ad
                           000084   551 _S4CON	=	0x0084
                           000085   552 _S4BUF	=	0x0085
                           0000DC   553 _USBCLK	=	0x00dc
                           0000EC   554 _USBDAT	=	0x00ec
                           0000F4   555 _USBCON	=	0x00f4
                           0000FC   556 _USBADR	=	0x00fc
                                    557 ;--------------------------------------------------------
                                    558 ; special function bits
                                    559 ;--------------------------------------------------------
                                    560 	.area RSEG    (ABS,DATA)
      000000                        561 	.org 0x0000
                           000090   562 _P1_0	=	0x0090
                           000091   563 _P1_1	=	0x0091
                           000092   564 _P1_2	=	0x0092
                           000093   565 _P1_3	=	0x0093
                           000094   566 _P1_4	=	0x0094
                           000095   567 _P1_5	=	0x0095
                           000096   568 _P1_6	=	0x0096
                           000097   569 _P1_7	=	0x0097
                           0000A0   570 _P2_0	=	0x00a0
                           0000A1   571 _P2_1	=	0x00a1
                           0000A2   572 _P2_2	=	0x00a2
                           0000A3   573 _P2_3	=	0x00a3
                           0000A4   574 _P2_4	=	0x00a4
                           0000A5   575 _P2_5	=	0x00a5
                           0000A6   576 _P2_6	=	0x00a6
                           0000A7   577 _P2_7	=	0x00a7
                           0000B0   578 _P3_0	=	0x00b0
                           0000B1   579 _P3_1	=	0x00b1
                           0000B2   580 _P3_2	=	0x00b2
                           0000B3   581 _P3_3	=	0x00b3
                           0000B4   582 _P3_4	=	0x00b4
                           0000B5   583 _P3_5	=	0x00b5
                           0000B6   584 _P3_6	=	0x00b6
                           0000B7   585 _P3_7	=	0x00b7
                           0000C8   586 _P5_0	=	0x00c8
                           0000C9   587 _P5_1	=	0x00c9
                           0000CA   588 _P5_2	=	0x00ca
                           0000CB   589 _P5_3	=	0x00cb
                           0000CC   590 _P5_4	=	0x00cc
                           0000CD   591 _P5_5	=	0x00cd
                           000088   592 _INT0TR	=	0x0088
                           00008A   593 _INT1TR	=	0x008a
                           0000A8   594 _INT0IE	=	0x00a8
                           0000AA   595 _INT1IE	=	0x00aa
                           0000AF   596 _EA	=	0x00af
                           0000D0   597 _P	=	0x00d0
                           0000D1   598 _F1	=	0x00d1
                           0000D2   599 _OV	=	0x00d2
                           0000D3   600 _RS0	=	0x00d3
                           0000D4   601 _RS1	=	0x00d4
                           0000D5   602 _F0	=	0x00d5
                           0000D6   603 _AC	=	0x00d6
                           0000D7   604 _CY	=	0x00d7
                           00008C   605 _T0RUN	=	0x008c
                           00008E   606 _T1RUN	=	0x008e
                           0000A9   607 _T0IE	=	0x00a9
                           0000AB   608 _T1IE	=	0x00ab
                           00009F   609 _S1SM0_FE	=	0x009f
                                    610 ;--------------------------------------------------------
                                    611 ; overlayable register banks
                                    612 ;--------------------------------------------------------
                                    613 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        614 	.ds 8
                                    615 ;--------------------------------------------------------
                                    616 ; internal ram data
                                    617 ;--------------------------------------------------------
                                    618 	.area DSEG    (DATA)
      000021                        619 _read_int_sloc0_1_0:
      000021                        620 	.ds 3
      000024                        621 _read_int_sloc1_1_0:
      000024                        622 	.ds 1
      000025                        623 _read_int_sloc2_1_0:
      000025                        624 	.ds 4
                                    625 ;--------------------------------------------------------
                                    626 ; overlayable items in internal ram 
                                    627 ;--------------------------------------------------------
                                    628 ;--------------------------------------------------------
                                    629 ; indirectly addressable internal ram data
                                    630 ;--------------------------------------------------------
                                    631 	.area ISEG    (DATA)
                                    632 ;--------------------------------------------------------
                                    633 ; absolute internal ram data
                                    634 ;--------------------------------------------------------
                                    635 	.area IABS    (ABS,DATA)
                                    636 	.area IABS    (ABS,DATA)
                                    637 ;--------------------------------------------------------
                                    638 ; bit data
                                    639 ;--------------------------------------------------------
                                    640 	.area BSEG    (BIT)
                                    641 ;--------------------------------------------------------
                                    642 ; paged external ram data
                                    643 ;--------------------------------------------------------
                                    644 	.area PSEG    (PAG,XDATA)
                                    645 ;--------------------------------------------------------
                                    646 ; external ram data
                                    647 ;--------------------------------------------------------
                                    648 	.area XSEG    (XDATA)
                           00FEA8   649 _ADCTIM	=	0xfea8
                           00FEAD   650 _ADCEXCFG	=	0xfead
                           00FA10   651 _DMA_ADC_CFG	=	0xfa10
                           00FA11   652 _DMA_ADC_CR	=	0xfa11
                           00FA12   653 _DMA_ADC_STA	=	0xfa12
                           00FA17   654 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   655 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   656 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   657 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   658 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   659 _CHIP_GUID	=	0xfde0
                           00FDE7   660 ___OTHER_INFO	=	0xfde7
                           00FDEB   661 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   662 _IRTRIM_24MHz	=	0xfdec
                           00FDED   663 _IRTRIM_27MHz	=	0xfded
                           00FDEE   664 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   665 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   666 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   667 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   668 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   669 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   670 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   671 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   672 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   673 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   674 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   675 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   676 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   677 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   678 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   679 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   680 _CMPEXCFG	=	0xfeae
                           00FA00   681 _DMA_M2M_CFG	=	0xfa00
                           00FA01   682 _DMA_M2M_CR	=	0xfa01
                           00FA02   683 _DMA_M2M_STA	=	0xfa02
                           00FA03   684 _DMA_M2M_AMT	=	0xfa03
                           00FA04   685 _DMA_M2M_DONE	=	0xfa04
                           00FA05   686 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   687 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   688 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   689 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   690 _P1INTE	=	0xfd01
                           00FD11   691 _P1INTF	=	0xfd11
                           00FD21   692 _P1IM0	=	0xfd21
                           00FD31   693 _P1IM1	=	0xfd31
                           00FD41   694 _P1WKUE	=	0xfd41
                           00FE11   695 _P1PU	=	0xfe11
                           00FE19   696 _P1NCS	=	0xfe19
                           00FE21   697 _P1SR	=	0xfe21
                           00FE29   698 _P1DR	=	0xfe29
                           00FE31   699 _P1IE	=	0xfe31
                           00FD02   700 _P2INTE	=	0xfd02
                           00FD12   701 _P2INTF	=	0xfd12
                           00FD22   702 _P2IM0	=	0xfd22
                           00FD32   703 _P2IM1	=	0xfd32
                           00FD42   704 _P2WKUE	=	0xfd42
                           00FE12   705 _P2PU	=	0xfe12
                           00FE1A   706 _P2NCS	=	0xfe1a
                           00FE22   707 _P2SR	=	0xfe22
                           00FE2A   708 _P2DR	=	0xfe2a
                           00FE32   709 _P2IE	=	0xfe32
                           00FD03   710 _P3INTE	=	0xfd03
                           00FD13   711 _P3INTF	=	0xfd13
                           00FD23   712 _P3IM0	=	0xfd23
                           00FD33   713 _P3IM1	=	0xfd33
                           00FD43   714 _P3WKUE	=	0xfd43
                           00FE13   715 _P3PU	=	0xfe13
                           00FE1B   716 _P3NCS	=	0xfe1b
                           00FE23   717 _P3SR	=	0xfe23
                           00FE2B   718 _P3DR	=	0xfe2b
                           00FE33   719 _P3IE	=	0xfe33
                           00FD05   720 _P5INTE	=	0xfd05
                           00FD15   721 _P5INTF	=	0xfd15
                           00FD25   722 _P5IM0	=	0xfd25
                           00FD35   723 _P5IM1	=	0xfd35
                           00FD45   724 _P5WKUE	=	0xfd45
                           00FE15   725 _P5PU	=	0xfe15
                           00FE1D   726 _P5NCS	=	0xfe1d
                           00FE25   727 _P5SR	=	0xfe25
                           00FE2D   728 _P5DR	=	0xfe2d
                           00FE35   729 _P5IE	=	0xfe35
                           00FD60   730 _PINIPL	=	0xfd60
                           00FD61   731 _PINIPH	=	0xfd61
                           00FE80   732 _I2CCFG	=	0xfe80
                           00FE81   733 _I2CMSCR	=	0xfe81
                           00FE82   734 _I2CMSST	=	0xfe82
                           00FE83   735 _I2CSLCR	=	0xfe83
                           00FE84   736 _I2CSLST	=	0xfe84
                           00FE85   737 _I2CSLADR	=	0xfe85
                           00FE86   738 _I2CTXD	=	0xfe86
                           00FE87   739 _I2CRXD	=	0xfe87
                           00FE88   740 _I2CMSAUX	=	0xfe88
                           00FE50   741 _LCMCFG	=	0xfe50
                           00FE51   742 _LCMCFG2	=	0xfe51
                           00FE52   743 _LCMCR	=	0xfe52
                           00FE53   744 _LCMSTA	=	0xfe53
                           00FE54   745 _LCMIDDATL	=	0xfe54
                           00FE55   746 _LCMIDDATH	=	0xfe55
                           00FE54   747 _LCMIDDAT	=	0xfe54
                           00FA70   748 _DMA_LCM_CFG	=	0xfa70
                           00FA71   749 _DMA_LCM_CR	=	0xfa71
                           00FA72   750 _DMA_LCM_STA	=	0xfa72
                           00FA73   751 _DMA_LCM_AMT	=	0xfa73
                           00FA74   752 _DMA_LCM_DONE	=	0xfa74
                           00FA75   753 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   754 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   755 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   756 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   757 _MD3	=	0xfcf0
                           00FCF1   758 _MD2	=	0xfcf1
                           00FCF2   759 _MD1	=	0xfcf2
                           00FCF3   760 _MD0	=	0xfcf3
                           00FCF4   761 _MD5	=	0xfcf4
                           00FCF5   762 _MD4	=	0xfcf5
                           00FCF6   763 _ARCON	=	0xfcf6
                           00FCF7   764 _OPCON	=	0xfcf7
                           00FE08   765 _SPFUNC	=	0xfe08
                           00FE09   766 _RSTFLAG	=	0xfe09
                           00FEB0   767 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   768 _PWMA_ENO	=	0xfeb1
                           00FEB2   769 _PWMA_PS	=	0xfeb2
                           00FEB3   770 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   771 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   772 _PWMB_ENO	=	0xfeb5
                           00FEB6   773 _PWMB_PS	=	0xfeb6
                           00FEB7   774 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   775 _PWMA_CR1	=	0xfec0
                           00FEC1   776 _PWMA_CR2	=	0xfec1
                           00FEC2   777 _PWMA_SMCR	=	0xfec2
                           00FEC3   778 _PWMA_ETR	=	0xfec3
                           00FEC4   779 _PWMA_IER	=	0xfec4
                           00FEC5   780 _PWMA_SR1	=	0xfec5
                           00FEC6   781 _PWMA_SR2	=	0xfec6
                           00FEC7   782 _PWMA_EGR	=	0xfec7
                           00FEC8   783 _PWMA_CCMR1	=	0xfec8
                           00FEC9   784 _PWMA_CCMR2	=	0xfec9
                           00FECA   785 _PWMA_CCMR3	=	0xfeca
                           00FECB   786 _PWMA_CCMR4	=	0xfecb
                           00FECC   787 _PWMA_CCER1	=	0xfecc
                           00FECD   788 _PWMA_CCER2	=	0xfecd
                           00FECE   789 _PWMA_CNTRH	=	0xfece
                           00FECF   790 _PWMA_CNTRL	=	0xfecf
                           00FED0   791 _PWMA_PSCRH	=	0xfed0
                           00FED1   792 _PWMA_PSCRL	=	0xfed1
                           00FED2   793 _PWMA_ARRH	=	0xfed2
                           00FED3   794 _PWMA_ARRL	=	0xfed3
                           00FED4   795 _PWMA_RCR	=	0xfed4
                           00FED5   796 _PWMA_CCR1H	=	0xfed5
                           00FED6   797 _PWMA_CCR1L	=	0xfed6
                           00FED7   798 _PWMA_CCR2H	=	0xfed7
                           00FED8   799 _PWMA_CCR2L	=	0xfed8
                           00FED9   800 _PWMA_CCR3H	=	0xfed9
                           00FEDA   801 _PWMA_CCR3L	=	0xfeda
                           00FEDB   802 _PWMA_CCR4H	=	0xfedb
                           00FEDC   803 _PWMA_CCR4L	=	0xfedc
                           00FEDD   804 _PWMA_BKR	=	0xfedd
                           00FEDE   805 _PWMA_DTR	=	0xfede
                           00FEDF   806 _PWMA_OISR	=	0xfedf
                           00FEE0   807 _PWMB_CR1	=	0xfee0
                           00FEE1   808 _PWMB_CR2	=	0xfee1
                           00FEE2   809 _PWMB_SMCR	=	0xfee2
                           00FEE3   810 _PWMB_ETR	=	0xfee3
                           00FEE4   811 _PWMB_IER	=	0xfee4
                           00FEE5   812 _PWMB_SR1	=	0xfee5
                           00FEE6   813 _PWMB_SR2	=	0xfee6
                           00FEE7   814 _PWMB_EGR	=	0xfee7
                           00FEE8   815 _PWMB_CCMR1	=	0xfee8
                           00FEE9   816 _PWMB_CCMR2	=	0xfee9
                           00FEEA   817 _PWMB_CCMR3	=	0xfeea
                           00FEEB   818 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   819 _PWMB_CCER1	=	0xfeec
                           00FEED   820 _PWMB_CCER2	=	0xfeed
                           00FEEE   821 _PWMB_CNTRH	=	0xfeee
                           00FEEF   822 _PWMB_CNTRL	=	0xfeef
                           00FEF0   823 _PWMB_PSCRH	=	0xfef0
                           00FEF1   824 _PWMB_PSCRL	=	0xfef1
                           00FEF2   825 _PWMB_ARRH	=	0xfef2
                           00FEF3   826 _PWMB_ARRL	=	0xfef3
                           00FEF4   827 _PWMB_RCR	=	0xfef4
                           00FEF5   828 _PWMB_CCR1H	=	0xfef5
                           00FEF6   829 _PWMB_CCR1L	=	0xfef6
                           00FEF7   830 _PWMB_CCR2H	=	0xfef7
                           00FEF8   831 _PWMB_CCR2L	=	0xfef8
                           00FEF9   832 _PWMB_CCR3H	=	0xfef9
                           00FEFA   833 _PWMB_CCR3L	=	0xfefa
                           00FEFB   834 _PWMB_CCR4H	=	0xfefb
                           00FEFC   835 _PWMB_CCR4L	=	0xfefc
                           00FEFD   836 _PWMB_BKR	=	0xfefd
                           00FEFE   837 _PWMB_DTR	=	0xfefe
                           00FEFF   838 _PWMB_OISR	=	0xfeff
                           00FE60   839 _RTCCR	=	0xfe60
                           00FE61   840 _RTCCFG	=	0xfe61
                           00FE62   841 _RTCIEN	=	0xfe62
                           00FE63   842 _RTCIF	=	0xfe63
                           00FE64   843 _ALAHOUR	=	0xfe64
                           00FE65   844 _ALAMIN	=	0xfe65
                           00FE66   845 _ALASEC	=	0xfe66
                           00FE67   846 _ALASSEC	=	0xfe67
                           00FE68   847 _INIYEAR	=	0xfe68
                           00FE69   848 _INIMONTH	=	0xfe69
                           00FE6A   849 _INIDAY	=	0xfe6a
                           00FE6B   850 _INIHOUR	=	0xfe6b
                           00FE6C   851 _INIMIN	=	0xfe6c
                           00FE6D   852 _INISEC	=	0xfe6d
                           00FE6E   853 _INISSEC	=	0xfe6e
                           00FE70   854 _YEAR	=	0xfe70
                           00FE71   855 _MONTH	=	0xfe71
                           00FE72   856 _DAY	=	0xfe72
                           00FE73   857 _HOUR	=	0xfe73
                           00FE74   858 _MIN	=	0xfe74
                           00FE75   859 _SEC	=	0xfe75
                           00FE76   860 _SSEC	=	0xfe76
                           00FA20   861 _DMA_SPI_CFG	=	0xfa20
                           00FA21   862 _DMA_SPI_CR	=	0xfa21
                           00FA22   863 _DMA_SPI_STA	=	0xfa22
                           00FA23   864 _DMA_SPI_AMT	=	0xfa23
                           00FA24   865 _DMA_SPI_DONE	=	0xfa24
                           00FA25   866 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   867 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   868 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   869 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   870 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   871 _CLKDIV	=	0xfe01
                           00FE02   872 _HIRCCR	=	0xfe02
                           00FE03   873 _XOSCCR	=	0xfe03
                           00FE08   874 _X32KCR	=	0xfe08
                           00FE04   875 _IRC32KCR	=	0xfe04
                           00FE00   876 _CKSEL	=	0xfe00
                           00FE05   877 _MCLKOCR	=	0xfe05
                           00FE06   878 _IRCDB	=	0xfe06
                           00FE07   879 _IRC48MCR	=	0xfe07
                           00FEA2   880 _TM2PS	=	0xfea2
                           00FEA3   881 _TM3PS	=	0xfea3
                           00FEA4   882 _TM4PS	=	0xfea4
                           00FA30   883 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   884 _DMA_UR1T_CR	=	0xfa31
                           00FA32   885 _DMA_UR1T_STA	=	0xfa32
                           00FA33   886 _DMA_URTX_AMT	=	0xfa33
                           00FA34   887 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   888 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   889 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   890 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   891 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   892 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   893 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   894 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   895 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   896 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   897 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   898 _DMA_UR2T_CR	=	0xfa31
                           00FA32   899 _DMA_UR2T_STA	=	0xfa32
                           00FA33   900 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   901 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   902 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   903 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   904 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   905 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   906 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   907 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   908 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   909 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   910 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   911 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   912 _DMA_UR3T_CR	=	0xfa31
                           00FA32   913 _DMA_UR3T_STA	=	0xfa32
                           00FA33   914 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   915 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   916 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   917 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   918 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   919 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   920 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   921 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   922 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   923 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   924 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   925 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   926 _DMA_UR4T_CR	=	0xfa31
                           00FA32   927 _DMA_UR4T_STA	=	0xfa32
                           00FA33   928 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   929 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   930 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   931 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   932 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   933 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   934 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   935 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   936 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   937 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   938 _DMA_UR4R_TXAL	=	0xfa3e
      00027C                        939 _uartGetCharacter_result_65536_69:
      00027C                        940 	.ds 1
      00027D                        941 _command:
      00027D                        942 	.ds 6
      000283                        943 _read_int_PARM_2:
      000283                        944 	.ds 3
      000286                        945 _read_int_PARM_3:
      000286                        946 	.ds 3
      000289                        947 _read_int_line_65536_131:
      000289                        948 	.ds 3
      00028C                        949 _read_int_ptr_65536_132:
      00028C                        950 	.ds 3
      00028F                        951 _read_int_c_65536_132:
      00028F                        952 	.ds 1
      000290                        953 _read_int_isnegative_65537_133:
      000290                        954 	.ds 1
      000291                        955 _read_int_intval_65538_136:
      000291                        956 	.ds 4
      000295                        957 _read_int_lival_65539_143:
      000295                        958 	.ds 4
      000299                        959 _terminal_execute_line_line_65536_148:
      000299                        960 	.ds 3
      00029C                        961 _terminal_execute_line_char_count_65536_149:
      00029C                        962 	.ds 1
      00029D                        963 _terminal_execute_line_letter_65536_149:
      00029D                        964 	.ds 1
      00029E                        965 _terminal_execute_line_int_value_65536_149:
      00029E                        966 	.ds 2
                                    967 ;--------------------------------------------------------
                                    968 ; absolute external ram data
                                    969 ;--------------------------------------------------------
                                    970 	.area XABS    (ABS,XDATA)
                                    971 ;--------------------------------------------------------
                                    972 ; external initialized ram data
                                    973 ;--------------------------------------------------------
                                    974 	.area XISEG   (XDATA)
                                    975 	.area HOME    (CODE)
                                    976 	.area GSINIT0 (CODE)
                                    977 	.area GSINIT1 (CODE)
                                    978 	.area GSINIT2 (CODE)
                                    979 	.area GSINIT3 (CODE)
                                    980 	.area GSINIT4 (CODE)
                                    981 	.area GSINIT5 (CODE)
                                    982 	.area GSINIT  (CODE)
                                    983 	.area GSFINAL (CODE)
                                    984 	.area CSEG    (CODE)
                                    985 ;--------------------------------------------------------
                                    986 ; global & static initialisations
                                    987 ;--------------------------------------------------------
                                    988 	.area HOME    (CODE)
                                    989 	.area GSINIT  (CODE)
                                    990 	.area GSFINAL (CODE)
                                    991 	.area GSINIT  (CODE)
                                    992 ;--------------------------------------------------------
                                    993 ; Home
                                    994 ;--------------------------------------------------------
                                    995 	.area HOME    (CODE)
                                    996 	.area HOME    (CODE)
                                    997 ;--------------------------------------------------------
                                    998 ; code
                                    999 ;--------------------------------------------------------
                                   1000 	.area CSEG    (CODE)
                                   1001 ;------------------------------------------------------------
                                   1002 ;Allocation info for local variables in function 'read_int'
                                   1003 ;------------------------------------------------------------
                                   1004 ;sloc0                     Allocated with name '_read_int_sloc0_1_0'
                                   1005 ;sloc1                     Allocated with name '_read_int_sloc1_1_0'
                                   1006 ;sloc2                     Allocated with name '_read_int_sloc2_1_0'
                                   1007 ;char_count                Allocated with name '_read_int_PARM_2'
                                   1008 ;int_value_ptr             Allocated with name '_read_int_PARM_3'
                                   1009 ;line                      Allocated with name '_read_int_line_65536_131'
                                   1010 ;ptr                       Allocated with name '_read_int_ptr_65536_132'
                                   1011 ;c                         Allocated with name '_read_int_c_65536_132'
                                   1012 ;isnegative                Allocated with name '_read_int_isnegative_65537_133'
                                   1013 ;intval                    Allocated with name '_read_int_intval_65538_136'
                                   1014 ;ndigit                    Allocated with name '_read_int_ndigit_65538_136'
                                   1015 ;exp                       Allocated with name '_read_int_exp_65538_136'
                                   1016 ;lival                     Allocated with name '_read_int_lival_65539_143'
                                   1017 ;------------------------------------------------------------
                                   1018 ;	terminal.c:6: bool read_int(char *line, uint8_t* char_count, int16_t* int_value_ptr) {
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function read_int
                                   1021 ;	-----------------------------------------
      00312F                       1022 _read_int:
                           000007  1023 	ar7 = 0x07
                           000006  1024 	ar6 = 0x06
                           000005  1025 	ar5 = 0x05
                           000004  1026 	ar4 = 0x04
                           000003  1027 	ar3 = 0x03
                           000002  1028 	ar2 = 0x02
                           000001  1029 	ar1 = 0x01
                           000000  1030 	ar0 = 0x00
      00312F AF F0            [24] 1031 	mov	r7,b
      003131 AE 83            [24] 1032 	mov	r6,dph
      003133 E5 82            [12] 1033 	mov	a,dpl
      003135 90 02 89         [24] 1034 	mov	dptr,#_read_int_line_65536_131
      003138 F0               [24] 1035 	movx	@dptr,a
      003139 EE               [12] 1036 	mov	a,r6
      00313A A3               [24] 1037 	inc	dptr
      00313B F0               [24] 1038 	movx	@dptr,a
      00313C EF               [12] 1039 	mov	a,r7
      00313D A3               [24] 1040 	inc	dptr
      00313E F0               [24] 1041 	movx	@dptr,a
                                   1042 ;	terminal.c:8: char *ptr = line + *char_count; // the variable that will extract the next digit from
      00313F 90 02 83         [24] 1043 	mov	dptr,#_read_int_PARM_2
      003142 E0               [24] 1044 	movx	a,@dptr
      003143 FD               [12] 1045 	mov	r5,a
      003144 A3               [24] 1046 	inc	dptr
      003145 E0               [24] 1047 	movx	a,@dptr
      003146 FE               [12] 1048 	mov	r6,a
      003147 A3               [24] 1049 	inc	dptr
      003148 E0               [24] 1050 	movx	a,@dptr
      003149 FF               [12] 1051 	mov	r7,a
      00314A 8D 82            [24] 1052 	mov	dpl,r5
      00314C 8E 83            [24] 1053 	mov	dph,r6
      00314E 8F F0            [24] 1054 	mov	b,r7
      003150 12 49 F9         [24] 1055 	lcall	__gptrget
      003153 FC               [12] 1056 	mov	r4,a
      003154 90 02 89         [24] 1057 	mov	dptr,#_read_int_line_65536_131
      003157 E0               [24] 1058 	movx	a,@dptr
      003158 F9               [12] 1059 	mov	r1,a
      003159 A3               [24] 1060 	inc	dptr
      00315A E0               [24] 1061 	movx	a,@dptr
      00315B FA               [12] 1062 	mov	r2,a
      00315C A3               [24] 1063 	inc	dptr
      00315D E0               [24] 1064 	movx	a,@dptr
      00315E FB               [12] 1065 	mov	r3,a
      00315F EC               [12] 1066 	mov	a,r4
      003160 29               [12] 1067 	add	a,r1
      003161 FC               [12] 1068 	mov	r4,a
      003162 E4               [12] 1069 	clr	a
      003163 3A               [12] 1070 	addc	a,r2
      003164 FA               [12] 1071 	mov	r2,a
                                   1072 ;	terminal.c:11: c = *ptr++;  // extracting the next digit!
      003165 8C 82            [24] 1073 	mov	dpl,r4
      003167 8A 83            [24] 1074 	mov	dph,r2
      003169 8B F0            [24] 1075 	mov	b,r3
      00316B 12 49 F9         [24] 1076 	lcall	__gptrget
      00316E F9               [12] 1077 	mov	r1,a
      00316F 74 01            [12] 1078 	mov	a,#0x01
      003171 2C               [12] 1079 	add	a,r4
      003172 F5 21            [12] 1080 	mov	_read_int_sloc0_1_0,a
      003174 E4               [12] 1081 	clr	a
      003175 3A               [12] 1082 	addc	a,r2
      003176 F5 22            [12] 1083 	mov	(_read_int_sloc0_1_0 + 1),a
      003178 8B 23            [24] 1084 	mov	(_read_int_sloc0_1_0 + 2),r3
      00317A 90 02 8C         [24] 1085 	mov	dptr,#_read_int_ptr_65536_132
      00317D E5 21            [12] 1086 	mov	a,_read_int_sloc0_1_0
      00317F F0               [24] 1087 	movx	@dptr,a
      003180 E5 22            [12] 1088 	mov	a,(_read_int_sloc0_1_0 + 1)
      003182 A3               [24] 1089 	inc	dptr
      003183 F0               [24] 1090 	movx	@dptr,a
      003184 E5 23            [12] 1091 	mov	a,(_read_int_sloc0_1_0 + 2)
      003186 A3               [24] 1092 	inc	dptr
      003187 F0               [24] 1093 	movx	@dptr,a
      003188 90 02 8F         [24] 1094 	mov	dptr,#_read_int_c_65536_132
      00318B E9               [12] 1095 	mov	a,r1
      00318C F0               [24] 1096 	movx	@dptr,a
                                   1097 ;	terminal.c:14: bool isnegative = false;
      00318D 90 02 90         [24] 1098 	mov	dptr,#_read_int_isnegative_65537_133
      003190 E4               [12] 1099 	clr	a
      003191 F0               [24] 1100 	movx	@dptr,a
                                   1101 ;	terminal.c:15: if (c == '-') {
      003192 B9 2D 28         [24] 1102 	cjne	r1,#0x2d,00104$
                                   1103 ;	terminal.c:16: isnegative = true;
      003195 90 02 90         [24] 1104 	mov	dptr,#_read_int_isnegative_65537_133
      003198 74 01            [12] 1105 	mov	a,#0x01
      00319A F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	terminal.c:17: c = *ptr++;
      00319B 85 21 82         [24] 1108 	mov	dpl,_read_int_sloc0_1_0
      00319E 85 22 83         [24] 1109 	mov	dph,(_read_int_sloc0_1_0 + 1)
      0031A1 85 23 F0         [24] 1110 	mov	b,(_read_int_sloc0_1_0 + 2)
      0031A4 12 49 F9         [24] 1111 	lcall	__gptrget
      0031A7 F8               [12] 1112 	mov	r0,a
      0031A8 90 02 8C         [24] 1113 	mov	dptr,#_read_int_ptr_65536_132
      0031AB 74 02            [12] 1114 	mov	a,#0x02
      0031AD 2C               [12] 1115 	add	a,r4
      0031AE F0               [24] 1116 	movx	@dptr,a
      0031AF E4               [12] 1117 	clr	a
      0031B0 3A               [12] 1118 	addc	a,r2
      0031B1 A3               [24] 1119 	inc	dptr
      0031B2 F0               [24] 1120 	movx	@dptr,a
      0031B3 EB               [12] 1121 	mov	a,r3
      0031B4 A3               [24] 1122 	inc	dptr
      0031B5 F0               [24] 1123 	movx	@dptr,a
      0031B6 90 02 8F         [24] 1124 	mov	dptr,#_read_int_c_65536_132
      0031B9 E8               [12] 1125 	mov	a,r0
      0031BA F0               [24] 1126 	movx	@dptr,a
      0031BB 80 23            [24] 1127 	sjmp	00105$
      0031BD                       1128 00104$:
                                   1129 ;	terminal.c:20: } else if (c == '+') {
      0031BD B9 2B 20         [24] 1130 	cjne	r1,#0x2b,00105$
                                   1131 ;	terminal.c:21: c = *ptr++;
      0031C0 85 21 82         [24] 1132 	mov	dpl,_read_int_sloc0_1_0
      0031C3 85 22 83         [24] 1133 	mov	dph,(_read_int_sloc0_1_0 + 1)
      0031C6 85 23 F0         [24] 1134 	mov	b,(_read_int_sloc0_1_0 + 2)
      0031C9 12 49 F9         [24] 1135 	lcall	__gptrget
      0031CC F9               [12] 1136 	mov	r1,a
      0031CD 90 02 8C         [24] 1137 	mov	dptr,#_read_int_ptr_65536_132
      0031D0 74 02            [12] 1138 	mov	a,#0x02
      0031D2 2C               [12] 1139 	add	a,r4
      0031D3 F0               [24] 1140 	movx	@dptr,a
      0031D4 E4               [12] 1141 	clr	a
      0031D5 3A               [12] 1142 	addc	a,r2
      0031D6 A3               [24] 1143 	inc	dptr
      0031D7 F0               [24] 1144 	movx	@dptr,a
      0031D8 EB               [12] 1145 	mov	a,r3
      0031D9 A3               [24] 1146 	inc	dptr
      0031DA F0               [24] 1147 	movx	@dptr,a
      0031DB 90 02 8F         [24] 1148 	mov	dptr,#_read_int_c_65536_132
      0031DE E9               [12] 1149 	mov	a,r1
      0031DF F0               [24] 1150 	movx	@dptr,a
      0031E0                       1151 00105$:
                                   1152 ;	terminal.c:25: uint32_t intval = 0;
      0031E0 90 02 91         [24] 1153 	mov	dptr,#_read_int_intval_65538_136
      0031E3 E4               [12] 1154 	clr	a
      0031E4 F0               [24] 1155 	movx	@dptr,a
      0031E5 A3               [24] 1156 	inc	dptr
      0031E6 F0               [24] 1157 	movx	@dptr,a
      0031E7 A3               [24] 1158 	inc	dptr
      0031E8 F0               [24] 1159 	movx	@dptr,a
      0031E9 A3               [24] 1160 	inc	dptr
      0031EA F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	terminal.c:28: while (1) {
      0031EB 7C 00            [12] 1163 	mov	r4,#0x00
                                   1164 ;	1-genFromRTrack replaced	mov	_read_int_sloc1_1_0,#0x00
      0031ED F5 24            [12] 1165 	mov	_read_int_sloc1_1_0,a
      0031EF 90 02 8C         [24] 1166 	mov	dptr,#_read_int_ptr_65536_132
      0031F2 E0               [24] 1167 	movx	a,@dptr
      0031F3 F8               [12] 1168 	mov	r0,a
      0031F4 A3               [24] 1169 	inc	dptr
      0031F5 E0               [24] 1170 	movx	a,@dptr
      0031F6 F9               [12] 1171 	mov	r1,a
      0031F7 A3               [24] 1172 	inc	dptr
      0031F8 E0               [24] 1173 	movx	a,@dptr
      0031F9 FA               [12] 1174 	mov	r2,a
      0031FA                       1175 00113$:
                                   1176 ;	terminal.c:30: c -= '0';
      0031FA C0 05            [24] 1177 	push	ar5
      0031FC C0 06            [24] 1178 	push	ar6
      0031FE C0 07            [24] 1179 	push	ar7
      003200 90 02 8F         [24] 1180 	mov	dptr,#_read_int_c_65536_132
      003203 E0               [24] 1181 	movx	a,@dptr
      003204 24 D0            [12] 1182 	add	a,#0xd0
      003206 F0               [24] 1183 	movx	@dptr,a
                                   1184 ;	terminal.c:31: if (c <= 9) {
      003207 E0               [24] 1185 	movx	a,@dptr
      003208 F5 21            [12] 1186 	mov	_read_int_sloc0_1_0,a
      00320A C3               [12] 1187 	clr	c
      00320B 74 09            [12] 1188 	mov	a,#0x09
      00320D 95 21            [12] 1189 	subb	a,_read_int_sloc0_1_0
      00320F D0 07            [24] 1190 	pop	ar7
      003211 D0 06            [24] 1191 	pop	ar6
      003213 D0 05            [24] 1192 	pop	ar5
      003215 50 03            [24] 1193 	jnc	00168$
      003217 02 32 B4         [24] 1194 	ljmp	00135$
      00321A                       1195 00168$:
                                   1196 ;	terminal.c:32: ndigit++;
      00321A 0C               [12] 1197 	inc	r4
                                   1198 ;	terminal.c:33: if (ndigit <= MAX_INT_DIGITS) {
      00321B EC               [12] 1199 	mov	a,r4
      00321C 24 F7            [12] 1200 	add	a,#0xff - 0x08
      00321E 40 7B            [24] 1201 	jc	00107$
                                   1202 ;	terminal.c:35: intval = (((intval << 2) + intval) << 1) + c; // intval*10 + c
      003220 C0 05            [24] 1203 	push	ar5
      003222 C0 06            [24] 1204 	push	ar6
      003224 C0 07            [24] 1205 	push	ar7
      003226 90 02 91         [24] 1206 	mov	dptr,#_read_int_intval_65538_136
      003229 E0               [24] 1207 	movx	a,@dptr
      00322A F5 25            [12] 1208 	mov	_read_int_sloc2_1_0,a
      00322C A3               [24] 1209 	inc	dptr
      00322D E0               [24] 1210 	movx	a,@dptr
      00322E F5 26            [12] 1211 	mov	(_read_int_sloc2_1_0 + 1),a
      003230 A3               [24] 1212 	inc	dptr
      003231 E0               [24] 1213 	movx	a,@dptr
      003232 F5 27            [12] 1214 	mov	(_read_int_sloc2_1_0 + 2),a
      003234 A3               [24] 1215 	inc	dptr
      003235 E0               [24] 1216 	movx	a,@dptr
      003236 F5 28            [12] 1217 	mov	(_read_int_sloc2_1_0 + 3),a
      003238 E5 25            [12] 1218 	mov	a,_read_int_sloc2_1_0
      00323A 25 25            [12] 1219 	add	a,_read_int_sloc2_1_0
      00323C FB               [12] 1220 	mov	r3,a
      00323D E5 26            [12] 1221 	mov	a,(_read_int_sloc2_1_0 + 1)
      00323F 33               [12] 1222 	rlc	a
      003240 FD               [12] 1223 	mov	r5,a
      003241 E5 27            [12] 1224 	mov	a,(_read_int_sloc2_1_0 + 2)
      003243 33               [12] 1225 	rlc	a
      003244 FE               [12] 1226 	mov	r6,a
      003245 E5 28            [12] 1227 	mov	a,(_read_int_sloc2_1_0 + 3)
      003247 33               [12] 1228 	rlc	a
      003248 FF               [12] 1229 	mov	r7,a
      003249 EB               [12] 1230 	mov	a,r3
      00324A 2B               [12] 1231 	add	a,r3
      00324B FB               [12] 1232 	mov	r3,a
      00324C ED               [12] 1233 	mov	a,r5
      00324D 33               [12] 1234 	rlc	a
      00324E FD               [12] 1235 	mov	r5,a
      00324F EE               [12] 1236 	mov	a,r6
      003250 33               [12] 1237 	rlc	a
      003251 FE               [12] 1238 	mov	r6,a
      003252 EF               [12] 1239 	mov	a,r7
      003253 33               [12] 1240 	rlc	a
      003254 FF               [12] 1241 	mov	r7,a
      003255 E5 25            [12] 1242 	mov	a,_read_int_sloc2_1_0
      003257 2B               [12] 1243 	add	a,r3
      003258 FB               [12] 1244 	mov	r3,a
      003259 E5 26            [12] 1245 	mov	a,(_read_int_sloc2_1_0 + 1)
      00325B 3D               [12] 1246 	addc	a,r5
      00325C FD               [12] 1247 	mov	r5,a
      00325D E5 27            [12] 1248 	mov	a,(_read_int_sloc2_1_0 + 2)
      00325F 3E               [12] 1249 	addc	a,r6
      003260 FE               [12] 1250 	mov	r6,a
      003261 E5 28            [12] 1251 	mov	a,(_read_int_sloc2_1_0 + 3)
      003263 3F               [12] 1252 	addc	a,r7
      003264 FF               [12] 1253 	mov	r7,a
      003265 EB               [12] 1254 	mov	a,r3
      003266 2B               [12] 1255 	add	a,r3
      003267 F5 25            [12] 1256 	mov	_read_int_sloc2_1_0,a
      003269 ED               [12] 1257 	mov	a,r5
      00326A 33               [12] 1258 	rlc	a
      00326B F5 26            [12] 1259 	mov	(_read_int_sloc2_1_0 + 1),a
      00326D EE               [12] 1260 	mov	a,r6
      00326E 33               [12] 1261 	rlc	a
      00326F F5 27            [12] 1262 	mov	(_read_int_sloc2_1_0 + 2),a
      003271 EF               [12] 1263 	mov	a,r7
      003272 33               [12] 1264 	rlc	a
      003273 F5 28            [12] 1265 	mov	(_read_int_sloc2_1_0 + 3),a
      003275 AB 21            [24] 1266 	mov	r3,_read_int_sloc0_1_0
      003277 7D 00            [12] 1267 	mov	r5,#0x00
      003279 7E 00            [12] 1268 	mov	r6,#0x00
      00327B 7F 00            [12] 1269 	mov	r7,#0x00
      00327D 90 02 91         [24] 1270 	mov	dptr,#_read_int_intval_65538_136
      003280 EB               [12] 1271 	mov	a,r3
      003281 25 25            [12] 1272 	add	a,_read_int_sloc2_1_0
      003283 F0               [24] 1273 	movx	@dptr,a
      003284 ED               [12] 1274 	mov	a,r5
      003285 35 26            [12] 1275 	addc	a,(_read_int_sloc2_1_0 + 1)
      003287 A3               [24] 1276 	inc	dptr
      003288 F0               [24] 1277 	movx	@dptr,a
      003289 EE               [12] 1278 	mov	a,r6
      00328A 35 27            [12] 1279 	addc	a,(_read_int_sloc2_1_0 + 2)
      00328C A3               [24] 1280 	inc	dptr
      00328D F0               [24] 1281 	movx	@dptr,a
      00328E EF               [12] 1282 	mov	a,r7
      00328F 35 28            [12] 1283 	addc	a,(_read_int_sloc2_1_0 + 3)
      003291 A3               [24] 1284 	inc	dptr
      003292 F0               [24] 1285 	movx	@dptr,a
      003293 D0 07            [24] 1286 	pop	ar7
      003295 D0 06            [24] 1287 	pop	ar6
      003297 D0 05            [24] 1288 	pop	ar5
      003299 80 02            [24] 1289 	sjmp	00111$
      00329B                       1290 00107$:
                                   1291 ;	terminal.c:39: exp++;  // Drop overflow digits
      00329B 05 24            [12] 1292 	inc	_read_int_sloc1_1_0
                                   1293 ;	terminal.c:44: break;
      00329D                       1294 00111$:
                                   1295 ;	terminal.c:46: c = *ptr++;
      00329D 88 82            [24] 1296 	mov	dpl,r0
      00329F 89 83            [24] 1297 	mov	dph,r1
      0032A1 8A F0            [24] 1298 	mov	b,r2
      0032A3 12 49 F9         [24] 1299 	lcall	__gptrget
      0032A6 FB               [12] 1300 	mov	r3,a
      0032A7 A3               [24] 1301 	inc	dptr
      0032A8 A8 82            [24] 1302 	mov	r0,dpl
      0032AA A9 83            [24] 1303 	mov	r1,dph
      0032AC 90 02 8F         [24] 1304 	mov	dptr,#_read_int_c_65536_132
      0032AF EB               [12] 1305 	mov	a,r3
      0032B0 F0               [24] 1306 	movx	@dptr,a
      0032B1 02 31 FA         [24] 1307 	ljmp	00113$
      0032B4                       1308 00135$:
      0032B4 90 02 8C         [24] 1309 	mov	dptr,#_read_int_ptr_65536_132
      0032B7 E8               [12] 1310 	mov	a,r0
      0032B8 F0               [24] 1311 	movx	@dptr,a
      0032B9 E9               [12] 1312 	mov	a,r1
      0032BA A3               [24] 1313 	inc	dptr
      0032BB F0               [24] 1314 	movx	@dptr,a
      0032BC EA               [12] 1315 	mov	a,r2
      0032BD A3               [24] 1316 	inc	dptr
      0032BE F0               [24] 1317 	movx	@dptr,a
                                   1318 ;	terminal.c:50: if (!ndigit) { return(false); };
      0032BF EC               [12] 1319 	mov	a,r4
      0032C0 70 03            [24] 1320 	jnz	00116$
      0032C2 F5 82            [12] 1321 	mov	dpl,a
      0032C4 22               [24] 1322 	ret
      0032C5                       1323 00116$:
                                   1324 ;	terminal.c:53: lival = (long int)intval;
      0032C5 90 02 91         [24] 1325 	mov	dptr,#_read_int_intval_65538_136
      0032C8 E0               [24] 1326 	movx	a,@dptr
      0032C9 F9               [12] 1327 	mov	r1,a
      0032CA A3               [24] 1328 	inc	dptr
      0032CB E0               [24] 1329 	movx	a,@dptr
      0032CC FA               [12] 1330 	mov	r2,a
      0032CD A3               [24] 1331 	inc	dptr
      0032CE E0               [24] 1332 	movx	a,@dptr
      0032CF FB               [12] 1333 	mov	r3,a
      0032D0 A3               [24] 1334 	inc	dptr
      0032D1 E0               [24] 1335 	movx	a,@dptr
      0032D2 FC               [12] 1336 	mov	r4,a
      0032D3 90 02 95         [24] 1337 	mov	dptr,#_read_int_lival_65539_143
      0032D6 E9               [12] 1338 	mov	a,r1
      0032D7 F0               [24] 1339 	movx	@dptr,a
      0032D8 EA               [12] 1340 	mov	a,r2
      0032D9 A3               [24] 1341 	inc	dptr
      0032DA F0               [24] 1342 	movx	@dptr,a
      0032DB EB               [12] 1343 	mov	a,r3
      0032DC A3               [24] 1344 	inc	dptr
      0032DD F0               [24] 1345 	movx	@dptr,a
      0032DE EC               [12] 1346 	mov	a,r4
      0032DF A3               [24] 1347 	inc	dptr
      0032E0 F0               [24] 1348 	movx	@dptr,a
                                   1349 ;	terminal.c:55: if (exp > 0) {
      0032E1 C3               [12] 1350 	clr	c
      0032E2 74 80            [12] 1351 	mov	a,#(0x00 ^ 0x80)
      0032E4 85 24 F0         [24] 1352 	mov	b,_read_int_sloc1_1_0
      0032E7 63 F0 80         [24] 1353 	xrl	b,#0x80
      0032EA 95 F0            [12] 1354 	subb	a,b
      0032EC 40 03            [24] 1355 	jc	00171$
      0032EE 02 33 6C         [24] 1356 	ljmp	00121$
      0032F1                       1357 00171$:
                                   1358 ;	terminal.c:56: do {
      0032F1 AC 24            [24] 1359 	mov	r4,_read_int_sloc1_1_0
      0032F3                       1360 00117$:
                                   1361 ;	terminal.c:57: lival *= 10.0;
      0032F3 90 02 95         [24] 1362 	mov	dptr,#_read_int_lival_65539_143
      0032F6 E0               [24] 1363 	movx	a,@dptr
      0032F7 F8               [12] 1364 	mov	r0,a
      0032F8 A3               [24] 1365 	inc	dptr
      0032F9 E0               [24] 1366 	movx	a,@dptr
      0032FA F9               [12] 1367 	mov	r1,a
      0032FB A3               [24] 1368 	inc	dptr
      0032FC E0               [24] 1369 	movx	a,@dptr
      0032FD FA               [12] 1370 	mov	r2,a
      0032FE A3               [24] 1371 	inc	dptr
      0032FF E0               [24] 1372 	movx	a,@dptr
      003300 88 82            [24] 1373 	mov	dpl,r0
      003302 89 83            [24] 1374 	mov	dph,r1
      003304 8A F0            [24] 1375 	mov	b,r2
      003306 C0 07            [24] 1376 	push	ar7
      003308 C0 06            [24] 1377 	push	ar6
      00330A C0 05            [24] 1378 	push	ar5
      00330C C0 04            [24] 1379 	push	ar4
      00330E 12 3D 38         [24] 1380 	lcall	___slong2fs
      003311 A8 82            [24] 1381 	mov	r0,dpl
      003313 A9 83            [24] 1382 	mov	r1,dph
      003315 AA F0            [24] 1383 	mov	r2,b
      003317 FB               [12] 1384 	mov	r3,a
      003318 C0 00            [24] 1385 	push	ar0
      00331A C0 01            [24] 1386 	push	ar1
      00331C C0 02            [24] 1387 	push	ar2
      00331E C0 03            [24] 1388 	push	ar3
      003320 90 00 00         [24] 1389 	mov	dptr,#0x0000
      003323 75 F0 20         [24] 1390 	mov	b,#0x20
      003326 74 41            [12] 1391 	mov	a,#0x41
      003328 12 3B 18         [24] 1392 	lcall	___fsmul
      00332B A8 82            [24] 1393 	mov	r0,dpl
      00332D A9 83            [24] 1394 	mov	r1,dph
      00332F AA F0            [24] 1395 	mov	r2,b
      003331 FB               [12] 1396 	mov	r3,a
      003332 E5 81            [12] 1397 	mov	a,sp
      003334 24 FC            [12] 1398 	add	a,#0xfc
      003336 F5 81            [12] 1399 	mov	sp,a
      003338 88 82            [24] 1400 	mov	dpl,r0
      00333A 89 83            [24] 1401 	mov	dph,r1
      00333C 8A F0            [24] 1402 	mov	b,r2
      00333E EB               [12] 1403 	mov	a,r3
      00333F 12 3D 65         [24] 1404 	lcall	___fs2slong
      003342 A8 82            [24] 1405 	mov	r0,dpl
      003344 A9 83            [24] 1406 	mov	r1,dph
      003346 AA F0            [24] 1407 	mov	r2,b
      003348 FB               [12] 1408 	mov	r3,a
      003349 D0 04            [24] 1409 	pop	ar4
      00334B D0 05            [24] 1410 	pop	ar5
      00334D D0 06            [24] 1411 	pop	ar6
      00334F D0 07            [24] 1412 	pop	ar7
      003351 90 02 95         [24] 1413 	mov	dptr,#_read_int_lival_65539_143
      003354 E8               [12] 1414 	mov	a,r0
      003355 F0               [24] 1415 	movx	@dptr,a
      003356 E9               [12] 1416 	mov	a,r1
      003357 A3               [24] 1417 	inc	dptr
      003358 F0               [24] 1418 	movx	@dptr,a
      003359 EA               [12] 1419 	mov	a,r2
      00335A A3               [24] 1420 	inc	dptr
      00335B F0               [24] 1421 	movx	@dptr,a
      00335C EB               [12] 1422 	mov	a,r3
      00335D A3               [24] 1423 	inc	dptr
      00335E F0               [24] 1424 	movx	@dptr,a
                                   1425 ;	terminal.c:58: } while (--exp > 0);
      00335F 1C               [12] 1426 	dec	r4
      003360 C3               [12] 1427 	clr	c
      003361 74 80            [12] 1428 	mov	a,#(0x00 ^ 0x80)
      003363 8C F0            [24] 1429 	mov	b,r4
      003365 63 F0 80         [24] 1430 	xrl	b,#0x80
      003368 95 F0            [12] 1431 	subb	a,b
      00336A 40 87            [24] 1432 	jc	00117$
      00336C                       1433 00121$:
                                   1434 ;	terminal.c:62: if (isnegative) {
      00336C 90 02 90         [24] 1435 	mov	dptr,#_read_int_isnegative_65537_133
      00336F E0               [24] 1436 	movx	a,@dptr
      003370 60 3B            [24] 1437 	jz	00123$
                                   1438 ;	terminal.c:63: *int_value_ptr = -lival;
      003372 C0 05            [24] 1439 	push	ar5
      003374 C0 06            [24] 1440 	push	ar6
      003376 C0 07            [24] 1441 	push	ar7
      003378 90 02 86         [24] 1442 	mov	dptr,#_read_int_PARM_3
      00337B E0               [24] 1443 	movx	a,@dptr
      00337C FA               [12] 1444 	mov	r2,a
      00337D A3               [24] 1445 	inc	dptr
      00337E E0               [24] 1446 	movx	a,@dptr
      00337F FB               [12] 1447 	mov	r3,a
      003380 A3               [24] 1448 	inc	dptr
      003381 E0               [24] 1449 	movx	a,@dptr
      003382 FC               [12] 1450 	mov	r4,a
      003383 90 02 95         [24] 1451 	mov	dptr,#_read_int_lival_65539_143
      003386 E0               [24] 1452 	movx	a,@dptr
      003387 F8               [12] 1453 	mov	r0,a
      003388 A3               [24] 1454 	inc	dptr
      003389 E0               [24] 1455 	movx	a,@dptr
      00338A F9               [12] 1456 	mov	r1,a
      00338B A3               [24] 1457 	inc	dptr
      00338C E0               [24] 1458 	movx	a,@dptr
      00338D A3               [24] 1459 	inc	dptr
      00338E E0               [24] 1460 	movx	a,@dptr
      00338F C3               [12] 1461 	clr	c
      003390 E4               [12] 1462 	clr	a
      003391 98               [12] 1463 	subb	a,r0
      003392 F8               [12] 1464 	mov	r0,a
      003393 E4               [12] 1465 	clr	a
      003394 99               [12] 1466 	subb	a,r1
      003395 F9               [12] 1467 	mov	r1,a
      003396 8A 82            [24] 1468 	mov	dpl,r2
      003398 8B 83            [24] 1469 	mov	dph,r3
      00339A 8C F0            [24] 1470 	mov	b,r4
      00339C E8               [12] 1471 	mov	a,r0
      00339D 12 3D D2         [24] 1472 	lcall	__gptrput
      0033A0 A3               [24] 1473 	inc	dptr
      0033A1 E9               [12] 1474 	mov	a,r1
      0033A2 12 3D D2         [24] 1475 	lcall	__gptrput
      0033A5 D0 07            [24] 1476 	pop	ar7
      0033A7 D0 06            [24] 1477 	pop	ar6
      0033A9 D0 05            [24] 1478 	pop	ar5
      0033AB 80 32            [24] 1479 	sjmp	00124$
      0033AD                       1480 00123$:
                                   1481 ;	terminal.c:65: *int_value_ptr = lival;
      0033AD C0 05            [24] 1482 	push	ar5
      0033AF C0 06            [24] 1483 	push	ar6
      0033B1 C0 07            [24] 1484 	push	ar7
      0033B3 90 02 86         [24] 1485 	mov	dptr,#_read_int_PARM_3
      0033B6 E0               [24] 1486 	movx	a,@dptr
      0033B7 FA               [12] 1487 	mov	r2,a
      0033B8 A3               [24] 1488 	inc	dptr
      0033B9 E0               [24] 1489 	movx	a,@dptr
      0033BA FB               [12] 1490 	mov	r3,a
      0033BB A3               [24] 1491 	inc	dptr
      0033BC E0               [24] 1492 	movx	a,@dptr
      0033BD FC               [12] 1493 	mov	r4,a
      0033BE 90 02 95         [24] 1494 	mov	dptr,#_read_int_lival_65539_143
      0033C1 E0               [24] 1495 	movx	a,@dptr
      0033C2 F8               [12] 1496 	mov	r0,a
      0033C3 A3               [24] 1497 	inc	dptr
      0033C4 E0               [24] 1498 	movx	a,@dptr
      0033C5 F9               [12] 1499 	mov	r1,a
      0033C6 A3               [24] 1500 	inc	dptr
      0033C7 E0               [24] 1501 	movx	a,@dptr
      0033C8 A3               [24] 1502 	inc	dptr
      0033C9 E0               [24] 1503 	movx	a,@dptr
      0033CA 8A 82            [24] 1504 	mov	dpl,r2
      0033CC 8B 83            [24] 1505 	mov	dph,r3
      0033CE 8C F0            [24] 1506 	mov	b,r4
      0033D0 E8               [12] 1507 	mov	a,r0
      0033D1 12 3D D2         [24] 1508 	lcall	__gptrput
      0033D4 A3               [24] 1509 	inc	dptr
      0033D5 E9               [12] 1510 	mov	a,r1
      0033D6 12 3D D2         [24] 1511 	lcall	__gptrput
                                   1512 ;	terminal.c:70: return (true);
      0033D9 D0 07            [24] 1513 	pop	ar7
      0033DB D0 06            [24] 1514 	pop	ar6
      0033DD D0 05            [24] 1515 	pop	ar5
                                   1516 ;	terminal.c:65: *int_value_ptr = lival;
      0033DF                       1517 00124$:
                                   1518 ;	terminal.c:68: *char_count = ptr - line - 1; // Set char_counter to next statement
      0033DF 90 02 89         [24] 1519 	mov	dptr,#_read_int_line_65536_131
      0033E2 E0               [24] 1520 	movx	a,@dptr
      0033E3 F5 25            [12] 1521 	mov	_read_int_sloc2_1_0,a
      0033E5 A3               [24] 1522 	inc	dptr
      0033E6 E0               [24] 1523 	movx	a,@dptr
      0033E7 F5 26            [12] 1524 	mov	(_read_int_sloc2_1_0 + 1),a
      0033E9 A3               [24] 1525 	inc	dptr
      0033EA E0               [24] 1526 	movx	a,@dptr
      0033EB F5 27            [12] 1527 	mov	(_read_int_sloc2_1_0 + 2),a
      0033ED 90 02 8C         [24] 1528 	mov	dptr,#_read_int_ptr_65536_132
      0033F0 E0               [24] 1529 	movx	a,@dptr
      0033F1 F8               [12] 1530 	mov	r0,a
      0033F2 A3               [24] 1531 	inc	dptr
      0033F3 E0               [24] 1532 	movx	a,@dptr
      0033F4 A3               [24] 1533 	inc	dptr
      0033F5 E0               [24] 1534 	movx	a,@dptr
      0033F6 AA 25            [24] 1535 	mov	r2,_read_int_sloc2_1_0
      0033F8 E8               [12] 1536 	mov	a,r0
      0033F9 C3               [12] 1537 	clr	c
      0033FA 9A               [12] 1538 	subb	a,r2
      0033FB 14               [12] 1539 	dec	a
      0033FC 8D 82            [24] 1540 	mov	dpl,r5
      0033FE 8E 83            [24] 1541 	mov	dph,r6
      003400 8F F0            [24] 1542 	mov	b,r7
      003402 12 3D D2         [24] 1543 	lcall	__gptrput
                                   1544 ;	terminal.c:70: return (true);
      003405 75 82 01         [24] 1545 	mov	dpl,#0x01
                                   1546 ;	terminal.c:71: }
      003408 22               [24] 1547 	ret
                                   1548 ;------------------------------------------------------------
                                   1549 ;Allocation info for local variables in function 'terminal_execute_line'
                                   1550 ;------------------------------------------------------------
                                   1551 ;line                      Allocated with name '_terminal_execute_line_line_65536_148'
                                   1552 ;char_count                Allocated with name '_terminal_execute_line_char_count_65536_149'
                                   1553 ;letter                    Allocated with name '_terminal_execute_line_letter_65536_149'
                                   1554 ;int_value                 Allocated with name '_terminal_execute_line_int_value_65536_149'
                                   1555 ;------------------------------------------------------------
                                   1556 ;	terminal.c:74: LINE_STATUS terminal_execute_line(char* line) {
                                   1557 ;	-----------------------------------------
                                   1558 ;	 function terminal_execute_line
                                   1559 ;	-----------------------------------------
      003409                       1560 _terminal_execute_line:
      003409 AF F0            [24] 1561 	mov	r7,b
      00340B AE 83            [24] 1562 	mov	r6,dph
      00340D E5 82            [12] 1563 	mov	a,dpl
      00340F 90 02 99         [24] 1564 	mov	dptr,#_terminal_execute_line_line_65536_148
      003412 F0               [24] 1565 	movx	@dptr,a
      003413 EE               [12] 1566 	mov	a,r6
      003414 A3               [24] 1567 	inc	dptr
      003415 F0               [24] 1568 	movx	@dptr,a
      003416 EF               [12] 1569 	mov	a,r7
      003417 A3               [24] 1570 	inc	dptr
      003418 F0               [24] 1571 	movx	@dptr,a
                                   1572 ;	terminal.c:76: uint8_t char_count = 0;
      003419 90 02 9C         [24] 1573 	mov	dptr,#_terminal_execute_line_char_count_65536_149
      00341C E4               [12] 1574 	clr	a
      00341D F0               [24] 1575 	movx	@dptr,a
                                   1576 ;	terminal.c:78: uint16_t int_value = 0;  // temporary int value that gets read from the terminal then assigned to another variable of any other c component
      00341E 90 02 9E         [24] 1577 	mov	dptr,#_terminal_execute_line_int_value_65536_149
      003421 F0               [24] 1578 	movx	@dptr,a
      003422 A3               [24] 1579 	inc	dptr
      003423 F0               [24] 1580 	movx	@dptr,a
                                   1581 ;	terminal.c:81: memset(&command, 0, sizeof(command_t));
      003424 90 02 DE         [24] 1582 	mov	dptr,#_memset_PARM_2
      003427 F0               [24] 1583 	movx	@dptr,a
      003428 90 02 DF         [24] 1584 	mov	dptr,#_memset_PARM_3
      00342B 74 06            [12] 1585 	mov	a,#0x06
      00342D F0               [24] 1586 	movx	@dptr,a
      00342E E4               [12] 1587 	clr	a
      00342F A3               [24] 1588 	inc	dptr
      003430 F0               [24] 1589 	movx	@dptr,a
      003431 90 02 7D         [24] 1590 	mov	dptr,#_command
      003434 75 F0 00         [24] 1591 	mov	b,#0x00
      003437 12 3D 10         [24] 1592 	lcall	_memset
                                   1593 ;	terminal.c:83: while (line[char_count] != 0) {
      00343A 90 02 99         [24] 1594 	mov	dptr,#_terminal_execute_line_line_65536_148
      00343D E0               [24] 1595 	movx	a,@dptr
      00343E FD               [12] 1596 	mov	r5,a
      00343F A3               [24] 1597 	inc	dptr
      003440 E0               [24] 1598 	movx	a,@dptr
      003441 FE               [12] 1599 	mov	r6,a
      003442 A3               [24] 1600 	inc	dptr
      003443 E0               [24] 1601 	movx	a,@dptr
      003444 FF               [12] 1602 	mov	r7,a
      003445                       1603 00122$:
      003445 90 02 9C         [24] 1604 	mov	dptr,#_terminal_execute_line_char_count_65536_149
      003448 E0               [24] 1605 	movx	a,@dptr
      003449 FC               [12] 1606 	mov	r4,a
      00344A 2D               [12] 1607 	add	a,r5
      00344B F9               [12] 1608 	mov	r1,a
      00344C E4               [12] 1609 	clr	a
      00344D 3E               [12] 1610 	addc	a,r6
      00344E FA               [12] 1611 	mov	r2,a
      00344F 8F 03            [24] 1612 	mov	ar3,r7
      003451 89 82            [24] 1613 	mov	dpl,r1
      003453 8A 83            [24] 1614 	mov	dph,r2
      003455 8B F0            [24] 1615 	mov	b,r3
      003457 12 49 F9         [24] 1616 	lcall	__gptrget
      00345A FB               [12] 1617 	mov	r3,a
      00345B 70 03            [24] 1618 	jnz	00217$
      00345D 02 36 46         [24] 1619 	ljmp	00124$
      003460                       1620 00217$:
                                   1621 ;	terminal.c:87: letter = line[char_count];
      003460 90 02 9D         [24] 1622 	mov	dptr,#_terminal_execute_line_letter_65536_149
      003463 EB               [12] 1623 	mov	a,r3
      003464 F0               [24] 1624 	movx	@dptr,a
                                   1625 ;	terminal.c:90: char_count++;
      003465 90 02 9C         [24] 1626 	mov	dptr,#_terminal_execute_line_char_count_65536_149
      003468 EC               [12] 1627 	mov	a,r4
      003469 04               [12] 1628 	inc	a
      00346A F0               [24] 1629 	movx	@dptr,a
                                   1630 ;	terminal.c:96: if ( letter < 'A' || letter > 'z' || (letter > 'Z' && letter < 'a')) {
      00346B 90 02 9D         [24] 1631 	mov	dptr,#_terminal_execute_line_letter_65536_149
      00346E E0               [24] 1632 	movx	a,@dptr
      00346F FC               [12] 1633 	mov	r4,a
      003470 BC 41 00         [24] 1634 	cjne	r4,#0x41,00218$
      003473                       1635 00218$:
      003473 40 0F            [24] 1636 	jc	00101$
      003475 EC               [12] 1637 	mov	a,r4
      003476 24 85            [12] 1638 	add	a,#0xff - 0x7a
      003478 40 0A            [24] 1639 	jc	00101$
      00347A EC               [12] 1640 	mov	a,r4
      00347B 24 A5            [12] 1641 	add	a,#0xff - 0x5a
      00347D 50 1E            [24] 1642 	jnc	00102$
      00347F BC 61 00         [24] 1643 	cjne	r4,#0x61,00222$
      003482                       1644 00222$:
      003482 50 19            [24] 1645 	jnc	00102$
      003484                       1646 00101$:
                                   1647 ;	terminal.c:97: printf("\rExpected a letter!\n"); 
      003484 74 6B            [12] 1648 	mov	a,#___str_0
      003486 C0 E0            [24] 1649 	push	acc
      003488 74 4B            [12] 1650 	mov	a,#(___str_0 >> 8)
      00348A C0 E0            [24] 1651 	push	acc
      00348C 74 80            [12] 1652 	mov	a,#0x80
      00348E C0 E0            [24] 1653 	push	acc
      003490 12 3F B7         [24] 1654 	lcall	_printf
      003493 15 81            [12] 1655 	dec	sp
      003495 15 81            [12] 1656 	dec	sp
      003497 15 81            [12] 1657 	dec	sp
                                   1658 ;	terminal.c:98: return LINE_FAILED;
      003499 75 82 01         [24] 1659 	mov	dpl,#0x01
      00349C 22               [24] 1660 	ret
      00349D                       1661 00102$:
                                   1662 ;	terminal.c:102: switch(letter) {
      00349D 90 02 9D         [24] 1663 	mov	dptr,#_terminal_execute_line_letter_65536_149
      0034A0 E0               [24] 1664 	movx	a,@dptr
      0034A1 FC               [12] 1665 	mov	r4,a
      0034A2 BC 41 02         [24] 1666 	cjne	r4,#0x41,00224$
      0034A5 80 1B            [24] 1667 	sjmp	00106$
      0034A7                       1668 00224$:
      0034A7 BC 4E 03         [24] 1669 	cjne	r4,#0x4e,00225$
      0034AA 02 35 41         [24] 1670 	ljmp	00112$
      0034AD                       1671 00225$:
      0034AD BC 54 03         [24] 1672 	cjne	r4,#0x54,00226$
      0034B0 02 35 4A         [24] 1673 	ljmp	00113$
      0034B3                       1674 00226$:
      0034B3 BC 69 03         [24] 1675 	cjne	r4,#0x69,00227$
      0034B6 02 35 53         [24] 1676 	ljmp	00114$
      0034B9                       1677 00227$:
      0034B9 BC 6A 03         [24] 1678 	cjne	r4,#0x6a,00228$
      0034BC 02 35 BD         [24] 1679 	ljmp	00117$
      0034BF                       1680 00228$:
      0034BF 02 36 27         [24] 1681 	ljmp	00120$
                                   1682 ;	terminal.c:104: case 'A':
      0034C2                       1683 00106$:
                                   1684 ;	terminal.c:106: if (!read_int(line, &char_count, &int_value)) {
      0034C2 90 02 99         [24] 1685 	mov	dptr,#_terminal_execute_line_line_65536_148
      0034C5 E0               [24] 1686 	movx	a,@dptr
      0034C6 F9               [12] 1687 	mov	r1,a
      0034C7 A3               [24] 1688 	inc	dptr
      0034C8 E0               [24] 1689 	movx	a,@dptr
      0034C9 FA               [12] 1690 	mov	r2,a
      0034CA A3               [24] 1691 	inc	dptr
      0034CB E0               [24] 1692 	movx	a,@dptr
      0034CC FB               [12] 1693 	mov	r3,a
      0034CD 90 02 83         [24] 1694 	mov	dptr,#_read_int_PARM_2
      0034D0 74 9C            [12] 1695 	mov	a,#_terminal_execute_line_char_count_65536_149
      0034D2 F0               [24] 1696 	movx	@dptr,a
      0034D3 74 02            [12] 1697 	mov	a,#(_terminal_execute_line_char_count_65536_149 >> 8)
      0034D5 A3               [24] 1698 	inc	dptr
      0034D6 F0               [24] 1699 	movx	@dptr,a
      0034D7 E4               [12] 1700 	clr	a
      0034D8 A3               [24] 1701 	inc	dptr
      0034D9 F0               [24] 1702 	movx	@dptr,a
      0034DA 90 02 86         [24] 1703 	mov	dptr,#_read_int_PARM_3
      0034DD 74 9E            [12] 1704 	mov	a,#_terminal_execute_line_int_value_65536_149
      0034DF F0               [24] 1705 	movx	@dptr,a
      0034E0 74 02            [12] 1706 	mov	a,#(_terminal_execute_line_int_value_65536_149 >> 8)
      0034E2 A3               [24] 1707 	inc	dptr
      0034E3 F0               [24] 1708 	movx	@dptr,a
      0034E4 E4               [12] 1709 	clr	a
      0034E5 A3               [24] 1710 	inc	dptr
      0034E6 F0               [24] 1711 	movx	@dptr,a
      0034E7 89 82            [24] 1712 	mov	dpl,r1
      0034E9 8A 83            [24] 1713 	mov	dph,r2
      0034EB 8B F0            [24] 1714 	mov	b,r3
      0034ED C0 07            [24] 1715 	push	ar7
      0034EF C0 06            [24] 1716 	push	ar6
      0034F1 C0 05            [24] 1717 	push	ar5
      0034F3 12 31 2F         [24] 1718 	lcall	_read_int
      0034F6 E5 82            [12] 1719 	mov	a,dpl
      0034F8 D0 05            [24] 1720 	pop	ar5
      0034FA D0 06            [24] 1721 	pop	ar6
      0034FC D0 07            [24] 1722 	pop	ar7
      0034FE 70 19            [24] 1723 	jnz	00110$
                                   1724 ;	terminal.c:107: printf("Bad integer Number Format\n");
      003500 74 80            [12] 1725 	mov	a,#___str_1
      003502 C0 E0            [24] 1726 	push	acc
      003504 74 4B            [12] 1727 	mov	a,#(___str_1 >> 8)
      003506 C0 E0            [24] 1728 	push	acc
      003508 74 80            [12] 1729 	mov	a,#0x80
      00350A C0 E0            [24] 1730 	push	acc
      00350C 12 3F B7         [24] 1731 	lcall	_printf
      00350F 15 81            [12] 1732 	dec	sp
      003511 15 81            [12] 1733 	dec	sp
      003513 15 81            [12] 1734 	dec	sp
                                   1735 ;	terminal.c:108: return LINE_FAILED;
      003515 75 82 01         [24] 1736 	mov	dpl,#0x01
      003518 22               [24] 1737 	ret
      003519                       1738 00110$:
                                   1739 ;	terminal.c:110: } else if (command.command_type != COMMAND_NOT_SET) {
      003519 90 02 7D         [24] 1740 	mov	dptr,#_command
      00351C E0               [24] 1741 	movx	a,@dptr
      00351D 60 19            [24] 1742 	jz	00111$
                                   1743 ;	terminal.c:111: printf("Can't have >1 command letter in one command!\n");
      00351F 74 9B            [12] 1744 	mov	a,#___str_2
      003521 C0 E0            [24] 1745 	push	acc
      003523 74 4B            [12] 1746 	mov	a,#(___str_2 >> 8)
      003525 C0 E0            [24] 1747 	push	acc
      003527 74 80            [12] 1748 	mov	a,#0x80
      003529 C0 E0            [24] 1749 	push	acc
      00352B 12 3F B7         [24] 1750 	lcall	_printf
      00352E 15 81            [12] 1751 	dec	sp
      003530 15 81            [12] 1752 	dec	sp
      003532 15 81            [12] 1753 	dec	sp
                                   1754 ;	terminal.c:112: return LINE_FAILED;
      003534 75 82 01         [24] 1755 	mov	dpl,#0x01
      003537 22               [24] 1756 	ret
      003538                       1757 00111$:
                                   1758 ;	terminal.c:116: command.command_type = COMMAND_TEST_INT_READING;
      003538 90 02 7D         [24] 1759 	mov	dptr,#_command
      00353B 74 01            [12] 1760 	mov	a,#0x01
      00353D F0               [24] 1761 	movx	@dptr,a
                                   1762 ;	terminal.c:117: break;
      00353E 02 34 45         [24] 1763 	ljmp	00122$
                                   1764 ;	terminal.c:119: case 'N':
      003541                       1765 00112$:
                                   1766 ;	terminal.c:120: command.command_type = COMMAND_GET_NRF24_REGISTERS;
      003541 90 02 7D         [24] 1767 	mov	dptr,#_command
      003544 74 02            [12] 1768 	mov	a,#0x02
      003546 F0               [24] 1769 	movx	@dptr,a
                                   1770 ;	terminal.c:121: break;
      003547 02 34 45         [24] 1771 	ljmp	00122$
                                   1772 ;	terminal.c:123: case 'T':
      00354A                       1773 00113$:
                                   1774 ;	terminal.c:124: command.command_type = COMMAND_GET_CURRENT_TIME;
      00354A 90 02 7D         [24] 1775 	mov	dptr,#_command
      00354D 74 03            [12] 1776 	mov	a,#0x03
      00354F F0               [24] 1777 	movx	@dptr,a
                                   1778 ;	terminal.c:125: break;
      003550 02 34 45         [24] 1779 	ljmp	00122$
                                   1780 ;	terminal.c:127: case 'i':
      003553                       1781 00114$:
                                   1782 ;	terminal.c:129: if (!read_int(line, &char_count, &int_value)) {
      003553 90 02 99         [24] 1783 	mov	dptr,#_terminal_execute_line_line_65536_148
      003556 E0               [24] 1784 	movx	a,@dptr
      003557 F9               [12] 1785 	mov	r1,a
      003558 A3               [24] 1786 	inc	dptr
      003559 E0               [24] 1787 	movx	a,@dptr
      00355A FA               [12] 1788 	mov	r2,a
      00355B A3               [24] 1789 	inc	dptr
      00355C E0               [24] 1790 	movx	a,@dptr
      00355D FB               [12] 1791 	mov	r3,a
      00355E 90 02 83         [24] 1792 	mov	dptr,#_read_int_PARM_2
      003561 74 9C            [12] 1793 	mov	a,#_terminal_execute_line_char_count_65536_149
      003563 F0               [24] 1794 	movx	@dptr,a
      003564 74 02            [12] 1795 	mov	a,#(_terminal_execute_line_char_count_65536_149 >> 8)
      003566 A3               [24] 1796 	inc	dptr
      003567 F0               [24] 1797 	movx	@dptr,a
      003568 E4               [12] 1798 	clr	a
      003569 A3               [24] 1799 	inc	dptr
      00356A F0               [24] 1800 	movx	@dptr,a
      00356B 90 02 86         [24] 1801 	mov	dptr,#_read_int_PARM_3
      00356E 74 9E            [12] 1802 	mov	a,#_terminal_execute_line_int_value_65536_149
      003570 F0               [24] 1803 	movx	@dptr,a
      003571 74 02            [12] 1804 	mov	a,#(_terminal_execute_line_int_value_65536_149 >> 8)
      003573 A3               [24] 1805 	inc	dptr
      003574 F0               [24] 1806 	movx	@dptr,a
      003575 E4               [12] 1807 	clr	a
      003576 A3               [24] 1808 	inc	dptr
      003577 F0               [24] 1809 	movx	@dptr,a
      003578 89 82            [24] 1810 	mov	dpl,r1
      00357A 8A 83            [24] 1811 	mov	dph,r2
      00357C 8B F0            [24] 1812 	mov	b,r3
      00357E C0 07            [24] 1813 	push	ar7
      003580 C0 06            [24] 1814 	push	ar6
      003582 C0 05            [24] 1815 	push	ar5
      003584 12 31 2F         [24] 1816 	lcall	_read_int
      003587 E5 82            [12] 1817 	mov	a,dpl
      003589 D0 05            [24] 1818 	pop	ar5
      00358B D0 06            [24] 1819 	pop	ar6
      00358D D0 07            [24] 1820 	pop	ar7
      00358F 70 19            [24] 1821 	jnz	00116$
                                   1822 ;	terminal.c:130: printf("Bad int Number Format\n");
      003591 74 C9            [12] 1823 	mov	a,#___str_3
      003593 C0 E0            [24] 1824 	push	acc
      003595 74 4B            [12] 1825 	mov	a,#(___str_3 >> 8)
      003597 C0 E0            [24] 1826 	push	acc
      003599 74 80            [12] 1827 	mov	a,#0x80
      00359B C0 E0            [24] 1828 	push	acc
      00359D 12 3F B7         [24] 1829 	lcall	_printf
      0035A0 15 81            [12] 1830 	dec	sp
      0035A2 15 81            [12] 1831 	dec	sp
      0035A4 15 81            [12] 1832 	dec	sp
                                   1833 ;	terminal.c:131: return LINE_FAILED;
      0035A6 75 82 01         [24] 1834 	mov	dpl,#0x01
      0035A9 22               [24] 1835 	ret
      0035AA                       1836 00116$:
                                   1837 ;	terminal.c:133: command.i = int_value;
      0035AA 90 02 9E         [24] 1838 	mov	dptr,#_terminal_execute_line_int_value_65536_149
      0035AD E0               [24] 1839 	movx	a,@dptr
      0035AE FA               [12] 1840 	mov	r2,a
      0035AF A3               [24] 1841 	inc	dptr
      0035B0 E0               [24] 1842 	movx	a,@dptr
      0035B1 FB               [12] 1843 	mov	r3,a
      0035B2 90 02 7E         [24] 1844 	mov	dptr,#(_command + 0x0001)
      0035B5 EA               [12] 1845 	mov	a,r2
      0035B6 F0               [24] 1846 	movx	@dptr,a
      0035B7 EB               [12] 1847 	mov	a,r3
      0035B8 A3               [24] 1848 	inc	dptr
      0035B9 F0               [24] 1849 	movx	@dptr,a
                                   1850 ;	terminal.c:134: break;
      0035BA 02 34 45         [24] 1851 	ljmp	00122$
                                   1852 ;	terminal.c:136: case 'j':
      0035BD                       1853 00117$:
                                   1854 ;	terminal.c:138: if (!read_int(line, &char_count, &int_value)) {
      0035BD 90 02 99         [24] 1855 	mov	dptr,#_terminal_execute_line_line_65536_148
      0035C0 E0               [24] 1856 	movx	a,@dptr
      0035C1 F9               [12] 1857 	mov	r1,a
      0035C2 A3               [24] 1858 	inc	dptr
      0035C3 E0               [24] 1859 	movx	a,@dptr
      0035C4 FA               [12] 1860 	mov	r2,a
      0035C5 A3               [24] 1861 	inc	dptr
      0035C6 E0               [24] 1862 	movx	a,@dptr
      0035C7 FB               [12] 1863 	mov	r3,a
      0035C8 90 02 83         [24] 1864 	mov	dptr,#_read_int_PARM_2
      0035CB 74 9C            [12] 1865 	mov	a,#_terminal_execute_line_char_count_65536_149
      0035CD F0               [24] 1866 	movx	@dptr,a
      0035CE 74 02            [12] 1867 	mov	a,#(_terminal_execute_line_char_count_65536_149 >> 8)
      0035D0 A3               [24] 1868 	inc	dptr
      0035D1 F0               [24] 1869 	movx	@dptr,a
      0035D2 E4               [12] 1870 	clr	a
      0035D3 A3               [24] 1871 	inc	dptr
      0035D4 F0               [24] 1872 	movx	@dptr,a
      0035D5 90 02 86         [24] 1873 	mov	dptr,#_read_int_PARM_3
      0035D8 74 9E            [12] 1874 	mov	a,#_terminal_execute_line_int_value_65536_149
      0035DA F0               [24] 1875 	movx	@dptr,a
      0035DB 74 02            [12] 1876 	mov	a,#(_terminal_execute_line_int_value_65536_149 >> 8)
      0035DD A3               [24] 1877 	inc	dptr
      0035DE F0               [24] 1878 	movx	@dptr,a
      0035DF E4               [12] 1879 	clr	a
      0035E0 A3               [24] 1880 	inc	dptr
      0035E1 F0               [24] 1881 	movx	@dptr,a
      0035E2 89 82            [24] 1882 	mov	dpl,r1
      0035E4 8A 83            [24] 1883 	mov	dph,r2
      0035E6 8B F0            [24] 1884 	mov	b,r3
      0035E8 C0 07            [24] 1885 	push	ar7
      0035EA C0 06            [24] 1886 	push	ar6
      0035EC C0 05            [24] 1887 	push	ar5
      0035EE 12 31 2F         [24] 1888 	lcall	_read_int
      0035F1 E5 82            [12] 1889 	mov	a,dpl
      0035F3 D0 05            [24] 1890 	pop	ar5
      0035F5 D0 06            [24] 1891 	pop	ar6
      0035F7 D0 07            [24] 1892 	pop	ar7
      0035F9 70 19            [24] 1893 	jnz	00119$
                                   1894 ;	terminal.c:139: printf("Bad int Number Format\n");
      0035FB 74 C9            [12] 1895 	mov	a,#___str_3
      0035FD C0 E0            [24] 1896 	push	acc
      0035FF 74 4B            [12] 1897 	mov	a,#(___str_3 >> 8)
      003601 C0 E0            [24] 1898 	push	acc
      003603 74 80            [12] 1899 	mov	a,#0x80
      003605 C0 E0            [24] 1900 	push	acc
      003607 12 3F B7         [24] 1901 	lcall	_printf
      00360A 15 81            [12] 1902 	dec	sp
      00360C 15 81            [12] 1903 	dec	sp
      00360E 15 81            [12] 1904 	dec	sp
                                   1905 ;	terminal.c:140: return LINE_FAILED;
      003610 75 82 01         [24] 1906 	mov	dpl,#0x01
      003613 22               [24] 1907 	ret
      003614                       1908 00119$:
                                   1909 ;	terminal.c:142: command.j = int_value;
      003614 90 02 9E         [24] 1910 	mov	dptr,#_terminal_execute_line_int_value_65536_149
      003617 E0               [24] 1911 	movx	a,@dptr
      003618 FA               [12] 1912 	mov	r2,a
      003619 A3               [24] 1913 	inc	dptr
      00361A E0               [24] 1914 	movx	a,@dptr
      00361B FB               [12] 1915 	mov	r3,a
      00361C 90 02 80         [24] 1916 	mov	dptr,#(_command + 0x0003)
      00361F EA               [12] 1917 	mov	a,r2
      003620 F0               [24] 1918 	movx	@dptr,a
      003621 EB               [12] 1919 	mov	a,r3
      003622 A3               [24] 1920 	inc	dptr
      003623 F0               [24] 1921 	movx	@dptr,a
                                   1922 ;	terminal.c:143: break;
      003624 02 34 45         [24] 1923 	ljmp	00122$
                                   1924 ;	terminal.c:145: default:
      003627                       1925 00120$:
                                   1926 ;	terminal.c:146: printf("Command Letter '%c' Not Implemented\n", letter);
      003627 7F 00            [12] 1927 	mov	r7,#0x00
      003629 C0 04            [24] 1928 	push	ar4
      00362B C0 07            [24] 1929 	push	ar7
      00362D 74 E0            [12] 1930 	mov	a,#___str_4
      00362F C0 E0            [24] 1931 	push	acc
      003631 74 4B            [12] 1932 	mov	a,#(___str_4 >> 8)
      003633 C0 E0            [24] 1933 	push	acc
      003635 74 80            [12] 1934 	mov	a,#0x80
      003637 C0 E0            [24] 1935 	push	acc
      003639 12 3F B7         [24] 1936 	lcall	_printf
      00363C E5 81            [12] 1937 	mov	a,sp
      00363E 24 FB            [12] 1938 	add	a,#0xfb
      003640 F5 81            [12] 1939 	mov	sp,a
                                   1940 ;	terminal.c:147: return LINE_FAILED;
      003642 75 82 01         [24] 1941 	mov	dpl,#0x01
      003645 22               [24] 1942 	ret
                                   1943 ;	terminal.c:148: }
      003646                       1944 00124$:
                                   1945 ;	terminal.c:152: switch(command.command_type) {
      003646 90 02 7D         [24] 1946 	mov	dptr,#_command
      003649 E0               [24] 1947 	movx	a,@dptr
      00364A FF               [12] 1948 	mov	r7,a
      00364B BF 01 02         [24] 1949 	cjne	r7,#0x01,00233$
      00364E 80 23            [24] 1950 	sjmp	00129$
      003650                       1951 00233$:
      003650 BF 02 02         [24] 1952 	cjne	r7,#0x02,00234$
      003653 80 1E            [24] 1953 	sjmp	00129$
      003655                       1954 00234$:
      003655 BF 03 02         [24] 1955 	cjne	r7,#0x03,00235$
      003658 80 19            [24] 1956 	sjmp	00129$
      00365A                       1957 00235$:
                                   1958 ;	terminal.c:164: printf("SHOULD NEVER REACH HERE IN ERROR CHECKING.\n");
      00365A 74 05            [12] 1959 	mov	a,#___str_5
      00365C C0 E0            [24] 1960 	push	acc
      00365E 74 4C            [12] 1961 	mov	a,#(___str_5 >> 8)
      003660 C0 E0            [24] 1962 	push	acc
      003662 74 80            [12] 1963 	mov	a,#0x80
      003664 C0 E0            [24] 1964 	push	acc
      003666 12 3F B7         [24] 1965 	lcall	_printf
      003669 15 81            [12] 1966 	dec	sp
      00366B 15 81            [12] 1967 	dec	sp
      00366D 15 81            [12] 1968 	dec	sp
                                   1969 ;	terminal.c:165: return LINE_FAILED;
      00366F 75 82 01         [24] 1970 	mov	dpl,#0x01
      003672 22               [24] 1971 	ret
                                   1972 ;	terminal.c:166: }
      003673                       1973 00129$:
                                   1974 ;	terminal.c:169: switch(command.command_type) {
      003673 90 02 7D         [24] 1975 	mov	dptr,#_command
      003676 E0               [24] 1976 	movx	a,@dptr
      003677 FF               [12] 1977 	mov	r7,a
      003678 BF 01 02         [24] 1978 	cjne	r7,#0x01,00236$
      00367B 80 0A            [24] 1979 	sjmp	00130$
      00367D                       1980 00236$:
      00367D BF 02 02         [24] 1981 	cjne	r7,#0x02,00237$
      003680 80 26            [24] 1982 	sjmp	00131$
      003682                       1983 00237$:
                                   1984 ;	terminal.c:171: case COMMAND_TEST_INT_READING:
      003682 BF 03 51         [24] 1985 	cjne	r7,#0x03,00133$
      003685 80 26            [24] 1986 	sjmp	00132$
      003687                       1987 00130$:
                                   1988 ;	terminal.c:172: printf("Read INT value: %d\n", int_value);
      003687 90 02 9E         [24] 1989 	mov	dptr,#_terminal_execute_line_int_value_65536_149
      00368A E0               [24] 1990 	movx	a,@dptr
      00368B C0 E0            [24] 1991 	push	acc
      00368D A3               [24] 1992 	inc	dptr
      00368E E0               [24] 1993 	movx	a,@dptr
      00368F C0 E0            [24] 1994 	push	acc
      003691 74 31            [12] 1995 	mov	a,#___str_6
      003693 C0 E0            [24] 1996 	push	acc
      003695 74 4C            [12] 1997 	mov	a,#(___str_6 >> 8)
      003697 C0 E0            [24] 1998 	push	acc
      003699 74 80            [12] 1999 	mov	a,#0x80
      00369B C0 E0            [24] 2000 	push	acc
      00369D 12 3F B7         [24] 2001 	lcall	_printf
      0036A0 E5 81            [12] 2002 	mov	a,sp
      0036A2 24 FB            [12] 2003 	add	a,#0xfb
      0036A4 F5 81            [12] 2004 	mov	sp,a
                                   2005 ;	terminal.c:173: break;
                                   2006 ;	terminal.c:175: case COMMAND_GET_NRF24_REGISTERS:
      0036A6 80 47            [24] 2007 	sjmp	00134$
      0036A8                       2008 00131$:
                                   2009 ;	terminal.c:176: nrf24_print_internal_register_values();
      0036A8 12 28 39         [24] 2010 	lcall	_nrf24_print_internal_register_values
                                   2011 ;	terminal.c:177: break;
                                   2012 ;	terminal.c:179: case COMMAND_GET_CURRENT_TIME:
      0036AB 80 42            [24] 2013 	sjmp	00134$
      0036AD                       2014 00132$:
                                   2015 ;	terminal.c:180: report("Current Time Passed: %lu\n", get_current_time());
      0036AD 12 38 F2         [24] 2016 	lcall	_get_current_time
      0036B0 AC 82            [24] 2017 	mov	r4,dpl
      0036B2 AD 83            [24] 2018 	mov	r5,dph
      0036B4 AE F0            [24] 2019 	mov	r6,b
      0036B6 FF               [12] 2020 	mov	r7,a
      0036B7 C0 04            [24] 2021 	push	ar4
      0036B9 C0 05            [24] 2022 	push	ar5
      0036BB C0 06            [24] 2023 	push	ar6
      0036BD C0 07            [24] 2024 	push	ar7
      0036BF 74 45            [12] 2025 	mov	a,#___str_7
      0036C1 C0 E0            [24] 2026 	push	acc
      0036C3 74 4C            [12] 2027 	mov	a,#(___str_7 >> 8)
      0036C5 C0 E0            [24] 2028 	push	acc
      0036C7 74 80            [12] 2029 	mov	a,#0x80
      0036C9 C0 E0            [24] 2030 	push	acc
      0036CB 12 20 06         [24] 2031 	lcall	_report
      0036CE E5 81            [12] 2032 	mov	a,sp
      0036D0 24 F9            [12] 2033 	add	a,#0xf9
      0036D2 F5 81            [12] 2034 	mov	sp,a
                                   2035 ;	terminal.c:181: break;
                                   2036 ;	terminal.c:183: default:
      0036D4 80 19            [24] 2037 	sjmp	00134$
      0036D6                       2038 00133$:
                                   2039 ;	terminal.c:188: printf("SHOULD NEVER REACH HERE.");
      0036D6 74 5F            [12] 2040 	mov	a,#___str_8
      0036D8 C0 E0            [24] 2041 	push	acc
      0036DA 74 4C            [12] 2042 	mov	a,#(___str_8 >> 8)
      0036DC C0 E0            [24] 2043 	push	acc
      0036DE 74 80            [12] 2044 	mov	a,#0x80
      0036E0 C0 E0            [24] 2045 	push	acc
      0036E2 12 3F B7         [24] 2046 	lcall	_printf
      0036E5 15 81            [12] 2047 	dec	sp
      0036E7 15 81            [12] 2048 	dec	sp
      0036E9 15 81            [12] 2049 	dec	sp
                                   2050 ;	terminal.c:189: return LINE_FAILED;
      0036EB 75 82 01         [24] 2051 	mov	dpl,#0x01
                                   2052 ;	terminal.c:190: }
      0036EE 22               [24] 2053 	ret
      0036EF                       2054 00134$:
                                   2055 ;	terminal.c:192: return LINE_PASSED;
      0036EF 75 82 00         [24] 2056 	mov	dpl,#0x00
                                   2057 ;	terminal.c:194: }
      0036F2 22               [24] 2058 	ret
                                   2059 	.area CSEG    (CODE)
                                   2060 	.area CONST   (CODE)
                                   2061 	.area CONST   (CODE)
      004B6B                       2062 ___str_0:
      004B6B 0D                    2063 	.db 0x0d
      004B6C 45 78 70 65 63 74 65  2064 	.ascii "Expected a letter!"
             64 20 61 20 6C 65 74
             74 65 72 21
      004B7E 0A                    2065 	.db 0x0a
      004B7F 00                    2066 	.db 0x00
                                   2067 	.area CSEG    (CODE)
                                   2068 	.area CONST   (CODE)
      004B80                       2069 ___str_1:
      004B80 42 61 64 20 69 6E 74  2070 	.ascii "Bad integer Number Format"
             65 67 65 72 20 4E 75
             6D 62 65 72 20 46 6F
             72 6D 61 74
      004B99 0A                    2071 	.db 0x0a
      004B9A 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      004B9B                       2075 ___str_2:
      004B9B 43 61 6E 27 74 20 68  2076 	.ascii "Can't have >1 command letter in one command!"
             61 76 65 20 3E 31 20
             63 6F 6D 6D 61 6E 64
             20 6C 65 74 74 65 72
             20 69 6E 20 6F 6E 65
             20 63 6F 6D 6D 61 6E
             64 21
      004BC7 0A                    2077 	.db 0x0a
      004BC8 00                    2078 	.db 0x00
                                   2079 	.area CSEG    (CODE)
                                   2080 	.area CONST   (CODE)
      004BC9                       2081 ___str_3:
      004BC9 42 61 64 20 69 6E 74  2082 	.ascii "Bad int Number Format"
             20 4E 75 6D 62 65 72
             20 46 6F 72 6D 61 74
      004BDE 0A                    2083 	.db 0x0a
      004BDF 00                    2084 	.db 0x00
                                   2085 	.area CSEG    (CODE)
                                   2086 	.area CONST   (CODE)
      004BE0                       2087 ___str_4:
      004BE0 43 6F 6D 6D 61 6E 64  2088 	.ascii "Command Letter '%c' Not Implemented"
             20 4C 65 74 74 65 72
             20 27 25 63 27 20 4E
             6F 74 20 49 6D 70 6C
             65 6D 65 6E 74 65 64
      004C03 0A                    2089 	.db 0x0a
      004C04 00                    2090 	.db 0x00
                                   2091 	.area CSEG    (CODE)
                                   2092 	.area CONST   (CODE)
      004C05                       2093 ___str_5:
      004C05 53 48 4F 55 4C 44 20  2094 	.ascii "SHOULD NEVER REACH HERE IN ERROR CHECKING."
             4E 45 56 45 52 20 52
             45 41 43 48 20 48 45
             52 45 20 49 4E 20 45
             52 52 4F 52 20 43 48
             45 43 4B 49 4E 47 2E
      004C2F 0A                    2095 	.db 0x0a
      004C30 00                    2096 	.db 0x00
                                   2097 	.area CSEG    (CODE)
                                   2098 	.area CONST   (CODE)
      004C31                       2099 ___str_6:
      004C31 52 65 61 64 20 49 4E  2100 	.ascii "Read INT value: %d"
             54 20 76 61 6C 75 65
             3A 20 25 64
      004C43 0A                    2101 	.db 0x0a
      004C44 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      004C45                       2105 ___str_7:
      004C45 43 75 72 72 65 6E 74  2106 	.ascii "Current Time Passed: %lu"
             20 54 69 6D 65 20 50
             61 73 73 65 64 3A 20
             25 6C 75
      004C5D 0A                    2107 	.db 0x0a
      004C5E 00                    2108 	.db 0x00
                                   2109 	.area CSEG    (CODE)
                                   2110 	.area CONST   (CODE)
      004C5F                       2111 ___str_8:
      004C5F 53 48 4F 55 4C 44 20  2112 	.ascii "SHOULD NEVER REACH HERE."
             4E 45 56 45 52 20 52
             45 41 43 48 20 48 45
             52 45 2E
      004C77 00                    2113 	.db 0x00
                                   2114 	.area CSEG    (CODE)
                                   2115 	.area XINIT   (CODE)
                                   2116 	.area CABS    (ABS,CODE)
