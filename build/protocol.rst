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
                                     11 	.globl _terminal_execute_line
                                     12 	.globl _nrf24_receive
                                     13 	.globl _report_toggle_led
                                     14 	.globl _uartGetBlock
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
                                    161 	.globl _nrf24_receive_func_ptr
                                    162 	.globl _uart_receive_func_ptr
                                    163 	.globl _char_count
                                    164 	.globl _c
                                    165 	.globl _DMA_UR4R_TXAL
                                    166 	.globl _DMA_UR4R_TXAH
                                    167 	.globl _DMA_UR4R_DONE
                                    168 	.globl _DMA_UR4R_AMT
                                    169 	.globl _DMA_UR4R_STA
                                    170 	.globl _DMA_UR4R_CR
                                    171 	.globl _DMA_UR4R_CFG
                                    172 	.globl _DMA_UR4T_TXAL
                                    173 	.globl _DMA_UR4T_TXAH
                                    174 	.globl _DMA_UR4T_DONE
                                    175 	.globl _DMA_UR4T_AMT
                                    176 	.globl _DMA_UR4T_STA
                                    177 	.globl _DMA_UR4T_CR
                                    178 	.globl _DMA_UR4T_CFG
                                    179 	.globl _DMA_UR3R_TXAL
                                    180 	.globl _DMA_UR3R_TXAH
                                    181 	.globl _DMA_UR3R_DONE
                                    182 	.globl _DMA_UR3R_AMT
                                    183 	.globl _DMA_UR3R_STA
                                    184 	.globl _DMA_UR3R_CR
                                    185 	.globl _DMA_UR3R_CFG
                                    186 	.globl _DMA_UR3T_TXAL
                                    187 	.globl _DMA_UR3T_TXAH
                                    188 	.globl _DMA_UR3T_DONE
                                    189 	.globl _DMA_UR3T_AMT
                                    190 	.globl _DMA_UR3T_STA
                                    191 	.globl _DMA_UR3T_CR
                                    192 	.globl _DMA_UR3T_CFG
                                    193 	.globl _DMA_UR2R_TXAL
                                    194 	.globl _DMA_UR2R_TXAH
                                    195 	.globl _DMA_UR2R_DONE
                                    196 	.globl _DMA_UR2R_AMT
                                    197 	.globl _DMA_UR2R_STA
                                    198 	.globl _DMA_UR2R_CR
                                    199 	.globl _DMA_UR2R_CFG
                                    200 	.globl _DMA_UR2T_TXAL
                                    201 	.globl _DMA_UR2T_TXAH
                                    202 	.globl _DMA_UR2T_DONE
                                    203 	.globl _DMA_UR2T_AMT
                                    204 	.globl _DMA_UR2T_STA
                                    205 	.globl _DMA_UR2T_CR
                                    206 	.globl _DMA_UR2T_CFG
                                    207 	.globl _DMA_UR1R_TXAL
                                    208 	.globl _DMA_UR1R_TXAH
                                    209 	.globl _DMA_UR1R_DONE
                                    210 	.globl _DMA_UR1R_AMT
                                    211 	.globl _DMA_UR1R_STA
                                    212 	.globl _DMA_UR1R_CR
                                    213 	.globl _DMA_UR1R_CFG
                                    214 	.globl _DMA_UR1T_TXAL
                                    215 	.globl _DMA_UR1T_TXAH
                                    216 	.globl _DMA_UR1T_DONE
                                    217 	.globl _DMA_URTX_AMT
                                    218 	.globl _DMA_UR1T_STA
                                    219 	.globl _DMA_UR1T_CR
                                    220 	.globl _DMA_UR1T_CFG
                                    221 	.globl _TM4PS
                                    222 	.globl _TM3PS
                                    223 	.globl _TM2PS
                                    224 	.globl _IRC48MCR
                                    225 	.globl _IRCDB
                                    226 	.globl _MCLKOCR
                                    227 	.globl _CKSEL
                                    228 	.globl _IRC32KCR
                                    229 	.globl _X32KCR
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
                                    424 	.globl _CHIP_PACKAGE_TYPE
                                    425 	.globl _CHIP_TEST_DAY_BCD
                                    426 	.globl _CHIP_TEST_MONTH_BCD
                                    427 	.globl _CHIP_TEST_YEAR_BCD
                                    428 	.globl _PROGRAM_AREA_SIZE
                                    429 	.globl _VRTRIM_44MHz
                                    430 	.globl _VRTRIM_27MHz
                                    431 	.globl _VRTRIM_10MHz
                                    432 	.globl _VRTRIM_6MHz
                                    433 	.globl _IRTRIM_48MHz
                                    434 	.globl _IRTRIM_44_2368MHz
                                    435 	.globl _IRTRIM_40MHz
                                    436 	.globl _IRTRIM_36_864MHz
                                    437 	.globl _IRTRIM_35MHz
                                    438 	.globl _IRTRIM_33_1776MHz
                                    439 	.globl _IRTRIM_30MHz
                                    440 	.globl _IRTRIM_27MHz
                                    441 	.globl _IRTRIM_24MHz
                                    442 	.globl _IRTRIM_22_1184MHz
                                    443 	.globl ___OTHER_INFO
                                    444 	.globl _CHIP_GUID
                                    445 	.globl _DMA_ADC_CHSW1
                                    446 	.globl _DMA_ADC_CHSW0
                                    447 	.globl _DMA_ADC_CFG2
                                    448 	.globl _DMA_ADC_RXAL
                                    449 	.globl _DMA_ADC_RXAH
                                    450 	.globl _DMA_ADC_STA
                                    451 	.globl _DMA_ADC_CR
                                    452 	.globl _DMA_ADC_CFG
                                    453 	.globl _ADCEXCFG
                                    454 	.globl _ADCTIM
                                    455 	.globl _protocol_main_loop
                                    456 ;--------------------------------------------------------
                                    457 ; special function registers
                                    458 ;--------------------------------------------------------
                                    459 	.area RSEG    (ABS,DATA)
      000000                        460 	.org 0x0000
                           0000BC   461 _ADC_CONTR	=	0x00bc
                           0000BD   462 _ADC_RESH	=	0x00bd
                           0000BE   463 _ADC_RESL	=	0x00be
                           00BDBE   464 _ADC_RES	=	0xbdbe
                           0000DE   465 _ADCCFG	=	0x00de
                           0000FA   466 _DMA_ADC_AMT	=	0x00fa
                           0000E6   467 _CMPCR1	=	0x00e6
                           0000E7   468 _CMPCR2	=	0x00e7
                           000082   469 _DPL	=	0x0082
                           000083   470 _DPH	=	0x0083
                           008382   471 _DP	=	0x8382
                           0000E3   472 _DPS	=	0x00e3
                           0000E4   473 _DPL1	=	0x00e4
                           0000E5   474 _DPH1	=	0x00e5
                           0000AE   475 _TA	=	0x00ae
                           000090   476 _P1	=	0x0090
                           000091   477 _P1M1	=	0x0091
                           000092   478 _P1M0	=	0x0092
                           0000A0   479 _P2	=	0x00a0
                           000095   480 _P2M1	=	0x0095
                           000096   481 _P2M0	=	0x0096
                           0000B0   482 _P3	=	0x00b0
                           0000B1   483 _P3M1	=	0x00b1
                           0000B2   484 _P3M0	=	0x00b2
                           0000C8   485 _P5	=	0x00c8
                           0000C9   486 _P5M1	=	0x00c9
                           0000CA   487 _P5M0	=	0x00ca
                           0000C2   488 _IAP_DATA	=	0x00c2
                           0000C3   489 _IAP_ADDRH	=	0x00c3
                           0000C4   490 _IAP_ADDRL	=	0x00c4
                           00C3C4   491 _IAP_ADDR	=	0xc3c4
                           0000C5   492 _IAP_CMD	=	0x00c5
                           0000C6   493 _IAP_TRIG	=	0x00c6
                           0000C7   494 _IAP_CONTR	=	0x00c7
                           0000F5   495 _IAP_TPS	=	0x00f5
                           00008F   496 _INT_CLKO	=	0x008f
                           0000A8   497 _IE1	=	0x00a8
                           0000B8   498 _IP1L	=	0x00b8
                           0000B7   499 _IP1H	=	0x00b7
                           0000AF   500 _IE2	=	0x00af
                           0000B5   501 _IP2L	=	0x00b5
                           0000B6   502 _IP2H	=	0x00b6
                           0000DF   503 _IP3L	=	0x00df
                           0000EE   504 _IP3H	=	0x00ee
                           000081   505 _SP	=	0x0081
                           0000D0   506 _PSW	=	0x00d0
                           0000E0   507 _ACC	=	0x00e0
                           0000F0   508 _B	=	0x00f0
                           000087   509 _PCON	=	0x0087
                           0000FF   510 _RSTCFG	=	0x00ff
                           0000A2   511 _P_SW1	=	0x00a2
                           0000BA   512 _P_SW2	=	0x00ba
                           0000A1   513 _BUS_SPEED	=	0x00a1
                           0000AA   514 _WKTCL	=	0x00aa
                           0000AB   515 _WKTCH	=	0x00ab
                           00ABAA   516 _WKTC	=	0xabaa
                           0000CD   517 _SPSTAT	=	0x00cd
                           0000CE   518 _SPCTL	=	0x00ce
                           0000CF   519 _SPDAT	=	0x00cf
                           00009D   520 _IRCBAND	=	0x009d
                           00009E   521 _LIRTRIM	=	0x009e
                           00009F   522 _IRTRIM	=	0x009f
                           000088   523 _TCON	=	0x0088
                           000089   524 _TMOD	=	0x0089
                           00008A   525 _T0L	=	0x008a
                           00008C   526 _T0H	=	0x008c
                           008C8A   527 _T0	=	0x8c8a
                           00008B   528 _T1L	=	0x008b
                           00008D   529 _T1H	=	0x008d
                           008D8B   530 _T1	=	0x8d8b
                           0000D7   531 _T2L	=	0x00d7
                           0000D6   532 _T2H	=	0x00d6
                           00D6D7   533 _T2	=	0xd6d7
                           00008E   534 _AUXR	=	0x008e
                           0000C1   535 _WDT_CONTR	=	0x00c1
                           0000D1   536 _T4T3M	=	0x00d1
                           0000D2   537 _T4H	=	0x00d2
                           0000D3   538 _T4L	=	0x00d3
                           00D2D3   539 _T4	=	0xd2d3
                           0000D4   540 _T3H	=	0x00d4
                           0000D5   541 _T3L	=	0x00d5
                           00D4D5   542 _T3	=	0xd4d5
                           0000EF   543 _AUXINTIF	=	0x00ef
                           0000A9   544 _SADDR	=	0x00a9
                           0000B9   545 _SADEN	=	0x00b9
                           000098   546 _S1CON	=	0x0098
                           000099   547 _S1BUF	=	0x0099
                           00009A   548 _S2CON	=	0x009a
                           00009B   549 _S2BUF	=	0x009b
                           0000AC   550 _S3CON	=	0x00ac
                           0000AD   551 _S3BUF	=	0x00ad
                           000084   552 _S4CON	=	0x0084
                           000085   553 _S4BUF	=	0x0085
                           0000DC   554 _USBCLK	=	0x00dc
                           0000EC   555 _USBDAT	=	0x00ec
                           0000F4   556 _USBCON	=	0x00f4
                           0000FC   557 _USBADR	=	0x00fc
                                    558 ;--------------------------------------------------------
                                    559 ; special function bits
                                    560 ;--------------------------------------------------------
                                    561 	.area RSEG    (ABS,DATA)
      000000                        562 	.org 0x0000
                           000090   563 _P1_0	=	0x0090
                           000091   564 _P1_1	=	0x0091
                           000092   565 _P1_2	=	0x0092
                           000093   566 _P1_3	=	0x0093
                           000094   567 _P1_4	=	0x0094
                           000095   568 _P1_5	=	0x0095
                           000096   569 _P1_6	=	0x0096
                           000097   570 _P1_7	=	0x0097
                           0000A0   571 _P2_0	=	0x00a0
                           0000A1   572 _P2_1	=	0x00a1
                           0000A2   573 _P2_2	=	0x00a2
                           0000A3   574 _P2_3	=	0x00a3
                           0000A4   575 _P2_4	=	0x00a4
                           0000A5   576 _P2_5	=	0x00a5
                           0000A6   577 _P2_6	=	0x00a6
                           0000A7   578 _P2_7	=	0x00a7
                           0000B0   579 _P3_0	=	0x00b0
                           0000B1   580 _P3_1	=	0x00b1
                           0000B2   581 _P3_2	=	0x00b2
                           0000B3   582 _P3_3	=	0x00b3
                           0000B4   583 _P3_4	=	0x00b4
                           0000B5   584 _P3_5	=	0x00b5
                           0000B6   585 _P3_6	=	0x00b6
                           0000B7   586 _P3_7	=	0x00b7
                           0000C8   587 _P5_0	=	0x00c8
                           0000C9   588 _P5_1	=	0x00c9
                           0000CA   589 _P5_2	=	0x00ca
                           0000CB   590 _P5_3	=	0x00cb
                           0000CC   591 _P5_4	=	0x00cc
                           0000CD   592 _P5_5	=	0x00cd
                           000088   593 _INT0TR	=	0x0088
                           00008A   594 _INT1TR	=	0x008a
                           0000A8   595 _INT0IE	=	0x00a8
                           0000AA   596 _INT1IE	=	0x00aa
                           0000AF   597 _EA	=	0x00af
                           0000D0   598 _P	=	0x00d0
                           0000D1   599 _F1	=	0x00d1
                           0000D2   600 _OV	=	0x00d2
                           0000D3   601 _RS0	=	0x00d3
                           0000D4   602 _RS1	=	0x00d4
                           0000D5   603 _F0	=	0x00d5
                           0000D6   604 _AC	=	0x00d6
                           0000D7   605 _CY	=	0x00d7
                           00008C   606 _T0RUN	=	0x008c
                           00008E   607 _T1RUN	=	0x008e
                           0000A9   608 _T0IE	=	0x00a9
                           0000AB   609 _T1IE	=	0x00ab
                           00009F   610 _S1SM0_FE	=	0x009f
                                    611 ;--------------------------------------------------------
                                    612 ; overlayable register banks
                                    613 ;--------------------------------------------------------
                                    614 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        615 	.ds 8
                                    616 ;--------------------------------------------------------
                                    617 ; internal ram data
                                    618 ;--------------------------------------------------------
                                    619 	.area DSEG    (DATA)
                                    620 ;--------------------------------------------------------
                                    621 ; overlayable items in internal ram 
                                    622 ;--------------------------------------------------------
                                    623 ;--------------------------------------------------------
                                    624 ; indirectly addressable internal ram data
                                    625 ;--------------------------------------------------------
                                    626 	.area ISEG    (DATA)
                                    627 ;--------------------------------------------------------
                                    628 ; absolute internal ram data
                                    629 ;--------------------------------------------------------
                                    630 	.area IABS    (ABS,DATA)
                                    631 	.area IABS    (ABS,DATA)
                                    632 ;--------------------------------------------------------
                                    633 ; bit data
                                    634 ;--------------------------------------------------------
                                    635 	.area BSEG    (BIT)
                                    636 ;--------------------------------------------------------
                                    637 ; paged external ram data
                                    638 ;--------------------------------------------------------
                                    639 	.area PSEG    (PAG,XDATA)
                                    640 ;--------------------------------------------------------
                                    641 ; external ram data
                                    642 ;--------------------------------------------------------
                                    643 	.area XSEG    (XDATA)
                           00FEA8   644 _ADCTIM	=	0xfea8
                           00FEAD   645 _ADCEXCFG	=	0xfead
                           00FA10   646 _DMA_ADC_CFG	=	0xfa10
                           00FA11   647 _DMA_ADC_CR	=	0xfa11
                           00FA12   648 _DMA_ADC_STA	=	0xfa12
                           00FA17   649 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   650 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   651 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   652 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   653 _DMA_ADC_CHSW1	=	0xfa1b
                           00FDE0   654 _CHIP_GUID	=	0xfde0
                           00FDE7   655 ___OTHER_INFO	=	0xfde7
                           00FDEB   656 _IRTRIM_22_1184MHz	=	0xfdeb
                           00FDEC   657 _IRTRIM_24MHz	=	0xfdec
                           00FDED   658 _IRTRIM_27MHz	=	0xfded
                           00FDEE   659 _IRTRIM_30MHz	=	0xfdee
                           00FDEF   660 _IRTRIM_33_1776MHz	=	0xfdef
                           00FDF0   661 _IRTRIM_35MHz	=	0xfdf0
                           00FDF1   662 _IRTRIM_36_864MHz	=	0xfdf1
                           00FDF2   663 _IRTRIM_40MHz	=	0xfdf2
                           00FDF3   664 _IRTRIM_44_2368MHz	=	0xfdf3
                           00FDF4   665 _IRTRIM_48MHz	=	0xfdf4
                           00FDF5   666 _VRTRIM_6MHz	=	0xfdf5
                           00FDF6   667 _VRTRIM_10MHz	=	0xfdf6
                           00FDF7   668 _VRTRIM_27MHz	=	0xfdf7
                           00FDF8   669 _VRTRIM_44MHz	=	0xfdf8
                           00FDF9   670 _PROGRAM_AREA_SIZE	=	0xfdf9
                           00FDFB   671 _CHIP_TEST_YEAR_BCD	=	0xfdfb
                           00FDFC   672 _CHIP_TEST_MONTH_BCD	=	0xfdfc
                           00FDFD   673 _CHIP_TEST_DAY_BCD	=	0xfdfd
                           00FDFE   674 _CHIP_PACKAGE_TYPE	=	0xfdfe
                           00FEAE   675 _CMPEXCFG	=	0xfeae
                           00FA00   676 _DMA_M2M_CFG	=	0xfa00
                           00FA01   677 _DMA_M2M_CR	=	0xfa01
                           00FA02   678 _DMA_M2M_STA	=	0xfa02
                           00FA03   679 _DMA_M2M_AMT	=	0xfa03
                           00FA04   680 _DMA_M2M_DONE	=	0xfa04
                           00FA05   681 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   682 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   683 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   684 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   685 _P1INTE	=	0xfd01
                           00FD11   686 _P1INTF	=	0xfd11
                           00FD21   687 _P1IM0	=	0xfd21
                           00FD31   688 _P1IM1	=	0xfd31
                           00FD41   689 _P1WKUE	=	0xfd41
                           00FE11   690 _P1PU	=	0xfe11
                           00FE19   691 _P1NCS	=	0xfe19
                           00FE21   692 _P1SR	=	0xfe21
                           00FE29   693 _P1DR	=	0xfe29
                           00FE31   694 _P1IE	=	0xfe31
                           00FD02   695 _P2INTE	=	0xfd02
                           00FD12   696 _P2INTF	=	0xfd12
                           00FD22   697 _P2IM0	=	0xfd22
                           00FD32   698 _P2IM1	=	0xfd32
                           00FD42   699 _P2WKUE	=	0xfd42
                           00FE12   700 _P2PU	=	0xfe12
                           00FE1A   701 _P2NCS	=	0xfe1a
                           00FE22   702 _P2SR	=	0xfe22
                           00FE2A   703 _P2DR	=	0xfe2a
                           00FE32   704 _P2IE	=	0xfe32
                           00FD03   705 _P3INTE	=	0xfd03
                           00FD13   706 _P3INTF	=	0xfd13
                           00FD23   707 _P3IM0	=	0xfd23
                           00FD33   708 _P3IM1	=	0xfd33
                           00FD43   709 _P3WKUE	=	0xfd43
                           00FE13   710 _P3PU	=	0xfe13
                           00FE1B   711 _P3NCS	=	0xfe1b
                           00FE23   712 _P3SR	=	0xfe23
                           00FE2B   713 _P3DR	=	0xfe2b
                           00FE33   714 _P3IE	=	0xfe33
                           00FD05   715 _P5INTE	=	0xfd05
                           00FD15   716 _P5INTF	=	0xfd15
                           00FD25   717 _P5IM0	=	0xfd25
                           00FD35   718 _P5IM1	=	0xfd35
                           00FD45   719 _P5WKUE	=	0xfd45
                           00FE15   720 _P5PU	=	0xfe15
                           00FE1D   721 _P5NCS	=	0xfe1d
                           00FE25   722 _P5SR	=	0xfe25
                           00FE2D   723 _P5DR	=	0xfe2d
                           00FE35   724 _P5IE	=	0xfe35
                           00FD60   725 _PINIPL	=	0xfd60
                           00FD61   726 _PINIPH	=	0xfd61
                           00FE80   727 _I2CCFG	=	0xfe80
                           00FE81   728 _I2CMSCR	=	0xfe81
                           00FE82   729 _I2CMSST	=	0xfe82
                           00FE83   730 _I2CSLCR	=	0xfe83
                           00FE84   731 _I2CSLST	=	0xfe84
                           00FE85   732 _I2CSLADR	=	0xfe85
                           00FE86   733 _I2CTXD	=	0xfe86
                           00FE87   734 _I2CRXD	=	0xfe87
                           00FE88   735 _I2CMSAUX	=	0xfe88
                           00FE50   736 _LCMCFG	=	0xfe50
                           00FE51   737 _LCMCFG2	=	0xfe51
                           00FE52   738 _LCMCR	=	0xfe52
                           00FE53   739 _LCMSTA	=	0xfe53
                           00FE54   740 _LCMIDDATL	=	0xfe54
                           00FE55   741 _LCMIDDATH	=	0xfe55
                           00FE54   742 _LCMIDDAT	=	0xfe54
                           00FA70   743 _DMA_LCM_CFG	=	0xfa70
                           00FA71   744 _DMA_LCM_CR	=	0xfa71
                           00FA72   745 _DMA_LCM_STA	=	0xfa72
                           00FA73   746 _DMA_LCM_AMT	=	0xfa73
                           00FA74   747 _DMA_LCM_DONE	=	0xfa74
                           00FA75   748 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   749 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   750 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   751 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   752 _MD3	=	0xfcf0
                           00FCF1   753 _MD2	=	0xfcf1
                           00FCF2   754 _MD1	=	0xfcf2
                           00FCF3   755 _MD0	=	0xfcf3
                           00FCF4   756 _MD5	=	0xfcf4
                           00FCF5   757 _MD4	=	0xfcf5
                           00FCF6   758 _ARCON	=	0xfcf6
                           00FCF7   759 _OPCON	=	0xfcf7
                           00FE08   760 _SPFUNC	=	0xfe08
                           00FE09   761 _RSTFLAG	=	0xfe09
                           00FEB0   762 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   763 _PWMA_ENO	=	0xfeb1
                           00FEB2   764 _PWMA_PS	=	0xfeb2
                           00FEB3   765 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   766 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   767 _PWMB_ENO	=	0xfeb5
                           00FEB6   768 _PWMB_PS	=	0xfeb6
                           00FEB7   769 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   770 _PWMA_CR1	=	0xfec0
                           00FEC1   771 _PWMA_CR2	=	0xfec1
                           00FEC2   772 _PWMA_SMCR	=	0xfec2
                           00FEC3   773 _PWMA_ETR	=	0xfec3
                           00FEC4   774 _PWMA_IER	=	0xfec4
                           00FEC5   775 _PWMA_SR1	=	0xfec5
                           00FEC6   776 _PWMA_SR2	=	0xfec6
                           00FEC7   777 _PWMA_EGR	=	0xfec7
                           00FEC8   778 _PWMA_CCMR1	=	0xfec8
                           00FEC9   779 _PWMA_CCMR2	=	0xfec9
                           00FECA   780 _PWMA_CCMR3	=	0xfeca
                           00FECB   781 _PWMA_CCMR4	=	0xfecb
                           00FECC   782 _PWMA_CCER1	=	0xfecc
                           00FECD   783 _PWMA_CCER2	=	0xfecd
                           00FECE   784 _PWMA_CNTRH	=	0xfece
                           00FECF   785 _PWMA_CNTRL	=	0xfecf
                           00FED0   786 _PWMA_PSCRH	=	0xfed0
                           00FED1   787 _PWMA_PSCRL	=	0xfed1
                           00FED2   788 _PWMA_ARRH	=	0xfed2
                           00FED3   789 _PWMA_ARRL	=	0xfed3
                           00FED4   790 _PWMA_RCR	=	0xfed4
                           00FED5   791 _PWMA_CCR1H	=	0xfed5
                           00FED6   792 _PWMA_CCR1L	=	0xfed6
                           00FED7   793 _PWMA_CCR2H	=	0xfed7
                           00FED8   794 _PWMA_CCR2L	=	0xfed8
                           00FED9   795 _PWMA_CCR3H	=	0xfed9
                           00FEDA   796 _PWMA_CCR3L	=	0xfeda
                           00FEDB   797 _PWMA_CCR4H	=	0xfedb
                           00FEDC   798 _PWMA_CCR4L	=	0xfedc
                           00FEDD   799 _PWMA_BKR	=	0xfedd
                           00FEDE   800 _PWMA_DTR	=	0xfede
                           00FEDF   801 _PWMA_OISR	=	0xfedf
                           00FEE0   802 _PWMB_CR1	=	0xfee0
                           00FEE1   803 _PWMB_CR2	=	0xfee1
                           00FEE2   804 _PWMB_SMCR	=	0xfee2
                           00FEE3   805 _PWMB_ETR	=	0xfee3
                           00FEE4   806 _PWMB_IER	=	0xfee4
                           00FEE5   807 _PWMB_SR1	=	0xfee5
                           00FEE6   808 _PWMB_SR2	=	0xfee6
                           00FEE7   809 _PWMB_EGR	=	0xfee7
                           00FEE8   810 _PWMB_CCMR1	=	0xfee8
                           00FEE9   811 _PWMB_CCMR2	=	0xfee9
                           00FEEA   812 _PWMB_CCMR3	=	0xfeea
                           00FEEB   813 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   814 _PWMB_CCER1	=	0xfeec
                           00FEED   815 _PWMB_CCER2	=	0xfeed
                           00FEEE   816 _PWMB_CNTRH	=	0xfeee
                           00FEEF   817 _PWMB_CNTRL	=	0xfeef
                           00FEF0   818 _PWMB_PSCRH	=	0xfef0
                           00FEF1   819 _PWMB_PSCRL	=	0xfef1
                           00FEF2   820 _PWMB_ARRH	=	0xfef2
                           00FEF3   821 _PWMB_ARRL	=	0xfef3
                           00FEF4   822 _PWMB_RCR	=	0xfef4
                           00FEF5   823 _PWMB_CCR1H	=	0xfef5
                           00FEF6   824 _PWMB_CCR1L	=	0xfef6
                           00FEF7   825 _PWMB_CCR2H	=	0xfef7
                           00FEF8   826 _PWMB_CCR2L	=	0xfef8
                           00FEF9   827 _PWMB_CCR3H	=	0xfef9
                           00FEFA   828 _PWMB_CCR3L	=	0xfefa
                           00FEFB   829 _PWMB_CCR4H	=	0xfefb
                           00FEFC   830 _PWMB_CCR4L	=	0xfefc
                           00FEFD   831 _PWMB_BKR	=	0xfefd
                           00FEFE   832 _PWMB_DTR	=	0xfefe
                           00FEFF   833 _PWMB_OISR	=	0xfeff
                           00FE60   834 _RTCCR	=	0xfe60
                           00FE61   835 _RTCCFG	=	0xfe61
                           00FE62   836 _RTCIEN	=	0xfe62
                           00FE63   837 _RTCIF	=	0xfe63
                           00FE64   838 _ALAHOUR	=	0xfe64
                           00FE65   839 _ALAMIN	=	0xfe65
                           00FE66   840 _ALASEC	=	0xfe66
                           00FE67   841 _ALASSEC	=	0xfe67
                           00FE68   842 _INIYEAR	=	0xfe68
                           00FE69   843 _INIMONTH	=	0xfe69
                           00FE6A   844 _INIDAY	=	0xfe6a
                           00FE6B   845 _INIHOUR	=	0xfe6b
                           00FE6C   846 _INIMIN	=	0xfe6c
                           00FE6D   847 _INISEC	=	0xfe6d
                           00FE6E   848 _INISSEC	=	0xfe6e
                           00FE70   849 _YEAR	=	0xfe70
                           00FE71   850 _MONTH	=	0xfe71
                           00FE72   851 _DAY	=	0xfe72
                           00FE73   852 _HOUR	=	0xfe73
                           00FE74   853 _MIN	=	0xfe74
                           00FE75   854 _SEC	=	0xfe75
                           00FE76   855 _SSEC	=	0xfe76
                           00FA20   856 _DMA_SPI_CFG	=	0xfa20
                           00FA21   857 _DMA_SPI_CR	=	0xfa21
                           00FA22   858 _DMA_SPI_STA	=	0xfa22
                           00FA23   859 _DMA_SPI_AMT	=	0xfa23
                           00FA24   860 _DMA_SPI_DONE	=	0xfa24
                           00FA25   861 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   862 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   863 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   864 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   865 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   866 _CLKDIV	=	0xfe01
                           00FE02   867 _HIRCCR	=	0xfe02
                           00FE03   868 _XOSCCR	=	0xfe03
                           00FE08   869 _X32KCR	=	0xfe08
                           00FE04   870 _IRC32KCR	=	0xfe04
                           00FE00   871 _CKSEL	=	0xfe00
                           00FE05   872 _MCLKOCR	=	0xfe05
                           00FE06   873 _IRCDB	=	0xfe06
                           00FE07   874 _IRC48MCR	=	0xfe07
                           00FEA2   875 _TM2PS	=	0xfea2
                           00FEA3   876 _TM3PS	=	0xfea3
                           00FEA4   877 _TM4PS	=	0xfea4
                           00FA30   878 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   879 _DMA_UR1T_CR	=	0xfa31
                           00FA32   880 _DMA_UR1T_STA	=	0xfa32
                           00FA33   881 _DMA_URTX_AMT	=	0xfa33
                           00FA34   882 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   883 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   884 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   885 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   886 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   887 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   888 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   889 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   890 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   891 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   892 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   893 _DMA_UR2T_CR	=	0xfa31
                           00FA32   894 _DMA_UR2T_STA	=	0xfa32
                           00FA33   895 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   896 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   897 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   898 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   899 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   900 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   901 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   902 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   903 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   904 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   905 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   906 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   907 _DMA_UR3T_CR	=	0xfa31
                           00FA32   908 _DMA_UR3T_STA	=	0xfa32
                           00FA33   909 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   910 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   911 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   912 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   913 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   914 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   915 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   916 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   917 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   918 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   919 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   920 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   921 _DMA_UR4T_CR	=	0xfa31
                           00FA32   922 _DMA_UR4T_STA	=	0xfa32
                           00FA33   923 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   924 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   925 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   926 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   927 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   928 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   929 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   930 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   931 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   932 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   933 _DMA_UR4R_TXAL	=	0xfa3e
      0002A0                        934 _uartGetCharacter_result_65536_69:
      0002A0                        935 	.ds 1
      0002A1                        936 _line:
      0002A1                        937 	.ds 20
      0002B5                        938 _c::
      0002B5                        939 	.ds 1
      0002B6                        940 _protocol_read_line_PARM_2:
      0002B6                        941 	.ds 1
      0002B7                        942 _protocol_read_line_func_65536_135:
      0002B7                        943 	.ds 2
      0002B9                        944 _protocol_execute_line_line_65536_143:
      0002B9                        945 	.ds 3
                                    946 ;--------------------------------------------------------
                                    947 ; absolute external ram data
                                    948 ;--------------------------------------------------------
                                    949 	.area XABS    (ABS,XDATA)
                                    950 ;--------------------------------------------------------
                                    951 ; external initialized ram data
                                    952 ;--------------------------------------------------------
                                    953 	.area XISEG   (XDATA)
      00038D                        954 _char_count::
      00038D                        955 	.ds 1
      00038E                        956 _uart_receive_func_ptr::
      00038E                        957 	.ds 2
      000390                        958 _nrf24_receive_func_ptr::
      000390                        959 	.ds 2
                                    960 	.area HOME    (CODE)
                                    961 	.area GSINIT0 (CODE)
                                    962 	.area GSINIT1 (CODE)
                                    963 	.area GSINIT2 (CODE)
                                    964 	.area GSINIT3 (CODE)
                                    965 	.area GSINIT4 (CODE)
                                    966 	.area GSINIT5 (CODE)
                                    967 	.area GSINIT  (CODE)
                                    968 	.area GSFINAL (CODE)
                                    969 	.area CSEG    (CODE)
                                    970 ;--------------------------------------------------------
                                    971 ; global & static initialisations
                                    972 ;--------------------------------------------------------
                                    973 	.area HOME    (CODE)
                                    974 	.area GSINIT  (CODE)
                                    975 	.area GSFINAL (CODE)
                                    976 	.area GSINIT  (CODE)
                                    977 ;--------------------------------------------------------
                                    978 ; Home
                                    979 ;--------------------------------------------------------
                                    980 	.area HOME    (CODE)
                                    981 	.area HOME    (CODE)
                                    982 ;--------------------------------------------------------
                                    983 ; code
                                    984 ;--------------------------------------------------------
                                    985 	.area CSEG    (CODE)
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'uartGetCharacter_modified'
                                    988 ;------------------------------------------------------------
                                    989 ;size                      Allocated to stack - _bp -3
                                    990 ;data                      Allocated to registers r5 r6 r7 
                                    991 ;------------------------------------------------------------
                                    992 ;	protocol.c:11: static uint8_t uartGetCharacter_modified(uint8_t* data, uint8_t size) __reentrant {
                                    993 ;	-----------------------------------------
                                    994 ;	 function uartGetCharacter_modified
                                    995 ;	-----------------------------------------
      0036F3                        996 _uartGetCharacter_modified:
                           000007   997 	ar7 = 0x07
                           000006   998 	ar6 = 0x06
                           000005   999 	ar5 = 0x05
                           000004  1000 	ar4 = 0x04
                           000003  1001 	ar3 = 0x03
                           000002  1002 	ar2 = 0x02
                           000001  1003 	ar1 = 0x01
                           000000  1004 	ar0 = 0x00
      0036F3 C0 19            [24] 1005 	push	_bp
      0036F5 85 81 19         [24] 1006 	mov	_bp,sp
                                   1007 ;	protocol.c:12: *data = UART_RECEIVE_EMPTY;
      0036F8 AD 82            [24] 1008 	mov	r5,dpl
      0036FA AE 83            [24] 1009 	mov	r6,dph
      0036FC AF F0            [24] 1010 	mov	r7,b
      0036FE E4               [12] 1011 	clr	a
      0036FF 12 3D D2         [24] 1012 	lcall	__gptrput
                                   1013 ;	protocol.c:13: uartGetBlock(CONSOLE_UART, data, size, NON_BLOCKING);
      003702 90 01 CB         [24] 1014 	mov	dptr,#_uartGetBlock_PARM_2
      003705 ED               [12] 1015 	mov	a,r5
      003706 F0               [24] 1016 	movx	@dptr,a
      003707 EE               [12] 1017 	mov	a,r6
      003708 A3               [24] 1018 	inc	dptr
      003709 F0               [24] 1019 	movx	@dptr,a
      00370A EF               [12] 1020 	mov	a,r7
      00370B A3               [24] 1021 	inc	dptr
      00370C F0               [24] 1022 	movx	@dptr,a
      00370D E5 19            [12] 1023 	mov	a,_bp
      00370F 24 FD            [12] 1024 	add	a,#0xfd
      003711 F8               [12] 1025 	mov	r0,a
      003712 90 01 CE         [24] 1026 	mov	dptr,#_uartGetBlock_PARM_3
      003715 E6               [12] 1027 	mov	a,@r0
      003716 F0               [24] 1028 	movx	@dptr,a
      003717 90 01 CF         [24] 1029 	mov	dptr,#_uartGetBlock_PARM_4
      00371A E4               [12] 1030 	clr	a
      00371B F0               [24] 1031 	movx	@dptr,a
      00371C 75 82 01         [24] 1032 	mov	dpl,#0x01
      00371F C0 07            [24] 1033 	push	ar7
      003721 C0 06            [24] 1034 	push	ar6
      003723 C0 05            [24] 1035 	push	ar5
      003725 12 1D 97         [24] 1036 	lcall	_uartGetBlock
      003728 D0 05            [24] 1037 	pop	ar5
      00372A D0 06            [24] 1038 	pop	ar6
      00372C D0 07            [24] 1039 	pop	ar7
                                   1040 ;	protocol.c:14: return *data;
      00372E 8D 82            [24] 1041 	mov	dpl,r5
      003730 8E 83            [24] 1042 	mov	dph,r6
      003732 8F F0            [24] 1043 	mov	b,r7
      003734 12 49 F9         [24] 1044 	lcall	__gptrget
      003737 F5 82            [12] 1045 	mov	dpl,a
                                   1046 ;	protocol.c:15: }
      003739 D0 19            [24] 1047 	pop	_bp
      00373B 22               [24] 1048 	ret
                                   1049 ;------------------------------------------------------------
                                   1050 ;Allocation info for local variables in function 'protocol_read_line'
                                   1051 ;------------------------------------------------------------
                                   1052 ;flag_to_compare_to        Allocated with name '_protocol_read_line_PARM_2'
                                   1053 ;func                      Allocated with name '_protocol_read_line_func_65536_135'
                                   1054 ;------------------------------------------------------------
                                   1055 ;	protocol.c:17: static void protocol_read_line(uint8_t (*func)(uint8_t*, uint8_t) __reentrant, uint8_t flag_to_compare_to) {
                                   1056 ;	-----------------------------------------
                                   1057 ;	 function protocol_read_line
                                   1058 ;	-----------------------------------------
      00373C                       1059 _protocol_read_line:
      00373C AF 83            [24] 1060 	mov	r7,dph
      00373E E5 82            [12] 1061 	mov	a,dpl
      003740 90 02 B7         [24] 1062 	mov	dptr,#_protocol_read_line_func_65536_135
      003743 F0               [24] 1063 	movx	@dptr,a
      003744 EF               [12] 1064 	mov	a,r7
      003745 A3               [24] 1065 	inc	dptr
      003746 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	protocol.c:19: do { 
      003747 90 02 B6         [24] 1068 	mov	dptr,#_protocol_read_line_PARM_2
      00374A E0               [24] 1069 	movx	a,@dptr
      00374B FF               [12] 1070 	mov	r7,a
      00374C                       1071 00111$:
                                   1072 ;	protocol.c:21: if ((c == '\n') || (c == '\r')) {
      00374C 90 02 B5         [24] 1073 	mov	dptr,#_c
      00374F E0               [24] 1074 	movx	a,@dptr
      003750 FE               [12] 1075 	mov	r6,a
      003751 BE 0A 02         [24] 1076 	cjne	r6,#0x0a,00132$
      003754 80 03            [24] 1077 	sjmp	00107$
      003756                       1078 00132$:
      003756 BE 0D 22         [24] 1079 	cjne	r6,#0x0d,00108$
      003759                       1080 00107$:
                                   1081 ;	protocol.c:22: line[char_count] = 0; // string termination character, V.IMP for terminal.c to know where the command characters end
      003759 90 03 8D         [24] 1082 	mov	dptr,#_char_count
      00375C E0               [24] 1083 	movx	a,@dptr
      00375D 24 A1            [12] 1084 	add	a,#_line
      00375F F5 82            [12] 1085 	mov	dpl,a
      003761 E4               [12] 1086 	clr	a
      003762 34 02            [12] 1087 	addc	a,#(_line >> 8)
      003764 F5 83            [12] 1088 	mov	dph,a
      003766 E4               [12] 1089 	clr	a
      003767 F0               [24] 1090 	movx	@dptr,a
                                   1091 ;	protocol.c:23: char_count = 0; // reseting to read next command
      003768 90 03 8D         [24] 1092 	mov	dptr,#_char_count
      00376B F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	protocol.c:26: protocol_execute_line(line);
      00376C 90 02 A1         [24] 1095 	mov	dptr,#_line
      00376F 75 F0 00         [24] 1096 	mov	b,#0x00
      003772 C0 07            [24] 1097 	push	ar7
      003774 12 37 E7         [24] 1098 	lcall	_protocol_execute_line
      003777 D0 07            [24] 1099 	pop	ar7
      003779 80 41            [24] 1100 	sjmp	00112$
      00377B                       1101 00108$:
                                   1102 ;	protocol.c:29: } else if (c <= ' '){
      00377B EE               [12] 1103 	mov	a,r6
      00377C 24 DF            [12] 1104 	add	a,#0xff - 0x20
      00377E 50 3C            [24] 1105 	jnc	00112$
                                   1106 ;	protocol.c:33: } else if (char_count >= (LINE_BUFFER_SIZE-1)) {
      003780 90 03 8D         [24] 1107 	mov	dptr,#_char_count
      003783 E0               [24] 1108 	movx	a,@dptr
      003784 FD               [12] 1109 	mov	r5,a
      003785 BD 13 00         [24] 1110 	cjne	r5,#0x13,00136$
      003788                       1111 00136$:
      003788 40 20            [24] 1112 	jc	00102$
                                   1113 ;	protocol.c:35: printf("BUFFER OVERFLOW!!!!\n");
      00378A C0 07            [24] 1114 	push	ar7
      00378C 74 78            [12] 1115 	mov	a,#___str_0
      00378E C0 E0            [24] 1116 	push	acc
      003790 74 4C            [12] 1117 	mov	a,#(___str_0 >> 8)
      003792 C0 E0            [24] 1118 	push	acc
      003794 74 80            [12] 1119 	mov	a,#0x80
      003796 C0 E0            [24] 1120 	push	acc
      003798 12 3F B7         [24] 1121 	lcall	_printf
      00379B 15 81            [12] 1122 	dec	sp
      00379D 15 81            [12] 1123 	dec	sp
      00379F 15 81            [12] 1124 	dec	sp
      0037A1 D0 07            [24] 1125 	pop	ar7
                                   1126 ;	protocol.c:36: char_count = 0;
      0037A3 90 03 8D         [24] 1127 	mov	dptr,#_char_count
      0037A6 E4               [12] 1128 	clr	a
      0037A7 F0               [24] 1129 	movx	@dptr,a
      0037A8 80 12            [24] 1130 	sjmp	00112$
      0037AA                       1131 00102$:
                                   1132 ;	protocol.c:41: line[char_count++] = c;
      0037AA 90 03 8D         [24] 1133 	mov	dptr,#_char_count
      0037AD ED               [12] 1134 	mov	a,r5
      0037AE 04               [12] 1135 	inc	a
      0037AF F0               [24] 1136 	movx	@dptr,a
      0037B0 ED               [12] 1137 	mov	a,r5
      0037B1 24 A1            [12] 1138 	add	a,#_line
      0037B3 F5 82            [12] 1139 	mov	dpl,a
      0037B5 E4               [12] 1140 	clr	a
      0037B6 34 02            [12] 1141 	addc	a,#(_line >> 8)
      0037B8 F5 83            [12] 1142 	mov	dph,a
      0037BA EE               [12] 1143 	mov	a,r6
      0037BB F0               [24] 1144 	movx	@dptr,a
      0037BC                       1145 00112$:
                                   1146 ;	protocol.c:43: } while (func(&c, 1) != flag_to_compare_to);
      0037BC C0 07            [24] 1147 	push	ar7
      0037BE 74 01            [12] 1148 	mov	a,#0x01
      0037C0 C0 E0            [24] 1149 	push	acc
      0037C2 12 37 C7         [24] 1150 	lcall	00138$
      0037C5 80 11            [24] 1151 	sjmp	00139$
      0037C7                       1152 00138$:
      0037C7 90 02 B7         [24] 1153 	mov	dptr,#_protocol_read_line_func_65536_135
      0037CA E0               [24] 1154 	movx	a,@dptr
      0037CB C0 E0            [24] 1155 	push	acc
      0037CD A3               [24] 1156 	inc	dptr
      0037CE E0               [24] 1157 	movx	a,@dptr
      0037CF C0 E0            [24] 1158 	push	acc
      0037D1 90 02 B5         [24] 1159 	mov	dptr,#_c
      0037D4 75 F0 00         [24] 1160 	mov	b,#0x00
      0037D7 22               [24] 1161 	ret
      0037D8                       1162 00139$:
      0037D8 AE 82            [24] 1163 	mov	r6,dpl
      0037DA 15 81            [12] 1164 	dec	sp
      0037DC D0 07            [24] 1165 	pop	ar7
      0037DE EE               [12] 1166 	mov	a,r6
      0037DF B5 07 01         [24] 1167 	cjne	a,ar7,00140$
      0037E2 22               [24] 1168 	ret
      0037E3                       1169 00140$:
      0037E3 02 37 4C         [24] 1170 	ljmp	00111$
                                   1171 ;	protocol.c:44: }
      0037E6 22               [24] 1172 	ret
                                   1173 ;------------------------------------------------------------
                                   1174 ;Allocation info for local variables in function 'protocol_execute_line'
                                   1175 ;------------------------------------------------------------
                                   1176 ;line                      Allocated with name '_protocol_execute_line_line_65536_143'
                                   1177 ;line_state                Allocated with name '_protocol_execute_line_line_state_131072_146'
                                   1178 ;------------------------------------------------------------
                                   1179 ;	protocol.c:46: static void protocol_execute_line(char* line) {
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function protocol_execute_line
                                   1182 ;	-----------------------------------------
      0037E7                       1183 _protocol_execute_line:
      0037E7 AF F0            [24] 1184 	mov	r7,b
      0037E9 AE 83            [24] 1185 	mov	r6,dph
      0037EB E5 82            [12] 1186 	mov	a,dpl
      0037ED 90 02 B9         [24] 1187 	mov	dptr,#_protocol_execute_line_line_65536_143
      0037F0 F0               [24] 1188 	movx	@dptr,a
      0037F1 EE               [12] 1189 	mov	a,r6
      0037F2 A3               [24] 1190 	inc	dptr
      0037F3 F0               [24] 1191 	movx	@dptr,a
      0037F4 EF               [12] 1192 	mov	a,r7
      0037F5 A3               [24] 1193 	inc	dptr
      0037F6 F0               [24] 1194 	movx	@dptr,a
                                   1195 ;	protocol.c:48: if(line[0] == 0) {
      0037F7 90 02 B9         [24] 1196 	mov	dptr,#_protocol_execute_line_line_65536_143
      0037FA E0               [24] 1197 	movx	a,@dptr
      0037FB FD               [12] 1198 	mov	r5,a
      0037FC A3               [24] 1199 	inc	dptr
      0037FD E0               [24] 1200 	movx	a,@dptr
      0037FE FE               [12] 1201 	mov	r6,a
      0037FF A3               [24] 1202 	inc	dptr
      003800 E0               [24] 1203 	movx	a,@dptr
      003801 FF               [12] 1204 	mov	r7,a
      003802 8D 82            [24] 1205 	mov	dpl,r5
      003804 8E 83            [24] 1206 	mov	dph,r6
      003806 8F F0            [24] 1207 	mov	b,r7
      003808 12 49 F9         [24] 1208 	lcall	__gptrget
      00380B 70 16            [24] 1209 	jnz	00107$
                                   1210 ;	protocol.c:50: printf("Enter Received..\n\n");
      00380D 74 8D            [12] 1211 	mov	a,#___str_1
      00380F C0 E0            [24] 1212 	push	acc
      003811 74 4C            [12] 1213 	mov	a,#(___str_1 >> 8)
      003813 C0 E0            [24] 1214 	push	acc
      003815 74 80            [12] 1215 	mov	a,#0x80
      003817 C0 E0            [24] 1216 	push	acc
      003819 12 3F B7         [24] 1217 	lcall	_printf
      00381C 15 81            [12] 1218 	dec	sp
      00381E 15 81            [12] 1219 	dec	sp
      003820 15 81            [12] 1220 	dec	sp
      003822 22               [24] 1221 	ret
      003823                       1222 00107$:
                                   1223 ;	protocol.c:54: LINE_STATUS line_state = terminal_execute_line(line);
      003823 8D 82            [24] 1224 	mov	dpl,r5
      003825 8E 83            [24] 1225 	mov	dph,r6
      003827 8F F0            [24] 1226 	mov	b,r7
      003829 12 34 09         [24] 1227 	lcall	_terminal_execute_line
                                   1228 ;	protocol.c:56: if (line_state == LINE_PASSED) { printf("Command passed..\n\n"); } 
      00382C E5 82            [12] 1229 	mov	a,dpl
      00382E FF               [12] 1230 	mov	r7,a
      00382F 70 16            [24] 1231 	jnz	00104$
      003831 74 A0            [12] 1232 	mov	a,#___str_2
      003833 C0 E0            [24] 1233 	push	acc
      003835 74 4C            [12] 1234 	mov	a,#(___str_2 >> 8)
      003837 C0 E0            [24] 1235 	push	acc
      003839 74 80            [12] 1236 	mov	a,#0x80
      00383B C0 E0            [24] 1237 	push	acc
      00383D 12 3F B7         [24] 1238 	lcall	_printf
      003840 15 81            [12] 1239 	dec	sp
      003842 15 81            [12] 1240 	dec	sp
      003844 15 81            [12] 1241 	dec	sp
      003846 22               [24] 1242 	ret
      003847                       1243 00104$:
                                   1244 ;	protocol.c:57: else if (line_state == LINE_FAILED) { printf("Command Failed..\n\n"); }
      003847 BF 01 15         [24] 1245 	cjne	r7,#0x01,00109$
      00384A 74 B3            [12] 1246 	mov	a,#___str_3
      00384C C0 E0            [24] 1247 	push	acc
      00384E 74 4C            [12] 1248 	mov	a,#(___str_3 >> 8)
      003850 C0 E0            [24] 1249 	push	acc
      003852 74 80            [12] 1250 	mov	a,#0x80
      003854 C0 E0            [24] 1251 	push	acc
      003856 12 3F B7         [24] 1252 	lcall	_printf
      003859 15 81            [12] 1253 	dec	sp
      00385B 15 81            [12] 1254 	dec	sp
      00385D 15 81            [12] 1255 	dec	sp
      00385F                       1256 00109$:
                                   1257 ;	protocol.c:61: }
      00385F 22               [24] 1258 	ret
                                   1259 ;------------------------------------------------------------
                                   1260 ;Allocation info for local variables in function 'protocol_main_loop'
                                   1261 ;------------------------------------------------------------
                                   1262 ;	protocol.c:63: void protocol_main_loop(void) {
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function protocol_main_loop
                                   1265 ;	-----------------------------------------
      003860                       1266 _protocol_main_loop:
                                   1267 ;	protocol.c:64: printf("starting\n");
      003860 74 C6            [12] 1268 	mov	a,#___str_4
      003862 C0 E0            [24] 1269 	push	acc
      003864 74 4C            [12] 1270 	mov	a,#(___str_4 >> 8)
      003866 C0 E0            [24] 1271 	push	acc
      003868 74 80            [12] 1272 	mov	a,#0x80
      00386A C0 E0            [24] 1273 	push	acc
      00386C 12 3F B7         [24] 1274 	lcall	_printf
      00386F 15 81            [12] 1275 	dec	sp
      003871 15 81            [12] 1276 	dec	sp
      003873 15 81            [12] 1277 	dec	sp
                                   1278 ;	protocol.c:66: while(1) {
      003875                       1279 00107$:
                                   1280 ;	protocol.c:67: if (uartGetCharacter_modified(&c, 1) != UART_RECEIVE_EMPTY) {
      003875 74 01            [12] 1281 	mov	a,#0x01
      003877 C0 E0            [24] 1282 	push	acc
      003879 90 02 B5         [24] 1283 	mov	dptr,#_c
      00387C 75 F0 00         [24] 1284 	mov	b,#0x00
      00387F 12 36 F3         [24] 1285 	lcall	_uartGetCharacter_modified
      003882 AF 82            [24] 1286 	mov	r7,dpl
      003884 15 81            [12] 1287 	dec	sp
      003886 EF               [12] 1288 	mov	a,r7
      003887 60 16            [24] 1289 	jz	00104$
                                   1290 ;	protocol.c:69: protocol_read_line(uart_receive_func_ptr, UART_RECEIVE_EMPTY);
      003889 90 03 8E         [24] 1291 	mov	dptr,#_uart_receive_func_ptr
      00388C E0               [24] 1292 	movx	a,@dptr
      00388D FE               [12] 1293 	mov	r6,a
      00388E A3               [24] 1294 	inc	dptr
      00388F E0               [24] 1295 	movx	a,@dptr
      003890 FF               [12] 1296 	mov	r7,a
      003891 90 02 B6         [24] 1297 	mov	dptr,#_protocol_read_line_PARM_2
      003894 E4               [12] 1298 	clr	a
      003895 F0               [24] 1299 	movx	@dptr,a
      003896 8E 82            [24] 1300 	mov	dpl,r6
      003898 8F 83            [24] 1301 	mov	dph,r7
      00389A 12 37 3C         [24] 1302 	lcall	_protocol_read_line
      00389D 80 2B            [24] 1303 	sjmp	00105$
      00389F                       1304 00104$:
                                   1305 ;	protocol.c:71: } else if (nrf24_receive(&c, 1) != RECEIVE_FIFO_EMPTY) {
      00389F 74 01            [12] 1306 	mov	a,#0x01
      0038A1 C0 E0            [24] 1307 	push	acc
      0038A3 90 02 B5         [24] 1308 	mov	dptr,#_c
      0038A6 75 F0 00         [24] 1309 	mov	b,#0x00
      0038A9 12 23 D6         [24] 1310 	lcall	_nrf24_receive
      0038AC AF 82            [24] 1311 	mov	r7,dpl
      0038AE 15 81            [12] 1312 	dec	sp
      0038B0 BF 02 02         [24] 1313 	cjne	r7,#0x02,00124$
      0038B3 80 15            [24] 1314 	sjmp	00105$
      0038B5                       1315 00124$:
                                   1316 ;	protocol.c:73: protocol_read_line(nrf24_receive_func_ptr, RECEIVE_FIFO_EMPTY);
      0038B5 90 03 90         [24] 1317 	mov	dptr,#_nrf24_receive_func_ptr
      0038B8 E0               [24] 1318 	movx	a,@dptr
      0038B9 FE               [12] 1319 	mov	r6,a
      0038BA A3               [24] 1320 	inc	dptr
      0038BB E0               [24] 1321 	movx	a,@dptr
      0038BC FF               [12] 1322 	mov	r7,a
      0038BD 90 02 B6         [24] 1323 	mov	dptr,#_protocol_read_line_PARM_2
      0038C0 74 02            [12] 1324 	mov	a,#0x02
      0038C2 F0               [24] 1325 	movx	@dptr,a
      0038C3 8E 82            [24] 1326 	mov	dpl,r6
      0038C5 8F 83            [24] 1327 	mov	dph,r7
      0038C7 12 37 3C         [24] 1328 	lcall	_protocol_read_line
      0038CA                       1329 00105$:
                                   1330 ;	protocol.c:77: report_toggle_led();
      0038CA 12 1F 9C         [24] 1331 	lcall	_report_toggle_led
                                   1332 ;	protocol.c:80: }
      0038CD 80 A6            [24] 1333 	sjmp	00107$
                                   1334 	.area CSEG    (CODE)
                                   1335 	.area CONST   (CODE)
                                   1336 	.area CONST   (CODE)
      004C78                       1337 ___str_0:
      004C78 42 55 46 46 45 52 20  1338 	.ascii "BUFFER OVERFLOW!!!!"
             4F 56 45 52 46 4C 4F
             57 21 21 21 21
      004C8B 0A                    1339 	.db 0x0a
      004C8C 00                    1340 	.db 0x00
                                   1341 	.area CSEG    (CODE)
                                   1342 	.area CONST   (CODE)
      004C8D                       1343 ___str_1:
      004C8D 45 6E 74 65 72 20 52  1344 	.ascii "Enter Received.."
             65 63 65 69 76 65 64
             2E 2E
      004C9D 0A                    1345 	.db 0x0a
      004C9E 0A                    1346 	.db 0x0a
      004C9F 00                    1347 	.db 0x00
                                   1348 	.area CSEG    (CODE)
                                   1349 	.area CONST   (CODE)
      004CA0                       1350 ___str_2:
      004CA0 43 6F 6D 6D 61 6E 64  1351 	.ascii "Command passed.."
             20 70 61 73 73 65 64
             2E 2E
      004CB0 0A                    1352 	.db 0x0a
      004CB1 0A                    1353 	.db 0x0a
      004CB2 00                    1354 	.db 0x00
                                   1355 	.area CSEG    (CODE)
                                   1356 	.area CONST   (CODE)
      004CB3                       1357 ___str_3:
      004CB3 43 6F 6D 6D 61 6E 64  1358 	.ascii "Command Failed.."
             20 46 61 69 6C 65 64
             2E 2E
      004CC3 0A                    1359 	.db 0x0a
      004CC4 0A                    1360 	.db 0x0a
      004CC5 00                    1361 	.db 0x00
                                   1362 	.area CSEG    (CODE)
                                   1363 	.area CONST   (CODE)
      004CC6                       1364 ___str_4:
      004CC6 73 74 61 72 74 69 6E  1365 	.ascii "starting"
             67
      004CCE 0A                    1366 	.db 0x0a
      004CCF 00                    1367 	.db 0x00
                                   1368 	.area CSEG    (CODE)
                                   1369 	.area XINIT   (CODE)
      004D46                       1370 __xinit__char_count:
      004D46 00                    1371 	.db #0x00	; 0
      004D47                       1372 __xinit__uart_receive_func_ptr:
      004D47 F3 36                 1373 	.byte _uartGetCharacter_modified, (_uartGetCharacter_modified >> 8)
      004D49                       1374 __xinit__nrf24_receive_func_ptr:
      004D49 D6 23                 1375 	.byte _nrf24_receive, (_nrf24_receive >> 8)
                                   1376 	.area CABS    (ABS,CODE)
