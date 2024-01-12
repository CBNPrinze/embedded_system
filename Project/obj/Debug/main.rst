                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _RemoveFirstDigit
                                     13 	.globl _Beep
                                     14 	.globl _LCD_Clear
                                     15 	.globl _sprintf
                                     16 	.globl _strlen
                                     17 	.globl _TF2
                                     18 	.globl _EXF2
                                     19 	.globl _RCLK
                                     20 	.globl _TCLK
                                     21 	.globl _EXEN2
                                     22 	.globl _TR2
                                     23 	.globl _C_T2
                                     24 	.globl _CP_RL2
                                     25 	.globl _T2CON_7
                                     26 	.globl _T2CON_6
                                     27 	.globl _T2CON_5
                                     28 	.globl _T2CON_4
                                     29 	.globl _T2CON_3
                                     30 	.globl _T2CON_2
                                     31 	.globl _T2CON_1
                                     32 	.globl _T2CON_0
                                     33 	.globl _PT2
                                     34 	.globl _ET2
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _TH2
                                    111 	.globl _TL2
                                    112 	.globl _RCAP2H
                                    113 	.globl _RCAP2L
                                    114 	.globl _T2CON
                                    115 	.globl _B
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _IP
                                    119 	.globl _P3
                                    120 	.globl _IE
                                    121 	.globl _P2
                                    122 	.globl _SBUF
                                    123 	.globl _SCON
                                    124 	.globl _P1
                                    125 	.globl _TH1
                                    126 	.globl _TH0
                                    127 	.globl _TL1
                                    128 	.globl _TL0
                                    129 	.globl _TMOD
                                    130 	.globl _TCON
                                    131 	.globl _PCON
                                    132 	.globl _DPH
                                    133 	.globl _DPL
                                    134 	.globl _SP
                                    135 	.globl _P0
                                    136 	.globl _LCD_GotoXY_PARM_2
                                    137 	.globl _LCD_Send_Command
                                    138 	.globl _Wait_For_LCD
                                    139 	.globl _LCD_init
                                    140 	.globl _LCD_Write_One_Char
                                    141 	.globl _LCD_Write_String
                                    142 	.globl _LCD_GotoXY
                                    143 	.globl _Delay_ms
                                    144 	.globl _Delay_us
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 G$P0$0_0$0 == 0x0080
                           000080   151 _P0	=	0x0080
                           000081   152 G$SP$0_0$0 == 0x0081
                           000081   153 _SP	=	0x0081
                           000082   154 G$DPL$0_0$0 == 0x0082
                           000082   155 _DPL	=	0x0082
                           000083   156 G$DPH$0_0$0 == 0x0083
                           000083   157 _DPH	=	0x0083
                           000087   158 G$PCON$0_0$0 == 0x0087
                           000087   159 _PCON	=	0x0087
                           000088   160 G$TCON$0_0$0 == 0x0088
                           000088   161 _TCON	=	0x0088
                           000089   162 G$TMOD$0_0$0 == 0x0089
                           000089   163 _TMOD	=	0x0089
                           00008A   164 G$TL0$0_0$0 == 0x008a
                           00008A   165 _TL0	=	0x008a
                           00008B   166 G$TL1$0_0$0 == 0x008b
                           00008B   167 _TL1	=	0x008b
                           00008C   168 G$TH0$0_0$0 == 0x008c
                           00008C   169 _TH0	=	0x008c
                           00008D   170 G$TH1$0_0$0 == 0x008d
                           00008D   171 _TH1	=	0x008d
                           000090   172 G$P1$0_0$0 == 0x0090
                           000090   173 _P1	=	0x0090
                           000098   174 G$SCON$0_0$0 == 0x0098
                           000098   175 _SCON	=	0x0098
                           000099   176 G$SBUF$0_0$0 == 0x0099
                           000099   177 _SBUF	=	0x0099
                           0000A0   178 G$P2$0_0$0 == 0x00a0
                           0000A0   179 _P2	=	0x00a0
                           0000A8   180 G$IE$0_0$0 == 0x00a8
                           0000A8   181 _IE	=	0x00a8
                           0000B0   182 G$P3$0_0$0 == 0x00b0
                           0000B0   183 _P3	=	0x00b0
                           0000B8   184 G$IP$0_0$0 == 0x00b8
                           0000B8   185 _IP	=	0x00b8
                           0000D0   186 G$PSW$0_0$0 == 0x00d0
                           0000D0   187 _PSW	=	0x00d0
                           0000E0   188 G$ACC$0_0$0 == 0x00e0
                           0000E0   189 _ACC	=	0x00e0
                           0000F0   190 G$B$0_0$0 == 0x00f0
                           0000F0   191 _B	=	0x00f0
                           0000C8   192 G$T2CON$0_0$0 == 0x00c8
                           0000C8   193 _T2CON	=	0x00c8
                           0000CA   194 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   195 _RCAP2L	=	0x00ca
                           0000CB   196 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   197 _RCAP2H	=	0x00cb
                           0000CC   198 G$TL2$0_0$0 == 0x00cc
                           0000CC   199 _TL2	=	0x00cc
                           0000CD   200 G$TH2$0_0$0 == 0x00cd
                           0000CD   201 _TH2	=	0x00cd
                                    202 ;--------------------------------------------------------
                                    203 ; special function bits
                                    204 ;--------------------------------------------------------
                                    205 	.area RSEG    (ABS,DATA)
      000000                        206 	.org 0x0000
                           000080   207 G$P0_0$0_0$0 == 0x0080
                           000080   208 _P0_0	=	0x0080
                           000081   209 G$P0_1$0_0$0 == 0x0081
                           000081   210 _P0_1	=	0x0081
                           000082   211 G$P0_2$0_0$0 == 0x0082
                           000082   212 _P0_2	=	0x0082
                           000083   213 G$P0_3$0_0$0 == 0x0083
                           000083   214 _P0_3	=	0x0083
                           000084   215 G$P0_4$0_0$0 == 0x0084
                           000084   216 _P0_4	=	0x0084
                           000085   217 G$P0_5$0_0$0 == 0x0085
                           000085   218 _P0_5	=	0x0085
                           000086   219 G$P0_6$0_0$0 == 0x0086
                           000086   220 _P0_6	=	0x0086
                           000087   221 G$P0_7$0_0$0 == 0x0087
                           000087   222 _P0_7	=	0x0087
                           000088   223 G$IT0$0_0$0 == 0x0088
                           000088   224 _IT0	=	0x0088
                           000089   225 G$IE0$0_0$0 == 0x0089
                           000089   226 _IE0	=	0x0089
                           00008A   227 G$IT1$0_0$0 == 0x008a
                           00008A   228 _IT1	=	0x008a
                           00008B   229 G$IE1$0_0$0 == 0x008b
                           00008B   230 _IE1	=	0x008b
                           00008C   231 G$TR0$0_0$0 == 0x008c
                           00008C   232 _TR0	=	0x008c
                           00008D   233 G$TF0$0_0$0 == 0x008d
                           00008D   234 _TF0	=	0x008d
                           00008E   235 G$TR1$0_0$0 == 0x008e
                           00008E   236 _TR1	=	0x008e
                           00008F   237 G$TF1$0_0$0 == 0x008f
                           00008F   238 _TF1	=	0x008f
                           000090   239 G$P1_0$0_0$0 == 0x0090
                           000090   240 _P1_0	=	0x0090
                           000091   241 G$P1_1$0_0$0 == 0x0091
                           000091   242 _P1_1	=	0x0091
                           000092   243 G$P1_2$0_0$0 == 0x0092
                           000092   244 _P1_2	=	0x0092
                           000093   245 G$P1_3$0_0$0 == 0x0093
                           000093   246 _P1_3	=	0x0093
                           000094   247 G$P1_4$0_0$0 == 0x0094
                           000094   248 _P1_4	=	0x0094
                           000095   249 G$P1_5$0_0$0 == 0x0095
                           000095   250 _P1_5	=	0x0095
                           000096   251 G$P1_6$0_0$0 == 0x0096
                           000096   252 _P1_6	=	0x0096
                           000097   253 G$P1_7$0_0$0 == 0x0097
                           000097   254 _P1_7	=	0x0097
                           000098   255 G$RI$0_0$0 == 0x0098
                           000098   256 _RI	=	0x0098
                           000099   257 G$TI$0_0$0 == 0x0099
                           000099   258 _TI	=	0x0099
                           00009A   259 G$RB8$0_0$0 == 0x009a
                           00009A   260 _RB8	=	0x009a
                           00009B   261 G$TB8$0_0$0 == 0x009b
                           00009B   262 _TB8	=	0x009b
                           00009C   263 G$REN$0_0$0 == 0x009c
                           00009C   264 _REN	=	0x009c
                           00009D   265 G$SM2$0_0$0 == 0x009d
                           00009D   266 _SM2	=	0x009d
                           00009E   267 G$SM1$0_0$0 == 0x009e
                           00009E   268 _SM1	=	0x009e
                           00009F   269 G$SM0$0_0$0 == 0x009f
                           00009F   270 _SM0	=	0x009f
                           0000A0   271 G$P2_0$0_0$0 == 0x00a0
                           0000A0   272 _P2_0	=	0x00a0
                           0000A1   273 G$P2_1$0_0$0 == 0x00a1
                           0000A1   274 _P2_1	=	0x00a1
                           0000A2   275 G$P2_2$0_0$0 == 0x00a2
                           0000A2   276 _P2_2	=	0x00a2
                           0000A3   277 G$P2_3$0_0$0 == 0x00a3
                           0000A3   278 _P2_3	=	0x00a3
                           0000A4   279 G$P2_4$0_0$0 == 0x00a4
                           0000A4   280 _P2_4	=	0x00a4
                           0000A5   281 G$P2_5$0_0$0 == 0x00a5
                           0000A5   282 _P2_5	=	0x00a5
                           0000A6   283 G$P2_6$0_0$0 == 0x00a6
                           0000A6   284 _P2_6	=	0x00a6
                           0000A7   285 G$P2_7$0_0$0 == 0x00a7
                           0000A7   286 _P2_7	=	0x00a7
                           0000A8   287 G$EX0$0_0$0 == 0x00a8
                           0000A8   288 _EX0	=	0x00a8
                           0000A9   289 G$ET0$0_0$0 == 0x00a9
                           0000A9   290 _ET0	=	0x00a9
                           0000AA   291 G$EX1$0_0$0 == 0x00aa
                           0000AA   292 _EX1	=	0x00aa
                           0000AB   293 G$ET1$0_0$0 == 0x00ab
                           0000AB   294 _ET1	=	0x00ab
                           0000AC   295 G$ES$0_0$0 == 0x00ac
                           0000AC   296 _ES	=	0x00ac
                           0000AF   297 G$EA$0_0$0 == 0x00af
                           0000AF   298 _EA	=	0x00af
                           0000B0   299 G$P3_0$0_0$0 == 0x00b0
                           0000B0   300 _P3_0	=	0x00b0
                           0000B1   301 G$P3_1$0_0$0 == 0x00b1
                           0000B1   302 _P3_1	=	0x00b1
                           0000B2   303 G$P3_2$0_0$0 == 0x00b2
                           0000B2   304 _P3_2	=	0x00b2
                           0000B3   305 G$P3_3$0_0$0 == 0x00b3
                           0000B3   306 _P3_3	=	0x00b3
                           0000B4   307 G$P3_4$0_0$0 == 0x00b4
                           0000B4   308 _P3_4	=	0x00b4
                           0000B5   309 G$P3_5$0_0$0 == 0x00b5
                           0000B5   310 _P3_5	=	0x00b5
                           0000B6   311 G$P3_6$0_0$0 == 0x00b6
                           0000B6   312 _P3_6	=	0x00b6
                           0000B7   313 G$P3_7$0_0$0 == 0x00b7
                           0000B7   314 _P3_7	=	0x00b7
                           0000B0   315 G$RXD$0_0$0 == 0x00b0
                           0000B0   316 _RXD	=	0x00b0
                           0000B1   317 G$TXD$0_0$0 == 0x00b1
                           0000B1   318 _TXD	=	0x00b1
                           0000B2   319 G$INT0$0_0$0 == 0x00b2
                           0000B2   320 _INT0	=	0x00b2
                           0000B3   321 G$INT1$0_0$0 == 0x00b3
                           0000B3   322 _INT1	=	0x00b3
                           0000B4   323 G$T0$0_0$0 == 0x00b4
                           0000B4   324 _T0	=	0x00b4
                           0000B5   325 G$T1$0_0$0 == 0x00b5
                           0000B5   326 _T1	=	0x00b5
                           0000B6   327 G$WR$0_0$0 == 0x00b6
                           0000B6   328 _WR	=	0x00b6
                           0000B7   329 G$RD$0_0$0 == 0x00b7
                           0000B7   330 _RD	=	0x00b7
                           0000B8   331 G$PX0$0_0$0 == 0x00b8
                           0000B8   332 _PX0	=	0x00b8
                           0000B9   333 G$PT0$0_0$0 == 0x00b9
                           0000B9   334 _PT0	=	0x00b9
                           0000BA   335 G$PX1$0_0$0 == 0x00ba
                           0000BA   336 _PX1	=	0x00ba
                           0000BB   337 G$PT1$0_0$0 == 0x00bb
                           0000BB   338 _PT1	=	0x00bb
                           0000BC   339 G$PS$0_0$0 == 0x00bc
                           0000BC   340 _PS	=	0x00bc
                           0000D0   341 G$P$0_0$0 == 0x00d0
                           0000D0   342 _P	=	0x00d0
                           0000D1   343 G$F1$0_0$0 == 0x00d1
                           0000D1   344 _F1	=	0x00d1
                           0000D2   345 G$OV$0_0$0 == 0x00d2
                           0000D2   346 _OV	=	0x00d2
                           0000D3   347 G$RS0$0_0$0 == 0x00d3
                           0000D3   348 _RS0	=	0x00d3
                           0000D4   349 G$RS1$0_0$0 == 0x00d4
                           0000D4   350 _RS1	=	0x00d4
                           0000D5   351 G$F0$0_0$0 == 0x00d5
                           0000D5   352 _F0	=	0x00d5
                           0000D6   353 G$AC$0_0$0 == 0x00d6
                           0000D6   354 _AC	=	0x00d6
                           0000D7   355 G$CY$0_0$0 == 0x00d7
                           0000D7   356 _CY	=	0x00d7
                           0000AD   357 G$ET2$0_0$0 == 0x00ad
                           0000AD   358 _ET2	=	0x00ad
                           0000BD   359 G$PT2$0_0$0 == 0x00bd
                           0000BD   360 _PT2	=	0x00bd
                           0000C8   361 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   362 _T2CON_0	=	0x00c8
                           0000C9   363 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   364 _T2CON_1	=	0x00c9
                           0000CA   365 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   366 _T2CON_2	=	0x00ca
                           0000CB   367 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   368 _T2CON_3	=	0x00cb
                           0000CC   369 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   370 _T2CON_4	=	0x00cc
                           0000CD   371 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   372 _T2CON_5	=	0x00cd
                           0000CE   373 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   374 _T2CON_6	=	0x00ce
                           0000CF   375 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   376 _T2CON_7	=	0x00cf
                           0000C8   377 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   378 _CP_RL2	=	0x00c8
                           0000C9   379 G$C_T2$0_0$0 == 0x00c9
                           0000C9   380 _C_T2	=	0x00c9
                           0000CA   381 G$TR2$0_0$0 == 0x00ca
                           0000CA   382 _TR2	=	0x00ca
                           0000CB   383 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   384 _EXEN2	=	0x00cb
                           0000CC   385 G$TCLK$0_0$0 == 0x00cc
                           0000CC   386 _TCLK	=	0x00cc
                           0000CD   387 G$RCLK$0_0$0 == 0x00cd
                           0000CD   388 _RCLK	=	0x00cd
                           0000CE   389 G$EXF2$0_0$0 == 0x00ce
                           0000CE   390 _EXF2	=	0x00ce
                           0000CF   391 G$TF2$0_0$0 == 0x00cf
                           0000CF   392 _TF2	=	0x00cf
                                    393 ;--------------------------------------------------------
                                    394 ; overlayable register banks
                                    395 ;--------------------------------------------------------
                                    396 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        397 	.ds 8
                                    398 ;--------------------------------------------------------
                                    399 ; internal ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area DSEG    (DATA)
                           000000   402 Lmain.LCD_GotoXY$col$1_0$59==.
      000008                        403 _LCD_GotoXY_PARM_2:
      000008                        404 	.ds 1
                           000001   405 Lmain.RemoveFirstDigit$str$1_0$72==.
      000009                        406 _RemoveFirstDigit_str_65536_72:
      000009                        407 	.ds 3
                           000004   408 Lmain.RemoveFirstDigit$length$1_0$73==.
      00000C                        409 _RemoveFirstDigit_length_65536_73:
      00000C                        410 	.ds 2
                           000006   411 Lmain.RemoveFirstDigit$i$3_0$75==.
      00000E                        412 _RemoveFirstDigit_i_196608_75:
      00000E                        413 	.ds 2
                           000008   414 Lmain.main$result$1_1$78==.
      000010                        415 _main_result_65537_78:
      000010                        416 	.ds 2
                           00000A   417 Lmain.main$check$1_1$78==.
      000012                        418 _main_check_65537_78:
      000012                        419 	.ds 2
                           00000C   420 Lmain.main$mul$1_1$78==.
      000014                        421 _main_mul_65537_78:
      000014                        422 	.ds 2
                           00000E   423 Lmain.main$buffer$1_2$79==.
      000016                        424 _main_buffer_65538_79:
      000016                        425 	.ds 16
                           00001E   426 Lmain.main$s$1_2$79==.
      000026                        427 _main_s_65538_79:
      000026                        428 	.ds 16
                           00002E   429 Lmain.main$lengs$3_2$81==.
      000036                        430 _main_lengs_196610_81:
      000036                        431 	.ds 2
                           000030   432 Lmain.main$i$9_2$118==.
      000038                        433 _main_i_589826_118:
      000038                        434 	.ds 2
                           000032   435 Lmain.main$lengs$4_2$90==.
      00003A                        436 _main_lengs_262146_90:
      00003A                        437 	.ds 2
                           000034   438 Lmain.main$lengs$5_2$96==.
      00003C                        439 _main_lengs_327682_96:
      00003C                        440 	.ds 2
                           000036   441 Lmain.main$lengs$6_2$102==.
      00003E                        442 _main_lengs_393218_102:
      00003E                        443 	.ds 2
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable items in internal ram
                                    446 ;--------------------------------------------------------
                                    447 	.area	OSEG    (OVR,DATA)
                                    448 	.area	OSEG    (OVR,DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; Stack segment in internal ram
                                    451 ;--------------------------------------------------------
                                    452 	.area	SSEG
      00007F                        453 __start__stack:
      00007F                        454 	.ds	1
                                    455 
                                    456 ;--------------------------------------------------------
                                    457 ; indirectly addressable internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area ISEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; absolute internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area IABS    (ABS,DATA)
                                    464 	.area IABS    (ABS,DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; bit data
                                    467 ;--------------------------------------------------------
                                    468 	.area BSEG    (BIT)
                                    469 ;--------------------------------------------------------
                                    470 ; paged external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area PSEG    (PAG,XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XSEG    (XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; absolute external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XABS    (ABS,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; external initialized ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XISEG   (XDATA)
                                    485 	.area HOME    (CODE)
                                    486 	.area GSINIT0 (CODE)
                                    487 	.area GSINIT1 (CODE)
                                    488 	.area GSINIT2 (CODE)
                                    489 	.area GSINIT3 (CODE)
                                    490 	.area GSINIT4 (CODE)
                                    491 	.area GSINIT5 (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.area GSFINAL (CODE)
                                    494 	.area CSEG    (CODE)
                                    495 ;--------------------------------------------------------
                                    496 ; interrupt vector
                                    497 ;--------------------------------------------------------
                                    498 	.area HOME    (CODE)
      000000                        499 __interrupt_vect:
      000000 02 00 06         [24]  500 	ljmp	__sdcc_gsinit_startup
                                    501 ;--------------------------------------------------------
                                    502 ; global & static initialisations
                                    503 ;--------------------------------------------------------
                                    504 	.area HOME    (CODE)
                                    505 	.area GSINIT  (CODE)
                                    506 	.area GSFINAL (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.globl __sdcc_gsinit_startup
                                    509 	.globl __sdcc_program_startup
                                    510 	.globl __start__stack
                                    511 	.globl __mcs51_genXINIT
                                    512 	.globl __mcs51_genXRAMCLEAR
                                    513 	.globl __mcs51_genRAMCLEAR
                                    514 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  515 	ljmp	__sdcc_program_startup
                                    516 ;--------------------------------------------------------
                                    517 ; Home
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
                                    520 	.area HOME    (CODE)
      000003                        521 __sdcc_program_startup:
      000003 02 02 3A         [24]  522 	ljmp	_main
                                    523 ;	return from main will return to caller
                                    524 ;--------------------------------------------------------
                                    525 ; code
                                    526 ;--------------------------------------------------------
                                    527 	.area CSEG    (CODE)
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'LCD_Send_Command'
                                    530 ;------------------------------------------------------------
                                    531 ;x                         Allocated to registers 
                                    532 ;------------------------------------------------------------
                           000000   533 	G$LCD_Send_Command$0$0 ==.
                           000000   534 	C$main.c$23$0_0$51 ==.
                                    535 ;	..\main.c:23: void LCD_Send_Command(unsigned char x)
                                    536 ;	-----------------------------------------
                                    537 ;	 function LCD_Send_Command
                                    538 ;	-----------------------------------------
      000062                        539 _LCD_Send_Command:
                           000007   540 	ar7 = 0x07
                           000006   541 	ar6 = 0x06
                           000005   542 	ar5 = 0x05
                           000004   543 	ar4 = 0x04
                           000003   544 	ar3 = 0x03
                           000002   545 	ar2 = 0x02
                           000001   546 	ar1 = 0x01
                           000000   547 	ar0 = 0x00
      000062 85 82 80         [24]  548 	mov	_P0,dpl
                           000003   549 	C$main.c$26$1_0$51 ==.
                                    550 ;	..\main.c:26: LCD_RS=0; //Chon thanh ghi lenh
                                    551 ;	assignBit
      000065 C2 A6            [12]  552 	clr	_P2_6
                           000005   553 	C$main.c$27$1_0$51 ==.
                                    554 ;	..\main.c:27: LCD_RW=0; //De ghi du lieu
                                    555 ;	assignBit
      000067 C2 A5            [12]  556 	clr	_P2_5
                           000007   557 	C$main.c$28$1_0$51 ==.
                                    558 ;	..\main.c:28: LCD_EN=1;
                                    559 ;	assignBit
      000069 D2 A7            [12]  560 	setb	_P2_7
                           000009   561 	C$main.c$29$1_0$51 ==.
                                    562 ;	..\main.c:29: Delay_us(100);
      00006B 90 00 64         [24]  563 	mov	dptr,#0x0064
      00006E 12 01 50         [24]  564 	lcall	_Delay_us
                           00000F   565 	C$main.c$30$1_0$51 ==.
                                    566 ;	..\main.c:30: LCD_EN=0;
                                    567 ;	assignBit
      000071 C2 A7            [12]  568 	clr	_P2_7
                           000011   569 	C$main.c$31$1_0$51 ==.
                                    570 ;	..\main.c:31: Wait_For_LCD(); //Doi cho LCD san sang
      000073 12 00 79         [24]  571 	lcall	_Wait_For_LCD
                           000014   572 	C$main.c$32$1_0$51 ==.
                                    573 ;	..\main.c:32: LCD_EN=1;
                                    574 ;	assignBit
      000076 D2 A7            [12]  575 	setb	_P2_7
                           000016   576 	C$main.c$33$1_0$51 ==.
                                    577 ;	..\main.c:33: }
                           000016   578 	C$main.c$33$1_0$51 ==.
                           000016   579 	XG$LCD_Send_Command$0$0 ==.
      000078 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'Wait_For_LCD'
                                    583 ;------------------------------------------------------------
                           000017   584 	G$Wait_For_LCD$0$0 ==.
                           000017   585 	C$main.c$35$1_0$52 ==.
                                    586 ;	..\main.c:35: void Wait_For_LCD()
                                    587 ;	-----------------------------------------
                                    588 ;	 function Wait_For_LCD
                                    589 ;	-----------------------------------------
      000079                        590 _Wait_For_LCD:
                           000017   591 	C$main.c$37$1_0$52 ==.
                                    592 ;	..\main.c:37: Delay_us(100);
      000079 90 00 64         [24]  593 	mov	dptr,#0x0064
      00007C 12 01 50         [24]  594 	lcall	_Delay_us
                           00001D   595 	C$main.c$38$1_0$52 ==.
                                    596 ;	..\main.c:38: }
                           00001D   597 	C$main.c$38$1_0$52 ==.
                           00001D   598 	XG$Wait_For_LCD$0$0 ==.
      00007F 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'LCD_init'
                                    602 ;------------------------------------------------------------
                           00001E   603 	G$LCD_init$0$0 ==.
                           00001E   604 	C$main.c$39$1_0$53 ==.
                                    605 ;	..\main.c:39: void LCD_init()
                                    606 ;	-----------------------------------------
                                    607 ;	 function LCD_init
                                    608 ;	-----------------------------------------
      000080                        609 _LCD_init:
                           00001E   610 	C$main.c$41$1_0$53 ==.
                                    611 ;	..\main.c:41: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
      000080 75 82 38         [24]  612 	mov	dpl,#0x38
      000083 12 00 62         [24]  613 	lcall	_LCD_Send_Command
                           000024   614 	C$main.c$42$1_0$53 ==.
                                    615 ;	..\main.c:42: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
      000086 75 82 0E         [24]  616 	mov	dpl,#0x0e
      000089 12 00 62         [24]  617 	lcall	_LCD_Send_Command
                           00002A   618 	C$main.c$43$1_0$53 ==.
                                    619 ;	..\main.c:43: LCD_Send_Command(0x01); //Xoa man hinh
      00008C 75 82 01         [24]  620 	mov	dpl,#0x01
      00008F 12 00 62         [24]  621 	lcall	_LCD_Send_Command
                           000030   622 	C$main.c$44$1_0$53 ==.
                                    623 ;	..\main.c:44: LCD_Send_Command(0x80); //Ve dau dong
      000092 75 82 80         [24]  624 	mov	dpl,#0x80
      000095 12 00 62         [24]  625 	lcall	_LCD_Send_Command
                           000036   626 	C$main.c$45$1_0$53 ==.
                                    627 ;	..\main.c:45: }
                           000036   628 	C$main.c$45$1_0$53 ==.
                           000036   629 	XG$LCD_init$0$0 ==.
      000098 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'LCD_Write_One_Char'
                                    633 ;------------------------------------------------------------
                                    634 ;c                         Allocated to registers 
                                    635 ;------------------------------------------------------------
                           000037   636 	G$LCD_Write_One_Char$0$0 ==.
                           000037   637 	C$main.c$48$1_0$55 ==.
                                    638 ;	..\main.c:48: void LCD_Write_One_Char(unsigned char c)
                                    639 ;	-----------------------------------------
                                    640 ;	 function LCD_Write_One_Char
                                    641 ;	-----------------------------------------
      000099                        642 _LCD_Write_One_Char:
      000099 85 82 80         [24]  643 	mov	_P0,dpl
                           00003A   644 	C$main.c$51$1_0$55 ==.
                                    645 ;	..\main.c:51: LCD_RS=1; //Chon thanh ghi du lieu
                                    646 ;	assignBit
      00009C D2 A6            [12]  647 	setb	_P2_6
                           00003C   648 	C$main.c$52$1_0$55 ==.
                                    649 ;	..\main.c:52: LCD_RW=0;
                                    650 ;	assignBit
      00009E C2 A5            [12]  651 	clr	_P2_5
                           00003E   652 	C$main.c$53$1_0$55 ==.
                                    653 ;	..\main.c:53: LCD_EN=1;
                                    654 ;	assignBit
      0000A0 D2 A7            [12]  655 	setb	_P2_7
                           000040   656 	C$main.c$54$1_0$55 ==.
                                    657 ;	..\main.c:54: Delay_us(10);
      0000A2 90 00 0A         [24]  658 	mov	dptr,#0x000a
      0000A5 12 01 50         [24]  659 	lcall	_Delay_us
                           000046   660 	C$main.c$55$1_0$55 ==.
                                    661 ;	..\main.c:55: LCD_EN=0;
                                    662 ;	assignBit
      0000A8 C2 A7            [12]  663 	clr	_P2_7
                           000048   664 	C$main.c$56$1_0$55 ==.
                                    665 ;	..\main.c:56: Wait_For_LCD();
      0000AA 12 00 79         [24]  666 	lcall	_Wait_For_LCD
                           00004B   667 	C$main.c$57$1_0$55 ==.
                                    668 ;	..\main.c:57: LCD_EN=1;
                                    669 ;	assignBit
      0000AD D2 A7            [12]  670 	setb	_P2_7
                           00004D   671 	C$main.c$58$1_0$55 ==.
                                    672 ;	..\main.c:58: }
                           00004D   673 	C$main.c$58$1_0$55 ==.
                           00004D   674 	XG$LCD_Write_One_Char$0$0 ==.
      0000AF 22               [24]  675 	ret
                                    676 ;------------------------------------------------------------
                                    677 ;Allocation info for local variables in function 'LCD_Write_String'
                                    678 ;------------------------------------------------------------
                                    679 ;s                         Allocated to registers r5 r6 r7 
                                    680 ;length                    Allocated to registers 
                                    681 ;------------------------------------------------------------
                           00004E   682 	G$LCD_Write_String$0$0 ==.
                           00004E   683 	C$main.c$60$1_0$57 ==.
                                    684 ;	..\main.c:60: void LCD_Write_String(unsigned char *s)
                                    685 ;	-----------------------------------------
                                    686 ;	 function LCD_Write_String
                                    687 ;	-----------------------------------------
      0000B0                        688 _LCD_Write_String:
                           00004E   689 	C$main.c$63$1_0$57 ==.
                                    690 ;	..\main.c:63: length=strlen(s); //Lay do dai xau
      0000B0 AD 82            [24]  691 	mov	r5,dpl
      0000B2 AE 83            [24]  692 	mov	r6,dph
      0000B4 AF F0            [24]  693 	mov	r7,b
      0000B6 C0 07            [24]  694 	push	ar7
      0000B8 C0 06            [24]  695 	push	ar6
      0000BA C0 05            [24]  696 	push	ar5
      0000BC 12 12 40         [24]  697 	lcall	_strlen
      0000BF AB 82            [24]  698 	mov	r3,dpl
      0000C1 AC 83            [24]  699 	mov	r4,dph
      0000C3 D0 05            [24]  700 	pop	ar5
      0000C5 D0 06            [24]  701 	pop	ar6
      0000C7 D0 07            [24]  702 	pop	ar7
                           000067   703 	C$main.c$64$1_0$57 ==.
                                    704 ;	..\main.c:64: while(length!=0)
      0000C9                        705 00101$:
      0000C9 EB               [12]  706 	mov	a,r3
      0000CA 60 27            [24]  707 	jz	00104$
                           00006A   708 	C$main.c$66$2_0$58 ==.
                                    709 ;	..\main.c:66: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
      0000CC 8D 82            [24]  710 	mov	dpl,r5
      0000CE 8E 83            [24]  711 	mov	dph,r6
      0000D0 8F F0            [24]  712 	mov	b,r7
      0000D2 12 12 58         [24]  713 	lcall	__gptrget
      0000D5 FC               [12]  714 	mov	r4,a
      0000D6 A3               [24]  715 	inc	dptr
      0000D7 AD 82            [24]  716 	mov	r5,dpl
      0000D9 AE 83            [24]  717 	mov	r6,dph
      0000DB 8C 82            [24]  718 	mov	dpl,r4
      0000DD C0 07            [24]  719 	push	ar7
      0000DF C0 06            [24]  720 	push	ar6
      0000E1 C0 05            [24]  721 	push	ar5
      0000E3 C0 03            [24]  722 	push	ar3
      0000E5 12 00 99         [24]  723 	lcall	_LCD_Write_One_Char
      0000E8 D0 03            [24]  724 	pop	ar3
      0000EA D0 05            [24]  725 	pop	ar5
      0000EC D0 06            [24]  726 	pop	ar6
      0000EE D0 07            [24]  727 	pop	ar7
                           00008E   728 	C$main.c$67$2_0$58 ==.
                                    729 ;	..\main.c:67: s++; //Tang con tro
                           00008E   730 	C$main.c$68$2_0$58 ==.
                                    731 ;	..\main.c:68: length--;
      0000F0 1B               [12]  732 	dec	r3
      0000F1 80 D6            [24]  733 	sjmp	00101$
      0000F3                        734 00104$:
                           000091   735 	C$main.c$70$1_0$57 ==.
                                    736 ;	..\main.c:70: }
                           000091   737 	C$main.c$70$1_0$57 ==.
                           000091   738 	XG$LCD_Write_String$0$0 ==.
      0000F3 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'LCD_GotoXY'
                                    742 ;------------------------------------------------------------
                                    743 ;col                       Allocated with name '_LCD_GotoXY_PARM_2'
                                    744 ;row                       Allocated to registers r7 
                                    745 ;i                         Allocated to registers r7 
                                    746 ;------------------------------------------------------------
                           000092   747 	G$LCD_GotoXY$0$0 ==.
                           000092   748 	C$main.c$72$1_0$60 ==.
                                    749 ;	..\main.c:72: void LCD_GotoXY(char row, char col)
                                    750 ;	-----------------------------------------
                                    751 ;	 function LCD_GotoXY
                                    752 ;	-----------------------------------------
      0000F4                        753 _LCD_GotoXY:
      0000F4 AF 82            [24]  754 	mov	r7,dpl
                           000094   755 	C$main.c$75$1_0$60 ==.
                                    756 ;	..\main.c:75: if (row == 2)
      0000F6 BF 02 08         [24]  757 	cjne	r7,#0x02,00102$
                           000097   758 	C$main.c$76$1_0$60 ==.
                                    759 ;	..\main.c:76: LCD_Send_Command(0xC0);      //cursor to fist col in row 2
      0000F9 75 82 C0         [24]  760 	mov	dpl,#0xc0
      0000FC 12 00 62         [24]  761 	lcall	_LCD_Send_Command
      0000FF 80 06            [24]  762 	sjmp	00112$
      000101                        763 00102$:
                           00009F   764 	C$main.c$78$1_0$60 ==.
                                    765 ;	..\main.c:78: LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
      000101 75 82 80         [24]  766 	mov	dpl,#0x80
      000104 12 00 62         [24]  767 	lcall	_LCD_Send_Command
                           0000A5   768 	C$main.c$79$2_0$60 ==.
                                    769 ;	..\main.c:79: for (i = 0; i < col; i++)
      000107                        770 00112$:
      000107 7F 00            [12]  771 	mov	r7,#0x00
      000109                        772 00106$:
      000109 C3               [12]  773 	clr	c
      00010A EF               [12]  774 	mov	a,r7
      00010B 95 08            [12]  775 	subb	a,_LCD_GotoXY_PARM_2
      00010D 50 0D            [24]  776 	jnc	00108$
                           0000AD   777 	C$main.c$80$2_0$61 ==.
                                    778 ;	..\main.c:80: LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
      00010F 75 82 14         [24]  779 	mov	dpl,#0x14
      000112 C0 07            [24]  780 	push	ar7
      000114 12 00 62         [24]  781 	lcall	_LCD_Send_Command
      000117 D0 07            [24]  782 	pop	ar7
                           0000B7   783 	C$main.c$79$2_0$61 ==.
                                    784 ;	..\main.c:79: for (i = 0; i < col; i++)
      000119 0F               [12]  785 	inc	r7
      00011A 80 ED            [24]  786 	sjmp	00106$
      00011C                        787 00108$:
                           0000BA   788 	C$main.c$81$2_0$60 ==.
                                    789 ;	..\main.c:81: }
                           0000BA   790 	C$main.c$81$2_0$60 ==.
                           0000BA   791 	XG$LCD_GotoXY$0$0 ==.
      00011C 22               [24]  792 	ret
                                    793 ;------------------------------------------------------------
                                    794 ;Allocation info for local variables in function 'Delay_ms'
                                    795 ;------------------------------------------------------------
                                    796 ;interval                  Allocated to registers r6 r7 
                                    797 ;i                         Allocated to registers r4 r5 
                                    798 ;j                         Allocated to registers r2 r3 
                                    799 ;------------------------------------------------------------
                           0000BB   800 	G$Delay_ms$0$0 ==.
                           0000BB   801 	C$main.c$83$2_0$64 ==.
                                    802 ;	..\main.c:83: void Delay_ms(int interval)
                                    803 ;	-----------------------------------------
                                    804 ;	 function Delay_ms
                                    805 ;	-----------------------------------------
      00011D                        806 _Delay_ms:
      00011D AE 82            [24]  807 	mov	r6,dpl
      00011F AF 83            [24]  808 	mov	r7,dph
                           0000BF   809 	C$main.c$86$2_0$64 ==.
                                    810 ;	..\main.c:86: for(i=0;i<1000;i++)
      000121 7C 00            [12]  811 	mov	r4,#0x00
      000123 7D 00            [12]  812 	mov	r5,#0x00
                           0000C3   813 	C$main.c$88$2_0$64 ==.
                                    814 ;	..\main.c:88: for(j=0;j<interval;j++);
      000125                        815 00111$:
      000125 7A 00            [12]  816 	mov	r2,#0x00
      000127 7B 00            [12]  817 	mov	r3,#0x00
      000129                        818 00104$:
      000129 C3               [12]  819 	clr	c
      00012A EA               [12]  820 	mov	a,r2
      00012B 9E               [12]  821 	subb	a,r6
      00012C EB               [12]  822 	mov	a,r3
      00012D 64 80            [12]  823 	xrl	a,#0x80
      00012F 8F F0            [24]  824 	mov	b,r7
      000131 63 F0 80         [24]  825 	xrl	b,#0x80
      000134 95 F0            [12]  826 	subb	a,b
      000136 50 07            [24]  827 	jnc	00107$
      000138 0A               [12]  828 	inc	r2
      000139 BA 00 ED         [24]  829 	cjne	r2,#0x00,00104$
      00013C 0B               [12]  830 	inc	r3
      00013D 80 EA            [24]  831 	sjmp	00104$
      00013F                        832 00107$:
                           0000DD   833 	C$main.c$86$2_0$64 ==.
                                    834 ;	..\main.c:86: for(i=0;i<1000;i++)
      00013F 0C               [12]  835 	inc	r4
      000140 BC 00 01         [24]  836 	cjne	r4,#0x00,00126$
      000143 0D               [12]  837 	inc	r5
      000144                        838 00126$:
      000144 C3               [12]  839 	clr	c
      000145 EC               [12]  840 	mov	a,r4
      000146 94 E8            [12]  841 	subb	a,#0xe8
      000148 ED               [12]  842 	mov	a,r5
      000149 64 80            [12]  843 	xrl	a,#0x80
      00014B 94 83            [12]  844 	subb	a,#0x83
      00014D 40 D6            [24]  845 	jc	00111$
                           0000ED   846 	C$main.c$90$2_0$64 ==.
                                    847 ;	..\main.c:90: }
                           0000ED   848 	C$main.c$90$2_0$64 ==.
                           0000ED   849 	XG$Delay_ms$0$0 ==.
      00014F 22               [24]  850 	ret
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'Delay_us'
                                    853 ;------------------------------------------------------------
                                    854 ;interval                  Allocated to registers r6 r7 
                                    855 ;j                         Allocated to registers r4 r5 
                                    856 ;------------------------------------------------------------
                           0000EE   857 	G$Delay_us$0$0 ==.
                           0000EE   858 	C$main.c$92$2_0$69 ==.
                                    859 ;	..\main.c:92: void Delay_us(int interval)
                                    860 ;	-----------------------------------------
                                    861 ;	 function Delay_us
                                    862 ;	-----------------------------------------
      000150                        863 _Delay_us:
      000150 AE 82            [24]  864 	mov	r6,dpl
      000152 AF 83            [24]  865 	mov	r7,dph
                           0000F2   866 	C$main.c$95$2_0$69 ==.
                                    867 ;	..\main.c:95: for(j=0;j<interval;j++);
      000154 7C 00            [12]  868 	mov	r4,#0x00
      000156 7D 00            [12]  869 	mov	r5,#0x00
      000158                        870 00103$:
      000158 C3               [12]  871 	clr	c
      000159 EC               [12]  872 	mov	a,r4
      00015A 9E               [12]  873 	subb	a,r6
      00015B ED               [12]  874 	mov	a,r5
      00015C 64 80            [12]  875 	xrl	a,#0x80
      00015E 8F F0            [24]  876 	mov	b,r7
      000160 63 F0 80         [24]  877 	xrl	b,#0x80
      000163 95 F0            [12]  878 	subb	a,b
      000165 50 07            [24]  879 	jnc	00105$
      000167 0C               [12]  880 	inc	r4
      000168 BC 00 ED         [24]  881 	cjne	r4,#0x00,00103$
      00016B 0D               [12]  882 	inc	r5
      00016C 80 EA            [24]  883 	sjmp	00103$
      00016E                        884 00105$:
                           00010C   885 	C$main.c$96$2_0$69 ==.
                                    886 ;	..\main.c:96: }
                           00010C   887 	C$main.c$96$2_0$69 ==.
                           00010C   888 	XG$Delay_us$0$0 ==.
      00016E 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'LCD_Clear'
                                    892 ;------------------------------------------------------------
                           00010D   893 	G$LCD_Clear$0$0 ==.
                           00010D   894 	C$main.c$98$2_0$70 ==.
                                    895 ;	..\main.c:98: void LCD_Clear() {
                                    896 ;	-----------------------------------------
                                    897 ;	 function LCD_Clear
                                    898 ;	-----------------------------------------
      00016F                        899 _LCD_Clear:
                           00010D   900 	C$main.c$99$1_0$70 ==.
                                    901 ;	..\main.c:99: LCD_Send_Command(0x01);
      00016F 75 82 01         [24]  902 	mov	dpl,#0x01
      000172 12 00 62         [24]  903 	lcall	_LCD_Send_Command
                           000113   904 	C$main.c$100$1_0$70 ==.
                                    905 ;	..\main.c:100: Delay_ms(2);
      000175 90 00 02         [24]  906 	mov	dptr,#0x0002
      000178 12 01 1D         [24]  907 	lcall	_Delay_ms
                           000119   908 	C$main.c$101$1_0$70 ==.
                                    909 ;	..\main.c:101: }
                           000119   910 	C$main.c$101$1_0$70 ==.
                           000119   911 	XG$LCD_Clear$0$0 ==.
      00017B 22               [24]  912 	ret
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'Beep'
                                    915 ;------------------------------------------------------------
                           00011A   916 	G$Beep$0$0 ==.
                           00011A   917 	C$main.c$103$1_0$71 ==.
                                    918 ;	..\main.c:103: void Beep(){
                                    919 ;	-----------------------------------------
                                    920 ;	 function Beep
                                    921 ;	-----------------------------------------
      00017C                        922 _Beep:
                           00011A   923 	C$main.c$104$1_0$71 ==.
                                    924 ;	..\main.c:104: P1_5 = 0;
                                    925 ;	assignBit
      00017C C2 95            [12]  926 	clr	_P1_5
                           00011C   927 	C$main.c$105$1_0$71 ==.
                                    928 ;	..\main.c:105: Delay_ms(20);
      00017E 90 00 14         [24]  929 	mov	dptr,#0x0014
      000181 12 01 1D         [24]  930 	lcall	_Delay_ms
                           000122   931 	C$main.c$106$1_0$71 ==.
                                    932 ;	..\main.c:106: P1_5 = 0;
                                    933 ;	assignBit
      000184 C2 95            [12]  934 	clr	_P1_5
                           000124   935 	C$main.c$107$1_0$71 ==.
                                    936 ;	..\main.c:107: }
                           000124   937 	C$main.c$107$1_0$71 ==.
                           000124   938 	XG$Beep$0$0 ==.
      000186 22               [24]  939 	ret
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'RemoveFirstDigit'
                                    942 ;------------------------------------------------------------
                                    943 ;str                       Allocated with name '_RemoveFirstDigit_str_65536_72'
                                    944 ;length                    Allocated with name '_RemoveFirstDigit_length_65536_73'
                                    945 ;i                         Allocated with name '_RemoveFirstDigit_i_196608_75'
                                    946 ;------------------------------------------------------------
                           000125   947 	G$RemoveFirstDigit$0$0 ==.
                           000125   948 	C$main.c$109$1_0$73 ==.
                                    949 ;	..\main.c:109: void RemoveFirstDigit(char *str) {
                                    950 ;	-----------------------------------------
                                    951 ;	 function RemoveFirstDigit
                                    952 ;	-----------------------------------------
      000187                        953 _RemoveFirstDigit:
                           000125   954 	C$main.c$110$1_0$73 ==.
                                    955 ;	..\main.c:110: int length = strlen(str);
      000187 85 82 09         [24]  956 	mov	_RemoveFirstDigit_str_65536_72,dpl
      00018A 85 83 0A         [24]  957 	mov	(_RemoveFirstDigit_str_65536_72 + 1),dph
      00018D 85 F0 0B         [24]  958 	mov	(_RemoveFirstDigit_str_65536_72 + 2),b
      000190 12 12 40         [24]  959 	lcall	_strlen
      000193 85 82 0C         [24]  960 	mov	_RemoveFirstDigit_length_65536_73,dpl
      000196 85 83 0D         [24]  961 	mov	(_RemoveFirstDigit_length_65536_73 + 1),dph
                           000137   962 	C$main.c$112$1_0$73 ==.
                                    963 ;	..\main.c:112: if (length > 14) {
      000199 C3               [12]  964 	clr	c
      00019A 74 0E            [12]  965 	mov	a,#0x0e
      00019C 95 0C            [12]  966 	subb	a,_RemoveFirstDigit_length_65536_73
      00019E 74 80            [12]  967 	mov	a,#(0x00 ^ 0x80)
      0001A0 85 0D F0         [24]  968 	mov	b,(_RemoveFirstDigit_length_65536_73 + 1)
      0001A3 63 F0 80         [24]  969 	xrl	b,#0x80
      0001A6 95 F0            [12]  970 	subb	a,b
      0001A8 40 03            [24]  971 	jc	00121$
      0001AA 02 02 2A         [24]  972 	ljmp	00103$
      0001AD                        973 00121$:
                           00014B   974 	C$main.c$113$4_0$75 ==.
                                    975 ;	..\main.c:113: for (int i = 0; i < length - 1; i++) {
      0001AD E4               [12]  976 	clr	a
      0001AE F5 0E            [12]  977 	mov	_RemoveFirstDigit_i_196608_75,a
      0001B0 F5 0F            [12]  978 	mov	(_RemoveFirstDigit_i_196608_75 + 1),a
      0001B2 E5 0C            [12]  979 	mov	a,_RemoveFirstDigit_length_65536_73
      0001B4 24 FF            [12]  980 	add	a,#0xff
      0001B6 F8               [12]  981 	mov	r0,a
      0001B7 E5 0D            [12]  982 	mov	a,(_RemoveFirstDigit_length_65536_73 + 1)
      0001B9 34 FF            [12]  983 	addc	a,#0xff
      0001BB FC               [12]  984 	mov	r4,a
      0001BC                        985 00105$:
      0001BC C3               [12]  986 	clr	c
      0001BD E5 0E            [12]  987 	mov	a,_RemoveFirstDigit_i_196608_75
      0001BF 98               [12]  988 	subb	a,r0
      0001C0 E5 0F            [12]  989 	mov	a,(_RemoveFirstDigit_i_196608_75 + 1)
      0001C2 64 80            [12]  990 	xrl	a,#0x80
      0001C4 8C F0            [24]  991 	mov	b,r4
      0001C6 63 F0 80         [24]  992 	xrl	b,#0x80
      0001C9 95 F0            [12]  993 	subb	a,b
      0001CB 50 3F            [24]  994 	jnc	00101$
                           00016B   995 	C$main.c$114$1_0$73 ==.
                                    996 ;	..\main.c:114: str[i] = str[i + 1];
      0001CD C0 00            [24]  997 	push	ar0
      0001CF C0 04            [24]  998 	push	ar4
      0001D1 E5 0E            [12]  999 	mov	a,_RemoveFirstDigit_i_196608_75
      0001D3 25 09            [12] 1000 	add	a,_RemoveFirstDigit_str_65536_72
      0001D5 F9               [12] 1001 	mov	r1,a
      0001D6 E5 0F            [12] 1002 	mov	a,(_RemoveFirstDigit_i_196608_75 + 1)
      0001D8 35 0A            [12] 1003 	addc	a,(_RemoveFirstDigit_str_65536_72 + 1)
      0001DA FA               [12] 1004 	mov	r2,a
      0001DB AB 0B            [24] 1005 	mov	r3,(_RemoveFirstDigit_str_65536_72 + 2)
      0001DD 74 01            [12] 1006 	mov	a,#0x01
      0001DF 25 0E            [12] 1007 	add	a,_RemoveFirstDigit_i_196608_75
      0001E1 FE               [12] 1008 	mov	r6,a
      0001E2 E4               [12] 1009 	clr	a
      0001E3 35 0F            [12] 1010 	addc	a,(_RemoveFirstDigit_i_196608_75 + 1)
      0001E5 FF               [12] 1011 	mov	r7,a
      0001E6 EE               [12] 1012 	mov	a,r6
      0001E7 25 09            [12] 1013 	add	a,_RemoveFirstDigit_str_65536_72
      0001E9 F8               [12] 1014 	mov	r0,a
      0001EA EF               [12] 1015 	mov	a,r7
      0001EB 35 0A            [12] 1016 	addc	a,(_RemoveFirstDigit_str_65536_72 + 1)
      0001ED FC               [12] 1017 	mov	r4,a
      0001EE AD 0B            [24] 1018 	mov	r5,(_RemoveFirstDigit_str_65536_72 + 2)
      0001F0 88 82            [24] 1019 	mov	dpl,r0
      0001F2 8C 83            [24] 1020 	mov	dph,r4
      0001F4 8D F0            [24] 1021 	mov	b,r5
      0001F6 12 12 58         [24] 1022 	lcall	__gptrget
      0001F9 89 82            [24] 1023 	mov	dpl,r1
      0001FB 8A 83            [24] 1024 	mov	dph,r2
      0001FD 8B F0            [24] 1025 	mov	b,r3
      0001FF 12 09 FE         [24] 1026 	lcall	__gptrput
                           0001A0  1027 	C$main.c$113$3_0$75 ==.
                                   1028 ;	..\main.c:113: for (int i = 0; i < length - 1; i++) {
      000202 8E 0E            [24] 1029 	mov	_RemoveFirstDigit_i_196608_75,r6
      000204 8F 0F            [24] 1030 	mov	(_RemoveFirstDigit_i_196608_75 + 1),r7
      000206 D0 04            [24] 1031 	pop	ar4
      000208 D0 00            [24] 1032 	pop	ar0
      00020A 80 B0            [24] 1033 	sjmp	00105$
      00020C                       1034 00101$:
                           0001AA  1035 	C$main.c$116$2_0$74 ==.
                                   1036 ;	..\main.c:116: str[length - 1] = '\0';
      00020C E5 0C            [12] 1037 	mov	a,_RemoveFirstDigit_length_65536_73
      00020E 24 FF            [12] 1038 	add	a,#0xff
      000210 FE               [12] 1039 	mov	r6,a
      000211 E5 0D            [12] 1040 	mov	a,(_RemoveFirstDigit_length_65536_73 + 1)
      000213 34 FF            [12] 1041 	addc	a,#0xff
      000215 FF               [12] 1042 	mov	r7,a
      000216 EE               [12] 1043 	mov	a,r6
      000217 25 09            [12] 1044 	add	a,_RemoveFirstDigit_str_65536_72
      000219 FE               [12] 1045 	mov	r6,a
      00021A EF               [12] 1046 	mov	a,r7
      00021B 35 0A            [12] 1047 	addc	a,(_RemoveFirstDigit_str_65536_72 + 1)
      00021D FF               [12] 1048 	mov	r7,a
      00021E AD 0B            [24] 1049 	mov	r5,(_RemoveFirstDigit_str_65536_72 + 2)
      000220 8E 82            [24] 1050 	mov	dpl,r6
      000222 8F 83            [24] 1051 	mov	dph,r7
      000224 8D F0            [24] 1052 	mov	b,r5
      000226 E4               [12] 1053 	clr	a
      000227 12 09 FE         [24] 1054 	lcall	__gptrput
      00022A                       1055 00103$:
                           0001C8  1056 	C$main.c$118$1_0$73 ==.
                                   1057 ;	..\main.c:118: LCD_Clear();
      00022A 12 01 6F         [24] 1058 	lcall	_LCD_Clear
                           0001CB  1059 	C$main.c$119$1_0$73 ==.
                                   1060 ;	..\main.c:119: LCD_Write_String(str);
      00022D 85 09 82         [24] 1061 	mov	dpl,_RemoveFirstDigit_str_65536_72
      000230 85 0A 83         [24] 1062 	mov	dph,(_RemoveFirstDigit_str_65536_72 + 1)
      000233 85 0B F0         [24] 1063 	mov	b,(_RemoveFirstDigit_str_65536_72 + 2)
      000236 12 00 B0         [24] 1064 	lcall	_LCD_Write_String
                           0001D7  1065 	C$main.c$120$1_0$73 ==.
                                   1066 ;	..\main.c:120: }
                           0001D7  1067 	C$main.c$120$1_0$73 ==.
                           0001D7  1068 	XG$RemoveFirstDigit$0$0 ==.
      000239 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'main'
                                   1072 ;------------------------------------------------------------
                                   1073 ;result                    Allocated with name '_main_result_65537_78'
                                   1074 ;local                     Allocated to registers r4 r5 
                                   1075 ;check                     Allocated with name '_main_check_65537_78'
                                   1076 ;mul                       Allocated with name '_main_mul_65537_78'
                                   1077 ;count                     Allocated to registers 
                                   1078 ;buffer                    Allocated with name '_main_buffer_65538_79'
                                   1079 ;s                         Allocated with name '_main_s_65538_79'
                                   1080 ;lengs                     Allocated with name '_main_lengs_196610_81'
                                   1081 ;i                         Allocated with name '_main_i_589826_118'
                                   1082 ;j                         Allocated to registers r6 r7 
                                   1083 ;j                         Allocated to registers r6 r7 
                                   1084 ;lengs                     Allocated with name '_main_lengs_262146_90'
                                   1085 ;lengs                     Allocated with name '_main_lengs_327682_96'
                                   1086 ;lengs                     Allocated with name '_main_lengs_393218_102'
                                   1087 ;------------------------------------------------------------
                           0001D8  1088 	G$main$0$0 ==.
                           0001D8  1089 	C$main.c$122$1_0$77 ==.
                                   1090 ;	..\main.c:122: void main()
                                   1091 ;	-----------------------------------------
                                   1092 ;	 function main
                                   1093 ;	-----------------------------------------
      00023A                       1094 _main:
                           0001D8  1095 	C$main.c$124$1_0$77 ==.
                                   1096 ;	..\main.c:124: Beep();
      00023A 12 01 7C         [24] 1097 	lcall	_Beep
                           0001DB  1098 	C$main.c$125$2_0$78 ==.
                                   1099 ;	..\main.c:125: int result = 0;
                           0001DB  1100 	C$main.c$126$2_0$78 ==.
                                   1101 ;	..\main.c:126: int local = 0;
      00023D E4               [12] 1102 	clr	a
      00023E F5 10            [12] 1103 	mov	_main_result_65537_78,a
      000240 F5 11            [12] 1104 	mov	(_main_result_65537_78 + 1),a
      000242 FC               [12] 1105 	mov	r4,a
      000243 FD               [12] 1106 	mov	r5,a
                           0001E2  1107 	C$main.c$127$2_0$78 ==.
                                   1108 ;	..\main.c:127: int check = 1;
      000244 75 12 01         [24] 1109 	mov	_main_check_65537_78,#0x01
                                   1110 ;	1-genFromRTrack replaced	mov	(_main_check_65537_78 + 1),#0x00
      000247 F5 13            [12] 1111 	mov	(_main_check_65537_78 + 1),a
                           0001E7  1112 	C$main.c$128$2_0$78 ==.
                                   1113 ;	..\main.c:128: int mul = 1;
      000249 7A 01            [12] 1114 	mov	r2,#0x01
      00024B 7B 00            [12] 1115 	mov	r3,#0x00
                           0001EB  1116 	C$main.c$129$1_1$78 ==.
                                   1117 ;	..\main.c:129: LCD_init();
      00024D C0 05            [24] 1118 	push	ar5
      00024F C0 04            [24] 1119 	push	ar4
      000251 C0 03            [24] 1120 	push	ar3
      000253 C0 02            [24] 1121 	push	ar2
      000255 12 00 80         [24] 1122 	lcall	_LCD_init
      000258 D0 02            [24] 1123 	pop	ar2
      00025A D0 03            [24] 1124 	pop	ar3
      00025C D0 04            [24] 1125 	pop	ar4
      00025E D0 05            [24] 1126 	pop	ar5
                           0001FE  1127 	C$main.c$130$1_1$78 ==.
                                   1128 ;	..\main.c:130: P1_4 = 0; P1_5 = 0; P1_6 = 0; P1_7 = 0;
                                   1129 ;	assignBit
      000260 C2 94            [12] 1130 	clr	_P1_4
                                   1131 ;	assignBit
      000262 C2 95            [12] 1132 	clr	_P1_5
                                   1133 ;	assignBit
      000264 C2 96            [12] 1134 	clr	_P1_6
                                   1135 ;	assignBit
      000266 C2 97            [12] 1136 	clr	_P1_7
                           000206  1137 	C$main.c$133$2_1$79 ==.
                                   1138 ;	..\main.c:133: char s[16] ="";  // Khai báo chuỗi rỗng
      000268 75 26 00         [24] 1139 	mov	_main_s_65538_79,#0x00
      00026B 75 27 00         [24] 1140 	mov	(_main_s_65538_79 + 0x0001),#0x00
      00026E 75 28 00         [24] 1141 	mov	(_main_s_65538_79 + 0x0002),#0x00
      000271 75 29 00         [24] 1142 	mov	(_main_s_65538_79 + 0x0003),#0x00
      000274 75 2A 00         [24] 1143 	mov	(_main_s_65538_79 + 0x0004),#0x00
      000277 75 2B 00         [24] 1144 	mov	(_main_s_65538_79 + 0x0005),#0x00
      00027A 75 2C 00         [24] 1145 	mov	(_main_s_65538_79 + 0x0006),#0x00
      00027D 75 2D 00         [24] 1146 	mov	(_main_s_65538_79 + 0x0007),#0x00
      000280 75 2E 00         [24] 1147 	mov	(_main_s_65538_79 + 0x0008),#0x00
      000283 75 2F 00         [24] 1148 	mov	(_main_s_65538_79 + 0x0009),#0x00
      000286 75 30 00         [24] 1149 	mov	(_main_s_65538_79 + 0x000a),#0x00
      000289 75 31 00         [24] 1150 	mov	(_main_s_65538_79 + 0x000b),#0x00
      00028C 75 32 00         [24] 1151 	mov	(_main_s_65538_79 + 0x000c),#0x00
      00028F 75 33 00         [24] 1152 	mov	(_main_s_65538_79 + 0x000d),#0x00
      000292 75 34 00         [24] 1153 	mov	(_main_s_65538_79 + 0x000e),#0x00
      000295 75 35 00         [24] 1154 	mov	(_main_s_65538_79 + 0x000f),#0x00
                           000236  1155 	C$main.c$134$1_2$79 ==.
                                   1156 ;	..\main.c:134: while (1) {
      000298                       1157 00189$:
                           000236  1158 	C$main.c$135$2_2$80 ==.
                                   1159 ;	..\main.c:135: P1_4 = 0; P1_5 = 0; P1_6 = 0; P1_7 = 0;
                                   1160 ;	assignBit
      000298 C2 94            [12] 1161 	clr	_P1_4
                                   1162 ;	assignBit
      00029A C2 95            [12] 1163 	clr	_P1_5
                                   1164 ;	assignBit
      00029C C2 96            [12] 1165 	clr	_P1_6
                                   1166 ;	assignBit
      00029E C2 97            [12] 1167 	clr	_P1_7
                           00023E  1168 	C$main.c$136$2_2$80 ==.
                                   1169 ;	..\main.c:136: if (P1_1 == 0 ) {
      0002A0 30 91 03         [24] 1170 	jnb	_P1_1,00464$
      0002A3 02 05 01         [24] 1171 	ljmp	00186$
      0002A6                       1172 00464$:
                           000244  1173 	C$main.c$137$3_2$81 ==.
                                   1174 ;	..\main.c:137: int lengs = strlen(s);
      0002A6 90 00 26         [24] 1175 	mov	dptr,#_main_s_65538_79
      0002A9 75 F0 40         [24] 1176 	mov	b,#0x40
      0002AC C0 05            [24] 1177 	push	ar5
      0002AE C0 04            [24] 1178 	push	ar4
      0002B0 C0 03            [24] 1179 	push	ar3
      0002B2 C0 02            [24] 1180 	push	ar2
      0002B4 12 12 40         [24] 1181 	lcall	_strlen
      0002B7 85 82 36         [24] 1182 	mov	_main_lengs_196610_81,dpl
      0002BA 85 83 37         [24] 1183 	mov	(_main_lengs_196610_81 + 1),dph
      0002BD D0 02            [24] 1184 	pop	ar2
      0002BF D0 03            [24] 1185 	pop	ar3
      0002C1 D0 04            [24] 1186 	pop	ar4
      0002C3 D0 05            [24] 1187 	pop	ar5
                           000263  1188 	C$main.c$138$3_2$81 ==.
                                   1189 ;	..\main.c:138: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   1190 ;	assignBit
      0002C5 C2 94            [12] 1191 	clr	_P1_4
                                   1192 ;	assignBit
      0002C7 D2 95            [12] 1193 	setb	_P1_5
                                   1194 ;	assignBit
      0002C9 D2 96            [12] 1195 	setb	_P1_6
                                   1196 ;	assignBit
      0002CB D2 97            [12] 1197 	setb	_P1_7
                           00026B  1198 	C$main.c$139$3_2$81 ==.
                                   1199 ;	..\main.c:139: if (P1_1 == 0 ) {
      0002CD 30 91 03         [24] 1200 	jnb	_P1_1,00465$
      0002D0 02 04 37         [24] 1201 	ljmp	00114$
      0002D3                       1202 00465$:
                           000271  1203 	C$main.c$140$4_2$82 ==.
                                   1204 ;	..\main.c:140: switch (check) {
      0002D3 74 01            [12] 1205 	mov	a,#0x01
      0002D5 B5 12 06         [24] 1206 	cjne	a,_main_check_65537_78,00466$
      0002D8 14               [12] 1207 	dec	a
      0002D9 B5 13 02         [24] 1208 	cjne	a,(_main_check_65537_78 + 1),00466$
      0002DC 80 23            [24] 1209 	sjmp	00101$
      0002DE                       1210 00466$:
      0002DE 74 02            [12] 1211 	mov	a,#0x02
      0002E0 B5 12 06         [24] 1212 	cjne	a,_main_check_65537_78,00467$
      0002E3 E4               [12] 1213 	clr	a
      0002E4 B5 13 02         [24] 1214 	cjne	a,(_main_check_65537_78 + 1),00467$
      0002E7 80 24            [24] 1215 	sjmp	00102$
      0002E9                       1216 00467$:
      0002E9 74 03            [12] 1217 	mov	a,#0x03
      0002EB B5 12 06         [24] 1218 	cjne	a,_main_check_65537_78,00468$
      0002EE E4               [12] 1219 	clr	a
      0002EF B5 13 02         [24] 1220 	cjne	a,(_main_check_65537_78 + 1),00468$
      0002F2 80 26            [24] 1221 	sjmp	00103$
      0002F4                       1222 00468$:
      0002F4 74 04            [12] 1223 	mov	a,#0x04
      0002F6 B5 12 06         [24] 1224 	cjne	a,_main_check_65537_78,00469$
      0002F9 E4               [12] 1225 	clr	a
      0002FA B5 13 02         [24] 1226 	cjne	a,(_main_check_65537_78 + 1),00469$
      0002FD 80 42            [24] 1227 	sjmp	00104$
      0002FF                       1228 00469$:
                           00029D  1229 	C$main.c$141$5_2$83 ==.
                                   1230 ;	..\main.c:141: case 1:
      0002FF 80 61            [24] 1231 	sjmp	00105$
      000301                       1232 00101$:
                           00029F  1233 	C$main.c$142$5_2$83 ==.
                                   1234 ;	..\main.c:142: result = result + local;
      000301 EC               [12] 1235 	mov	a,r4
      000302 25 10            [12] 1236 	add	a,_main_result_65537_78
      000304 F5 10            [12] 1237 	mov	_main_result_65537_78,a
      000306 ED               [12] 1238 	mov	a,r5
      000307 35 11            [12] 1239 	addc	a,(_main_result_65537_78 + 1)
      000309 F5 11            [12] 1240 	mov	(_main_result_65537_78 + 1),a
                           0002A9  1241 	C$main.c$143$5_2$83 ==.
                                   1242 ;	..\main.c:143: break;
                           0002A9  1243 	C$main.c$144$5_2$83 ==.
                                   1244 ;	..\main.c:144: case 2:
      00030B 80 55            [24] 1245 	sjmp	00105$
      00030D                       1246 00102$:
                           0002AB  1247 	C$main.c$145$5_2$83 ==.
                                   1248 ;	..\main.c:145: result = result - local;
      00030D E5 10            [12] 1249 	mov	a,_main_result_65537_78
      00030F C3               [12] 1250 	clr	c
      000310 9C               [12] 1251 	subb	a,r4
      000311 F5 10            [12] 1252 	mov	_main_result_65537_78,a
      000313 E5 11            [12] 1253 	mov	a,(_main_result_65537_78 + 1)
      000315 9D               [12] 1254 	subb	a,r5
      000316 F5 11            [12] 1255 	mov	(_main_result_65537_78 + 1),a
                           0002B6  1256 	C$main.c$146$5_2$83 ==.
                                   1257 ;	..\main.c:146: break;
                           0002B6  1258 	C$main.c$147$5_2$83 ==.
                                   1259 ;	..\main.c:147: case 3:
      000318 80 48            [24] 1260 	sjmp	00105$
      00031A                       1261 00103$:
                           0002B8  1262 	C$main.c$148$1_2$77 ==.
                                   1263 ;	..\main.c:148: mul = mul * local;
      00031A 8C 76            [24] 1264 	mov	__mulint_PARM_2,r4
      00031C 8D 77            [24] 1265 	mov	(__mulint_PARM_2 + 1),r5
      00031E 8A 82            [24] 1266 	mov	dpl,r2
      000320 8B 83            [24] 1267 	mov	dph,r3
      000322 C0 05            [24] 1268 	push	ar5
      000324 C0 04            [24] 1269 	push	ar4
      000326 12 0A 19         [24] 1270 	lcall	__mulint
      000329 85 82 14         [24] 1271 	mov	_main_mul_65537_78,dpl
      00032C 85 83 15         [24] 1272 	mov	(_main_mul_65537_78 + 1),dph
      00032F D0 04            [24] 1273 	pop	ar4
      000331 D0 05            [24] 1274 	pop	ar5
                           0002D1  1275 	C$main.c$149$5_2$83 ==.
                                   1276 ;	..\main.c:149: result = result + mul;
      000333 E5 14            [12] 1277 	mov	a,_main_mul_65537_78
      000335 25 10            [12] 1278 	add	a,_main_result_65537_78
      000337 F5 10            [12] 1279 	mov	_main_result_65537_78,a
      000339 E5 15            [12] 1280 	mov	a,(_main_mul_65537_78 + 1)
      00033B 35 11            [12] 1281 	addc	a,(_main_result_65537_78 + 1)
      00033D F5 11            [12] 1282 	mov	(_main_result_65537_78 + 1),a
                           0002DD  1283 	C$main.c$150$5_2$83 ==.
                                   1284 ;	..\main.c:150: break;
                           0002DD  1285 	C$main.c$151$5_2$83 ==.
                                   1286 ;	..\main.c:151: case 4:
      00033F 80 21            [24] 1287 	sjmp	00105$
      000341                       1288 00104$:
                           0002DF  1289 	C$main.c$152$1_2$77 ==.
                                   1290 ;	..\main.c:152: mul = mul / local;
      000341 8C 76            [24] 1291 	mov	__divsint_PARM_2,r4
      000343 8D 77            [24] 1292 	mov	(__divsint_PARM_2 + 1),r5
      000345 8A 82            [24] 1293 	mov	dpl,r2
      000347 8B 83            [24] 1294 	mov	dph,r3
      000349 C0 05            [24] 1295 	push	ar5
      00034B C0 04            [24] 1296 	push	ar4
      00034D 12 12 74         [24] 1297 	lcall	__divsint
      000350 AE 82            [24] 1298 	mov	r6,dpl
      000352 AF 83            [24] 1299 	mov	r7,dph
      000354 D0 04            [24] 1300 	pop	ar4
      000356 D0 05            [24] 1301 	pop	ar5
                           0002F6  1302 	C$main.c$153$5_2$83 ==.
                                   1303 ;	..\main.c:153: result = result + mul;
      000358 EE               [12] 1304 	mov	a,r6
      000359 25 10            [12] 1305 	add	a,_main_result_65537_78
      00035B F5 10            [12] 1306 	mov	_main_result_65537_78,a
      00035D EF               [12] 1307 	mov	a,r7
      00035E 35 11            [12] 1308 	addc	a,(_main_result_65537_78 + 1)
      000360 F5 11            [12] 1309 	mov	(_main_result_65537_78 + 1),a
                           000300  1310 	C$main.c$155$4_2$82 ==.
                                   1311 ;	..\main.c:155: }
      000362                       1312 00105$:
                           000300  1313 	C$main.c$156$4_2$82 ==.
                                   1314 ;	..\main.c:156: LCD_Send_Command(0xC0); // Dòng thứ 2
      000362 75 82 C0         [24] 1315 	mov	dpl,#0xc0
      000365 C0 05            [24] 1316 	push	ar5
      000367 C0 04            [24] 1317 	push	ar4
      000369 12 00 62         [24] 1318 	lcall	_LCD_Send_Command
      00036C D0 04            [24] 1319 	pop	ar4
      00036E D0 05            [24] 1320 	pop	ar5
                           00030E  1321 	C$main.c$157$4_2$82 ==.
                                   1322 ;	..\main.c:157: if (local == 0 && check == 4){
      000370 EC               [12] 1323 	mov	a,r4
      000371 4D               [12] 1324 	orl	a,r5
      000372 70 18            [24] 1325 	jnz	00107$
      000374 74 04            [12] 1326 	mov	a,#0x04
      000376 B5 12 06         [24] 1327 	cjne	a,_main_check_65537_78,00471$
      000379 E4               [12] 1328 	clr	a
      00037A B5 13 02         [24] 1329 	cjne	a,(_main_check_65537_78 + 1),00471$
      00037D 80 02            [24] 1330 	sjmp	00472$
      00037F                       1331 00471$:
      00037F 80 0B            [24] 1332 	sjmp	00107$
      000381                       1333 00472$:
                           00031F  1334 	C$main.c$158$5_2$84 ==.
                                   1335 ;	..\main.c:158: LCD_Write_String("Invalid");
      000381 90 12 B0         [24] 1336 	mov	dptr,#___str_1
      000384 75 F0 80         [24] 1337 	mov	b,#0x80
      000387 12 00 B0         [24] 1338 	lcall	_LCD_Write_String
      00038A 80 7A            [24] 1339 	sjmp	00108$
      00038C                       1340 00107$:
                           00032A  1341 	C$main.c$160$5_2$85 ==.
                                   1342 ;	..\main.c:160: sprintf(buffer, "%d", result);
      00038C C0 10            [24] 1343 	push	_main_result_65537_78
      00038E C0 11            [24] 1344 	push	(_main_result_65537_78 + 1)
      000390 74 B8            [12] 1345 	mov	a,#___str_2
      000392 C0 E0            [24] 1346 	push	acc
      000394 74 12            [12] 1347 	mov	a,#(___str_2 >> 8)
      000396 C0 E0            [24] 1348 	push	acc
      000398 74 80            [12] 1349 	mov	a,#0x80
      00039A C0 E0            [24] 1350 	push	acc
      00039C 74 16            [12] 1351 	mov	a,#_main_buffer_65538_79
      00039E C0 E0            [24] 1352 	push	acc
      0003A0 74 00            [12] 1353 	mov	a,#(_main_buffer_65538_79 >> 8)
      0003A2 C0 E0            [24] 1354 	push	acc
      0003A4 74 40            [12] 1355 	mov	a,#0x40
      0003A6 C0 E0            [24] 1356 	push	acc
      0003A8 12 0B 0C         [24] 1357 	lcall	_sprintf
      0003AB E5 81            [12] 1358 	mov	a,sp
      0003AD 24 F8            [12] 1359 	add	a,#0xf8
      0003AF F5 81            [12] 1360 	mov	sp,a
                           00034F  1361 	C$main.c$11$1_2$77 ==.
                                   1362 ;	..\main.c:11: for (int i = 0; i < time * 1e3 / 200; i++)
      0003B1 E4               [12] 1363 	clr	a
      0003B2 F5 38            [12] 1364 	mov	_main_i_589826_118,a
      0003B4 F5 39            [12] 1365 	mov	(_main_i_589826_118 + 1),a
      0003B6                       1366 00202$:
      0003B6 C3               [12] 1367 	clr	c
      0003B7 E5 38            [12] 1368 	mov	a,_main_i_589826_118
      0003B9 94 C8            [12] 1369 	subb	a,#0xc8
      0003BB E5 39            [12] 1370 	mov	a,(_main_i_589826_118 + 1)
      0003BD 64 80            [12] 1371 	xrl	a,#0x80
      0003BF 94 80            [12] 1372 	subb	a,#0x80
      0003C1 50 3A            [24] 1373 	jnc	00194$
                                   1374 ;	..\main.c:13: buzzer_pin = 1;
                                   1375 ;	assignBit
      0003C3 D2 95            [12] 1376 	setb	_P1_5
                           000363  1377 	C$main.c$14$1_2$77 ==.
                                   1378 ;	..\main.c:14: for (int j = 0; j < 100; j++)
      0003C5 7E 00            [12] 1379 	mov	r6,#0x00
      0003C7 7F 00            [12] 1380 	mov	r7,#0x00
      0003C9                       1381 00196$:
      0003C9 C3               [12] 1382 	clr	c
      0003CA EE               [12] 1383 	mov	a,r6
      0003CB 94 64            [12] 1384 	subb	a,#0x64
      0003CD EF               [12] 1385 	mov	a,r7
      0003CE 64 80            [12] 1386 	xrl	a,#0x80
      0003D0 94 80            [12] 1387 	subb	a,#0x80
      0003D2 50 07            [24] 1388 	jnc	00191$
      0003D4 0E               [12] 1389 	inc	r6
      0003D5 BE 00 F1         [24] 1390 	cjne	r6,#0x00,00196$
      0003D8 0F               [12] 1391 	inc	r7
      0003D9 80 EE            [24] 1392 	sjmp	00196$
      0003DB                       1393 00191$:
                                   1394 ;	..\main.c:16: buzzer_pin = 0;
                                   1395 ;	assignBit
      0003DB C2 95            [12] 1396 	clr	_P1_5
                           00037B  1397 	C$main.c$17$1_2$77 ==.
                                   1398 ;	..\main.c:17: for (int j = 0; j < 100; j++)
      0003DD 7E 00            [12] 1399 	mov	r6,#0x00
      0003DF 7F 00            [12] 1400 	mov	r7,#0x00
      0003E1                       1401 00199$:
      0003E1 C3               [12] 1402 	clr	c
      0003E2 EE               [12] 1403 	mov	a,r6
      0003E3 94 64            [12] 1404 	subb	a,#0x64
      0003E5 EF               [12] 1405 	mov	a,r7
      0003E6 64 80            [12] 1406 	xrl	a,#0x80
      0003E8 94 80            [12] 1407 	subb	a,#0x80
      0003EA 50 07            [24] 1408 	jnc	00203$
      0003EC 0E               [12] 1409 	inc	r6
      0003ED BE 00 F1         [24] 1410 	cjne	r6,#0x00,00199$
      0003F0 0F               [12] 1411 	inc	r7
      0003F1 80 EE            [24] 1412 	sjmp	00199$
      0003F3                       1413 00203$:
                                   1414 ;	..\main.c:11: for (int i = 0; i < time * 1e3 / 200; i++)
      0003F3 05 38            [12] 1415 	inc	_main_i_589826_118
      0003F5 E4               [12] 1416 	clr	a
                                   1417 ;	..\main.c:161: buzzer();
      0003F6 B5 38 BD         [24] 1418 	cjne	a,_main_i_589826_118,00202$
      0003F9 05 39            [12] 1419 	inc	(_main_i_589826_118 + 1)
      0003FB 80 B9            [24] 1420 	sjmp	00202$
      0003FD                       1421 00194$:
                           00039B  1422 	C$main.c$162$5_2$85 ==.
                                   1423 ;	..\main.c:162: LCD_Write_String(buffer);
      0003FD 90 00 16         [24] 1424 	mov	dptr,#_main_buffer_65538_79
      000400 75 F0 40         [24] 1425 	mov	b,#0x40
      000403 12 00 B0         [24] 1426 	lcall	_LCD_Write_String
      000406                       1427 00108$:
                           0003A4  1428 	C$main.c$164$4_2$82 ==.
                                   1429 ;	..\main.c:164: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   1430 ;	assignBit
      000406 C2 94            [12] 1431 	clr	_P1_4
                                   1432 ;	assignBit
      000408 D2 95            [12] 1433 	setb	_P1_5
                                   1434 ;	assignBit
      00040A D2 96            [12] 1435 	setb	_P1_6
                                   1436 ;	assignBit
      00040C D2 97            [12] 1437 	setb	_P1_7
                           0003AC  1438 	C$main.c$165$4_2$82 ==.
                                   1439 ;	..\main.c:165: while (P1_2 != 0);
      00040E                       1440 00110$:
      00040E 20 92 FD         [24] 1441 	jb	_P1_2,00110$
                           0003AF  1442 	C$main.c$166$4_2$82 ==.
                                   1443 ;	..\main.c:166: result = 0;
                           0003AF  1444 	C$main.c$167$4_2$82 ==.
                                   1445 ;	..\main.c:167: local = 0;
      000411 E4               [12] 1446 	clr	a
      000412 F5 10            [12] 1447 	mov	_main_result_65537_78,a
      000414 F5 11            [12] 1448 	mov	(_main_result_65537_78 + 1),a
      000416 FC               [12] 1449 	mov	r4,a
      000417 FD               [12] 1450 	mov	r5,a
                           0003B6  1451 	C$main.c$168$4_2$82 ==.
                                   1452 ;	..\main.c:168: check = 1;
      000418 75 12 01         [24] 1453 	mov	_main_check_65537_78,#0x01
                                   1454 ;	1-genFromRTrack replaced	mov	(_main_check_65537_78 + 1),#0x00
      00041B F5 13            [12] 1455 	mov	(_main_check_65537_78 + 1),a
                           0003BB  1456 	C$main.c$169$4_2$82 ==.
                                   1457 ;	..\main.c:169: mul = 1;
      00041D 7A 01            [12] 1458 	mov	r2,#0x01
      00041F 7B 00            [12] 1459 	mov	r3,#0x00
                           0003BF  1460 	C$main.c$170$4_2$82 ==.
                                   1461 ;	..\main.c:170: LCD_Clear();
      000421 C0 05            [24] 1462 	push	ar5
      000423 C0 04            [24] 1463 	push	ar4
      000425 C0 03            [24] 1464 	push	ar3
      000427 C0 02            [24] 1465 	push	ar2
      000429 12 01 6F         [24] 1466 	lcall	_LCD_Clear
      00042C D0 02            [24] 1467 	pop	ar2
      00042E D0 03            [24] 1468 	pop	ar3
      000430 D0 04            [24] 1469 	pop	ar4
      000432 D0 05            [24] 1470 	pop	ar5
                           0003D2  1471 	C$main.c$171$4_2$82 ==.
                                   1472 ;	..\main.c:171: s[0]='\0';
      000434 75 26 00         [24] 1473 	mov	_main_s_65538_79,#0x00
      000437                       1474 00114$:
                           0003D5  1475 	C$main.c$173$3_2$81 ==.
                                   1476 ;	..\main.c:173: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
                                   1477 ;	assignBit
      000437 D2 94            [12] 1478 	setb	_P1_4
                                   1479 ;	assignBit
      000439 C2 95            [12] 1480 	clr	_P1_5
                                   1481 ;	assignBit
      00043B D2 96            [12] 1482 	setb	_P1_6
                                   1483 ;	assignBit
      00043D D2 97            [12] 1484 	setb	_P1_7
                           0003DD  1485 	C$main.c$174$3_2$81 ==.
                                   1486 ;	..\main.c:174: if (P1_1 == 0) {
      00043F 20 91 2D         [24] 1487 	jb	_P1_1,00116$
                           0003E0  1488 	C$main.c$175$4_2$86 ==.
                                   1489 ;	..\main.c:175: s[lengs] = '3';
      000442 E5 36            [12] 1490 	mov	a,_main_lengs_196610_81
      000444 24 26            [12] 1491 	add	a,#_main_s_65538_79
      000446 F8               [12] 1492 	mov	r0,a
      000447 76 33            [12] 1493 	mov	@r0,#0x33
                           0003E7  1494 	C$main.c$176$4_2$86 ==.
                                   1495 ;	..\main.c:176: s[lengs + 1] = '\0';
      000449 E5 36            [12] 1496 	mov	a,_main_lengs_196610_81
      00044B 04               [12] 1497 	inc	a
      00044C 24 26            [12] 1498 	add	a,#_main_s_65538_79
      00044E F8               [12] 1499 	mov	r0,a
      00044F 76 00            [12] 1500 	mov	@r0,#0x00
                           0003EF  1501 	C$main.c$177$1_2$77 ==.
                                   1502 ;	..\main.c:177: local = local * 10 + 3;
      000451 8C 76            [24] 1503 	mov	__mulint_PARM_2,r4
      000453 8D 77            [24] 1504 	mov	(__mulint_PARM_2 + 1),r5
      000455 90 00 0A         [24] 1505 	mov	dptr,#0x000a
      000458 C0 03            [24] 1506 	push	ar3
      00045A C0 02            [24] 1507 	push	ar2
      00045C 12 0A 19         [24] 1508 	lcall	__mulint
      00045F E5 82            [12] 1509 	mov	a,dpl
      000461 85 83 F0         [24] 1510 	mov	b,dph
      000464 D0 02            [24] 1511 	pop	ar2
      000466 D0 03            [24] 1512 	pop	ar3
      000468 24 03            [12] 1513 	add	a,#0x03
      00046A FC               [12] 1514 	mov	r4,a
      00046B E4               [12] 1515 	clr	a
      00046C 35 F0            [12] 1516 	addc	a,b
      00046E FD               [12] 1517 	mov	r5,a
      00046F                       1518 00116$:
                           00040D  1519 	C$main.c$180$3_2$81 ==.
                                   1520 ;	..\main.c:180: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
                                   1521 ;	assignBit
      00046F D2 94            [12] 1522 	setb	_P1_4
                                   1523 ;	assignBit
      000471 D2 95            [12] 1524 	setb	_P1_5
                                   1525 ;	assignBit
      000473 C2 96            [12] 1526 	clr	_P1_6
                                   1527 ;	assignBit
      000475 D2 97            [12] 1528 	setb	_P1_7
                           000415  1529 	C$main.c$181$3_2$81 ==.
                                   1530 ;	..\main.c:181: if (P1_1 == 0) {
      000477 20 91 2D         [24] 1531 	jb	_P1_1,00118$
                           000418  1532 	C$main.c$182$4_2$87 ==.
                                   1533 ;	..\main.c:182: s[lengs] = '6';
      00047A E5 36            [12] 1534 	mov	a,_main_lengs_196610_81
      00047C 24 26            [12] 1535 	add	a,#_main_s_65538_79
      00047E F8               [12] 1536 	mov	r0,a
      00047F 76 36            [12] 1537 	mov	@r0,#0x36
                           00041F  1538 	C$main.c$183$4_2$87 ==.
                                   1539 ;	..\main.c:183: s[lengs + 1] = '\0';
      000481 E5 36            [12] 1540 	mov	a,_main_lengs_196610_81
      000483 04               [12] 1541 	inc	a
      000484 24 26            [12] 1542 	add	a,#_main_s_65538_79
      000486 F8               [12] 1543 	mov	r0,a
      000487 76 00            [12] 1544 	mov	@r0,#0x00
                           000427  1545 	C$main.c$184$1_2$77 ==.
                                   1546 ;	..\main.c:184: local = local * 10 + 6;
      000489 8C 76            [24] 1547 	mov	__mulint_PARM_2,r4
      00048B 8D 77            [24] 1548 	mov	(__mulint_PARM_2 + 1),r5
      00048D 90 00 0A         [24] 1549 	mov	dptr,#0x000a
      000490 C0 03            [24] 1550 	push	ar3
      000492 C0 02            [24] 1551 	push	ar2
      000494 12 0A 19         [24] 1552 	lcall	__mulint
      000497 E5 82            [12] 1553 	mov	a,dpl
      000499 85 83 F0         [24] 1554 	mov	b,dph
      00049C D0 02            [24] 1555 	pop	ar2
      00049E D0 03            [24] 1556 	pop	ar3
      0004A0 24 06            [12] 1557 	add	a,#0x06
      0004A2 FC               [12] 1558 	mov	r4,a
      0004A3 E4               [12] 1559 	clr	a
      0004A4 35 F0            [12] 1560 	addc	a,b
      0004A6 FD               [12] 1561 	mov	r5,a
      0004A7                       1562 00118$:
                           000445  1563 	C$main.c$187$3_2$81 ==.
                                   1564 ;	..\main.c:187: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
                                   1565 ;	assignBit
      0004A7 D2 94            [12] 1566 	setb	_P1_4
                                   1567 ;	assignBit
      0004A9 D2 95            [12] 1568 	setb	_P1_5
                                   1569 ;	assignBit
      0004AB D2 96            [12] 1570 	setb	_P1_6
                                   1571 ;	assignBit
      0004AD C2 97            [12] 1572 	clr	_P1_7
                           00044D  1573 	C$main.c$188$3_2$81 ==.
                                   1574 ;	..\main.c:188: if (P1_1 == 0) {
      0004AF 20 91 2D         [24] 1575 	jb	_P1_1,00120$
                           000450  1576 	C$main.c$189$4_2$88 ==.
                                   1577 ;	..\main.c:189: s[lengs] = '9';
      0004B2 E5 36            [12] 1578 	mov	a,_main_lengs_196610_81
      0004B4 24 26            [12] 1579 	add	a,#_main_s_65538_79
      0004B6 F8               [12] 1580 	mov	r0,a
      0004B7 76 39            [12] 1581 	mov	@r0,#0x39
                           000457  1582 	C$main.c$190$4_2$88 ==.
                                   1583 ;	..\main.c:190: s[lengs + 1] = '\0';
      0004B9 E5 36            [12] 1584 	mov	a,_main_lengs_196610_81
      0004BB 04               [12] 1585 	inc	a
      0004BC 24 26            [12] 1586 	add	a,#_main_s_65538_79
      0004BE F8               [12] 1587 	mov	r0,a
      0004BF 76 00            [12] 1588 	mov	@r0,#0x00
                           00045F  1589 	C$main.c$191$1_2$77 ==.
                                   1590 ;	..\main.c:191: local = local * 10 + 9;
      0004C1 8C 76            [24] 1591 	mov	__mulint_PARM_2,r4
      0004C3 8D 77            [24] 1592 	mov	(__mulint_PARM_2 + 1),r5
      0004C5 90 00 0A         [24] 1593 	mov	dptr,#0x000a
      0004C8 C0 03            [24] 1594 	push	ar3
      0004CA C0 02            [24] 1595 	push	ar2
      0004CC 12 0A 19         [24] 1596 	lcall	__mulint
      0004CF E5 82            [12] 1597 	mov	a,dpl
      0004D1 85 83 F0         [24] 1598 	mov	b,dph
      0004D4 D0 02            [24] 1599 	pop	ar2
      0004D6 D0 03            [24] 1600 	pop	ar3
      0004D8 24 09            [12] 1601 	add	a,#0x09
      0004DA FC               [12] 1602 	mov	r4,a
      0004DB E4               [12] 1603 	clr	a
      0004DC 35 F0            [12] 1604 	addc	a,b
      0004DE FD               [12] 1605 	mov	r5,a
      0004DF                       1606 00120$:
                           00047D  1607 	C$main.c$193$3_2$81 ==.
                                   1608 ;	..\main.c:193: RemoveFirstDigit(s);
      0004DF 90 00 26         [24] 1609 	mov	dptr,#_main_s_65538_79
      0004E2 75 F0 40         [24] 1610 	mov	b,#0x40
      0004E5 C0 05            [24] 1611 	push	ar5
      0004E7 C0 04            [24] 1612 	push	ar4
      0004E9 C0 03            [24] 1613 	push	ar3
      0004EB C0 02            [24] 1614 	push	ar2
      0004ED 12 01 87         [24] 1615 	lcall	_RemoveFirstDigit
                           00048E  1616 	C$main.c$194$3_2$81 ==.
                                   1617 ;	..\main.c:194: Delay_ms(20);
      0004F0 90 00 14         [24] 1618 	mov	dptr,#0x0014
      0004F3 12 01 1D         [24] 1619 	lcall	_Delay_ms
      0004F6 D0 02            [24] 1620 	pop	ar2
      0004F8 D0 03            [24] 1621 	pop	ar3
      0004FA D0 04            [24] 1622 	pop	ar4
      0004FC D0 05            [24] 1623 	pop	ar5
      0004FE 02 02 98         [24] 1624 	ljmp	00189$
      000501                       1625 00186$:
                           00049F  1626 	C$main.c$196$3_2$89 ==.
                                   1627 ;	..\main.c:196: if (P1_2 == 0) {
      000501 30 92 03         [24] 1628 	jnb	_P1_2,00483$
      000504 02 06 0F         [24] 1629 	ljmp	00183$
      000507                       1630 00483$:
                           0004A5  1631 	C$main.c$197$4_2$90 ==.
                                   1632 ;	..\main.c:197: int lengs = strlen(s);
      000507 90 00 26         [24] 1633 	mov	dptr,#_main_s_65538_79
      00050A 75 F0 40         [24] 1634 	mov	b,#0x40
      00050D C0 05            [24] 1635 	push	ar5
      00050F C0 04            [24] 1636 	push	ar4
      000511 C0 03            [24] 1637 	push	ar3
      000513 C0 02            [24] 1638 	push	ar2
      000515 12 12 40         [24] 1639 	lcall	_strlen
      000518 85 82 3A         [24] 1640 	mov	_main_lengs_262146_90,dpl
      00051B 85 83 3B         [24] 1641 	mov	(_main_lengs_262146_90 + 1),dph
      00051E D0 02            [24] 1642 	pop	ar2
      000520 D0 03            [24] 1643 	pop	ar3
      000522 D0 04            [24] 1644 	pop	ar4
      000524 D0 05            [24] 1645 	pop	ar5
                           0004C4  1646 	C$main.c$198$4_2$90 ==.
                                   1647 ;	..\main.c:198: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   1648 ;	assignBit
      000526 C2 94            [12] 1649 	clr	_P1_4
                                   1650 ;	assignBit
      000528 D2 95            [12] 1651 	setb	_P1_5
                                   1652 ;	assignBit
      00052A D2 96            [12] 1653 	setb	_P1_6
                                   1654 ;	assignBit
      00052C D2 97            [12] 1655 	setb	_P1_7
                           0004CC  1656 	C$main.c$199$4_2$90 ==.
                                   1657 ;	..\main.c:199: if (P1_2 == 0) {
      00052E 20 92 14         [24] 1658 	jb	_P1_2,00122$
                           0004CF  1659 	C$main.c$200$5_2$91 ==.
                                   1660 ;	..\main.c:200: LCD_Clear();
      000531 12 01 6F         [24] 1661 	lcall	_LCD_Clear
                           0004D2  1662 	C$main.c$201$5_2$91 ==.
                                   1663 ;	..\main.c:201: result = 0;
                           0004D2  1664 	C$main.c$202$5_2$91 ==.
                                   1665 ;	..\main.c:202: local = 0;
      000534 E4               [12] 1666 	clr	a
      000535 F5 10            [12] 1667 	mov	_main_result_65537_78,a
      000537 F5 11            [12] 1668 	mov	(_main_result_65537_78 + 1),a
      000539 FC               [12] 1669 	mov	r4,a
      00053A FD               [12] 1670 	mov	r5,a
                           0004D9  1671 	C$main.c$203$5_2$91 ==.
                                   1672 ;	..\main.c:203: check = 0;
      00053B F5 12            [12] 1673 	mov	_main_check_65537_78,a
      00053D F5 13            [12] 1674 	mov	(_main_check_65537_78 + 1),a
                           0004DD  1675 	C$main.c$204$5_2$91 ==.
                                   1676 ;	..\main.c:204: mul = 1;
      00053F 7A 01            [12] 1677 	mov	r2,#0x01
      000541 7B 00            [12] 1678 	mov	r3,#0x00
                           0004E1  1679 	C$main.c$205$5_2$91 ==.
                                   1680 ;	..\main.c:205: s[0]='\0';
                                   1681 ;	1-genFromRTrack replaced	mov	_main_s_65538_79,#0x00
      000543 F5 26            [12] 1682 	mov	_main_s_65538_79,a
      000545                       1683 00122$:
                           0004E3  1684 	C$main.c$208$4_2$90 ==.
                                   1685 ;	..\main.c:208: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
                                   1686 ;	assignBit
      000545 D2 94            [12] 1687 	setb	_P1_4
                                   1688 ;	assignBit
      000547 C2 95            [12] 1689 	clr	_P1_5
                                   1690 ;	assignBit
      000549 D2 96            [12] 1691 	setb	_P1_6
                                   1692 ;	assignBit
      00054B D2 97            [12] 1693 	setb	_P1_7
                           0004EB  1694 	C$main.c$209$4_2$90 ==.
                                   1695 ;	..\main.c:209: if (P1_2 == 0) {
      00054D 20 92 2D         [24] 1696 	jb	_P1_2,00124$
                           0004EE  1697 	C$main.c$210$5_2$92 ==.
                                   1698 ;	..\main.c:210: s[lengs] = '2';
      000550 E5 3A            [12] 1699 	mov	a,_main_lengs_262146_90
      000552 24 26            [12] 1700 	add	a,#_main_s_65538_79
      000554 F8               [12] 1701 	mov	r0,a
      000555 76 32            [12] 1702 	mov	@r0,#0x32
                           0004F5  1703 	C$main.c$211$5_2$92 ==.
                                   1704 ;	..\main.c:211: s[lengs + 1] = '\0';
      000557 E5 3A            [12] 1705 	mov	a,_main_lengs_262146_90
      000559 04               [12] 1706 	inc	a
      00055A 24 26            [12] 1707 	add	a,#_main_s_65538_79
      00055C F8               [12] 1708 	mov	r0,a
      00055D 76 00            [12] 1709 	mov	@r0,#0x00
                           0004FD  1710 	C$main.c$212$1_2$77 ==.
                                   1711 ;	..\main.c:212: local = local * 10 + 2;
      00055F 8C 76            [24] 1712 	mov	__mulint_PARM_2,r4
      000561 8D 77            [24] 1713 	mov	(__mulint_PARM_2 + 1),r5
      000563 90 00 0A         [24] 1714 	mov	dptr,#0x000a
      000566 C0 03            [24] 1715 	push	ar3
      000568 C0 02            [24] 1716 	push	ar2
      00056A 12 0A 19         [24] 1717 	lcall	__mulint
      00056D E5 82            [12] 1718 	mov	a,dpl
      00056F 85 83 F0         [24] 1719 	mov	b,dph
      000572 D0 02            [24] 1720 	pop	ar2
      000574 D0 03            [24] 1721 	pop	ar3
      000576 24 02            [12] 1722 	add	a,#0x02
      000578 FC               [12] 1723 	mov	r4,a
      000579 E4               [12] 1724 	clr	a
      00057A 35 F0            [12] 1725 	addc	a,b
      00057C FD               [12] 1726 	mov	r5,a
      00057D                       1727 00124$:
                           00051B  1728 	C$main.c$215$4_2$90 ==.
                                   1729 ;	..\main.c:215: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
                                   1730 ;	assignBit
      00057D D2 94            [12] 1731 	setb	_P1_4
                                   1732 ;	assignBit
      00057F D2 95            [12] 1733 	setb	_P1_5
                                   1734 ;	assignBit
      000581 C2 96            [12] 1735 	clr	_P1_6
                                   1736 ;	assignBit
      000583 D2 97            [12] 1737 	setb	_P1_7
                           000523  1738 	C$main.c$216$4_2$90 ==.
                                   1739 ;	..\main.c:216: if (P1_2 == 0) {
      000585 20 92 2D         [24] 1740 	jb	_P1_2,00126$
                           000526  1741 	C$main.c$217$5_2$93 ==.
                                   1742 ;	..\main.c:217: s[lengs] = '5';
      000588 E5 3A            [12] 1743 	mov	a,_main_lengs_262146_90
      00058A 24 26            [12] 1744 	add	a,#_main_s_65538_79
      00058C F8               [12] 1745 	mov	r0,a
      00058D 76 35            [12] 1746 	mov	@r0,#0x35
                           00052D  1747 	C$main.c$218$5_2$93 ==.
                                   1748 ;	..\main.c:218: s[lengs + 1] = '\0';
      00058F E5 3A            [12] 1749 	mov	a,_main_lengs_262146_90
      000591 04               [12] 1750 	inc	a
      000592 24 26            [12] 1751 	add	a,#_main_s_65538_79
      000594 F8               [12] 1752 	mov	r0,a
      000595 76 00            [12] 1753 	mov	@r0,#0x00
                           000535  1754 	C$main.c$219$1_2$77 ==.
                                   1755 ;	..\main.c:219: local = local * 10 + 5;
      000597 8C 76            [24] 1756 	mov	__mulint_PARM_2,r4
      000599 8D 77            [24] 1757 	mov	(__mulint_PARM_2 + 1),r5
      00059B 90 00 0A         [24] 1758 	mov	dptr,#0x000a
      00059E C0 03            [24] 1759 	push	ar3
      0005A0 C0 02            [24] 1760 	push	ar2
      0005A2 12 0A 19         [24] 1761 	lcall	__mulint
      0005A5 E5 82            [12] 1762 	mov	a,dpl
      0005A7 85 83 F0         [24] 1763 	mov	b,dph
      0005AA D0 02            [24] 1764 	pop	ar2
      0005AC D0 03            [24] 1765 	pop	ar3
      0005AE 24 05            [12] 1766 	add	a,#0x05
      0005B0 FC               [12] 1767 	mov	r4,a
      0005B1 E4               [12] 1768 	clr	a
      0005B2 35 F0            [12] 1769 	addc	a,b
      0005B4 FD               [12] 1770 	mov	r5,a
      0005B5                       1771 00126$:
                           000553  1772 	C$main.c$222$4_2$90 ==.
                                   1773 ;	..\main.c:222: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
                                   1774 ;	assignBit
      0005B5 D2 94            [12] 1775 	setb	_P1_4
                                   1776 ;	assignBit
      0005B7 D2 95            [12] 1777 	setb	_P1_5
                                   1778 ;	assignBit
      0005B9 D2 96            [12] 1779 	setb	_P1_6
                                   1780 ;	assignBit
      0005BB C2 97            [12] 1781 	clr	_P1_7
                           00055B  1782 	C$main.c$223$4_2$90 ==.
                                   1783 ;	..\main.c:223: if (P1_2 == 0) {
      0005BD 20 92 2D         [24] 1784 	jb	_P1_2,00128$
                           00055E  1785 	C$main.c$224$5_2$94 ==.
                                   1786 ;	..\main.c:224: s[lengs] = '8';
      0005C0 E5 3A            [12] 1787 	mov	a,_main_lengs_262146_90
      0005C2 24 26            [12] 1788 	add	a,#_main_s_65538_79
      0005C4 F8               [12] 1789 	mov	r0,a
      0005C5 76 38            [12] 1790 	mov	@r0,#0x38
                           000565  1791 	C$main.c$225$5_2$94 ==.
                                   1792 ;	..\main.c:225: s[lengs + 1] = '\0';
      0005C7 E5 3A            [12] 1793 	mov	a,_main_lengs_262146_90
      0005C9 04               [12] 1794 	inc	a
      0005CA 24 26            [12] 1795 	add	a,#_main_s_65538_79
      0005CC F8               [12] 1796 	mov	r0,a
      0005CD 76 00            [12] 1797 	mov	@r0,#0x00
                           00056D  1798 	C$main.c$226$1_2$77 ==.
                                   1799 ;	..\main.c:226: local = local * 10 + 8;
      0005CF 8C 76            [24] 1800 	mov	__mulint_PARM_2,r4
      0005D1 8D 77            [24] 1801 	mov	(__mulint_PARM_2 + 1),r5
      0005D3 90 00 0A         [24] 1802 	mov	dptr,#0x000a
      0005D6 C0 03            [24] 1803 	push	ar3
      0005D8 C0 02            [24] 1804 	push	ar2
      0005DA 12 0A 19         [24] 1805 	lcall	__mulint
      0005DD E5 82            [12] 1806 	mov	a,dpl
      0005DF 85 83 F0         [24] 1807 	mov	b,dph
      0005E2 D0 02            [24] 1808 	pop	ar2
      0005E4 D0 03            [24] 1809 	pop	ar3
      0005E6 24 08            [12] 1810 	add	a,#0x08
      0005E8 FC               [12] 1811 	mov	r4,a
      0005E9 E4               [12] 1812 	clr	a
      0005EA 35 F0            [12] 1813 	addc	a,b
      0005EC FD               [12] 1814 	mov	r5,a
      0005ED                       1815 00128$:
                           00058B  1816 	C$main.c$228$4_2$90 ==.
                                   1817 ;	..\main.c:228: RemoveFirstDigit(s);
      0005ED 90 00 26         [24] 1818 	mov	dptr,#_main_s_65538_79
      0005F0 75 F0 40         [24] 1819 	mov	b,#0x40
      0005F3 C0 05            [24] 1820 	push	ar5
      0005F5 C0 04            [24] 1821 	push	ar4
      0005F7 C0 03            [24] 1822 	push	ar3
      0005F9 C0 02            [24] 1823 	push	ar2
      0005FB 12 01 87         [24] 1824 	lcall	_RemoveFirstDigit
                           00059C  1825 	C$main.c$229$4_2$90 ==.
                                   1826 ;	..\main.c:229: Delay_ms(20);
      0005FE 90 00 14         [24] 1827 	mov	dptr,#0x0014
      000601 12 01 1D         [24] 1828 	lcall	_Delay_ms
      000604 D0 02            [24] 1829 	pop	ar2
      000606 D0 03            [24] 1830 	pop	ar3
      000608 D0 04            [24] 1831 	pop	ar4
      00060A D0 05            [24] 1832 	pop	ar5
      00060C 02 02 98         [24] 1833 	ljmp	00189$
      00060F                       1834 00183$:
                           0005AD  1835 	C$main.c$231$4_2$95 ==.
                                   1836 ;	..\main.c:231: if (P1_3 == 0) {
      00060F 30 93 03         [24] 1837 	jnb	_P1_3,00488$
      000612 02 07 2E         [24] 1838 	ljmp	00180$
      000615                       1839 00488$:
                           0005B3  1840 	C$main.c$232$5_2$96 ==.
                                   1841 ;	..\main.c:232: int lengs = strlen(s);
      000615 90 00 26         [24] 1842 	mov	dptr,#_main_s_65538_79
      000618 75 F0 40         [24] 1843 	mov	b,#0x40
      00061B C0 05            [24] 1844 	push	ar5
      00061D C0 04            [24] 1845 	push	ar4
      00061F C0 03            [24] 1846 	push	ar3
      000621 C0 02            [24] 1847 	push	ar2
      000623 12 12 40         [24] 1848 	lcall	_strlen
      000626 85 82 3C         [24] 1849 	mov	_main_lengs_327682_96,dpl
      000629 85 83 3D         [24] 1850 	mov	(_main_lengs_327682_96 + 1),dph
      00062C D0 02            [24] 1851 	pop	ar2
      00062E D0 03            [24] 1852 	pop	ar3
      000630 D0 04            [24] 1853 	pop	ar4
      000632 D0 05            [24] 1854 	pop	ar5
                           0005D2  1855 	C$main.c$233$5_2$96 ==.
                                   1856 ;	..\main.c:233: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   1857 ;	assignBit
      000634 C2 94            [12] 1858 	clr	_P1_4
                                   1859 ;	assignBit
      000636 D2 95            [12] 1860 	setb	_P1_5
                                   1861 ;	assignBit
      000638 D2 96            [12] 1862 	setb	_P1_6
                                   1863 ;	assignBit
      00063A D2 97            [12] 1864 	setb	_P1_7
                           0005DA  1865 	C$main.c$234$5_2$96 ==.
                                   1866 ;	..\main.c:234: if (P1_3 == 0) {
      00063C 20 93 25         [24] 1867 	jb	_P1_3,00130$
                           0005DD  1868 	C$main.c$235$6_2$97 ==.
                                   1869 ;	..\main.c:235: s[lengs] = '0';
      00063F E5 3C            [12] 1870 	mov	a,_main_lengs_327682_96
      000641 24 26            [12] 1871 	add	a,#_main_s_65538_79
      000643 F8               [12] 1872 	mov	r0,a
      000644 76 30            [12] 1873 	mov	@r0,#0x30
                           0005E4  1874 	C$main.c$236$6_2$97 ==.
                                   1875 ;	..\main.c:236: s[lengs + 1] = '\0';
      000646 E5 3C            [12] 1876 	mov	a,_main_lengs_327682_96
      000648 04               [12] 1877 	inc	a
      000649 24 26            [12] 1878 	add	a,#_main_s_65538_79
      00064B F8               [12] 1879 	mov	r0,a
      00064C 76 00            [12] 1880 	mov	@r0,#0x00
                           0005EC  1881 	C$main.c$237$1_2$77 ==.
                                   1882 ;	..\main.c:237: local = local * 10;
      00064E 8C 76            [24] 1883 	mov	__mulint_PARM_2,r4
      000650 8D 77            [24] 1884 	mov	(__mulint_PARM_2 + 1),r5
      000652 90 00 0A         [24] 1885 	mov	dptr,#0x000a
      000655 C0 03            [24] 1886 	push	ar3
      000657 C0 02            [24] 1887 	push	ar2
      000659 12 0A 19         [24] 1888 	lcall	__mulint
      00065C AC 82            [24] 1889 	mov	r4,dpl
      00065E AD 83            [24] 1890 	mov	r5,dph
      000660 D0 02            [24] 1891 	pop	ar2
      000662 D0 03            [24] 1892 	pop	ar3
      000664                       1893 00130$:
                           000602  1894 	C$main.c$240$5_2$96 ==.
                                   1895 ;	..\main.c:240: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
                                   1896 ;	assignBit
      000664 D2 94            [12] 1897 	setb	_P1_4
                                   1898 ;	assignBit
      000666 C2 95            [12] 1899 	clr	_P1_5
                                   1900 ;	assignBit
      000668 D2 96            [12] 1901 	setb	_P1_6
                                   1902 ;	assignBit
      00066A D2 97            [12] 1903 	setb	_P1_7
                           00060A  1904 	C$main.c$241$5_2$96 ==.
                                   1905 ;	..\main.c:241: if (P1_3 == 0) {
      00066C 20 93 2D         [24] 1906 	jb	_P1_3,00132$
                           00060D  1907 	C$main.c$242$6_2$98 ==.
                                   1908 ;	..\main.c:242: s[lengs] = '1';
      00066F E5 3C            [12] 1909 	mov	a,_main_lengs_327682_96
      000671 24 26            [12] 1910 	add	a,#_main_s_65538_79
      000673 F8               [12] 1911 	mov	r0,a
      000674 76 31            [12] 1912 	mov	@r0,#0x31
                           000614  1913 	C$main.c$243$6_2$98 ==.
                                   1914 ;	..\main.c:243: s[lengs + 1] = '\0';
      000676 E5 3C            [12] 1915 	mov	a,_main_lengs_327682_96
      000678 04               [12] 1916 	inc	a
      000679 24 26            [12] 1917 	add	a,#_main_s_65538_79
      00067B F8               [12] 1918 	mov	r0,a
      00067C 76 00            [12] 1919 	mov	@r0,#0x00
                           00061C  1920 	C$main.c$244$1_2$77 ==.
                                   1921 ;	..\main.c:244: local = local * 10 + 1;
      00067E 8C 76            [24] 1922 	mov	__mulint_PARM_2,r4
      000680 8D 77            [24] 1923 	mov	(__mulint_PARM_2 + 1),r5
      000682 90 00 0A         [24] 1924 	mov	dptr,#0x000a
      000685 C0 03            [24] 1925 	push	ar3
      000687 C0 02            [24] 1926 	push	ar2
      000689 12 0A 19         [24] 1927 	lcall	__mulint
      00068C E5 82            [12] 1928 	mov	a,dpl
      00068E 85 83 F0         [24] 1929 	mov	b,dph
      000691 D0 02            [24] 1930 	pop	ar2
      000693 D0 03            [24] 1931 	pop	ar3
      000695 24 01            [12] 1932 	add	a,#0x01
      000697 FC               [12] 1933 	mov	r4,a
      000698 E4               [12] 1934 	clr	a
      000699 35 F0            [12] 1935 	addc	a,b
      00069B FD               [12] 1936 	mov	r5,a
      00069C                       1937 00132$:
                           00063A  1938 	C$main.c$247$5_2$96 ==.
                                   1939 ;	..\main.c:247: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
                                   1940 ;	assignBit
      00069C D2 94            [12] 1941 	setb	_P1_4
                                   1942 ;	assignBit
      00069E D2 95            [12] 1943 	setb	_P1_5
                                   1944 ;	assignBit
      0006A0 C2 96            [12] 1945 	clr	_P1_6
                                   1946 ;	assignBit
      0006A2 D2 97            [12] 1947 	setb	_P1_7
                           000642  1948 	C$main.c$248$5_2$96 ==.
                                   1949 ;	..\main.c:248: if (P1_3 == 0) {
      0006A4 20 93 2D         [24] 1950 	jb	_P1_3,00134$
                           000645  1951 	C$main.c$249$6_2$99 ==.
                                   1952 ;	..\main.c:249: s[lengs] = '4';
      0006A7 E5 3C            [12] 1953 	mov	a,_main_lengs_327682_96
      0006A9 24 26            [12] 1954 	add	a,#_main_s_65538_79
      0006AB F8               [12] 1955 	mov	r0,a
      0006AC 76 34            [12] 1956 	mov	@r0,#0x34
                           00064C  1957 	C$main.c$250$6_2$99 ==.
                                   1958 ;	..\main.c:250: s[lengs + 1] = '\0';
      0006AE E5 3C            [12] 1959 	mov	a,_main_lengs_327682_96
      0006B0 04               [12] 1960 	inc	a
      0006B1 24 26            [12] 1961 	add	a,#_main_s_65538_79
      0006B3 F8               [12] 1962 	mov	r0,a
      0006B4 76 00            [12] 1963 	mov	@r0,#0x00
                           000654  1964 	C$main.c$251$1_2$77 ==.
                                   1965 ;	..\main.c:251: local = local * 10 + 4;
      0006B6 8C 76            [24] 1966 	mov	__mulint_PARM_2,r4
      0006B8 8D 77            [24] 1967 	mov	(__mulint_PARM_2 + 1),r5
      0006BA 90 00 0A         [24] 1968 	mov	dptr,#0x000a
      0006BD C0 03            [24] 1969 	push	ar3
      0006BF C0 02            [24] 1970 	push	ar2
      0006C1 12 0A 19         [24] 1971 	lcall	__mulint
      0006C4 E5 82            [12] 1972 	mov	a,dpl
      0006C6 85 83 F0         [24] 1973 	mov	b,dph
      0006C9 D0 02            [24] 1974 	pop	ar2
      0006CB D0 03            [24] 1975 	pop	ar3
      0006CD 24 04            [12] 1976 	add	a,#0x04
      0006CF FC               [12] 1977 	mov	r4,a
      0006D0 E4               [12] 1978 	clr	a
      0006D1 35 F0            [12] 1979 	addc	a,b
      0006D3 FD               [12] 1980 	mov	r5,a
      0006D4                       1981 00134$:
                           000672  1982 	C$main.c$254$5_2$96 ==.
                                   1983 ;	..\main.c:254: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
                                   1984 ;	assignBit
      0006D4 D2 94            [12] 1985 	setb	_P1_4
                                   1986 ;	assignBit
      0006D6 D2 95            [12] 1987 	setb	_P1_5
                                   1988 ;	assignBit
      0006D8 D2 96            [12] 1989 	setb	_P1_6
                                   1990 ;	assignBit
      0006DA C2 97            [12] 1991 	clr	_P1_7
                           00067A  1992 	C$main.c$255$5_2$96 ==.
                                   1993 ;	..\main.c:255: if (P1_3 == 0 ) {
      0006DC 20 93 2D         [24] 1994 	jb	_P1_3,00136$
                           00067D  1995 	C$main.c$256$6_2$100 ==.
                                   1996 ;	..\main.c:256: s[lengs] = '7';
      0006DF E5 3C            [12] 1997 	mov	a,_main_lengs_327682_96
      0006E1 24 26            [12] 1998 	add	a,#_main_s_65538_79
      0006E3 F8               [12] 1999 	mov	r0,a
      0006E4 76 37            [12] 2000 	mov	@r0,#0x37
                           000684  2001 	C$main.c$257$6_2$100 ==.
                                   2002 ;	..\main.c:257: s[lengs + 1] = '\0';
      0006E6 E5 3C            [12] 2003 	mov	a,_main_lengs_327682_96
      0006E8 04               [12] 2004 	inc	a
      0006E9 24 26            [12] 2005 	add	a,#_main_s_65538_79
      0006EB F8               [12] 2006 	mov	r0,a
      0006EC 76 00            [12] 2007 	mov	@r0,#0x00
                           00068C  2008 	C$main.c$258$1_2$77 ==.
                                   2009 ;	..\main.c:258: local = local * 10 + 7;
      0006EE 8C 76            [24] 2010 	mov	__mulint_PARM_2,r4
      0006F0 8D 77            [24] 2011 	mov	(__mulint_PARM_2 + 1),r5
      0006F2 90 00 0A         [24] 2012 	mov	dptr,#0x000a
      0006F5 C0 03            [24] 2013 	push	ar3
      0006F7 C0 02            [24] 2014 	push	ar2
      0006F9 12 0A 19         [24] 2015 	lcall	__mulint
      0006FC E5 82            [12] 2016 	mov	a,dpl
      0006FE 85 83 F0         [24] 2017 	mov	b,dph
      000701 D0 02            [24] 2018 	pop	ar2
      000703 D0 03            [24] 2019 	pop	ar3
      000705 24 07            [12] 2020 	add	a,#0x07
      000707 FC               [12] 2021 	mov	r4,a
      000708 E4               [12] 2022 	clr	a
      000709 35 F0            [12] 2023 	addc	a,b
      00070B FD               [12] 2024 	mov	r5,a
      00070C                       2025 00136$:
                           0006AA  2026 	C$main.c$260$5_2$96 ==.
                                   2027 ;	..\main.c:260: RemoveFirstDigit(s);
      00070C 90 00 26         [24] 2028 	mov	dptr,#_main_s_65538_79
      00070F 75 F0 40         [24] 2029 	mov	b,#0x40
      000712 C0 05            [24] 2030 	push	ar5
      000714 C0 04            [24] 2031 	push	ar4
      000716 C0 03            [24] 2032 	push	ar3
      000718 C0 02            [24] 2033 	push	ar2
      00071A 12 01 87         [24] 2034 	lcall	_RemoveFirstDigit
                           0006BB  2035 	C$main.c$261$5_2$96 ==.
                                   2036 ;	..\main.c:261: Delay_ms(20);
      00071D 90 00 14         [24] 2037 	mov	dptr,#0x0014
      000720 12 01 1D         [24] 2038 	lcall	_Delay_ms
      000723 D0 02            [24] 2039 	pop	ar2
      000725 D0 03            [24] 2040 	pop	ar3
      000727 D0 04            [24] 2041 	pop	ar4
      000729 D0 05            [24] 2042 	pop	ar5
      00072B 02 02 98         [24] 2043 	ljmp	00189$
      00072E                       2044 00180$:
                           0006CC  2045 	C$main.c$263$5_2$101 ==.
                                   2046 ;	..\main.c:263: if (P1_0 == 0 ) {
      00072E 30 90 03         [24] 2047 	jnb	_P1_0,00493$
      000731 02 02 98         [24] 2048 	ljmp	00189$
      000734                       2049 00493$:
                           0006D2  2050 	C$main.c$264$6_2$102 ==.
                                   2051 ;	..\main.c:264: int lengs = strlen(s);
      000734 90 00 26         [24] 2052 	mov	dptr,#_main_s_65538_79
      000737 75 F0 40         [24] 2053 	mov	b,#0x40
      00073A C0 05            [24] 2054 	push	ar5
      00073C C0 04            [24] 2055 	push	ar4
      00073E C0 03            [24] 2056 	push	ar3
      000740 C0 02            [24] 2057 	push	ar2
      000742 12 12 40         [24] 2058 	lcall	_strlen
      000745 85 82 3E         [24] 2059 	mov	_main_lengs_393218_102,dpl
      000748 85 83 3F         [24] 2060 	mov	(_main_lengs_393218_102 + 1),dph
      00074B D0 02            [24] 2061 	pop	ar2
      00074D D0 03            [24] 2062 	pop	ar3
      00074F D0 04            [24] 2063 	pop	ar4
      000751 D0 05            [24] 2064 	pop	ar5
                           0006F1  2065 	C$main.c$265$6_2$102 ==.
                                   2066 ;	..\main.c:265: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   2067 ;	assignBit
      000753 C2 94            [12] 2068 	clr	_P1_4
                                   2069 ;	assignBit
      000755 D2 95            [12] 2070 	setb	_P1_5
                                   2071 ;	assignBit
      000757 D2 96            [12] 2072 	setb	_P1_6
                                   2073 ;	assignBit
      000759 D2 97            [12] 2074 	setb	_P1_7
                           0006F9  2075 	C$main.c$266$6_2$102 ==.
                                   2076 ;	..\main.c:266: if (P1_0 == 0) {
      00075B 30 90 03         [24] 2077 	jnb	_P1_0,00494$
      00075E 02 07 FD         [24] 2078 	ljmp	00146$
      000761                       2079 00494$:
                           0006FF  2080 	C$main.c$267$7_2$103 ==.
                                   2081 ;	..\main.c:267: s[lengs] = '+';
      000761 E5 3E            [12] 2082 	mov	a,_main_lengs_393218_102
      000763 24 26            [12] 2083 	add	a,#_main_s_65538_79
      000765 F8               [12] 2084 	mov	r0,a
      000766 76 2B            [12] 2085 	mov	@r0,#0x2b
                           000706  2086 	C$main.c$268$7_2$103 ==.
                                   2087 ;	..\main.c:268: s[lengs + 1] = '\0';
      000768 E5 3E            [12] 2088 	mov	a,_main_lengs_393218_102
      00076A FF               [12] 2089 	mov	r7,a
      00076B 04               [12] 2090 	inc	a
      00076C 24 26            [12] 2091 	add	a,#_main_s_65538_79
      00076E F8               [12] 2092 	mov	r0,a
      00076F 76 00            [12] 2093 	mov	@r0,#0x00
                           00070F  2094 	C$main.c$269$7_2$103 ==.
                                   2095 ;	..\main.c:269: switch (check) {
      000771 74 04            [12] 2096 	mov	a,#0x04
      000773 B5 12 06         [24] 2097 	cjne	a,_main_check_65537_78,00495$
      000776 E4               [12] 2098 	clr	a
      000777 B5 13 02         [24] 2099 	cjne	a,(_main_check_65537_78 + 1),00495$
      00077A 80 02            [24] 2100 	sjmp	00496$
      00077C                       2101 00495$:
      00077C 80 56            [24] 2102 	sjmp	00143$
      00077E                       2103 00496$:
                           00071C  2104 	C$main.c$271$1_2$77 ==.
                                   2105 ;	..\main.c:271: result = result + mul/local;
      00077E 8C 76            [24] 2106 	mov	__divsint_PARM_2,r4
      000780 8D 77            [24] 2107 	mov	(__divsint_PARM_2 + 1),r5
      000782 8A 82            [24] 2108 	mov	dpl,r2
      000784 8B 83            [24] 2109 	mov	dph,r3
      000786 C0 05            [24] 2110 	push	ar5
      000788 C0 04            [24] 2111 	push	ar4
      00078A 12 12 74         [24] 2112 	lcall	__divsint
      00078D AE 82            [24] 2113 	mov	r6,dpl
      00078F AF 83            [24] 2114 	mov	r7,dph
      000791 D0 04            [24] 2115 	pop	ar4
      000793 D0 05            [24] 2116 	pop	ar5
      000795 EE               [12] 2117 	mov	a,r6
      000796 25 10            [12] 2118 	add	a,_main_result_65537_78
      000798 F5 10            [12] 2119 	mov	_main_result_65537_78,a
      00079A EF               [12] 2120 	mov	a,r7
      00079B 35 11            [12] 2121 	addc	a,(_main_result_65537_78 + 1)
      00079D F5 11            [12] 2122 	mov	(_main_result_65537_78 + 1),a
                           00073D  2123 	C$main.c$272$8_2$104 ==.
                                   2124 ;	..\main.c:272: if (local == 0){
      00079F EC               [12] 2125 	mov	a,r4
      0007A0 4D               [12] 2126 	orl	a,r5
      0007A1 70 52            [24] 2127 	jnz	00144$
                           000741  2128 	C$main.c$273$9_2$105 ==.
                                   2129 ;	..\main.c:273: LCD_Send_Command(0xC0); // Dòng thứ 2
      0007A3 75 82 C0         [24] 2130 	mov	dpl,#0xc0
      0007A6 12 00 62         [24] 2131 	lcall	_LCD_Send_Command
                           000747  2132 	C$main.c$274$9_2$105 ==.
                                   2133 ;	..\main.c:274: LCD_Write_String("Invalid");
      0007A9 90 12 B0         [24] 2134 	mov	dptr,#___str_1
      0007AC 75 F0 80         [24] 2135 	mov	b,#0x80
      0007AF 12 00 B0         [24] 2136 	lcall	_LCD_Write_String
                           000750  2137 	C$main.c$275$9_2$105 ==.
                                   2138 ;	..\main.c:275: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   2139 ;	assignBit
      0007B2 C2 94            [12] 2140 	clr	_P1_4
                                   2141 ;	assignBit
      0007B4 D2 95            [12] 2142 	setb	_P1_5
                                   2143 ;	assignBit
      0007B6 D2 96            [12] 2144 	setb	_P1_6
                                   2145 ;	assignBit
      0007B8 D2 97            [12] 2146 	setb	_P1_7
                           000758  2147 	C$main.c$276$9_2$105 ==.
                                   2148 ;	..\main.c:276: while (P1_2 != 0);
      0007BA                       2149 00138$:
      0007BA 20 92 FD         [24] 2150 	jb	_P1_2,00138$
                           00075B  2151 	C$main.c$277$9_2$105 ==.
                                   2152 ;	..\main.c:277: result = 0;
                           00075B  2153 	C$main.c$278$9_2$105 ==.
                                   2154 ;	..\main.c:278: local = 0;
      0007BD E4               [12] 2155 	clr	a
      0007BE F5 10            [12] 2156 	mov	_main_result_65537_78,a
      0007C0 F5 11            [12] 2157 	mov	(_main_result_65537_78 + 1),a
      0007C2 FC               [12] 2158 	mov	r4,a
      0007C3 FD               [12] 2159 	mov	r5,a
                           000762  2160 	C$main.c$281$9_2$105 ==.
                                   2161 ;	..\main.c:281: LCD_Clear();
      0007C4 C0 05            [24] 2162 	push	ar5
      0007C6 C0 04            [24] 2163 	push	ar4
      0007C8 12 01 6F         [24] 2164 	lcall	_LCD_Clear
      0007CB D0 04            [24] 2165 	pop	ar4
      0007CD D0 05            [24] 2166 	pop	ar5
                           00076D  2167 	C$main.c$282$9_2$105 ==.
                                   2168 ;	..\main.c:282: s[0]='\0';
      0007CF 75 26 00         [24] 2169 	mov	_main_s_65538_79,#0x00
                           000770  2170 	C$main.c$284$8_2$104 ==.
                                   2171 ;	..\main.c:284: break;
                           000770  2172 	C$main.c$285$8_2$104 ==.
                                   2173 ;	..\main.c:285: default:
      0007D2 80 21            [24] 2174 	sjmp	00144$
      0007D4                       2175 00143$:
                           000772  2176 	C$main.c$286$1_2$77 ==.
                                   2177 ;	..\main.c:286: result = result + mul*local;
      0007D4 8C 76            [24] 2178 	mov	__mulint_PARM_2,r4
      0007D6 8D 77            [24] 2179 	mov	(__mulint_PARM_2 + 1),r5
      0007D8 8A 82            [24] 2180 	mov	dpl,r2
      0007DA 8B 83            [24] 2181 	mov	dph,r3
      0007DC C0 05            [24] 2182 	push	ar5
      0007DE C0 04            [24] 2183 	push	ar4
      0007E0 12 0A 19         [24] 2184 	lcall	__mulint
      0007E3 AE 82            [24] 2185 	mov	r6,dpl
      0007E5 AF 83            [24] 2186 	mov	r7,dph
      0007E7 D0 04            [24] 2187 	pop	ar4
      0007E9 D0 05            [24] 2188 	pop	ar5
      0007EB EE               [12] 2189 	mov	a,r6
      0007EC 25 10            [12] 2190 	add	a,_main_result_65537_78
      0007EE F5 10            [12] 2191 	mov	_main_result_65537_78,a
      0007F0 EF               [12] 2192 	mov	a,r7
      0007F1 35 11            [12] 2193 	addc	a,(_main_result_65537_78 + 1)
      0007F3 F5 11            [12] 2194 	mov	(_main_result_65537_78 + 1),a
                           000793  2195 	C$main.c$287$7_2$103 ==.
                                   2196 ;	..\main.c:287: }
      0007F5                       2197 00144$:
                           000793  2198 	C$main.c$288$7_2$103 ==.
                                   2199 ;	..\main.c:288: mul = 1;
      0007F5 7A 01            [12] 2200 	mov	r2,#0x01
      0007F7 7B 00            [12] 2201 	mov	r3,#0x00
                           000797  2202 	C$main.c$289$7_2$103 ==.
                                   2203 ;	..\main.c:289: check = 1;
                                   2204 ;	1-genFromRTrack replaced	mov	_main_check_65537_78,#0x01
      0007F9 8A 12            [24] 2205 	mov	_main_check_65537_78,r2
                                   2206 ;	1-genFromRTrack replaced	mov	(_main_check_65537_78 + 1),#0x00
      0007FB 8B 13            [24] 2207 	mov	(_main_check_65537_78 + 1),r3
      0007FD                       2208 00146$:
                           00079B  2209 	C$main.c$292$6_2$102 ==.
                                   2210 ;	..\main.c:292: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
                                   2211 ;	assignBit
      0007FD D2 94            [12] 2212 	setb	_P1_4
                                   2213 ;	assignBit
      0007FF C2 95            [12] 2214 	clr	_P1_5
                                   2215 ;	assignBit
      000801 D2 96            [12] 2216 	setb	_P1_6
                                   2217 ;	assignBit
      000803 D2 97            [12] 2218 	setb	_P1_7
                           0007A3  2219 	C$main.c$293$6_2$102 ==.
                                   2220 ;	..\main.c:293: if (P1_0 == 0 ) {
      000805 30 90 03         [24] 2221 	jnb	_P1_0,00499$
      000808 02 08 A9         [24] 2222 	ljmp	00156$
      00080B                       2223 00499$:
                           0007A9  2224 	C$main.c$294$7_2$106 ==.
                                   2225 ;	..\main.c:294: s[lengs] = '-';
      00080B E5 3E            [12] 2226 	mov	a,_main_lengs_393218_102
      00080D 24 26            [12] 2227 	add	a,#_main_s_65538_79
      00080F F8               [12] 2228 	mov	r0,a
      000810 76 2D            [12] 2229 	mov	@r0,#0x2d
                           0007B0  2230 	C$main.c$295$7_2$106 ==.
                                   2231 ;	..\main.c:295: s[lengs + 1] = '\0';
      000812 E5 3E            [12] 2232 	mov	a,_main_lengs_393218_102
      000814 FE               [12] 2233 	mov	r6,a
      000815 04               [12] 2234 	inc	a
      000816 24 26            [12] 2235 	add	a,#_main_s_65538_79
      000818 F8               [12] 2236 	mov	r0,a
      000819 76 00            [12] 2237 	mov	@r0,#0x00
                           0007B9  2238 	C$main.c$296$7_2$106 ==.
                                   2239 ;	..\main.c:296: switch (check) {
      00081B 74 04            [12] 2240 	mov	a,#0x04
      00081D B5 12 06         [24] 2241 	cjne	a,_main_check_65537_78,00500$
      000820 E4               [12] 2242 	clr	a
      000821 B5 13 02         [24] 2243 	cjne	a,(_main_check_65537_78 + 1),00500$
      000824 80 02            [24] 2244 	sjmp	00501$
      000826                       2245 00500$:
      000826 80 56            [24] 2246 	sjmp	00153$
      000828                       2247 00501$:
                           0007C6  2248 	C$main.c$298$1_2$77 ==.
                                   2249 ;	..\main.c:298: result = result + mul/local;
      000828 8C 76            [24] 2250 	mov	__divsint_PARM_2,r4
      00082A 8D 77            [24] 2251 	mov	(__divsint_PARM_2 + 1),r5
      00082C 8A 82            [24] 2252 	mov	dpl,r2
      00082E 8B 83            [24] 2253 	mov	dph,r3
      000830 C0 05            [24] 2254 	push	ar5
      000832 C0 04            [24] 2255 	push	ar4
      000834 12 12 74         [24] 2256 	lcall	__divsint
      000837 AE 82            [24] 2257 	mov	r6,dpl
      000839 AF 83            [24] 2258 	mov	r7,dph
      00083B D0 04            [24] 2259 	pop	ar4
      00083D D0 05            [24] 2260 	pop	ar5
      00083F EE               [12] 2261 	mov	a,r6
      000840 25 10            [12] 2262 	add	a,_main_result_65537_78
      000842 F5 10            [12] 2263 	mov	_main_result_65537_78,a
      000844 EF               [12] 2264 	mov	a,r7
      000845 35 11            [12] 2265 	addc	a,(_main_result_65537_78 + 1)
      000847 F5 11            [12] 2266 	mov	(_main_result_65537_78 + 1),a
                           0007E7  2267 	C$main.c$299$8_2$107 ==.
                                   2268 ;	..\main.c:299: if (local == 0){
      000849 EC               [12] 2269 	mov	a,r4
      00084A 4D               [12] 2270 	orl	a,r5
      00084B 70 52            [24] 2271 	jnz	00154$
                           0007EB  2272 	C$main.c$300$9_2$108 ==.
                                   2273 ;	..\main.c:300: LCD_Send_Command(0xC0); // Dòng thứ 2
      00084D 75 82 C0         [24] 2274 	mov	dpl,#0xc0
      000850 12 00 62         [24] 2275 	lcall	_LCD_Send_Command
                           0007F1  2276 	C$main.c$301$9_2$108 ==.
                                   2277 ;	..\main.c:301: LCD_Write_String("Invalid");
      000853 90 12 B0         [24] 2278 	mov	dptr,#___str_1
      000856 75 F0 80         [24] 2279 	mov	b,#0x80
      000859 12 00 B0         [24] 2280 	lcall	_LCD_Write_String
                           0007FA  2281 	C$main.c$302$9_2$108 ==.
                                   2282 ;	..\main.c:302: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   2283 ;	assignBit
      00085C C2 94            [12] 2284 	clr	_P1_4
                                   2285 ;	assignBit
      00085E D2 95            [12] 2286 	setb	_P1_5
                                   2287 ;	assignBit
      000860 D2 96            [12] 2288 	setb	_P1_6
                                   2289 ;	assignBit
      000862 D2 97            [12] 2290 	setb	_P1_7
                           000802  2291 	C$main.c$303$9_2$108 ==.
                                   2292 ;	..\main.c:303: while (P1_2 != 0);
      000864                       2293 00148$:
      000864 20 92 FD         [24] 2294 	jb	_P1_2,00148$
                           000805  2295 	C$main.c$304$9_2$108 ==.
                                   2296 ;	..\main.c:304: result = 0;
                           000805  2297 	C$main.c$305$9_2$108 ==.
                                   2298 ;	..\main.c:305: local = 0;
      000867 E4               [12] 2299 	clr	a
      000868 F5 10            [12] 2300 	mov	_main_result_65537_78,a
      00086A F5 11            [12] 2301 	mov	(_main_result_65537_78 + 1),a
      00086C FC               [12] 2302 	mov	r4,a
      00086D FD               [12] 2303 	mov	r5,a
                           00080C  2304 	C$main.c$308$9_2$108 ==.
                                   2305 ;	..\main.c:308: LCD_Clear();
      00086E C0 05            [24] 2306 	push	ar5
      000870 C0 04            [24] 2307 	push	ar4
      000872 12 01 6F         [24] 2308 	lcall	_LCD_Clear
      000875 D0 04            [24] 2309 	pop	ar4
      000877 D0 05            [24] 2310 	pop	ar5
                           000817  2311 	C$main.c$309$9_2$108 ==.
                                   2312 ;	..\main.c:309: s[0]='\0';
      000879 75 26 00         [24] 2313 	mov	_main_s_65538_79,#0x00
                           00081A  2314 	C$main.c$311$8_2$107 ==.
                                   2315 ;	..\main.c:311: break;
                           00081A  2316 	C$main.c$312$8_2$107 ==.
                                   2317 ;	..\main.c:312: default:
      00087C 80 21            [24] 2318 	sjmp	00154$
      00087E                       2319 00153$:
                           00081C  2320 	C$main.c$313$1_2$77 ==.
                                   2321 ;	..\main.c:313: result = result + mul*local;
      00087E 8C 76            [24] 2322 	mov	__mulint_PARM_2,r4
      000880 8D 77            [24] 2323 	mov	(__mulint_PARM_2 + 1),r5
      000882 8A 82            [24] 2324 	mov	dpl,r2
      000884 8B 83            [24] 2325 	mov	dph,r3
      000886 C0 05            [24] 2326 	push	ar5
      000888 C0 04            [24] 2327 	push	ar4
      00088A 12 0A 19         [24] 2328 	lcall	__mulint
      00088D AE 82            [24] 2329 	mov	r6,dpl
      00088F AF 83            [24] 2330 	mov	r7,dph
      000891 D0 04            [24] 2331 	pop	ar4
      000893 D0 05            [24] 2332 	pop	ar5
      000895 EE               [12] 2333 	mov	a,r6
      000896 25 10            [12] 2334 	add	a,_main_result_65537_78
      000898 F5 10            [12] 2335 	mov	_main_result_65537_78,a
      00089A EF               [12] 2336 	mov	a,r7
      00089B 35 11            [12] 2337 	addc	a,(_main_result_65537_78 + 1)
      00089D F5 11            [12] 2338 	mov	(_main_result_65537_78 + 1),a
                           00083D  2339 	C$main.c$314$7_2$106 ==.
                                   2340 ;	..\main.c:314: }
      00089F                       2341 00154$:
                           00083D  2342 	C$main.c$315$7_2$106 ==.
                                   2343 ;	..\main.c:315: mul = -1;
      00089F 7A FF            [12] 2344 	mov	r2,#0xff
      0008A1 7B FF            [12] 2345 	mov	r3,#0xff
                           000841  2346 	C$main.c$316$7_2$106 ==.
                                   2347 ;	..\main.c:316: check = 2;
      0008A3 75 12 02         [24] 2348 	mov	_main_check_65537_78,#0x02
      0008A6 75 13 00         [24] 2349 	mov	(_main_check_65537_78 + 1),#0x00
      0008A9                       2350 00156$:
                           000847  2351 	C$main.c$319$6_2$102 ==.
                                   2352 ;	..\main.c:319: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
                                   2353 ;	assignBit
      0008A9 D2 94            [12] 2354 	setb	_P1_4
                                   2355 ;	assignBit
      0008AB D2 95            [12] 2356 	setb	_P1_5
                                   2357 ;	assignBit
      0008AD C2 96            [12] 2358 	clr	_P1_6
                                   2359 ;	assignBit
      0008AF D2 97            [12] 2360 	setb	_P1_7
                           00084F  2361 	C$main.c$320$6_2$102 ==.
                                   2362 ;	..\main.c:320: if (P1_0 == 0 ) {
      0008B1 30 90 03         [24] 2363 	jnb	_P1_0,00504$
      0008B4 02 09 49         [24] 2364 	ljmp	00166$
      0008B7                       2365 00504$:
                           000855  2366 	C$main.c$321$7_2$109 ==.
                                   2367 ;	..\main.c:321: s[lengs] = '*';
      0008B7 E5 3E            [12] 2368 	mov	a,_main_lengs_393218_102
      0008B9 24 26            [12] 2369 	add	a,#_main_s_65538_79
      0008BB F8               [12] 2370 	mov	r0,a
      0008BC 76 2A            [12] 2371 	mov	@r0,#0x2a
                           00085C  2372 	C$main.c$322$7_2$109 ==.
                                   2373 ;	..\main.c:322: s[lengs + 1] = '\0';
      0008BE E5 3E            [12] 2374 	mov	a,_main_lengs_393218_102
      0008C0 FE               [12] 2375 	mov	r6,a
      0008C1 04               [12] 2376 	inc	a
      0008C2 24 26            [12] 2377 	add	a,#_main_s_65538_79
      0008C4 F8               [12] 2378 	mov	r0,a
      0008C5 76 00            [12] 2379 	mov	@r0,#0x00
                           000865  2380 	C$main.c$323$7_2$109 ==.
                                   2381 ;	..\main.c:323: switch (check) {
      0008C7 74 04            [12] 2382 	mov	a,#0x04
      0008C9 B5 12 06         [24] 2383 	cjne	a,_main_check_65537_78,00505$
      0008CC E4               [12] 2384 	clr	a
      0008CD B5 13 02         [24] 2385 	cjne	a,(_main_check_65537_78 + 1),00505$
      0008D0 80 02            [24] 2386 	sjmp	00506$
      0008D2                       2387 00505$:
      0008D2 80 58            [24] 2388 	sjmp	00163$
      0008D4                       2389 00506$:
                           000872  2390 	C$main.c$325$1_2$77 ==.
                                   2391 ;	..\main.c:325: mul = mul/local;
      0008D4 8C 76            [24] 2392 	mov	__divsint_PARM_2,r4
      0008D6 8D 77            [24] 2393 	mov	(__divsint_PARM_2 + 1),r5
      0008D8 8A 82            [24] 2394 	mov	dpl,r2
      0008DA 8B 83            [24] 2395 	mov	dph,r3
      0008DC C0 05            [24] 2396 	push	ar5
      0008DE C0 04            [24] 2397 	push	ar4
      0008E0 12 12 74         [24] 2398 	lcall	__divsint
      0008E3 AA 82            [24] 2399 	mov	r2,dpl
      0008E5 AB 83            [24] 2400 	mov	r3,dph
      0008E7 D0 04            [24] 2401 	pop	ar4
      0008E9 D0 05            [24] 2402 	pop	ar5
                           000889  2403 	C$main.c$326$8_2$110 ==.
                                   2404 ;	..\main.c:326: if (local == 0){
      0008EB EC               [12] 2405 	mov	a,r4
      0008EC 4D               [12] 2406 	orl	a,r5
      0008ED 70 54            [24] 2407 	jnz	00164$
                           00088D  2408 	C$main.c$327$9_2$111 ==.
                                   2409 ;	..\main.c:327: LCD_Send_Command(0xC0); // Dòng thứ 2
      0008EF 75 82 C0         [24] 2410 	mov	dpl,#0xc0
      0008F2 12 00 62         [24] 2411 	lcall	_LCD_Send_Command
                           000893  2412 	C$main.c$328$9_2$111 ==.
                                   2413 ;	..\main.c:328: LCD_Write_String("Invalid");
      0008F5 90 12 B0         [24] 2414 	mov	dptr,#___str_1
      0008F8 75 F0 80         [24] 2415 	mov	b,#0x80
      0008FB 12 00 B0         [24] 2416 	lcall	_LCD_Write_String
                           00089C  2417 	C$main.c$329$9_2$111 ==.
                                   2418 ;	..\main.c:329: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   2419 ;	assignBit
      0008FE C2 94            [12] 2420 	clr	_P1_4
                                   2421 ;	assignBit
      000900 D2 95            [12] 2422 	setb	_P1_5
                                   2423 ;	assignBit
      000902 D2 96            [12] 2424 	setb	_P1_6
                                   2425 ;	assignBit
      000904 D2 97            [12] 2426 	setb	_P1_7
                           0008A4  2427 	C$main.c$330$9_2$111 ==.
                                   2428 ;	..\main.c:330: while (P1_2 != 0);
      000906                       2429 00158$:
      000906 20 92 FD         [24] 2430 	jb	_P1_2,00158$
                           0008A7  2431 	C$main.c$331$9_2$111 ==.
                                   2432 ;	..\main.c:331: result = 0;
                           0008A7  2433 	C$main.c$332$9_2$111 ==.
                                   2434 ;	..\main.c:332: local = 0;
      000909 E4               [12] 2435 	clr	a
      00090A F5 10            [12] 2436 	mov	_main_result_65537_78,a
      00090C F5 11            [12] 2437 	mov	(_main_result_65537_78 + 1),a
      00090E FC               [12] 2438 	mov	r4,a
      00090F FD               [12] 2439 	mov	r5,a
                           0008AE  2440 	C$main.c$334$9_2$111 ==.
                                   2441 ;	..\main.c:334: mul = 1;
      000910 7A 01            [12] 2442 	mov	r2,#0x01
      000912 7B 00            [12] 2443 	mov	r3,#0x00
                           0008B2  2444 	C$main.c$335$9_2$111 ==.
                                   2445 ;	..\main.c:335: LCD_Clear();
      000914 C0 05            [24] 2446 	push	ar5
      000916 C0 04            [24] 2447 	push	ar4
      000918 C0 03            [24] 2448 	push	ar3
      00091A C0 02            [24] 2449 	push	ar2
      00091C 12 01 6F         [24] 2450 	lcall	_LCD_Clear
      00091F D0 02            [24] 2451 	pop	ar2
      000921 D0 03            [24] 2452 	pop	ar3
      000923 D0 04            [24] 2453 	pop	ar4
      000925 D0 05            [24] 2454 	pop	ar5
                           0008C5  2455 	C$main.c$336$9_2$111 ==.
                                   2456 ;	..\main.c:336: s[0]='\0';
      000927 75 26 00         [24] 2457 	mov	_main_s_65538_79,#0x00
                           0008C8  2458 	C$main.c$338$8_2$110 ==.
                                   2459 ;	..\main.c:338: break;
                           0008C8  2460 	C$main.c$339$8_2$110 ==.
                                   2461 ;	..\main.c:339: default:
      00092A 80 17            [24] 2462 	sjmp	00164$
      00092C                       2463 00163$:
                           0008CA  2464 	C$main.c$340$1_2$77 ==.
                                   2465 ;	..\main.c:340: mul = mul*local;
      00092C 8C 76            [24] 2466 	mov	__mulint_PARM_2,r4
      00092E 8D 77            [24] 2467 	mov	(__mulint_PARM_2 + 1),r5
      000930 8A 82            [24] 2468 	mov	dpl,r2
      000932 8B 83            [24] 2469 	mov	dph,r3
      000934 C0 05            [24] 2470 	push	ar5
      000936 C0 04            [24] 2471 	push	ar4
      000938 12 0A 19         [24] 2472 	lcall	__mulint
      00093B AA 82            [24] 2473 	mov	r2,dpl
      00093D AB 83            [24] 2474 	mov	r3,dph
      00093F D0 04            [24] 2475 	pop	ar4
      000941 D0 05            [24] 2476 	pop	ar5
                           0008E1  2477 	C$main.c$341$7_2$109 ==.
                                   2478 ;	..\main.c:341: }
      000943                       2479 00164$:
                           0008E1  2480 	C$main.c$342$7_2$109 ==.
                                   2481 ;	..\main.c:342: check = 3;
      000943 75 12 03         [24] 2482 	mov	_main_check_65537_78,#0x03
      000946 75 13 00         [24] 2483 	mov	(_main_check_65537_78 + 1),#0x00
      000949                       2484 00166$:
                           0008E7  2485 	C$main.c$345$6_2$102 ==.
                                   2486 ;	..\main.c:345: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
                                   2487 ;	assignBit
      000949 D2 94            [12] 2488 	setb	_P1_4
                                   2489 ;	assignBit
      00094B D2 95            [12] 2490 	setb	_P1_5
                                   2491 ;	assignBit
      00094D D2 96            [12] 2492 	setb	_P1_6
                                   2493 ;	assignBit
      00094F C2 97            [12] 2494 	clr	_P1_7
                           0008EF  2495 	C$main.c$346$6_2$102 ==.
                                   2496 ;	..\main.c:346: if (P1_0 == 0) {
      000951 30 90 03         [24] 2497 	jnb	_P1_0,00509$
      000954 02 09 D7         [24] 2498 	ljmp	00176$
      000957                       2499 00509$:
                           0008F5  2500 	C$main.c$347$7_2$112 ==.
                                   2501 ;	..\main.c:347: s[lengs] = '/';
      000957 E5 3E            [12] 2502 	mov	a,_main_lengs_393218_102
      000959 24 26            [12] 2503 	add	a,#_main_s_65538_79
      00095B F8               [12] 2504 	mov	r0,a
      00095C 76 2F            [12] 2505 	mov	@r0,#0x2f
                           0008FC  2506 	C$main.c$348$7_2$112 ==.
                                   2507 ;	..\main.c:348: s[lengs + 1] = '\0';
      00095E E5 3E            [12] 2508 	mov	a,_main_lengs_393218_102
      000960 FE               [12] 2509 	mov	r6,a
      000961 04               [12] 2510 	inc	a
      000962 24 26            [12] 2511 	add	a,#_main_s_65538_79
      000964 F8               [12] 2512 	mov	r0,a
      000965 76 00            [12] 2513 	mov	@r0,#0x00
                           000905  2514 	C$main.c$349$7_2$112 ==.
                                   2515 ;	..\main.c:349: switch (check) {
      000967 74 04            [12] 2516 	mov	a,#0x04
      000969 B5 12 06         [24] 2517 	cjne	a,_main_check_65537_78,00510$
      00096C E4               [12] 2518 	clr	a
      00096D B5 13 02         [24] 2519 	cjne	a,(_main_check_65537_78 + 1),00510$
      000970 80 02            [24] 2520 	sjmp	00511$
      000972                       2521 00510$:
      000972 80 4E            [24] 2522 	sjmp	00173$
      000974                       2523 00511$:
                           000912  2524 	C$main.c$351$1_2$77 ==.
                                   2525 ;	..\main.c:351: mul = mul/local;
      000974 8C 76            [24] 2526 	mov	__divsint_PARM_2,r4
      000976 8D 77            [24] 2527 	mov	(__divsint_PARM_2 + 1),r5
      000978 8A 82            [24] 2528 	mov	dpl,r2
      00097A 8B 83            [24] 2529 	mov	dph,r3
      00097C C0 05            [24] 2530 	push	ar5
      00097E C0 04            [24] 2531 	push	ar4
      000980 12 12 74         [24] 2532 	lcall	__divsint
      000983 AA 82            [24] 2533 	mov	r2,dpl
      000985 AB 83            [24] 2534 	mov	r3,dph
      000987 D0 04            [24] 2535 	pop	ar4
      000989 D0 05            [24] 2536 	pop	ar5
                           000929  2537 	C$main.c$352$8_2$113 ==.
                                   2538 ;	..\main.c:352: if (local == 0){
      00098B EC               [12] 2539 	mov	a,r4
      00098C 4D               [12] 2540 	orl	a,r5
      00098D 70 42            [24] 2541 	jnz	00174$
                           00092D  2542 	C$main.c$353$9_2$114 ==.
                                   2543 ;	..\main.c:353: LCD_Send_Command(0xC0); // Dòng thứ 2
      00098F 75 82 C0         [24] 2544 	mov	dpl,#0xc0
      000992 12 00 62         [24] 2545 	lcall	_LCD_Send_Command
                           000933  2546 	C$main.c$354$9_2$114 ==.
                                   2547 ;	..\main.c:354: LCD_Write_String("Invalid");
      000995 90 12 B0         [24] 2548 	mov	dptr,#___str_1
      000998 75 F0 80         [24] 2549 	mov	b,#0x80
      00099B 12 00 B0         [24] 2550 	lcall	_LCD_Write_String
                           00093C  2551 	C$main.c$355$9_2$114 ==.
                                   2552 ;	..\main.c:355: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                   2553 ;	assignBit
      00099E C2 94            [12] 2554 	clr	_P1_4
                                   2555 ;	assignBit
      0009A0 D2 95            [12] 2556 	setb	_P1_5
                                   2557 ;	assignBit
      0009A2 D2 96            [12] 2558 	setb	_P1_6
                                   2559 ;	assignBit
      0009A4 D2 97            [12] 2560 	setb	_P1_7
                           000944  2561 	C$main.c$356$9_2$114 ==.
                                   2562 ;	..\main.c:356: while (P1_2 != 0);
      0009A6                       2563 00168$:
      0009A6 20 92 FD         [24] 2564 	jb	_P1_2,00168$
                           000947  2565 	C$main.c$357$9_2$114 ==.
                                   2566 ;	..\main.c:357: result = 0;
      0009A9 E4               [12] 2567 	clr	a
      0009AA F5 10            [12] 2568 	mov	_main_result_65537_78,a
      0009AC F5 11            [12] 2569 	mov	(_main_result_65537_78 + 1),a
                           00094C  2570 	C$main.c$360$9_2$114 ==.
                                   2571 ;	..\main.c:360: mul = 1;
      0009AE 7A 01            [12] 2572 	mov	r2,#0x01
      0009B0 7B 00            [12] 2573 	mov	r3,#0x00
                           000950  2574 	C$main.c$361$9_2$114 ==.
                                   2575 ;	..\main.c:361: LCD_Clear();
      0009B2 C0 03            [24] 2576 	push	ar3
      0009B4 C0 02            [24] 2577 	push	ar2
      0009B6 12 01 6F         [24] 2578 	lcall	_LCD_Clear
      0009B9 D0 02            [24] 2579 	pop	ar2
      0009BB D0 03            [24] 2580 	pop	ar3
                           00095B  2581 	C$main.c$362$9_2$114 ==.
                                   2582 ;	..\main.c:362: s[0]='\0';
      0009BD 75 26 00         [24] 2583 	mov	_main_s_65538_79,#0x00
                           00095E  2584 	C$main.c$364$8_2$113 ==.
                                   2585 ;	..\main.c:364: break;
                           00095E  2586 	C$main.c$365$8_2$113 ==.
                                   2587 ;	..\main.c:365: default:
      0009C0 80 0F            [24] 2588 	sjmp	00174$
      0009C2                       2589 00173$:
                           000960  2590 	C$main.c$366$1_2$77 ==.
                                   2591 ;	..\main.c:366: mul = mul*local;
      0009C2 8C 76            [24] 2592 	mov	__mulint_PARM_2,r4
      0009C4 8D 77            [24] 2593 	mov	(__mulint_PARM_2 + 1),r5
      0009C6 8A 82            [24] 2594 	mov	dpl,r2
      0009C8 8B 83            [24] 2595 	mov	dph,r3
      0009CA 12 0A 19         [24] 2596 	lcall	__mulint
      0009CD AA 82            [24] 2597 	mov	r2,dpl
      0009CF AB 83            [24] 2598 	mov	r3,dph
                           00096F  2599 	C$main.c$367$7_2$112 ==.
                                   2600 ;	..\main.c:367: }
      0009D1                       2601 00174$:
                           00096F  2602 	C$main.c$368$7_2$112 ==.
                                   2603 ;	..\main.c:368: check = 4;
      0009D1 75 12 04         [24] 2604 	mov	_main_check_65537_78,#0x04
      0009D4 75 13 00         [24] 2605 	mov	(_main_check_65537_78 + 1),#0x00
      0009D7                       2606 00176$:
                           000975  2607 	C$main.c$370$6_2$102 ==.
                                   2608 ;	..\main.c:370: local = 0;
      0009D7 7C 00            [12] 2609 	mov	r4,#0x00
      0009D9 7D 00            [12] 2610 	mov	r5,#0x00
                           000979  2611 	C$main.c$371$6_2$102 ==.
                                   2612 ;	..\main.c:371: RemoveFirstDigit(s);
      0009DB 90 00 26         [24] 2613 	mov	dptr,#_main_s_65538_79
      0009DE 75 F0 40         [24] 2614 	mov	b,#0x40
      0009E1 C0 05            [24] 2615 	push	ar5
      0009E3 C0 04            [24] 2616 	push	ar4
      0009E5 C0 03            [24] 2617 	push	ar3
      0009E7 C0 02            [24] 2618 	push	ar2
      0009E9 12 01 87         [24] 2619 	lcall	_RemoveFirstDigit
                           00098A  2620 	C$main.c$372$6_2$102 ==.
                                   2621 ;	..\main.c:372: Delay_ms(20);
      0009EC 90 00 14         [24] 2622 	mov	dptr,#0x0014
      0009EF 12 01 1D         [24] 2623 	lcall	_Delay_ms
      0009F2 D0 02            [24] 2624 	pop	ar2
      0009F4 D0 03            [24] 2625 	pop	ar3
      0009F6 D0 04            [24] 2626 	pop	ar4
      0009F8 D0 05            [24] 2627 	pop	ar5
      0009FA 02 02 98         [24] 2628 	ljmp	00189$
                           00099B  2629 	C$main.c$378$1_2$77 ==.
                                   2630 ;	..\main.c:378: }
                           00099B  2631 	C$main.c$378$1_2$77 ==.
                           00099B  2632 	XG$main$0$0 ==.
      0009FD 22               [24] 2633 	ret
                                   2634 	.area CSEG    (CODE)
                                   2635 	.area CONST   (CODE)
                           000000  2636 Fmain$__str_1$0_0$0 == .
                                   2637 	.area CONST   (CODE)
      0012B0                       2638 ___str_1:
      0012B0 49 6E 76 61 6C 69 64  2639 	.ascii "Invalid"
      0012B7 00                    2640 	.db 0x00
                                   2641 	.area CSEG    (CODE)
                           00099C  2642 Fmain$__str_2$0_0$0 == .
                                   2643 	.area CONST   (CODE)
      0012B8                       2644 ___str_2:
      0012B8 25 64                 2645 	.ascii "%d"
      0012BA 00                    2646 	.db 0x00
                                   2647 	.area CSEG    (CODE)
                                   2648 	.area XINIT   (CODE)
                                   2649 	.area CABS    (ABS,CODE)
