;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _RemoveFirstDigit
	.globl _Beep
	.globl _LCD_Clear
	.globl _sprintf
	.globl _strlen
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _LCD_GotoXY_PARM_2
	.globl _LCD_Send_Command
	.globl _Wait_For_LCD
	.globl _LCD_init
	.globl _LCD_Write_One_Char
	.globl _LCD_Write_String
	.globl _LCD_GotoXY
	.globl _Delay_ms
	.globl _Delay_us
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$T2CON$0_0$0 == 0x00c8
_T2CON	=	0x00c8
G$RCAP2L$0_0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0_0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0_0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0_0$0 == 0x00cd
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
G$ET2$0_0$0 == 0x00ad
_ET2	=	0x00ad
G$PT2$0_0$0 == 0x00bd
_PT2	=	0x00bd
G$T2CON_0$0_0$0 == 0x00c8
_T2CON_0	=	0x00c8
G$T2CON_1$0_0$0 == 0x00c9
_T2CON_1	=	0x00c9
G$T2CON_2$0_0$0 == 0x00ca
_T2CON_2	=	0x00ca
G$T2CON_3$0_0$0 == 0x00cb
_T2CON_3	=	0x00cb
G$T2CON_4$0_0$0 == 0x00cc
_T2CON_4	=	0x00cc
G$T2CON_5$0_0$0 == 0x00cd
_T2CON_5	=	0x00cd
G$T2CON_6$0_0$0 == 0x00ce
_T2CON_6	=	0x00ce
G$T2CON_7$0_0$0 == 0x00cf
_T2CON_7	=	0x00cf
G$CP_RL2$0_0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0_0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0_0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0_0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0_0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0_0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0_0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0_0$0 == 0x00cf
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Lmain.LCD_GotoXY$col$1_0$59==.
_LCD_GotoXY_PARM_2:
	.ds 1
Lmain.RemoveFirstDigit$str$1_0$72==.
_RemoveFirstDigit_str_65536_72:
	.ds 3
Lmain.RemoveFirstDigit$length$1_0$73==.
_RemoveFirstDigit_length_65536_73:
	.ds 2
Lmain.RemoveFirstDigit$i$3_0$75==.
_RemoveFirstDigit_i_196608_75:
	.ds 2
Lmain.main$result$1_1$78==.
_main_result_65537_78:
	.ds 2
Lmain.main$check$1_1$78==.
_main_check_65537_78:
	.ds 2
Lmain.main$mul$1_1$78==.
_main_mul_65537_78:
	.ds 2
Lmain.main$buffer$1_2$79==.
_main_buffer_65538_79:
	.ds 16
Lmain.main$s$1_2$79==.
_main_s_65538_79:
	.ds 16
Lmain.main$lengs$3_2$81==.
_main_lengs_196610_81:
	.ds 2
Lmain.main$i$9_2$118==.
_main_i_589826_118:
	.ds 2
Lmain.main$lengs$4_2$90==.
_main_lengs_262146_90:
	.ds 2
Lmain.main$lengs$5_2$96==.
_main_lengs_327682_96:
	.ds 2
Lmain.main$lengs$6_2$102==.
_main_lengs_393218_102:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Send_Command'
;------------------------------------------------------------
;x                         Allocated to registers 
;------------------------------------------------------------
	G$LCD_Send_Command$0$0 ==.
	C$main.c$23$0_0$51 ==.
;	..\main.c:23: void LCD_Send_Command(unsigned char x)
;	-----------------------------------------
;	 function LCD_Send_Command
;	-----------------------------------------
_LCD_Send_Command:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_P0,dpl
	C$main.c$26$1_0$51 ==.
;	..\main.c:26: LCD_RS=0; //Chon thanh ghi lenh
;	assignBit
	clr	_P2_6
	C$main.c$27$1_0$51 ==.
;	..\main.c:27: LCD_RW=0; //De ghi du lieu
;	assignBit
	clr	_P2_5
	C$main.c$28$1_0$51 ==.
;	..\main.c:28: LCD_EN=1;
;	assignBit
	setb	_P2_7
	C$main.c$29$1_0$51 ==.
;	..\main.c:29: Delay_us(100);
	mov	dptr,#0x0064
	lcall	_Delay_us
	C$main.c$30$1_0$51 ==.
;	..\main.c:30: LCD_EN=0;
;	assignBit
	clr	_P2_7
	C$main.c$31$1_0$51 ==.
;	..\main.c:31: Wait_For_LCD(); //Doi cho LCD san sang
	lcall	_Wait_For_LCD
	C$main.c$32$1_0$51 ==.
;	..\main.c:32: LCD_EN=1;
;	assignBit
	setb	_P2_7
	C$main.c$33$1_0$51 ==.
;	..\main.c:33: }
	C$main.c$33$1_0$51 ==.
	XG$LCD_Send_Command$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Wait_For_LCD'
;------------------------------------------------------------
	G$Wait_For_LCD$0$0 ==.
	C$main.c$35$1_0$52 ==.
;	..\main.c:35: void Wait_For_LCD()
;	-----------------------------------------
;	 function Wait_For_LCD
;	-----------------------------------------
_Wait_For_LCD:
	C$main.c$37$1_0$52 ==.
;	..\main.c:37: Delay_us(100);
	mov	dptr,#0x0064
	lcall	_Delay_us
	C$main.c$38$1_0$52 ==.
;	..\main.c:38: }
	C$main.c$38$1_0$52 ==.
	XG$Wait_For_LCD$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_init'
;------------------------------------------------------------
	G$LCD_init$0$0 ==.
	C$main.c$39$1_0$53 ==.
;	..\main.c:39: void LCD_init()
;	-----------------------------------------
;	 function LCD_init
;	-----------------------------------------
_LCD_init:
	C$main.c$41$1_0$53 ==.
;	..\main.c:41: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
	mov	dpl,#0x38
	lcall	_LCD_Send_Command
	C$main.c$42$1_0$53 ==.
;	..\main.c:42: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
	mov	dpl,#0x0e
	lcall	_LCD_Send_Command
	C$main.c$43$1_0$53 ==.
;	..\main.c:43: LCD_Send_Command(0x01); //Xoa man hinh
	mov	dpl,#0x01
	lcall	_LCD_Send_Command
	C$main.c$44$1_0$53 ==.
;	..\main.c:44: LCD_Send_Command(0x80); //Ve dau dong
	mov	dpl,#0x80
	lcall	_LCD_Send_Command
	C$main.c$45$1_0$53 ==.
;	..\main.c:45: }
	C$main.c$45$1_0$53 ==.
	XG$LCD_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Write_One_Char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$LCD_Write_One_Char$0$0 ==.
	C$main.c$48$1_0$55 ==.
;	..\main.c:48: void LCD_Write_One_Char(unsigned char c)
;	-----------------------------------------
;	 function LCD_Write_One_Char
;	-----------------------------------------
_LCD_Write_One_Char:
	mov	_P0,dpl
	C$main.c$51$1_0$55 ==.
;	..\main.c:51: LCD_RS=1; //Chon thanh ghi du lieu
;	assignBit
	setb	_P2_6
	C$main.c$52$1_0$55 ==.
;	..\main.c:52: LCD_RW=0;
;	assignBit
	clr	_P2_5
	C$main.c$53$1_0$55 ==.
;	..\main.c:53: LCD_EN=1;
;	assignBit
	setb	_P2_7
	C$main.c$54$1_0$55 ==.
;	..\main.c:54: Delay_us(10);
	mov	dptr,#0x000a
	lcall	_Delay_us
	C$main.c$55$1_0$55 ==.
;	..\main.c:55: LCD_EN=0;
;	assignBit
	clr	_P2_7
	C$main.c$56$1_0$55 ==.
;	..\main.c:56: Wait_For_LCD();
	lcall	_Wait_For_LCD
	C$main.c$57$1_0$55 ==.
;	..\main.c:57: LCD_EN=1;
;	assignBit
	setb	_P2_7
	C$main.c$58$1_0$55 ==.
;	..\main.c:58: }
	C$main.c$58$1_0$55 ==.
	XG$LCD_Write_One_Char$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Write_String'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;length                    Allocated to registers 
;------------------------------------------------------------
	G$LCD_Write_String$0$0 ==.
	C$main.c$60$1_0$57 ==.
;	..\main.c:60: void LCD_Write_String(unsigned char *s)
;	-----------------------------------------
;	 function LCD_Write_String
;	-----------------------------------------
_LCD_Write_String:
	C$main.c$63$1_0$57 ==.
;	..\main.c:63: length=strlen(s); //Lay do dai xau
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$64$1_0$57 ==.
;	..\main.c:64: while(length!=0)
00101$:
	mov	a,r3
	jz	00104$
	C$main.c$66$2_0$58 ==.
;	..\main.c:66: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_LCD_Write_One_Char
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$67$2_0$58 ==.
;	..\main.c:67: s++; //Tang con tro
	C$main.c$68$2_0$58 ==.
;	..\main.c:68: length--;
	dec	r3
	sjmp	00101$
00104$:
	C$main.c$70$1_0$57 ==.
;	..\main.c:70: }
	C$main.c$70$1_0$57 ==.
	XG$LCD_Write_String$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_GotoXY'
;------------------------------------------------------------
;col                       Allocated with name '_LCD_GotoXY_PARM_2'
;row                       Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_GotoXY$0$0 ==.
	C$main.c$72$1_0$60 ==.
;	..\main.c:72: void LCD_GotoXY(char row, char col)
;	-----------------------------------------
;	 function LCD_GotoXY
;	-----------------------------------------
_LCD_GotoXY:
	mov	r7,dpl
	C$main.c$75$1_0$60 ==.
;	..\main.c:75: if (row == 2)
	cjne	r7,#0x02,00102$
	C$main.c$76$1_0$60 ==.
;	..\main.c:76: LCD_Send_Command(0xC0);      //cursor to fist col in row 2
	mov	dpl,#0xc0
	lcall	_LCD_Send_Command
	sjmp	00112$
00102$:
	C$main.c$78$1_0$60 ==.
;	..\main.c:78: LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
	mov	dpl,#0x80
	lcall	_LCD_Send_Command
	C$main.c$79$2_0$60 ==.
;	..\main.c:79: for (i = 0; i < col; i++)
00112$:
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r7
	subb	a,_LCD_GotoXY_PARM_2
	jnc	00108$
	C$main.c$80$2_0$61 ==.
;	..\main.c:80: LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
	mov	dpl,#0x14
	push	ar7
	lcall	_LCD_Send_Command
	pop	ar7
	C$main.c$79$2_0$61 ==.
;	..\main.c:79: for (i = 0; i < col; i++)
	inc	r7
	sjmp	00106$
00108$:
	C$main.c$81$2_0$60 ==.
;	..\main.c:81: }
	C$main.c$81$2_0$60 ==.
	XG$LCD_GotoXY$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_ms'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
	G$Delay_ms$0$0 ==.
	C$main.c$83$2_0$64 ==.
;	..\main.c:83: void Delay_ms(int interval)
;	-----------------------------------------
;	 function Delay_ms
;	-----------------------------------------
_Delay_ms:
	mov	r6,dpl
	mov	r7,dph
	C$main.c$86$2_0$64 ==.
;	..\main.c:86: for(i=0;i<1000;i++)
	mov	r4,#0x00
	mov	r5,#0x00
	C$main.c$88$2_0$64 ==.
;	..\main.c:88: for(j=0;j<interval;j++);
00111$:
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00107$:
	C$main.c$86$2_0$64 ==.
;	..\main.c:86: for(i=0;i<1000;i++)
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
00126$:
	clr	c
	mov	a,r4
	subb	a,#0xe8
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jc	00111$
	C$main.c$90$2_0$64 ==.
;	..\main.c:90: }
	C$main.c$90$2_0$64 ==.
	XG$Delay_ms$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_us'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
	G$Delay_us$0$0 ==.
	C$main.c$92$2_0$69 ==.
;	..\main.c:92: void Delay_us(int interval)
;	-----------------------------------------
;	 function Delay_us
;	-----------------------------------------
_Delay_us:
	mov	r6,dpl
	mov	r7,dph
	C$main.c$95$2_0$69 ==.
;	..\main.c:95: for(j=0;j<interval;j++);
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
	C$main.c$96$2_0$69 ==.
;	..\main.c:96: }
	C$main.c$96$2_0$69 ==.
	XG$Delay_us$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Clear'
;------------------------------------------------------------
	G$LCD_Clear$0$0 ==.
	C$main.c$98$2_0$70 ==.
;	..\main.c:98: void LCD_Clear() {
;	-----------------------------------------
;	 function LCD_Clear
;	-----------------------------------------
_LCD_Clear:
	C$main.c$99$1_0$70 ==.
;	..\main.c:99: LCD_Send_Command(0x01);
	mov	dpl,#0x01
	lcall	_LCD_Send_Command
	C$main.c$100$1_0$70 ==.
;	..\main.c:100: Delay_ms(2);
	mov	dptr,#0x0002
	lcall	_Delay_ms
	C$main.c$101$1_0$70 ==.
;	..\main.c:101: }
	C$main.c$101$1_0$70 ==.
	XG$LCD_Clear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Beep'
;------------------------------------------------------------
	G$Beep$0$0 ==.
	C$main.c$103$1_0$71 ==.
;	..\main.c:103: void Beep(){
;	-----------------------------------------
;	 function Beep
;	-----------------------------------------
_Beep:
	C$main.c$104$1_0$71 ==.
;	..\main.c:104: P1_5 = 0;
;	assignBit
	clr	_P1_5
	C$main.c$105$1_0$71 ==.
;	..\main.c:105: Delay_ms(20);
	mov	dptr,#0x0014
	lcall	_Delay_ms
	C$main.c$106$1_0$71 ==.
;	..\main.c:106: P1_5 = 0;
;	assignBit
	clr	_P1_5
	C$main.c$107$1_0$71 ==.
;	..\main.c:107: }
	C$main.c$107$1_0$71 ==.
	XG$Beep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RemoveFirstDigit'
;------------------------------------------------------------
;str                       Allocated with name '_RemoveFirstDigit_str_65536_72'
;length                    Allocated with name '_RemoveFirstDigit_length_65536_73'
;i                         Allocated with name '_RemoveFirstDigit_i_196608_75'
;------------------------------------------------------------
	G$RemoveFirstDigit$0$0 ==.
	C$main.c$109$1_0$73 ==.
;	..\main.c:109: void RemoveFirstDigit(char *str) {
;	-----------------------------------------
;	 function RemoveFirstDigit
;	-----------------------------------------
_RemoveFirstDigit:
	C$main.c$110$1_0$73 ==.
;	..\main.c:110: int length = strlen(str);
	mov	_RemoveFirstDigit_str_65536_72,dpl
	mov	(_RemoveFirstDigit_str_65536_72 + 1),dph
	mov	(_RemoveFirstDigit_str_65536_72 + 2),b
	lcall	_strlen
	mov	_RemoveFirstDigit_length_65536_73,dpl
	mov	(_RemoveFirstDigit_length_65536_73 + 1),dph
	C$main.c$112$1_0$73 ==.
;	..\main.c:112: if (length > 14) {
	clr	c
	mov	a,#0x0e
	subb	a,_RemoveFirstDigit_length_65536_73
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_RemoveFirstDigit_length_65536_73 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00121$
	ljmp	00103$
00121$:
	C$main.c$113$4_0$75 ==.
;	..\main.c:113: for (int i = 0; i < length - 1; i++) {
	clr	a
	mov	_RemoveFirstDigit_i_196608_75,a
	mov	(_RemoveFirstDigit_i_196608_75 + 1),a
	mov	a,_RemoveFirstDigit_length_65536_73
	add	a,#0xff
	mov	r0,a
	mov	a,(_RemoveFirstDigit_length_65536_73 + 1)
	addc	a,#0xff
	mov	r4,a
00105$:
	clr	c
	mov	a,_RemoveFirstDigit_i_196608_75
	subb	a,r0
	mov	a,(_RemoveFirstDigit_i_196608_75 + 1)
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	C$main.c$114$1_0$73 ==.
;	..\main.c:114: str[i] = str[i + 1];
	push	ar0
	push	ar4
	mov	a,_RemoveFirstDigit_i_196608_75
	add	a,_RemoveFirstDigit_str_65536_72
	mov	r1,a
	mov	a,(_RemoveFirstDigit_i_196608_75 + 1)
	addc	a,(_RemoveFirstDigit_str_65536_72 + 1)
	mov	r2,a
	mov	r3,(_RemoveFirstDigit_str_65536_72 + 2)
	mov	a,#0x01
	add	a,_RemoveFirstDigit_i_196608_75
	mov	r6,a
	clr	a
	addc	a,(_RemoveFirstDigit_i_196608_75 + 1)
	mov	r7,a
	mov	a,r6
	add	a,_RemoveFirstDigit_str_65536_72
	mov	r0,a
	mov	a,r7
	addc	a,(_RemoveFirstDigit_str_65536_72 + 1)
	mov	r4,a
	mov	r5,(_RemoveFirstDigit_str_65536_72 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
	C$main.c$113$3_0$75 ==.
;	..\main.c:113: for (int i = 0; i < length - 1; i++) {
	mov	_RemoveFirstDigit_i_196608_75,r6
	mov	(_RemoveFirstDigit_i_196608_75 + 1),r7
	pop	ar4
	pop	ar0
	sjmp	00105$
00101$:
	C$main.c$116$2_0$74 ==.
;	..\main.c:116: str[length - 1] = '\0';
	mov	a,_RemoveFirstDigit_length_65536_73
	add	a,#0xff
	mov	r6,a
	mov	a,(_RemoveFirstDigit_length_65536_73 + 1)
	addc	a,#0xff
	mov	r7,a
	mov	a,r6
	add	a,_RemoveFirstDigit_str_65536_72
	mov	r6,a
	mov	a,r7
	addc	a,(_RemoveFirstDigit_str_65536_72 + 1)
	mov	r7,a
	mov	r5,(_RemoveFirstDigit_str_65536_72 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	clr	a
	lcall	__gptrput
00103$:
	C$main.c$118$1_0$73 ==.
;	..\main.c:118: LCD_Clear();
	lcall	_LCD_Clear
	C$main.c$119$1_0$73 ==.
;	..\main.c:119: LCD_Write_String(str);
	mov	dpl,_RemoveFirstDigit_str_65536_72
	mov	dph,(_RemoveFirstDigit_str_65536_72 + 1)
	mov	b,(_RemoveFirstDigit_str_65536_72 + 2)
	lcall	_LCD_Write_String
	C$main.c$120$1_0$73 ==.
;	..\main.c:120: }
	C$main.c$120$1_0$73 ==.
	XG$RemoveFirstDigit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;result                    Allocated with name '_main_result_65537_78'
;local                     Allocated to registers r4 r5 
;check                     Allocated with name '_main_check_65537_78'
;mul                       Allocated with name '_main_mul_65537_78'
;count                     Allocated to registers 
;buffer                    Allocated with name '_main_buffer_65538_79'
;s                         Allocated with name '_main_s_65538_79'
;lengs                     Allocated with name '_main_lengs_196610_81'
;i                         Allocated with name '_main_i_589826_118'
;j                         Allocated to registers r6 r7 
;j                         Allocated to registers r6 r7 
;lengs                     Allocated with name '_main_lengs_262146_90'
;lengs                     Allocated with name '_main_lengs_327682_96'
;lengs                     Allocated with name '_main_lengs_393218_102'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$122$1_0$77 ==.
;	..\main.c:122: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$124$1_0$77 ==.
;	..\main.c:124: Beep();
	lcall	_Beep
	C$main.c$125$2_0$78 ==.
;	..\main.c:125: int result = 0;
	C$main.c$126$2_0$78 ==.
;	..\main.c:126: int local = 0;
	clr	a
	mov	_main_result_65537_78,a
	mov	(_main_result_65537_78 + 1),a
	mov	r4,a
	mov	r5,a
	C$main.c$127$2_0$78 ==.
;	..\main.c:127: int check = 1;
	mov	_main_check_65537_78,#0x01
;	1-genFromRTrack replaced	mov	(_main_check_65537_78 + 1),#0x00
	mov	(_main_check_65537_78 + 1),a
	C$main.c$128$2_0$78 ==.
;	..\main.c:128: int mul = 1;
	mov	r2,#0x01
	mov	r3,#0x00
	C$main.c$129$1_1$78 ==.
;	..\main.c:129: LCD_init();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_init
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$130$1_1$78 ==.
;	..\main.c:130: P1_4 = 0; P1_5 = 0; P1_6 = 0; P1_7 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	clr	_P1_5
;	assignBit
	clr	_P1_6
;	assignBit
	clr	_P1_7
	C$main.c$133$2_1$79 ==.
;	..\main.c:133: char s[16] ="";  // Khai báo chuỗi rỗng
	mov	_main_s_65538_79,#0x00
	mov	(_main_s_65538_79 + 0x0001),#0x00
	mov	(_main_s_65538_79 + 0x0002),#0x00
	mov	(_main_s_65538_79 + 0x0003),#0x00
	mov	(_main_s_65538_79 + 0x0004),#0x00
	mov	(_main_s_65538_79 + 0x0005),#0x00
	mov	(_main_s_65538_79 + 0x0006),#0x00
	mov	(_main_s_65538_79 + 0x0007),#0x00
	mov	(_main_s_65538_79 + 0x0008),#0x00
	mov	(_main_s_65538_79 + 0x0009),#0x00
	mov	(_main_s_65538_79 + 0x000a),#0x00
	mov	(_main_s_65538_79 + 0x000b),#0x00
	mov	(_main_s_65538_79 + 0x000c),#0x00
	mov	(_main_s_65538_79 + 0x000d),#0x00
	mov	(_main_s_65538_79 + 0x000e),#0x00
	mov	(_main_s_65538_79 + 0x000f),#0x00
	C$main.c$134$1_2$79 ==.
;	..\main.c:134: while (1) {
00189$:
	C$main.c$135$2_2$80 ==.
;	..\main.c:135: P1_4 = 0; P1_5 = 0; P1_6 = 0; P1_7 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	clr	_P1_5
;	assignBit
	clr	_P1_6
;	assignBit
	clr	_P1_7
	C$main.c$136$2_2$80 ==.
;	..\main.c:136: if (P1_1 == 0 ) {
	jnb	_P1_1,00464$
	ljmp	00186$
00464$:
	C$main.c$137$3_2$81 ==.
;	..\main.c:137: int lengs = strlen(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_strlen
	mov	_main_lengs_196610_81,dpl
	mov	(_main_lengs_196610_81 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$138$3_2$81 ==.
;	..\main.c:138: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$139$3_2$81 ==.
;	..\main.c:139: if (P1_1 == 0 ) {
	jnb	_P1_1,00465$
	ljmp	00114$
00465$:
	C$main.c$140$4_2$82 ==.
;	..\main.c:140: switch (check) {
	mov	a,#0x01
	cjne	a,_main_check_65537_78,00466$
	dec	a
	cjne	a,(_main_check_65537_78 + 1),00466$
	sjmp	00101$
00466$:
	mov	a,#0x02
	cjne	a,_main_check_65537_78,00467$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00467$
	sjmp	00102$
00467$:
	mov	a,#0x03
	cjne	a,_main_check_65537_78,00468$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00468$
	sjmp	00103$
00468$:
	mov	a,#0x04
	cjne	a,_main_check_65537_78,00469$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00469$
	sjmp	00104$
00469$:
	C$main.c$141$5_2$83 ==.
;	..\main.c:141: case 1:
	sjmp	00105$
00101$:
	C$main.c$142$5_2$83 ==.
;	..\main.c:142: result = result + local;
	mov	a,r4
	add	a,_main_result_65537_78
	mov	_main_result_65537_78,a
	mov	a,r5
	addc	a,(_main_result_65537_78 + 1)
	mov	(_main_result_65537_78 + 1),a
	C$main.c$143$5_2$83 ==.
;	..\main.c:143: break;
	C$main.c$144$5_2$83 ==.
;	..\main.c:144: case 2:
	sjmp	00105$
00102$:
	C$main.c$145$5_2$83 ==.
;	..\main.c:145: result = result - local;
	mov	a,_main_result_65537_78
	clr	c
	subb	a,r4
	mov	_main_result_65537_78,a
	mov	a,(_main_result_65537_78 + 1)
	subb	a,r5
	mov	(_main_result_65537_78 + 1),a
	C$main.c$146$5_2$83 ==.
;	..\main.c:146: break;
	C$main.c$147$5_2$83 ==.
;	..\main.c:147: case 3:
	sjmp	00105$
00103$:
	C$main.c$148$1_2$77 ==.
;	..\main.c:148: mul = mul * local;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__mulint
	mov	_main_mul_65537_78,dpl
	mov	(_main_mul_65537_78 + 1),dph
	pop	ar4
	pop	ar5
	C$main.c$149$5_2$83 ==.
;	..\main.c:149: result = result + mul;
	mov	a,_main_mul_65537_78
	add	a,_main_result_65537_78
	mov	_main_result_65537_78,a
	mov	a,(_main_mul_65537_78 + 1)
	addc	a,(_main_result_65537_78 + 1)
	mov	(_main_result_65537_78 + 1),a
	C$main.c$150$5_2$83 ==.
;	..\main.c:150: break;
	C$main.c$151$5_2$83 ==.
;	..\main.c:151: case 4:
	sjmp	00105$
00104$:
	C$main.c$152$1_2$77 ==.
;	..\main.c:152: mul = mul / local;
	mov	__divsint_PARM_2,r4
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	C$main.c$153$5_2$83 ==.
;	..\main.c:153: result = result + mul;
	mov	a,r6
	add	a,_main_result_65537_78
	mov	_main_result_65537_78,a
	mov	a,r7
	addc	a,(_main_result_65537_78 + 1)
	mov	(_main_result_65537_78 + 1),a
	C$main.c$155$4_2$82 ==.
;	..\main.c:155: }
00105$:
	C$main.c$156$4_2$82 ==.
;	..\main.c:156: LCD_Send_Command(0xC0); // Dòng thứ 2
	mov	dpl,#0xc0
	push	ar5
	push	ar4
	lcall	_LCD_Send_Command
	pop	ar4
	pop	ar5
	C$main.c$157$4_2$82 ==.
;	..\main.c:157: if (local == 0 && check == 4){
	mov	a,r4
	orl	a,r5
	jnz	00107$
	mov	a,#0x04
	cjne	a,_main_check_65537_78,00471$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00471$
	sjmp	00472$
00471$:
	sjmp	00107$
00472$:
	C$main.c$158$5_2$84 ==.
;	..\main.c:158: LCD_Write_String("Invalid");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_Write_String
	sjmp	00108$
00107$:
	C$main.c$160$5_2$85 ==.
;	..\main.c:160: sprintf(buffer, "%d", result);
	push	_main_result_65537_78
	push	(_main_result_65537_78 + 1)
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buffer_65538_79
	push	acc
	mov	a,#(_main_buffer_65538_79 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	C$main.c$11$1_2$77 ==.
;	..\main.c:11: for (int i = 0; i < time * 1e3 / 200; i++)
	clr	a
	mov	_main_i_589826_118,a
	mov	(_main_i_589826_118 + 1),a
00202$:
	clr	c
	mov	a,_main_i_589826_118
	subb	a,#0xc8
	mov	a,(_main_i_589826_118 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00194$
;	..\main.c:13: buzzer_pin = 1;
;	assignBit
	setb	_P1_5
	C$main.c$14$1_2$77 ==.
;	..\main.c:14: for (int j = 0; j < 100; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00196$:
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00191$
	inc	r6
	cjne	r6,#0x00,00196$
	inc	r7
	sjmp	00196$
00191$:
;	..\main.c:16: buzzer_pin = 0;
;	assignBit
	clr	_P1_5
	C$main.c$17$1_2$77 ==.
;	..\main.c:17: for (int j = 0; j < 100; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00199$:
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00203$
	inc	r6
	cjne	r6,#0x00,00199$
	inc	r7
	sjmp	00199$
00203$:
;	..\main.c:11: for (int i = 0; i < time * 1e3 / 200; i++)
	inc	_main_i_589826_118
	clr	a
;	..\main.c:161: buzzer();
	cjne	a,_main_i_589826_118,00202$
	inc	(_main_i_589826_118 + 1)
	sjmp	00202$
00194$:
	C$main.c$162$5_2$85 ==.
;	..\main.c:162: LCD_Write_String(buffer);
	mov	dptr,#_main_buffer_65538_79
	mov	b,#0x40
	lcall	_LCD_Write_String
00108$:
	C$main.c$164$4_2$82 ==.
;	..\main.c:164: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$165$4_2$82 ==.
;	..\main.c:165: while (P1_2 != 0);
00110$:
	jb	_P1_2,00110$
	C$main.c$166$4_2$82 ==.
;	..\main.c:166: result = 0;
	C$main.c$167$4_2$82 ==.
;	..\main.c:167: local = 0;
	clr	a
	mov	_main_result_65537_78,a
	mov	(_main_result_65537_78 + 1),a
	mov	r4,a
	mov	r5,a
	C$main.c$168$4_2$82 ==.
;	..\main.c:168: check = 1;
	mov	_main_check_65537_78,#0x01
;	1-genFromRTrack replaced	mov	(_main_check_65537_78 + 1),#0x00
	mov	(_main_check_65537_78 + 1),a
	C$main.c$169$4_2$82 ==.
;	..\main.c:169: mul = 1;
	mov	r2,#0x01
	mov	r3,#0x00
	C$main.c$170$4_2$82 ==.
;	..\main.c:170: LCD_Clear();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_Clear
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$171$4_2$82 ==.
;	..\main.c:171: s[0]='\0';
	mov	_main_s_65538_79,#0x00
00114$:
	C$main.c$173$3_2$81 ==.
;	..\main.c:173: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	clr	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$174$3_2$81 ==.
;	..\main.c:174: if (P1_1 == 0) {
	jb	_P1_1,00116$
	C$main.c$175$4_2$86 ==.
;	..\main.c:175: s[lengs] = '3';
	mov	a,_main_lengs_196610_81
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x33
	C$main.c$176$4_2$86 ==.
;	..\main.c:176: s[lengs + 1] = '\0';
	mov	a,_main_lengs_196610_81
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$177$1_2$77 ==.
;	..\main.c:177: local = local * 10 + 3;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x03
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00116$:
	C$main.c$180$3_2$81 ==.
;	..\main.c:180: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	clr	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$181$3_2$81 ==.
;	..\main.c:181: if (P1_1 == 0) {
	jb	_P1_1,00118$
	C$main.c$182$4_2$87 ==.
;	..\main.c:182: s[lengs] = '6';
	mov	a,_main_lengs_196610_81
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x36
	C$main.c$183$4_2$87 ==.
;	..\main.c:183: s[lengs + 1] = '\0';
	mov	a,_main_lengs_196610_81
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$184$1_2$77 ==.
;	..\main.c:184: local = local * 10 + 6;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x06
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00118$:
	C$main.c$187$3_2$81 ==.
;	..\main.c:187: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	clr	_P1_7
	C$main.c$188$3_2$81 ==.
;	..\main.c:188: if (P1_1 == 0) {
	jb	_P1_1,00120$
	C$main.c$189$4_2$88 ==.
;	..\main.c:189: s[lengs] = '9';
	mov	a,_main_lengs_196610_81
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x39
	C$main.c$190$4_2$88 ==.
;	..\main.c:190: s[lengs + 1] = '\0';
	mov	a,_main_lengs_196610_81
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$191$1_2$77 ==.
;	..\main.c:191: local = local * 10 + 9;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x09
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00120$:
	C$main.c$193$3_2$81 ==.
;	..\main.c:193: RemoveFirstDigit(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_RemoveFirstDigit
	C$main.c$194$3_2$81 ==.
;	..\main.c:194: Delay_ms(20);
	mov	dptr,#0x0014
	lcall	_Delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00189$
00186$:
	C$main.c$196$3_2$89 ==.
;	..\main.c:196: if (P1_2 == 0) {
	jnb	_P1_2,00483$
	ljmp	00183$
00483$:
	C$main.c$197$4_2$90 ==.
;	..\main.c:197: int lengs = strlen(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_strlen
	mov	_main_lengs_262146_90,dpl
	mov	(_main_lengs_262146_90 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$198$4_2$90 ==.
;	..\main.c:198: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$199$4_2$90 ==.
;	..\main.c:199: if (P1_2 == 0) {
	jb	_P1_2,00122$
	C$main.c$200$5_2$91 ==.
;	..\main.c:200: LCD_Clear();
	lcall	_LCD_Clear
	C$main.c$201$5_2$91 ==.
;	..\main.c:201: result = 0;
	C$main.c$202$5_2$91 ==.
;	..\main.c:202: local = 0;
	clr	a
	mov	_main_result_65537_78,a
	mov	(_main_result_65537_78 + 1),a
	mov	r4,a
	mov	r5,a
	C$main.c$203$5_2$91 ==.
;	..\main.c:203: check = 0;
	mov	_main_check_65537_78,a
	mov	(_main_check_65537_78 + 1),a
	C$main.c$204$5_2$91 ==.
;	..\main.c:204: mul = 1;
	mov	r2,#0x01
	mov	r3,#0x00
	C$main.c$205$5_2$91 ==.
;	..\main.c:205: s[0]='\0';
;	1-genFromRTrack replaced	mov	_main_s_65538_79,#0x00
	mov	_main_s_65538_79,a
00122$:
	C$main.c$208$4_2$90 ==.
;	..\main.c:208: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	clr	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$209$4_2$90 ==.
;	..\main.c:209: if (P1_2 == 0) {
	jb	_P1_2,00124$
	C$main.c$210$5_2$92 ==.
;	..\main.c:210: s[lengs] = '2';
	mov	a,_main_lengs_262146_90
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x32
	C$main.c$211$5_2$92 ==.
;	..\main.c:211: s[lengs + 1] = '\0';
	mov	a,_main_lengs_262146_90
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$212$1_2$77 ==.
;	..\main.c:212: local = local * 10 + 2;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x02
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00124$:
	C$main.c$215$4_2$90 ==.
;	..\main.c:215: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	clr	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$216$4_2$90 ==.
;	..\main.c:216: if (P1_2 == 0) {
	jb	_P1_2,00126$
	C$main.c$217$5_2$93 ==.
;	..\main.c:217: s[lengs] = '5';
	mov	a,_main_lengs_262146_90
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x35
	C$main.c$218$5_2$93 ==.
;	..\main.c:218: s[lengs + 1] = '\0';
	mov	a,_main_lengs_262146_90
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$219$1_2$77 ==.
;	..\main.c:219: local = local * 10 + 5;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x05
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00126$:
	C$main.c$222$4_2$90 ==.
;	..\main.c:222: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	clr	_P1_7
	C$main.c$223$4_2$90 ==.
;	..\main.c:223: if (P1_2 == 0) {
	jb	_P1_2,00128$
	C$main.c$224$5_2$94 ==.
;	..\main.c:224: s[lengs] = '8';
	mov	a,_main_lengs_262146_90
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x38
	C$main.c$225$5_2$94 ==.
;	..\main.c:225: s[lengs + 1] = '\0';
	mov	a,_main_lengs_262146_90
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$226$1_2$77 ==.
;	..\main.c:226: local = local * 10 + 8;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x08
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00128$:
	C$main.c$228$4_2$90 ==.
;	..\main.c:228: RemoveFirstDigit(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_RemoveFirstDigit
	C$main.c$229$4_2$90 ==.
;	..\main.c:229: Delay_ms(20);
	mov	dptr,#0x0014
	lcall	_Delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00189$
00183$:
	C$main.c$231$4_2$95 ==.
;	..\main.c:231: if (P1_3 == 0) {
	jnb	_P1_3,00488$
	ljmp	00180$
00488$:
	C$main.c$232$5_2$96 ==.
;	..\main.c:232: int lengs = strlen(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_strlen
	mov	_main_lengs_327682_96,dpl
	mov	(_main_lengs_327682_96 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$233$5_2$96 ==.
;	..\main.c:233: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$234$5_2$96 ==.
;	..\main.c:234: if (P1_3 == 0) {
	jb	_P1_3,00130$
	C$main.c$235$6_2$97 ==.
;	..\main.c:235: s[lengs] = '0';
	mov	a,_main_lengs_327682_96
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x30
	C$main.c$236$6_2$97 ==.
;	..\main.c:236: s[lengs + 1] = '\0';
	mov	a,_main_lengs_327682_96
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$237$1_2$77 ==.
;	..\main.c:237: local = local * 10;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
00130$:
	C$main.c$240$5_2$96 ==.
;	..\main.c:240: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	clr	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$241$5_2$96 ==.
;	..\main.c:241: if (P1_3 == 0) {
	jb	_P1_3,00132$
	C$main.c$242$6_2$98 ==.
;	..\main.c:242: s[lengs] = '1';
	mov	a,_main_lengs_327682_96
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x31
	C$main.c$243$6_2$98 ==.
;	..\main.c:243: s[lengs + 1] = '\0';
	mov	a,_main_lengs_327682_96
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$244$1_2$77 ==.
;	..\main.c:244: local = local * 10 + 1;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x01
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00132$:
	C$main.c$247$5_2$96 ==.
;	..\main.c:247: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	clr	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$248$5_2$96 ==.
;	..\main.c:248: if (P1_3 == 0) {
	jb	_P1_3,00134$
	C$main.c$249$6_2$99 ==.
;	..\main.c:249: s[lengs] = '4';
	mov	a,_main_lengs_327682_96
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x34
	C$main.c$250$6_2$99 ==.
;	..\main.c:250: s[lengs + 1] = '\0';
	mov	a,_main_lengs_327682_96
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$251$1_2$77 ==.
;	..\main.c:251: local = local * 10 + 4;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x04
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00134$:
	C$main.c$254$5_2$96 ==.
;	..\main.c:254: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	clr	_P1_7
	C$main.c$255$5_2$96 ==.
;	..\main.c:255: if (P1_3 == 0 ) {
	jb	_P1_3,00136$
	C$main.c$256$6_2$100 ==.
;	..\main.c:256: s[lengs] = '7';
	mov	a,_main_lengs_327682_96
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x37
	C$main.c$257$6_2$100 ==.
;	..\main.c:257: s[lengs + 1] = '\0';
	mov	a,_main_lengs_327682_96
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$258$1_2$77 ==.
;	..\main.c:258: local = local * 10 + 7;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x000a
	push	ar3
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	add	a,#0x07
	mov	r4,a
	clr	a
	addc	a,b
	mov	r5,a
00136$:
	C$main.c$260$5_2$96 ==.
;	..\main.c:260: RemoveFirstDigit(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_RemoveFirstDigit
	C$main.c$261$5_2$96 ==.
;	..\main.c:261: Delay_ms(20);
	mov	dptr,#0x0014
	lcall	_Delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00189$
00180$:
	C$main.c$263$5_2$101 ==.
;	..\main.c:263: if (P1_0 == 0 ) {
	jnb	_P1_0,00493$
	ljmp	00189$
00493$:
	C$main.c$264$6_2$102 ==.
;	..\main.c:264: int lengs = strlen(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_strlen
	mov	_main_lengs_393218_102,dpl
	mov	(_main_lengs_393218_102 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$265$6_2$102 ==.
;	..\main.c:265: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$266$6_2$102 ==.
;	..\main.c:266: if (P1_0 == 0) {
	jnb	_P1_0,00494$
	ljmp	00146$
00494$:
	C$main.c$267$7_2$103 ==.
;	..\main.c:267: s[lengs] = '+';
	mov	a,_main_lengs_393218_102
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x2b
	C$main.c$268$7_2$103 ==.
;	..\main.c:268: s[lengs + 1] = '\0';
	mov	a,_main_lengs_393218_102
	mov	r7,a
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$269$7_2$103 ==.
;	..\main.c:269: switch (check) {
	mov	a,#0x04
	cjne	a,_main_check_65537_78,00495$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00495$
	sjmp	00496$
00495$:
	sjmp	00143$
00496$:
	C$main.c$271$1_2$77 ==.
;	..\main.c:271: result = result + mul/local;
	mov	__divsint_PARM_2,r4
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,_main_result_65537_78
	mov	_main_result_65537_78,a
	mov	a,r7
	addc	a,(_main_result_65537_78 + 1)
	mov	(_main_result_65537_78 + 1),a
	C$main.c$272$8_2$104 ==.
;	..\main.c:272: if (local == 0){
	mov	a,r4
	orl	a,r5
	jnz	00144$
	C$main.c$273$9_2$105 ==.
;	..\main.c:273: LCD_Send_Command(0xC0); // Dòng thứ 2
	mov	dpl,#0xc0
	lcall	_LCD_Send_Command
	C$main.c$274$9_2$105 ==.
;	..\main.c:274: LCD_Write_String("Invalid");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_Write_String
	C$main.c$275$9_2$105 ==.
;	..\main.c:275: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$276$9_2$105 ==.
;	..\main.c:276: while (P1_2 != 0);
00138$:
	jb	_P1_2,00138$
	C$main.c$277$9_2$105 ==.
;	..\main.c:277: result = 0;
	C$main.c$278$9_2$105 ==.
;	..\main.c:278: local = 0;
	clr	a
	mov	_main_result_65537_78,a
	mov	(_main_result_65537_78 + 1),a
	mov	r4,a
	mov	r5,a
	C$main.c$281$9_2$105 ==.
;	..\main.c:281: LCD_Clear();
	push	ar5
	push	ar4
	lcall	_LCD_Clear
	pop	ar4
	pop	ar5
	C$main.c$282$9_2$105 ==.
;	..\main.c:282: s[0]='\0';
	mov	_main_s_65538_79,#0x00
	C$main.c$284$8_2$104 ==.
;	..\main.c:284: break;
	C$main.c$285$8_2$104 ==.
;	..\main.c:285: default:
	sjmp	00144$
00143$:
	C$main.c$286$1_2$77 ==.
;	..\main.c:286: result = result + mul*local;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,_main_result_65537_78
	mov	_main_result_65537_78,a
	mov	a,r7
	addc	a,(_main_result_65537_78 + 1)
	mov	(_main_result_65537_78 + 1),a
	C$main.c$287$7_2$103 ==.
;	..\main.c:287: }
00144$:
	C$main.c$288$7_2$103 ==.
;	..\main.c:288: mul = 1;
	mov	r2,#0x01
	mov	r3,#0x00
	C$main.c$289$7_2$103 ==.
;	..\main.c:289: check = 1;
;	1-genFromRTrack replaced	mov	_main_check_65537_78,#0x01
	mov	_main_check_65537_78,r2
;	1-genFromRTrack replaced	mov	(_main_check_65537_78 + 1),#0x00
	mov	(_main_check_65537_78 + 1),r3
00146$:
	C$main.c$292$6_2$102 ==.
;	..\main.c:292: P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	clr	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$293$6_2$102 ==.
;	..\main.c:293: if (P1_0 == 0 ) {
	jnb	_P1_0,00499$
	ljmp	00156$
00499$:
	C$main.c$294$7_2$106 ==.
;	..\main.c:294: s[lengs] = '-';
	mov	a,_main_lengs_393218_102
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x2d
	C$main.c$295$7_2$106 ==.
;	..\main.c:295: s[lengs + 1] = '\0';
	mov	a,_main_lengs_393218_102
	mov	r6,a
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$296$7_2$106 ==.
;	..\main.c:296: switch (check) {
	mov	a,#0x04
	cjne	a,_main_check_65537_78,00500$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00500$
	sjmp	00501$
00500$:
	sjmp	00153$
00501$:
	C$main.c$298$1_2$77 ==.
;	..\main.c:298: result = result + mul/local;
	mov	__divsint_PARM_2,r4
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,_main_result_65537_78
	mov	_main_result_65537_78,a
	mov	a,r7
	addc	a,(_main_result_65537_78 + 1)
	mov	(_main_result_65537_78 + 1),a
	C$main.c$299$8_2$107 ==.
;	..\main.c:299: if (local == 0){
	mov	a,r4
	orl	a,r5
	jnz	00154$
	C$main.c$300$9_2$108 ==.
;	..\main.c:300: LCD_Send_Command(0xC0); // Dòng thứ 2
	mov	dpl,#0xc0
	lcall	_LCD_Send_Command
	C$main.c$301$9_2$108 ==.
;	..\main.c:301: LCD_Write_String("Invalid");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_Write_String
	C$main.c$302$9_2$108 ==.
;	..\main.c:302: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$303$9_2$108 ==.
;	..\main.c:303: while (P1_2 != 0);
00148$:
	jb	_P1_2,00148$
	C$main.c$304$9_2$108 ==.
;	..\main.c:304: result = 0;
	C$main.c$305$9_2$108 ==.
;	..\main.c:305: local = 0;
	clr	a
	mov	_main_result_65537_78,a
	mov	(_main_result_65537_78 + 1),a
	mov	r4,a
	mov	r5,a
	C$main.c$308$9_2$108 ==.
;	..\main.c:308: LCD_Clear();
	push	ar5
	push	ar4
	lcall	_LCD_Clear
	pop	ar4
	pop	ar5
	C$main.c$309$9_2$108 ==.
;	..\main.c:309: s[0]='\0';
	mov	_main_s_65538_79,#0x00
	C$main.c$311$8_2$107 ==.
;	..\main.c:311: break;
	C$main.c$312$8_2$107 ==.
;	..\main.c:312: default:
	sjmp	00154$
00153$:
	C$main.c$313$1_2$77 ==.
;	..\main.c:313: result = result + mul*local;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,_main_result_65537_78
	mov	_main_result_65537_78,a
	mov	a,r7
	addc	a,(_main_result_65537_78 + 1)
	mov	(_main_result_65537_78 + 1),a
	C$main.c$314$7_2$106 ==.
;	..\main.c:314: }
00154$:
	C$main.c$315$7_2$106 ==.
;	..\main.c:315: mul = -1;
	mov	r2,#0xff
	mov	r3,#0xff
	C$main.c$316$7_2$106 ==.
;	..\main.c:316: check = 2;
	mov	_main_check_65537_78,#0x02
	mov	(_main_check_65537_78 + 1),#0x00
00156$:
	C$main.c$319$6_2$102 ==.
;	..\main.c:319: P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	clr	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$320$6_2$102 ==.
;	..\main.c:320: if (P1_0 == 0 ) {
	jnb	_P1_0,00504$
	ljmp	00166$
00504$:
	C$main.c$321$7_2$109 ==.
;	..\main.c:321: s[lengs] = '*';
	mov	a,_main_lengs_393218_102
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x2a
	C$main.c$322$7_2$109 ==.
;	..\main.c:322: s[lengs + 1] = '\0';
	mov	a,_main_lengs_393218_102
	mov	r6,a
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$323$7_2$109 ==.
;	..\main.c:323: switch (check) {
	mov	a,#0x04
	cjne	a,_main_check_65537_78,00505$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00505$
	sjmp	00506$
00505$:
	sjmp	00163$
00506$:
	C$main.c$325$1_2$77 ==.
;	..\main.c:325: mul = mul/local;
	mov	__divsint_PARM_2,r4
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	C$main.c$326$8_2$110 ==.
;	..\main.c:326: if (local == 0){
	mov	a,r4
	orl	a,r5
	jnz	00164$
	C$main.c$327$9_2$111 ==.
;	..\main.c:327: LCD_Send_Command(0xC0); // Dòng thứ 2
	mov	dpl,#0xc0
	lcall	_LCD_Send_Command
	C$main.c$328$9_2$111 ==.
;	..\main.c:328: LCD_Write_String("Invalid");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_Write_String
	C$main.c$329$9_2$111 ==.
;	..\main.c:329: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$330$9_2$111 ==.
;	..\main.c:330: while (P1_2 != 0);
00158$:
	jb	_P1_2,00158$
	C$main.c$331$9_2$111 ==.
;	..\main.c:331: result = 0;
	C$main.c$332$9_2$111 ==.
;	..\main.c:332: local = 0;
	clr	a
	mov	_main_result_65537_78,a
	mov	(_main_result_65537_78 + 1),a
	mov	r4,a
	mov	r5,a
	C$main.c$334$9_2$111 ==.
;	..\main.c:334: mul = 1;
	mov	r2,#0x01
	mov	r3,#0x00
	C$main.c$335$9_2$111 ==.
;	..\main.c:335: LCD_Clear();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_LCD_Clear
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$336$9_2$111 ==.
;	..\main.c:336: s[0]='\0';
	mov	_main_s_65538_79,#0x00
	C$main.c$338$8_2$110 ==.
;	..\main.c:338: break;
	C$main.c$339$8_2$110 ==.
;	..\main.c:339: default:
	sjmp	00164$
00163$:
	C$main.c$340$1_2$77 ==.
;	..\main.c:340: mul = mul*local;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	C$main.c$341$7_2$109 ==.
;	..\main.c:341: }
00164$:
	C$main.c$342$7_2$109 ==.
;	..\main.c:342: check = 3;
	mov	_main_check_65537_78,#0x03
	mov	(_main_check_65537_78 + 1),#0x00
00166$:
	C$main.c$345$6_2$102 ==.
;	..\main.c:345: P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
;	assignBit
	setb	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	clr	_P1_7
	C$main.c$346$6_2$102 ==.
;	..\main.c:346: if (P1_0 == 0) {
	jnb	_P1_0,00509$
	ljmp	00176$
00509$:
	C$main.c$347$7_2$112 ==.
;	..\main.c:347: s[lengs] = '/';
	mov	a,_main_lengs_393218_102
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x2f
	C$main.c$348$7_2$112 ==.
;	..\main.c:348: s[lengs + 1] = '\0';
	mov	a,_main_lengs_393218_102
	mov	r6,a
	inc	a
	add	a,#_main_s_65538_79
	mov	r0,a
	mov	@r0,#0x00
	C$main.c$349$7_2$112 ==.
;	..\main.c:349: switch (check) {
	mov	a,#0x04
	cjne	a,_main_check_65537_78,00510$
	clr	a
	cjne	a,(_main_check_65537_78 + 1),00510$
	sjmp	00511$
00510$:
	sjmp	00173$
00511$:
	C$main.c$351$1_2$77 ==.
;	..\main.c:351: mul = mul/local;
	mov	__divsint_PARM_2,r4
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	C$main.c$352$8_2$113 ==.
;	..\main.c:352: if (local == 0){
	mov	a,r4
	orl	a,r5
	jnz	00174$
	C$main.c$353$9_2$114 ==.
;	..\main.c:353: LCD_Send_Command(0xC0); // Dòng thứ 2
	mov	dpl,#0xc0
	lcall	_LCD_Send_Command
	C$main.c$354$9_2$114 ==.
;	..\main.c:354: LCD_Write_String("Invalid");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_Write_String
	C$main.c$355$9_2$114 ==.
;	..\main.c:355: P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
;	assignBit
	clr	_P1_4
;	assignBit
	setb	_P1_5
;	assignBit
	setb	_P1_6
;	assignBit
	setb	_P1_7
	C$main.c$356$9_2$114 ==.
;	..\main.c:356: while (P1_2 != 0);
00168$:
	jb	_P1_2,00168$
	C$main.c$357$9_2$114 ==.
;	..\main.c:357: result = 0;
	clr	a
	mov	_main_result_65537_78,a
	mov	(_main_result_65537_78 + 1),a
	C$main.c$360$9_2$114 ==.
;	..\main.c:360: mul = 1;
	mov	r2,#0x01
	mov	r3,#0x00
	C$main.c$361$9_2$114 ==.
;	..\main.c:361: LCD_Clear();
	push	ar3
	push	ar2
	lcall	_LCD_Clear
	pop	ar2
	pop	ar3
	C$main.c$362$9_2$114 ==.
;	..\main.c:362: s[0]='\0';
	mov	_main_s_65538_79,#0x00
	C$main.c$364$8_2$113 ==.
;	..\main.c:364: break;
	C$main.c$365$8_2$113 ==.
;	..\main.c:365: default:
	sjmp	00174$
00173$:
	C$main.c$366$1_2$77 ==.
;	..\main.c:366: mul = mul*local;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	C$main.c$367$7_2$112 ==.
;	..\main.c:367: }
00174$:
	C$main.c$368$7_2$112 ==.
;	..\main.c:368: check = 4;
	mov	_main_check_65537_78,#0x04
	mov	(_main_check_65537_78 + 1),#0x00
00176$:
	C$main.c$370$6_2$102 ==.
;	..\main.c:370: local = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	C$main.c$371$6_2$102 ==.
;	..\main.c:371: RemoveFirstDigit(s);
	mov	dptr,#_main_s_65538_79
	mov	b,#0x40
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_RemoveFirstDigit
	C$main.c$372$6_2$102 ==.
;	..\main.c:372: Delay_ms(20);
	mov	dptr,#0x0014
	lcall	_Delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00189$
	C$main.c$378$1_2$77 ==.
;	..\main.c:378: }
	C$main.c$378$1_2$77 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_1$0_0$0 == .
	.area CONST   (CODE)
___str_1:
	.ascii "Invalid"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.ascii "%d"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
