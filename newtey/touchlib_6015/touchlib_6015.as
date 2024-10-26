opt subtitle "GNU C Code Generator                                                 "

opt pagewidth 120

	opt pm

	processor	FT62F28X
opt include "D:\Compiler\data\include\ft62f28x.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 348 "touch_test.c"
M01 EQU 0x68+1 ;# 
# 349 "touch_test.c"
M02 EQU 0x68+2 ;# 
# 352 "touch_test.c"
M11 EQU 0x68+5 ;# 
# 353 "touch_test.c"
M12 EQU 0x68+6 ;# 
# 355 "touch_test.c"
SUML EQU 0x68+3 ;# 
# 356 "touch_test.c"
SUMM EQU 0x68+4 ;# 
# 359 "touch_test.c"
COUNT EQU 0x68 ;# 
	FNCALL	_main,_Initialize_Communication
	FNCALL	_main,_SYS_INITIAL
	FNCALL	_main,_SleepProcess_Virtual
	FNCALL	_main,_TSC_DataProcessing
	FNCALL	_main,_TSC_GetCsKey
	FNCALL	_main,_TSC_GetLocalKey
	FNCALL	_main,_TSC_INITIAL
	FNCALL	_main,_TSC_Start_Debug
	FNCALL	_main,_WDT_INITIAL
	FNCALL	_TSC_Start_Debug,_ConmunicateToPc
	FNCALL	_TSC_Start_Debug,_TSC_Start_Test
	FNCALL	_TSC_Start_Test,_DIV
	FNCALL	_TSC_Start_Test,_GetKeyData
	FNCALL	_TSC_Start_Test,_GetLocalCount
	FNCALL	_TSC_Start_Test,_SavKeyData
	FNCALL	_TSC_Start_Test,_TestReadCap
	FNCALL	_GetKeyData,_GetAddress
	FNCALL	_ConmunicateToPc,_ReceiveDataPc
	FNCALL	_ConmunicateToPc,_SendDataToPC
	FNCALL	_ConmunicateToPc,_TSC_GetPrevData
	FNCALL	_TSC_GetPrevData,_GetKeyVal
	FNCALL	_SendDataToPC,_uart_tx
	FNCALL	_uart_tx,_uart_delay
	FNCALL	_ReceiveDataPc,_uart_rx
	FNCALL	_TSC_INITIAL,_ClearKeyBuff
	FNCALL	_TSC_INITIAL,_ReadCap
	FNCALL	_TSC_INITIAL,_SavKeyData
	FNCALL	_SavKeyData,_GetAddress
	FNCALL	_ReadCap,_SetTouchFreq
	FNCALL	_TSC_GetLocalKey,_GetKeyVal
	FNCALL	_GetKeyVal,_GetAddress
	FNCALL	_SYS_INITIAL,_DelayMs
	FNCALL	_DelayMs,_DelayUs
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_stTouchIoMapArray
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"touch_test.c"
	line	150
_stTouchIoMapArray:
	retlw	085h
	retlw	01h
	retlw	085h
	retlw	02h
	retlw	085h
	retlw	04h
	retlw	085h
	retlw	08h
	retlw	085h
	retlw	010h
	retlw	085h
	retlw	020h
	retlw	085h
	retlw	040h
	retlw	085h
	retlw	080h
	retlw	088h
	retlw	01h
	retlw	088h
	retlw	02h
	retlw	086h
	retlw	01h
	retlw	086h
	retlw	02h
	retlw	086h
	retlw	04h
	retlw	086h
	retlw	08h
	retlw	087h
	retlw	080h
	retlw	087h
	retlw	040h
	retlw	087h
	retlw	020h
	retlw	087h
	retlw	010h
	retlw	087h
	retlw	08h
	retlw	088h
	retlw	08h
	retlw	087h
	retlw	04h
	retlw	087h
	retlw	02h
	retlw	087h
	retlw	01h
	retlw	086h
	retlw	080h
	retlw	086h
	retlw	040h
	retlw	086h
	retlw	020h
	retlw	086h
	retlw	010h
	retlw	088h
	retlw	010h
	global __end_of_stTouchIoMapArray
__end_of_stTouchIoMapArray:
	global	_ucKeyIndexMapArray
psect	strings
	file	"touch.h"
	line	188
_ucKeyIndexMapArray:
	retlw	019h
	global __end_of_ucKeyIndexMapArray
__end_of_ucKeyIndexMapArray:
psect	strings
	file	"touch.h"
	line	213
_ucFREQ_CHARGER_H:
	retlw	02h
	global __end_of_ucFREQ_CHARGER_H
__end_of_ucFREQ_CHARGER_H:
psect	strings
	file	"touch.h"
	line	210
_ucKEY_NUMBER_MAX:
	retlw	01h
	global __end_of_ucKEY_NUMBER_MAX
__end_of_ucKEY_NUMBER_MAX:
	global	_stTouchIoMapArray
	global	_ucKeyIndexMapArray
	global	_uiRX_t
	global	_TX_Flag
	global	_tscdata
	global	_uiGroupArray
	global	_uiTemp3
	global	_uiTemp2
	global	_uiTemp1
	global	_uiDefaultSysclk
	global	_ucSEND_GAP
	global	_ucKeyPollingOk
	global	_ucTKeyOutStrongest
	global	_ucKeyPollingCount
	global	_ucTempMaxChangeKey
	global	_ucChangeValue
	global	_ucFreqChargeCount
	global	_ucFreqIndex
	global	_ucSweepKeyNum
	global	_data
	global	__ucLPGapCnt
	global	__ucSendGapCnt
	global	_ucPackNum
	global	_ucMULTIPLE
	global	_ucInActiveSensorDeltaArray
	global	_ucActiveSensorDeltaArray
	global	_temp
	global	_UART_TX_Buff
	global	_ucTempIndex
	global	_ucTempCount
	global	_ucKeyMapNumber
	global	_TransferData
	DABS	1,115,1,_TransferData

	global	_ResultData2H
	DABS	1,115,1,_ResultData2H

	global	_ResultData2L
	DABS	1,114,1,_ResultData2L

	global	_ResultDataH
	DABS	1,108,1,_ResultDataH

	global	_ResultDataL
	DABS	1,107,1,_ResultDataL

	global	_ReferenceDataH
	DABS	1,110,1,_ReferenceDataH

	global	_ReferenceDataL
	DABS	1,109,1,_ReferenceDataL

	global	_ucSetIndex
	DABS	1,111,1,_ucSetIndex

	global	_ucTKFlag
	DABS	1,32,1,_ucTKFlag

	global	_bIEBackupsFlag
	DABS	1,263,0,_bIEBackupsFlag
	DABS	1,32,1	;_bIEBackupsFlag

	global	_bSleepUpdataFlag
	DABS	1,262,0,_bSleepUpdataFlag
	DABS	1,32,1	;_bSleepUpdataFlag

	global	_bSleepEnable
	DABS	1,261,0,_bSleepEnable
	DABS	1,32,1	;_bSleepEnable

	global	_bSleepMode
	DABS	1,260,0,_bSleepMode
	DABS	1,32,1	;_bSleepMode

	global	_bTestScanSetFlag
	DABS	1,259,0,_bTestScanSetFlag
	DABS	1,32,1	;_bTestScanSetFlag

	global	_bResonanceFlag
	DABS	1,257,0,_bResonanceFlag
	DABS	1,32,1	;_bResonanceFlag

	global	_bNoUpdataFlg
	DABS	1,256,0,_bNoUpdataFlg
	DABS	1,32,1	;_bNoUpdataFlg

	global	_ResultData2
	DABS	1,114,2,_ResultData2

	global	_OriginalData
	DABS	1,105,2,_OriginalData

	global	_coffset
	DABS	1,106,1,_coffset

	global	_cidx
	DABS	1,33,1,_cidx

	global	_bTestSleepFlag
	DABS	1,258,0,_bTestSleepFlag
	DABS	1,32,1	;_bTestSleepFlag

	global	_unTKData
	DABS	1,96,8,_unTKData

	global	_LVDCON
_LVDCON	set	26
	global	_INTCON
_INTCON	set	11
	global	_PORTD
_PORTD	set	8
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_FSR
_FSR	set	4
	global	_STATUS
_STATUS	set	3
	global	_TMR0
_TMR0	set	1
	global	_INDF
_INDF	set	0
	global	_LVDIF
_LVDIF	set	101
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_PB7
_PB7	set	55
	global	_PB6
_PB6	set	54
	global	_WPUD
_WPUD	set	151
	global	_WPUC
_WPUC	set	150
	global	_WPUB
_WPUB	set	149
	global	_WPUA
_WPUA	set	148
	global	_WPDD
_WPDD	set	147
	global	_WPDC
_WPDC	set	146
	global	_WPDB
_WPDB	set	145
	global	_WPDA
_WPDA	set	144
	global	_WDTCON
_WDTCON	set	153
	global	_UR1STAT
_UR1STAT	set	149
	global	_UR1BRRL
_UR1BRRL	set	148
	global	_UR1CR2
_UR1CR2	set	147
	global	_UR1CR1
_UR1CR1	set	146
	global	_UR1DATH
_UR1DATH	set	145
	global	_UR1DATL
_UR1DATL	set	144
	global	_OSCCON
_OSCCON	set	143
	global	_PCON
_PCON	set	142
	global	_TRISD
_TRISD	set	136
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION
_OPTION	set	129
	global	_LVDIE
_LVDIE	set	1125
	global	_FOSCCALH
_FOSCCALH	set	265
	global	_ANSEL1
_ANSEL1	set	287
	global	_TKEN1
_TKEN1	set	285
	global	_TKEN0
_TKEN0	set	284
	global	_TKCON0
_TKCON0	set	283
	global	_TMR1H
_TMR1H	set	282
	global	_TMR1L
_TMR1L	set	281
	global	_PR1H
_PR1H	set	280
	global	_PR1L
_PR1L	set	279
	global	_MSCON2
_MSCON2	set	269
	global	_FOSCCALL
_FOSCCALL	set	265
	global	_T0DUTY
_T0DUTY	set	264
	global	_PR0
_PR0	set	263
	global	_T1CON0
_T1CON0	set	262
	global	_T0CON0
_T0CON0	set	261
	global	_MSCON1
_MSCON1	set	257
	global	_T1ON
_T1ON	set	2098
	global	_T0ON
_T0ON	set	2091
	global	_AUXPGE
_AUXPGE	set	2057
	global	_UR0STAT
_UR0STAT	set	415
	global	_I2CISR
_I2CISR	set	414
	global	_TKEN3
_TKEN3	set	413
	global	_TKEN2
_TKEN2	set	412
	global	_I2CDAT
_I2CDAT	set	410
	global	_I2CCCR
_I2CCCR	set	409
	global	_I2CADDR
_I2CADDR	set	408
	global	_I2CCR2
_I2CCR2	set	407
	global	_I2CCR1
_I2CCR1	set	406
	global	_SPISTAT
_SPISTAT	set	405
	global	_SPICR1
_SPICR1	set	404
	global	_SPIIER
_SPIIER	set	403
	global	_SPITXCRC
_SPITXCRC	set	402
	global	_SPIRXCRC
_SPIRXCRC	set	401
	global	_SPICRCP
_SPICRCP	set	400
	global	_SPISCR
_SPISCR	set	399
	global	_SPICFG
_SPICFG	set	398
	global	_SPICR0
_SPICR0	set	397
	global	_SPIDAT
_SPIDAT	set	396
	global	_UR0BRRL
_UR0BRRL	set	393
	global	_UR0CR2
_UR0CR2	set	392
	global	_UR0CR1
_UR0CR1	set	391
	global	_UR0DATH
_UR0DATH	set	390
	global	_UR0DATL
_UR0DATL	set	389
	global	_ResultData
	DABS	1,107,2,_ResultData

	global	_ReferenceData
	DABS	1,109,2,_ReferenceData

; #config settings
	file	"touchlib_6015.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMONl,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMONl
__pbitbssCOMMONl:
_TX_Flag:
       ds      1

psect	bssCOMMONh,class=COMMON,space=1,noexec
global __pbssCOMMONh
__pbssCOMMONh:
_ucTempIndex:
       ds      1

_ucTempCount:
       ds      1

_ucKeyMapNumber:
       ds      1

psect	bssCOMMONl,class=COMMON,space=1,noexec
global __pbssCOMMONl
__pbssCOMMONl:
_uiRX_t:
       ds      1

psect	bssBANK0ll,class=BANK0,space=1,noexec
global __pbssBANK0ll
__pbssBANK0ll:
_tscdata:
       ds      16

_uiGroupArray:
       ds      8

_uiTemp3:
       ds      2

_uiTemp2:
       ds      2

_uiTemp1:
       ds      2

_uiDefaultSysclk:
       ds      2

_ucSEND_GAP:
       ds      1

_ucKeyPollingOk:
       ds      1

_ucTKeyOutStrongest:
       ds      1

_ucKeyPollingCount:
       ds      1

_ucTempMaxChangeKey:
       ds      1

_ucChangeValue:
       ds      1

_ucFreqChargeCount:
       ds      1

_ucFreqIndex:
       ds      1

_ucSweepKeyNum:
       ds      1

_data:
       ds      1

__ucLPGapCnt:
       ds      1

__ucSendGapCnt:
       ds      1

_ucPackNum:
       ds      1

_ucMULTIPLE:
       ds      1

_ucInActiveSensorDeltaArray:
       ds      1

_ucActiveSensorDeltaArray:
       ds      1

_temp:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_UART_TX_Buff:
       ds      21

	file	"touchlib_6015.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BITCOMMONl
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMONl/8)+0)&07Fh
; Clear objects allocated to COMMONh
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMONh)+0)&07Fh
	clrf	((__pbssCOMMONh)+1)&07Fh
	clrf	((__pbssCOMMONh)+2)&07Fh
; Clear objects allocated to COMMONl
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMONl)+0)&07Fh
; Clear objects allocated to BANK0ll
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0ll)
	movwf	fsr
	movlw	low((__pbssBANK0ll)+031h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+015h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMONh,class=COMMON,space=1,noexec
global __pcstackCOMMONh
__pcstackCOMMONh:
?_DelayMs:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
?_Initialize_Communication:	; 1 bytes @ 0x0
?_SYS_INITIAL:	; 1 bytes @ 0x0
?_WDT_INITIAL:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_uart_delay:	; 1 bytes @ 0x0
?_uart_rx:	; 1 bytes @ 0x0
?_ReceiveDataPc:	; 1 bytes @ 0x0
?_SendDataToPC:	; 1 bytes @ 0x0
?_DIV:	; 1 bytes @ 0x0
?_SetTouchFreq:	; 1 bytes @ 0x0
?_ReadCap:	; 1 bytes @ 0x0
?_GetLocalCount:	; 1 bytes @ 0x0
?_TestReadCap:	; 1 bytes @ 0x0
	ds	2
??_TSC_DataProcessing:	; 1 bytes @ 0x2
??_TSC_GetCsKey:	; 1 bytes @ 0x2
??_SleepProcess_Virtual:	; 1 bytes @ 0x2
??_uart_tx:	; 1 bytes @ 0x2
??_ClearKeyBuff:	; 1 bytes @ 0x2
??_SavKeyData:	; 1 bytes @ 0x2
??_GetKeyVal:	; 1 bytes @ 0x2
??_GetKeyData:	; 1 bytes @ 0x2
??_GetAddress:	; 1 bytes @ 0x2
?_DelayUs:	; 1 bytes @ 0x2
??_Initialize_Communication:	; 1 bytes @ 0x2
??_WDT_INITIAL:	; 1 bytes @ 0x2
??_uart_delay:	; 1 bytes @ 0x2
??_uart_rx:	; 1 bytes @ 0x2
??_ReceiveDataPc:	; 1 bytes @ 0x2
??_DIV:	; 1 bytes @ 0x2
??_SetTouchFreq:	; 1 bytes @ 0x2
??_ReadCap:	; 1 bytes @ 0x2
??_GetLocalCount:	; 1 bytes @ 0x2
??_TestReadCap:	; 1 bytes @ 0x2
	global	?_TSC_GetPrevData
?_TSC_GetPrevData:	; 2 bytes @ 0x2
	global	uart_tx@data
uart_tx@data:	; 1 bytes @ 0x2
	global	ReceiveDataPc@i
ReceiveDataPc@i:	; 1 bytes @ 0x2
	global	DelayUs@Time
DelayUs@Time:	; 2 bytes @ 0x2
	ds	1
??_SendDataToPC:	; 1 bytes @ 0x3
	global	SendDataToPC@size
SendDataToPC@size:	; 1 bytes @ 0x3
	ds	1
??_DelayUs:	; 1 bytes @ 0x4
??_DelayMs:	; 1 bytes @ 0x4
??_SYS_INITIAL:	; 1 bytes @ 0x4
	global	SendDataToPC@i
SendDataToPC@i:	; 1 bytes @ 0x4
	ds	1
??_TSC_Start_Debug:	; 1 bytes @ 0x5
??_TSC_GetPrevData:	; 1 bytes @ 0x5
??_main:	; 1 bytes @ 0x5
psect	cstackCOMMONl,class=COMMON,space=1,noexec
global __pcstackCOMMONl
__pcstackCOMMONl:
?_TSC_INITIAL:	; 1 bytes @ 0x0
?_TSC_Start_Debug:	; 1 bytes @ 0x0
?_TSC_DataProcessing:	; 1 bytes @ 0x0
?_TSC_GetCsKey:	; 1 bytes @ 0x0
?_SleepProcess_Virtual:	; 1 bytes @ 0x0
?_TSC_Start_Test:	; 1 bytes @ 0x0
?_ConmunicateToPc:	; 1 bytes @ 0x0
?_uart_tx:	; 1 bytes @ 0x0
?_ClearKeyBuff:	; 1 bytes @ 0x0
?_SavKeyData:	; 1 bytes @ 0x0
?_GetKeyVal:	; 1 bytes @ 0x0
?_GetKeyData:	; 1 bytes @ 0x0
?_GetAddress:	; 1 bytes @ 0x0
psect	cstackBANK0lh,class=BANK0,space=1,noexec
global __pcstackBANK0lh
__pcstackBANK0lh:
	global	TSC_GetPrevData@KeyNum
TSC_GetPrevData@KeyNum:	; 1 bytes @ 0x0
	ds	1
psect	cstackBANK0ll,class=BANK0,space=1,noexec
global __pcstackBANK0ll
__pcstackBANK0ll:
??_ConmunicateToPc:	; 1 bytes @ 0x0
	global	?_TSC_GetLocalKey
?_TSC_GetLocalKey:	; 4 bytes @ 0x0
	global	DelayUs@a
DelayUs@a:	; 2 bytes @ 0x0
	global	ReadCap@channel
ReadCap@channel:	; 2 bytes @ 0x0
	global	TestReadCap@channel
TestReadCap@channel:	; 2 bytes @ 0x0
	ds	2
??_TSC_INITIAL:	; 1 bytes @ 0x2
??_TSC_Start_Test:	; 1 bytes @ 0x2
	global	DelayMs@Time
DelayMs@Time:	; 1 bytes @ 0x2
	ds	1
	global	DelayMs@a
DelayMs@a:	; 1 bytes @ 0x3
	ds	1
??_TSC_GetLocalKey:	; 1 bytes @ 0x4
	global	DelayMs@b
DelayMs@b:	; 1 bytes @ 0x4
	ds	2
	global	ConmunicateToPc@ucTemp
ConmunicateToPc@ucTemp:	; 1 bytes @ 0x6
	ds	1
	global	ConmunicateToPc@uiTemp
ConmunicateToPc@uiTemp:	; 2 bytes @ 0x7
	ds	1
	global	TSC_GetLocalKey@ulTKeyOutSingle
TSC_GetLocalKey@ulTKeyOutSingle:	; 4 bytes @ 0x8
	ds	1
	global	ConmunicateToPc@ucTempLength
ConmunicateToPc@ucTempLength:	; 1 bytes @ 0x9
	ds	1
	global	ConmunicateToPc@temp_xor
ConmunicateToPc@temp_xor:	; 1 bytes @ 0xA
	ds	1
	global	ConmunicateToPc@ucTempPackNum
ConmunicateToPc@ucTempPackNum:	; 1 bytes @ 0xB
	ds	1
	global	ConmunicateToPc@i
ConmunicateToPc@i:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    59
;!    Data        0
;!    BSS         74
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMONh          10      5       8
;!    COMMONl           2      0       2
;!    BANK0lh           1      1       1
;!    BANK0ll          62     13      62
;!    BANK3            80      0       0
;!    BANK1            80      0      21
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMONh
;!
;!    _TSC_Start_Test->_TestReadCap
;!    _ConmunicateToPc->_SendDataToPC
;!    _ConmunicateToPc->_TSC_GetPrevData
;!    _SendDataToPC->_uart_tx
;!    _TSC_INITIAL->_ReadCap
;!    _DelayMs->_DelayUs
;!
;!Critical Paths under _ISR in COMMONh
;!
;!    None.
;!
;!Critical Paths under _main in COMMONl
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMONl
;!
;!    None.
;!
;!Critical Paths under _main in BANK0lh
;!
;!    _ConmunicateToPc->_TSC_GetPrevData
;!
;!Critical Paths under _ISR in BANK0lh
;!
;!    None.
;!
;!Critical Paths under _main in BANK0ll
;!
;!    _TSC_Start_Debug->_ConmunicateToPc
;!    _TSC_Start_Test->_TestReadCap
;!    _TSC_INITIAL->_ReadCap
;!    _SYS_INITIAL->_DelayMs
;!    _DelayMs->_DelayUs
;!
;!Critical Paths under _ISR in BANK0ll
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    2180
;!           _Initialize_Communication
;!                        _SYS_INITIAL
;!               _SleepProcess_Virtual
;!                 _TSC_DataProcessing
;!                       _TSC_GetCsKey
;!                    _TSC_GetLocalKey
;!                        _TSC_INITIAL
;!                    _TSC_Start_Debug
;!                        _WDT_INITIAL
;! ---------------------------------------------------------------------------------
;! (1) _WDT_INITIAL                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TSC_Start_Debug                                      0     0      0    1710
;!                    _ConmunicateToPc
;!                     _TSC_Start_Test
;! ---------------------------------------------------------------------------------
;! (2) _TSC_Start_Test                                       4     4      0     142
;!                                              2 BANK0ll    4     4      0
;!                                _DIV
;!                         _GetKeyData
;!                      _GetLocalCount
;!                         _SavKeyData
;!                        _TestReadCap
;! ---------------------------------------------------------------------------------
;! (4) _TestReadCap                                          5     5      0     142
;!                                              2 COMMONh    3     3      0
;!                                              0 BANK0ll    2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _GetLocalCount                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _GetKeyData                                           0     0      0       0
;!                         _GetAddress
;! ---------------------------------------------------------------------------------
;! (3) _DIV                                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ConmunicateToPc                                     13    13      0    1568
;!                                              0 BANK0ll   13    13      0
;!                      _ReceiveDataPc
;!                       _SendDataToPC
;!                    _TSC_GetPrevData
;! ---------------------------------------------------------------------------------
;! (3) _TSC_GetPrevData                                      4     1      3      62
;!                                              2 COMMONh    3     0      3
;!                                              0 BANK0lh    1     1      0
;!                          _GetKeyVal
;! ---------------------------------------------------------------------------------
;! (3) _SendDataToPC                                         2     2      0     244
;!                                              3 COMMONh    2     2      0
;!                            _uart_tx
;! ---------------------------------------------------------------------------------
;! (4) _uart_tx                                              1     1      0     176
;!                                              2 COMMONh    1     1      0
;!                         _uart_delay
;! ---------------------------------------------------------------------------------
;! (5) _uart_delay                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _ReceiveDataPc                                        1     1      0      68
;!                                              2 COMMONh    1     1      0
;!                            _uart_rx
;! ---------------------------------------------------------------------------------
;! (4) _uart_rx                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TSC_INITIAL                                          3     3      0     139
;!                                              2 BANK0ll    3     3      0
;!                       _ClearKeyBuff
;!                            _ReadCap
;!                         _SavKeyData
;! ---------------------------------------------------------------------------------
;! (3) _SavKeyData                                           0     0      0       0
;!                         _GetAddress
;! ---------------------------------------------------------------------------------
;! (2) _ReadCap                                              5     5      0     139
;!                                              2 COMMONh    3     3      0
;!                                              0 BANK0ll    2     2      0
;!                       _SetTouchFreq
;! ---------------------------------------------------------------------------------
;! (3) _SetTouchFreq                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ClearKeyBuff                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TSC_GetLocalKey                                     12     8      4      37
;!                                              0 BANK0ll   12     8      4
;!                          _GetKeyVal
;! ---------------------------------------------------------------------------------
;! (4) _GetKeyVal                                            0     0      0       0
;!                         _GetAddress
;! ---------------------------------------------------------------------------------
;! (4) _GetAddress                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TSC_GetCsKey                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TSC_DataProcessing                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SleepProcess_Virtual                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SYS_INITIAL                                          0     0      0     294
;!                            _DelayMs
;! ---------------------------------------------------------------------------------
;! (2) _DelayMs                                              3     3      0     294
;!                                              2 BANK0ll    3     3      0
;!                            _DelayUs
;! ---------------------------------------------------------------------------------
;! (3) _DelayUs                                              4     2      2     158
;!                                              2 COMMONh    2     0      2
;!                                              0 BANK0ll    2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Initialize_Communication                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _ISR                                                  2     2      0       0
;!                                              0 COMMONh    2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Initialize_Communication
;!   _SYS_INITIAL
;!     _DelayMs
;!       _DelayUs
;!   _SleepProcess_Virtual
;!   _TSC_DataProcessing
;!   _TSC_GetCsKey
;!   _TSC_GetLocalKey
;!     _GetKeyVal
;!       _GetAddress
;!   _TSC_INITIAL
;!     _ClearKeyBuff
;!     _ReadCap
;!       _SetTouchFreq
;!     _SavKeyData
;!       _GetAddress
;!   _TSC_Start_Debug
;!     _ConmunicateToPc
;!       _ReceiveDataPc
;!         _uart_rx
;!       _SendDataToPC
;!         _uart_tx
;!           _uart_delay
;!       _TSC_GetPrevData
;!         _GetKeyVal
;!           _GetAddress
;!     _TSC_Start_Test
;!       _DIV
;!       _GetKeyData
;!         _GetAddress
;!       _GetLocalCount
;!       _SavKeyData
;!         _GetAddress
;!       _TestReadCap
;!   _WDT_INITIAL
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMONh           A      0       0       0        0.0%
;!EEDATA              70      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMONl           2      0       1       1       50.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMONh              A      5       8       2       80.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!COMMONl              2      0       2       3      100.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!STACK                0      0       0       4        0.0%
;!BITBANK0lh           1      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK0ll          3E      0       0       6        0.0%
;!BANK0lh              1      1       1       7      100.0%
;!BANK0ll             3E      D      3E       8      100.0%
;!BANK3               50      0       0       9        0.0%
;!ABS                  0      0      5E      10        0.0%
;!BITBANK1            50      0       0      11        0.0%
;!BANK1               50      0      15      12       26.3%
;!BITBANK3            50      0       0      13        0.0%
;!BITBANK2            50      0       0      14        0.0%
;!BANK2               50      0       0      15        0.0%
;!DATA                 0      0      5E      16        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 249 in file "main.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Initialize_Communication
;;		_SYS_INITIAL
;;		_SleepProcess_Virtual
;;		_TSC_DataProcessing
;;		_TSC_GetCsKey
;;		_TSC_GetLocalKey
;;		_TSC_INITIAL
;;		_TSC_Start_Debug
;;		_WDT_INITIAL
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.C"
	line	249
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.C"
	line	249
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	252
	
l10782:	
;main.C: 251: unsigned char i;
;main.C: 252: Initialize_Communication();
	fcall	_Initialize_Communication
	line	253
	
l10784:	
;main.C: 253: SYS_INITIAL();
	fcall	_SYS_INITIAL
	line	256
	
l10786:	
;main.C: 256: TSC_INITIAL();
	fcall	_TSC_INITIAL
	line	258
	
l10788:	
;main.C: 258: WDT_INITIAL();
	fcall	_WDT_INITIAL
	line	260
	
l10790:	
;main.C: 260: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	261
	
l10792:	
;main.C: 261: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	264
;main.C: 264: while(1)
	
l1983:	
	line	267
# 267 "main.C"
clrwdt ;# 
psect	maintext
	line	269
	
l10794:	
;main.C: 269: TSC_Start_Debug();
	fcall	_TSC_Start_Debug
	line	270
	
l10796:	
;main.C: 270: if(TSC_DataProcessing()== 1)
	fcall	_TSC_DataProcessing
	xorlw	01h
	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l1983
u2200:
	line	272
	
l10798:	
;main.C: 271: {
;main.C: 272: strongest = TSC_GetCsKey();
	fcall	_TSC_GetCsKey
	line	273
;main.C: 273: single = TSC_GetLocalKey();
	fcall	_TSC_GetLocalKey
	line	274
	
l10800:	
;main.C: 274: SleepProcess_Virtual();
	fcall	_SleepProcess_Virtual
	goto	l1983
	global	start
	ljmp	start
	opt stack 0
	line	279
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_WDT_INITIAL

;; *************** function _WDT_INITIAL *****************
;; Defined at:
;;		line 232 in file "main.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	232
global __ptext1
__ptext1:	;psect for function _WDT_INITIAL
psect	text1
	file	"main.C"
	line	232
	global	__size_of_WDT_INITIAL
	__size_of_WDT_INITIAL	equ	__end_of_WDT_INITIAL-_WDT_INITIAL
	
_WDT_INITIAL:	
;incstack = 0
	opt	stack 6
; Regs used in _WDT_INITIAL: [wreg]
	line	234
	
l9216:	
# 234 "main.C"
clrwdt ;# 
psect	text1
	line	235
	
l9218:	
;main.C: 235: WDTCON = 0B00001111;
	movlw	low(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	238
	
l1976:	
	return
	opt stack 0
GLOBAL	__end_of_WDT_INITIAL
	__end_of_WDT_INITIAL:
	signat	_WDT_INITIAL,89
	global	_TSC_Start_Debug

;; *************** function _TSC_Start_Debug *****************
;; Defined at:
;;		line 346 in file "main.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ConmunicateToPc
;;		_TSC_Start_Test
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	346
global __ptext2
__ptext2:	;psect for function _TSC_Start_Debug
psect	text2
	file	"main.C"
	line	346
	global	__size_of_TSC_Start_Debug
	__size_of_TSC_Start_Debug	equ	__end_of_TSC_Start_Debug-_TSC_Start_Debug
	
_TSC_Start_Debug:	
;incstack = 0
	opt	stack 2
; Regs used in _TSC_Start_Debug: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	348
	
l10754:	
;main.C: 348: TSC_Start_Test();
	fcall	_TSC_Start_Test
	line	349
	
l10756:	
;main.C: 349: ConmunicateToPc();
	fcall	_ConmunicateToPc
	line	350
	
l1993:	
	return
	opt stack 0
GLOBAL	__end_of_TSC_Start_Debug
	__end_of_TSC_Start_Debug:
	signat	_TSC_Start_Debug,89
	global	_TSC_Start_Test

;; *************** function _TSC_Start_Test *****************
;; Defined at:
;;		line 974 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       4       0       0       0
;;      Totals:         0       0       0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DIV
;;		_GetKeyData
;;		_GetLocalCount
;;		_SavKeyData
;;		_TestReadCap
;; This function is called by:
;;		_TSC_Start_Debug
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"touch_test.c"
	line	974
global __ptext3
__ptext3:	;psect for function _TSC_Start_Test
psect	text3
	file	"touch_test.c"
	line	974
	global	__size_of_TSC_Start_Test
	__size_of_TSC_Start_Test	equ	__end_of_TSC_Start_Test-_TSC_Start_Test
	
_TSC_Start_Test:	
;incstack = 0
	opt	stack 3
; Regs used in _TSC_Start_Test: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	976
	
l10326:	
;touch_test.c: 976: TestReadCap();
	fcall	_TestReadCap
	line	977
	
l10328:	
;touch_test.c: 977: if(LVDIF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u1791
	goto	u1790
u1791:
	goto	l8102
u1790:
	line	979
	
l10330:	
;touch_test.c: 978: {
;touch_test.c: 979: bTestScanSetFlag = 0;
	bcf	(259/8),(259)&7	;volatile
	line	981
	
l10332:	
;touch_test.c: 981: TKCON0 = 0x01;
	movlw	low(01h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(283)^0100h	;volatile
	line	984
	
l10334:	
;touch_test.c: 984: TRISD &= ~0x20;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(136)^080h+(5/8),(5)&7	;volatile
	line	985
	
l10336:	
;touch_test.c: 985: PORTD &= ~0x20;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(8)+(5/8),(5)&7	;volatile
	line	988
;touch_test.c: 988: * ((char *)(&uiTemp1)) = TMR1L;
	bsf	status, 6	;RP1=1, select bank2
	movf	(281)^0100h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_uiTemp1)
	line	989
;touch_test.c: 989: * ((char *)(&uiTemp1)+1) = TMR1H;
	bsf	status, 6	;RP1=1, select bank2
	movf	(282)^0100h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_uiTemp1)+01h
	line	991
;touch_test.c: 991: cidx = ucSweepKeyNum;
	movf	(_ucSweepKeyNum),w
	movwf	(33)
	line	992
	
l10338:	
;touch_test.c: 992: GetKeyData();
	fcall	_GetKeyData
	line	993
	
l10340:	
;touch_test.c: 993: uiTemp3 = (unTKData.uiTKData[2] & 0x07FF);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(96)+04h,w
	movwf	(_uiTemp3+1)
	movf	0+(96)+04h,w
	movwf	(_uiTemp3)
	
l10342:	
	movlw	0FFh
	andwf	(_uiTemp3),f
	movlw	07h
	andwf	(_uiTemp3+1),f
	line	998
	
l10344:	
;touch_test.c: 998: ucFreqChargeCount++;
	incf	(_ucFreqChargeCount),f
	line	999
	
l10346:	
;touch_test.c: 999: if(ucFreqChargeCount >= 1)
	movf	((_ucFreqChargeCount)),w
	btfsc	status,2
	goto	u1801
	goto	u1800
u1801:
	goto	l8102
u1800:
	line	1002
	
l10348:	
;touch_test.c: 1000: {
;touch_test.c: 1002: ucFreqChargeCount = 0;
	clrf	(_ucFreqChargeCount)
	line	1005
	
l10350:	
;touch_test.c: 1005: uiTemp2 = uiTemp1;
	movf	(_uiTemp1+1),w
	movwf	(_uiTemp2+1)
	movf	(_uiTemp1),w
	movwf	(_uiTemp2)
	line	1006
	
l10352:	
;touch_test.c: 1006: if(ucKeyPollingCount < 1)
	movf	((_ucKeyPollingCount)),w
	btfss	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l10356
u1810:
	goto	l10422
	line	1010
	
l10356:	
;touch_test.c: 1010: else if(ucKeyPollingCount < 2)
	movlw	low(02h)
	subwf	(_ucKeyPollingCount),w
	skipnc
	goto	u1821
	goto	u1820
u1821:
	goto	l10360
u1820:
	line	1012
	
l10358:	
;touch_test.c: 1011: {
;touch_test.c: 1012: (unTKData.uiTKData[2] = unTKData.uiTKData[2] & (~0x07FF) | (uiTemp2 & 0x07FF));
	movlw	0FFh
	andwf	(_uiTemp2),w
	movwf	(??_TSC_Start_Test+0)+0
	movlw	07h
	andwf	(_uiTemp2+1),w
	movwf	1+(??_TSC_Start_Test+0)+0
	movlw	0
	andwf	0+(96)+04h,w
	movwf	(??_TSC_Start_Test+2)+0
	movlw	0F8h
	andwf	1+(96)+04h,w
	movwf	1+(??_TSC_Start_Test+2)+0
	movf	0+(??_TSC_Start_Test+0)+0,w
	iorwf	0+(??_TSC_Start_Test+2)+0,w
	movwf	0+(96)+04h
	movf	1+(??_TSC_Start_Test+0)+0,w
	iorwf	1+(??_TSC_Start_Test+2)+0,w
	movwf	1+0+(96)+04h
	line	1013
;touch_test.c: 1013: }
	goto	l10422
	line	1016
	
l10360:	
;touch_test.c: 1014: else
;touch_test.c: 1015: {
;touch_test.c: 1016: unTKData.stTK_Data.uiPrevData = uiTemp2;
	movf	(_uiTemp2+1),w
	movwf	1+(96)+06h
	movf	(_uiTemp2),w
	movwf	0+(96)+06h
	line	1017
	
l10362:	
;touch_test.c: 1017: if(bTestSleepFlag == 0)
	btfsc	(258/8),(258)&7	;volatile
	goto	u1831
	goto	u1830
u1831:
	goto	l10422
u1830:
	line	1019
	
l10364:	
;touch_test.c: 1018: {
;touch_test.c: 1019: ucKeyPollingCount = 110;
	movlw	low(06Eh)
	movwf	(_ucKeyPollingCount)
	line	1022
;touch_test.c: 1022: OriginalData = ucMULTIPLE;
	movf	(_ucMULTIPLE),w
	movwf	(105)
	clrf	(105+1)
	line	1023
;touch_test.c: 1023: ReferenceData = uiTemp2;
	movf	(_uiTemp2+1),w
	movwf	(109+1)
	movf	(_uiTemp2),w
	movwf	(109)
	line	1024
	
l10366:	
;touch_test.c: 1024: DIV();
	fcall	_DIV
	line	1025
	
l10368:	
;touch_test.c: 1025: uiTemp2 = ResultData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(107+1),w
	movwf	(_uiTemp2+1)
	movf	(107),w
	movwf	(_uiTemp2)
	line	1027
	
l10370:	
;touch_test.c: 1027: OriginalData = ucMULTIPLE;
	movf	(_ucMULTIPLE),w
	movwf	(105)
	clrf	(105+1)
	line	1028
	
l10372:	
;touch_test.c: 1028: ReferenceData = uiTemp3;
	movf	(_uiTemp3+1),w
	movwf	(109+1)
	movf	(_uiTemp3),w
	movwf	(109)
	line	1029
;touch_test.c: 1029: DIV();
	fcall	_DIV
	line	1030
	
l10374:	
;touch_test.c: 1030: uiTemp3 = ResultData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(107+1),w
	movwf	(_uiTemp3+1)
	movf	(107),w
	movwf	(_uiTemp3)
	line	1031
	
l10376:	
;touch_test.c: 1031: ucChangeValue = 0;
	clrf	(_ucChangeValue)
	line	1033
	
l10378:	
;touch_test.c: 1033: if(uiTemp2 >= uiTemp3)
	movf	(_uiTemp3+1),w
	subwf	(_uiTemp2+1),w
	skipz
	goto	u1845
	movf	(_uiTemp3),w
	subwf	(_uiTemp2),w
u1845:
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l10384
u1840:
	line	1035
	
l10380:	
;touch_test.c: 1034: {
;touch_test.c: 1035: uiTemp1 = uiTemp2 - uiTemp3;
	movf	(_uiTemp2+1),w
	movwf	(_uiTemp1+1)
	movf	(_uiTemp2),w
	movwf	(_uiTemp1)
	movf	(_uiTemp3),w
	subwf	(_uiTemp1),f
	movf	(_uiTemp3+1),w
	skipc
	decf	(_uiTemp1+1),f
	subwf	(_uiTemp1+1),f
	line	1036
;touch_test.c: 1036: if(uiTemp1 > 255) uiTemp1 = 255;
	movlw	01h
	subwf	(_uiTemp1+1),w
	movlw	0
	skipnz
	subwf	(_uiTemp1),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l8091
u1850:
	
l10382:	
	movlw	0FFh
	movwf	(_uiTemp1)
	clrf	(_uiTemp1+1)
	
l8091:	
	line	1037
;touch_test.c: 1037: ucChangeValue = (unsigned char)uiTemp1;
	movf	(_uiTemp1),w
	movwf	(_ucChangeValue)
	line	1040
	
l10384:	
;touch_test.c: 1038: }
;touch_test.c: 1040: ResultDataL = unTKData.stTK_Data.uiLCF_BL.Local_Filter;
	rrf	0+(96)+05h,w
	movwf	(??_TSC_Start_Test+0)+0
	rrf	(??_TSC_Start_Test+0)+0,f
	rrf	(??_TSC_Start_Test+0)+0,w
	andlw	(1<<5)-1
	movwf	(107)
	line	1041
	
l10386:	
;touch_test.c: 1041: ResultDataL = (ResultDataL << 1) & 0x003E;
	clrc
	rlf	(107),w
	andlw	03Eh
	movwf	(107)
	line	1043
	
l10388:	
;touch_test.c: 1043: if(unTKData.stTK_Data.ucLastdata.Local_Key == 0)
	btfsc	0+(96)+03h,7
	goto	u1861
	goto	u1860
u1861:
	goto	l10406
u1860:
	line	1045
	
l10390:	
;touch_test.c: 1044: {
;touch_test.c: 1045: if(ucChangeValue >= ucActiveSensorDeltaArray[ucSweepKeyNum])
	movf	(_ucSweepKeyNum),w
	addlw	low(_ucActiveSensorDeltaArray|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	subwf	(_ucChangeValue),w
	skipc
	goto	u1871
	goto	u1870
u1871:
	goto	l10420
u1870:
	line	1047
	
l10392:	
;touch_test.c: 1046: {
;touch_test.c: 1047: ResultDataL |= 0x01;
	bsf	(107)+(0/8),(0)&7
	line	1048
;touch_test.c: 1048: ResultDataH = 1;
	clrf	(108)
	incf	(108),f
	line	1049
	
l10394:	
;touch_test.c: 1049: ReferenceDataL = ResultDataL;
	movf	(107),w
	movwf	(109)
	line	1050
	
l10396:	
;touch_test.c: 1050: GetLocalCount();
	fcall	_GetLocalCount
	line	1051
	
l10398:	
;touch_test.c: 1051: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	1052
	
l10400:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(108),w
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l10420
u1880:
	line	1054
	
l10402:	
;touch_test.c: 1053: {
;touch_test.c: 1054: unTKData.stTK_Data.ucLastdata.Local_Key = 1;
	bsf	0+(96)+03h,7
	line	1055
	
l10404:	
;touch_test.c: 1055: ResultDataL = 0;
	clrf	(107)
	goto	l10420
	line	1061
	
l10406:	
;touch_test.c: 1059: else
;touch_test.c: 1060: {
;touch_test.c: 1061: if(ucChangeValue <= ucInActiveSensorDeltaArray[ucSweepKeyNum])
	movf	(_ucSweepKeyNum),w
	addlw	low(_ucInActiveSensorDeltaArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(_ucChangeValue),w
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l10420
u1890:
	line	1063
	
l10408:	
;touch_test.c: 1062: {
;touch_test.c: 1063: ResultDataL |= 0x01;
	bsf	(107)+(0/8),(0)&7
	line	1064
;touch_test.c: 1064: ResultDataH = 1;
	clrf	(108)
	incf	(108),f
	line	1065
	
l10410:	
;touch_test.c: 1065: ReferenceDataL = ResultDataL;
	movf	(107),w
	movwf	(109)
	line	1066
	
l10412:	
;touch_test.c: 1066: GetLocalCount();
	fcall	_GetLocalCount
	line	1068
	
l10414:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(108),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l10420
u1900:
	line	1070
	
l10416:	
;touch_test.c: 1069: {
;touch_test.c: 1070: unTKData.stTK_Data.ucLastdata.Local_Key = 0;
	bcf	0+(96)+03h,7
	goto	l10404
	line	1076
	
l10420:	
;touch_test.c: 1072: }
;touch_test.c: 1073: }
;touch_test.c: 1074: }
;touch_test.c: 1076: unTKData.stTK_Data.uiLCF_BL.Local_Filter = ResultDataL;
	movf	(107),w
	movwf	(??_TSC_Start_Test+0)+0
	rlf	(??_TSC_Start_Test+0)+0,f
	rlf	(??_TSC_Start_Test+0)+0,f
	rlf	(??_TSC_Start_Test+0)+0,f
	movf	0+(96)+05h,w
	xorwf	(??_TSC_Start_Test+0)+0,w
	andlw	not (((1<<5)-1)<<3)
	xorwf	(??_TSC_Start_Test+0)+0,w
	movwf	0+(96)+05h
	line	1086
	
l10422:	
;touch_test.c: 1077: }
;touch_test.c: 1078: }
;touch_test.c: 1086: TKEN0 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(284)^0100h	;volatile
	line	1087
;touch_test.c: 1087: TKEN1 &= 0xC0;
	movlw	low(0C0h)
	andwf	(285)^0100h,f	;volatile
	line	1088
	
l10424:	
;touch_test.c: 1088: TKEN2 = 0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(412)^0180h	;volatile
	line	1089
	
l10426:	
;touch_test.c: 1089: TKEN3 = 0xC0;
	movlw	low(0C0h)
	movwf	(413)^0180h	;volatile
	line	1090
	
l10428:	
;touch_test.c: 1090: for (ucTempCount = 0; ucTempCount < ucKEY_NUMBER_MAX; ucTempCount++)
	clrf	(_ucTempCount)
	
l10430:	
	movf	((_ucTempCount)),w
	btfsc	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l10434
u1910:
	goto	l10440
	line	1092
	
l10434:	
;touch_test.c: 1091: {
;touch_test.c: 1092: ucTempIndex = ucKeyIndexMapArray[ucTempCount];
	movf	(_ucTempCount),w
	addlw	low((((_ucKeyIndexMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_ucTempIndex)
	line	1093
;touch_test.c: 1093: *((unsigned char*)(stTouchIoMapArray[ucTempIndex].tr&0x7F)) &= ~stTouchIoMapArray[ucTempIndex].b;
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h)+01h)
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_TSC_Start_Test+0)+0
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	07Fh
	movwf	(??_TSC_Start_Test+1)+0
	clrf	(??_TSC_Start_Test+1)+0+1
	movf	0+(??_TSC_Start_Test+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_TSC_Start_Test+1)+0,0
	bcf	status,7
	movf	(??_TSC_Start_Test+0)+0,w
	andwf	indf,f
	line	1094
;touch_test.c: 1094: *((unsigned char*)(stTouchIoMapArray[ucTempIndex].tr)) &= ~stTouchIoMapArray[ucTempIndex].b;
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h)+01h)
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	movwf	(??_TSC_Start_Test+0)+0
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TSC_Start_Test+1)+0
	clrf	(??_TSC_Start_Test+1)+0+1
	movf	0+(??_TSC_Start_Test+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_TSC_Start_Test+1)+0,0
	bcf	status,7
	movf	(??_TSC_Start_Test+0)+0,w
	andwf	indf,f
	line	1090
	
l10436:	
	incf	(_ucTempCount),f
	goto	l10430
	line	1097
	
l10440:	
;touch_test.c: 1095: }
;touch_test.c: 1097: cidx = ucSweepKeyNum;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ucSweepKeyNum),w
	movwf	(33)
	line	1098
	
l10442:	
;touch_test.c: 1098: SavKeyData();
	fcall	_SavKeyData
	line	1099
	
l10444:	
;touch_test.c: 1099: ucSweepKeyNum++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_ucSweepKeyNum),f
	line	1100
	
l10446:	
;touch_test.c: 1100: if(ucSweepKeyNum >= ucTempMaxChangeKey)
	movf	(_ucTempMaxChangeKey),w
	subwf	(_ucSweepKeyNum),w
	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l8102
u1920:
	line	1102
	
l10448:	
;touch_test.c: 1101: {
;touch_test.c: 1102: ucSweepKeyNum = 0;
	clrf	(_ucSweepKeyNum)
	line	1104
	
l10450:	
;touch_test.c: 1104: if(ucKeyPollingCount == 110)
		movlw	110
	xorwf	((_ucKeyPollingCount)),w
	btfss	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l10454
u1930:
	line	1106
	
l10452:	
;touch_test.c: 1105: {
;touch_test.c: 1106: ucKeyPollingOk = SET;
	clrf	(_ucKeyPollingOk)
	incf	(_ucKeyPollingOk),f
	line	1108
;touch_test.c: 1108: LVDIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	1109
;touch_test.c: 1109: LVDIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1125/8)^080h,(1125)&7	;volatile
	line	1112
;touch_test.c: 1112: T0ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2091/8)^0100h,(2091)&7	;volatile
	line	1114
;touch_test.c: 1114: return;
	goto	l8102
	line	1116
	
l10454:	
;touch_test.c: 1115: }
;touch_test.c: 1116: ucKeyPollingCount++;
	incf	(_ucKeyPollingCount),f
	line	1121
	
l8102:	
	return
	opt stack 0
GLOBAL	__end_of_TSC_Start_Test
	__end_of_TSC_Start_Test:
	signat	_TSC_Start_Test,89
	global	_TestReadCap

;; *************** function _TestReadCap *****************
;; Defined at:
;;		line 897 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  channel         2    0[BANK0l] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       2       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         3       0       0       2       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    2
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	line	897
global __ptext4
__ptext4:	;psect for function _TestReadCap
psect	text4
	file	"touch_test.c"
	line	897
	global	__size_of_TestReadCap
	__size_of_TestReadCap	equ	__end_of_TestReadCap-_TestReadCap
	
_TestReadCap:	
;incstack = 0
	opt	stack 3
; Regs used in _TestReadCap: [wreg-fsr0h+status,2+status,0+pclath]
	line	899
	
l10242:	
	line	900
	
l10244:	
;touch_test.c: 900: if(bTestScanSetFlag) return;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(259/8),(259)&7	;volatile
	goto	u1721
	goto	u1720
u1721:
	goto	l8075
u1720:
	goto	l8076
	
l8075:	
	line	901
;touch_test.c: 901: bTestScanSetFlag = 1;
	bsf	(259/8),(259)&7	;volatile
	line	903
;touch_test.c: 903: if(bTestSleepFlag)
	btfss	(258/8),(258)&7	;volatile
	goto	u1731
	goto	u1730
u1731:
	goto	l8077
u1730:
	line	905
	
l10248:	
;touch_test.c: 904: {
;touch_test.c: 905: ucTempMaxChangeKey = 1;
	clrf	(_ucTempMaxChangeKey)
	incf	(_ucTempMaxChangeKey),f
	line	906
	
l10250:	
;touch_test.c: 906: TRISA |= uiGroupArray[0] >> 8;
	movf	0+(_uiGroupArray)+01h,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	907
;touch_test.c: 907: TRISB |= uiGroupArray[0];
	bcf	status, 5	;RP0=0, select bank0
	movf	(_uiGroupArray),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	line	908
;touch_test.c: 908: TRISC |= uiGroupArray[1] >> 8;
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(_uiGroupArray)+02h,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(135)^080h,f	;volatile
	line	909
;touch_test.c: 909: TRISD |= uiGroupArray[1];
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_uiGroupArray)+02h,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(136)^080h,f	;volatile
	line	910
	
l10252:	
;touch_test.c: 910: TKEN0 = uiGroupArray[2] >> 8;
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(_uiGroupArray)+04h,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(284)^0100h	;volatile
	line	911
	
l10254:	
;touch_test.c: 911: TKEN1 = uiGroupArray[2];
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_uiGroupArray)+04h,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(285)^0100h	;volatile
	line	912
	
l10256:	
;touch_test.c: 912: TKEN2 = uiGroupArray[3] >> 8;
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(_uiGroupArray)+06h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(412)^0180h	;volatile
	line	913
	
l10258:	
;touch_test.c: 913: TKEN3 = uiGroupArray[3];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_uiGroupArray)+06h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(413)^0180h	;volatile
	line	914
;touch_test.c: 914: }
	goto	l10286
	line	915
	
l8077:	
	file	"touch.h"
	line	210
	clrf	(_ucTempMaxChangeKey)
	incf	(_ucTempMaxChangeKey),f
	file	"touch_test.c"
	line	919
	
l10260:	
;touch_test.c: 919: ucKeyMapNumber = ucKeyIndexMapArray[ucSweepKeyNum];
	movf	(_ucSweepKeyNum),w
	addlw	low((((_ucKeyIndexMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_ucKeyMapNumber)
	line	920
;touch_test.c: 920: *((unsigned char*)(stTouchIoMapArray[ucKeyMapNumber].tr)) |= stTouchIoMapArray[ucKeyMapNumber].b;
	clrc
	rlf	(_ucKeyMapNumber),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h)+01h)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TestReadCap+0)+0
	clrc
	rlf	(_ucKeyMapNumber),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TestReadCap+1)+0
	clrf	(??_TestReadCap+1)+0+1
	movf	0+(??_TestReadCap+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_TestReadCap+1)+0,0
	bcf	status,7
	movf	(??_TestReadCap+0)+0,w
	iorwf	indf,f
	line	923
	
l10262:	
;touch_test.c: 923: if(ucKeyMapNumber < 14)
	movlw	low(0Eh)
	subwf	(_ucKeyMapNumber),w
	skipnc
	goto	u1741
	goto	u1740
u1741:
	goto	l10274
u1740:
	line	925
	
l10264:	
;touch_test.c: 924: {
;touch_test.c: 925: channel = 0x0001 << ucKeyMapNumber;
	incf	(_ucKeyMapNumber),w
	movwf	(??_TestReadCap+0)+0
	movlw	01h
	movwf	(??_TestReadCap+1)+0
	movlw	0
	movwf	(??_TestReadCap+1)+0+1
	goto	u1754
u1755:
	clrc
	rlf	(??_TestReadCap+1)+0,f
	rlf	(??_TestReadCap+1)+1,f
u1754:
	decfsz	(??_TestReadCap+0)+0,f
	goto	u1755
	
	movf	0+(??_TestReadCap+1)+0,w
	movwf	(TestReadCap@channel)
	movf	1+(??_TestReadCap+1)+0,w
	movwf	(TestReadCap@channel+1)
	line	926
	
l10266:	
;touch_test.c: 926: TKEN0 = channel & 0xFF;
	movf	(TestReadCap@channel),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(284)^0100h	;volatile
	line	927
	
l10268:	
;touch_test.c: 927: TKEN1 = (channel >> 8) & 0x3F;
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(TestReadCap@channel)+01h,w
	andlw	03Fh
	bsf	status, 6	;RP1=1, select bank2
	movwf	(285)^0100h	;volatile
	line	928
	
l10270:	
;touch_test.c: 928: TKEN2 = 0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(412)^0180h	;volatile
	line	929
	
l10272:	
;touch_test.c: 929: TKEN3 = 0xC0;
	movlw	low(0C0h)
	movwf	(413)^0180h	;volatile
	line	930
;touch_test.c: 930: }
	goto	l10286
	line	933
	
l10274:	
;touch_test.c: 931: else
;touch_test.c: 932: {
;touch_test.c: 933: channel = 0x0001 << (ucKeyMapNumber - 14);
	clrf	(TestReadCap@channel)
	incf	(TestReadCap@channel),f
	clrf	(TestReadCap@channel+1)
	
l10276:	
	movf	(_ucKeyMapNumber),w
	addlw	-14
	addlw	1
	goto	u1760
u1765:
	clrc
	rlf	(TestReadCap@channel),f
	rlf	(TestReadCap@channel+1),f
u1760:
	addlw	-1
	skipz
	goto	u1765
	line	934
	
l10278:	
;touch_test.c: 934: TKEN0 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(284)^0100h	;volatile
	line	935
	
l10280:	
;touch_test.c: 935: TKEN1 = 0;
	clrf	(285)^0100h	;volatile
	line	936
;touch_test.c: 936: TKEN2 = channel & 0xFF;;
	bcf	status, 6	;RP1=0, select bank0
	movf	(TestReadCap@channel),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(412)^0180h	;volatile
	line	937
	
l10282:	
;touch_test.c: 937: TKEN3 = (channel >> 8) & 0x3F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(TestReadCap@channel)+01h,w
	andlw	03Fh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(413)^0180h	;volatile
	line	938
	
l10284:	
;touch_test.c: 938: TKEN3 |= 0xC0;
	movlw	low(0C0h)
	iorwf	(413)^0180h,f	;volatile
	line	944
	
l10286:	
;touch_test.c: 939: }
;touch_test.c: 940: }
;touch_test.c: 944: T0ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bcf	(2091/8)^0100h,(2091)&7	;volatile
	line	945
	
l10288:	
;touch_test.c: 945: TMR0 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	948
	
l10290:	
;touch_test.c: 948: TRISD |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(136)^080h+(5/8),(5)&7	;volatile
	line	950
	
l10292:	
;touch_test.c: 950: TMR1H = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(282)^0100h	;volatile
	line	951
	
l10294:	
;touch_test.c: 951: TMR1L = 0;
	clrf	(281)^0100h	;volatile
	line	953
	
l10296:	
;touch_test.c: 953: TKCON0 = 0x09;
	movlw	low(09h)
	movwf	(283)^0100h	;volatile
	line	955
	
l10298:	
;touch_test.c: 955: T1ON = 1;
	bsf	(2098/8)^0100h,(2098)&7	;volatile
	line	958
	
l10300:	
;touch_test.c: 958: T0ON = 1;
	bsf	(2091/8)^0100h,(2091)&7	;volatile
	line	961
	
l10302:	
;touch_test.c: 961: LVDIF = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	962
	
l10304:	
;touch_test.c: 962: LVDIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1125/8)^080h,(1125)&7	;volatile
	line	965
	
l8076:	
	return
	opt stack 0
GLOBAL	__end_of_TestReadCap
	__end_of_TestReadCap:
	signat	_TestReadCap,89
	global	_GetLocalCount

;; *************** function _GetLocalCount *****************
;; Defined at:
;;		line 668 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	line	668
global __ptext5
__ptext5:	;psect for function _GetLocalCount
psect	text5
	file	"touch_test.c"
	line	668
	global	__size_of_GetLocalCount
	__size_of_GetLocalCount	equ	__end_of_GetLocalCount-_GetLocalCount
	
_GetLocalCount:	
;incstack = 0
	opt	stack 4
; Regs used in _GetLocalCount: [wreg+status,2+status,0]
	line	670
	
l9596:	
;touch_test.c: 670: for(ucTempCount=1;ucTempCount<ucLOCAL_FILTER_SAMPLES;ucTempCount++)
	clrf	(_ucTempCount)
	incf	(_ucTempCount),f
	
l9598:	
	movlw	low(04h)
	subwf	(_ucTempCount),w
	skipc
	goto	u1111
	goto	u1110
u1111:
	goto	l8046
u1110:
	goto	l8048
	line	671
	
l8046:	
	line	673
# 673 "touch_test.c"
BANKSEL _ReferenceDataL ;# 
	line	674
# 674 "touch_test.c"
BTFSC _ReferenceDataL,1 ;# 
	line	675
# 675 "touch_test.c"
INCF _ResultDataH,f ;# 
	line	676
# 676 "touch_test.c"
RRF _ReferenceDataL ;# 
psect	text5
	line	670
	
l9602:	
	incf	(_ucTempCount),f
	goto	l9598
	line	679
	
l8048:	
	return
	opt stack 0
GLOBAL	__end_of_GetLocalCount
	__end_of_GetLocalCount:
	signat	_GetLocalCount,89
	global	_GetKeyData

;; *************** function _GetKeyData *****************
;; Defined at:
;;		line 1282 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_GetAddress
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	line	1282
global __ptext6
__ptext6:	;psect for function _GetKeyData
psect	text6
	file	"touch_test.c"
	line	1282
	global	__size_of_GetKeyData
	__size_of_GetKeyData	equ	__end_of_GetKeyData-_GetKeyData
	
_GetKeyData:	
;incstack = 0
	opt	stack 3
; Regs used in _GetKeyData: [status,2+status,0+pclath+cstack]
	line	1284
	
l10306:	
;touch_test.c: 1284: GetAddress();
	fcall	_GetAddress
	line	1286
# 1286 "touch_test.c"
MOVF _cidx,w ;# 
	line	1287
# 1287 "touch_test.c"
MOVWF _FSR ;# 
	line	1288
# 1288 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1290
# 1290 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1292
# 1292 "touch_test.c"
MOVF _INDF,w ;# 
	line	1293
# 1293 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1294
# 1294 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1295
# 1295 "touch_test.c"
MOVWF 0x60+0 ;# 
	line	1296
# 1296 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1297
# 1297 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1298
# 1298 "touch_test.c"
INCF _FSR,f ;# 
	line	1299
# 1299 "touch_test.c"
MOVF _INDF,w ;# 
	line	1300
# 1300 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1301
# 1301 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1302
# 1302 "touch_test.c"
MOVWF 0x60+1 ;# 
	line	1303
# 1303 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1304
# 1304 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1305
# 1305 "touch_test.c"
INCF _FSR,f ;# 
	line	1306
# 1306 "touch_test.c"
MOVF _INDF,w ;# 
	line	1307
# 1307 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1308
# 1308 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1309
# 1309 "touch_test.c"
MOVWF 0x60+2 ;# 
	line	1310
# 1310 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1311
# 1311 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1312
# 1312 "touch_test.c"
INCF _FSR,f ;# 
	line	1313
# 1313 "touch_test.c"
MOVF _INDF,w ;# 
	line	1314
# 1314 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1315
# 1315 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1316
# 1316 "touch_test.c"
MOVWF 0x60+3 ;# 
	line	1317
# 1317 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1318
# 1318 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1319
# 1319 "touch_test.c"
INCF _FSR,f ;# 
	line	1320
# 1320 "touch_test.c"
MOVF _INDF,w ;# 
	line	1321
# 1321 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1322
# 1322 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1323
# 1323 "touch_test.c"
MOVWF 0x60+4 ;# 
	line	1324
# 1324 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1325
# 1325 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1326
# 1326 "touch_test.c"
INCF _FSR,f ;# 
	line	1327
# 1327 "touch_test.c"
MOVF _INDF,w ;# 
	line	1328
# 1328 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1329
# 1329 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1330
# 1330 "touch_test.c"
MOVWF 0x60+5 ;# 
	line	1331
# 1331 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1332
# 1332 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1333
# 1333 "touch_test.c"
INCF _FSR,f ;# 
	line	1334
# 1334 "touch_test.c"
MOVF _INDF,w ;# 
	line	1335
# 1335 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1336
# 1336 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1337
# 1337 "touch_test.c"
MOVWF 0x60+6 ;# 
	line	1338
# 1338 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1339
# 1339 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1340
# 1340 "touch_test.c"
INCF _FSR,f ;# 
	line	1341
# 1341 "touch_test.c"
MOVF _INDF,w ;# 
	line	1342
# 1342 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1343
# 1343 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1344
# 1344 "touch_test.c"
MOVWF 0x60+7 ;# 
psect	text6
	line	1346
	
l8117:	
	return
	opt stack 0
GLOBAL	__end_of_GetKeyData
	__end_of_GetKeyData:
	signat	_GetKeyData,89
	global	_DIV

;; *************** function _DIV *****************
;; Defined at:
;;		line 377 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	line	377
global __ptext7
__ptext7:	;psect for function _DIV
psect	text7
	file	"touch_test.c"
	line	377
	global	__size_of_DIV
	__size_of_DIV	equ	__end_of_DIV-_DIV
	
_DIV:	
;incstack = 0
	opt	stack 4
; Regs used in _DIV: []
	line	381
	
l9576:	
# 381 "touch_test.c"
BANKSEL M01 ;# 
	line	382
# 382 "touch_test.c"
MOVLW 0X0F ;# 
	line	383
# 383 "touch_test.c"
ANDWF M12,f ;# 
	line	385
# 385 "touch_test.c"
CLRF SUML ;# 
	line	386
# 386 "touch_test.c"
CLRF SUMM ;# 
	line	389
# 389 "touch_test.c"
BCF _STATUS,0 ;# 
	line	391
# 391 "touch_test.c"
RLF M01,f ;# 
	line	392
# 392 "touch_test.c"
RLF M02,f ;# 
	line	394
# 394 "touch_test.c"
BCF _STATUS,0 ;# 
	line	396
# 396 "touch_test.c"
RLF M01,f ;# 
	line	397
# 397 "touch_test.c"
RLF M02,f ;# 
	line	399
# 399 "touch_test.c"
BCF _STATUS,0 ;# 
	line	401
# 401 "touch_test.c"
RLF M01,f ;# 
	line	402
# 402 "touch_test.c"
RLF M02,f ;# 
	line	404
# 404 "touch_test.c"
BCF _STATUS,0 ;# 
	line	406
# 406 "touch_test.c"
RLF M01,f ;# 
	line	407
# 407 "touch_test.c"
RLF M02,f ;# 
	line	409
# 409 "touch_test.c"
MOVF M11,w ;# 
	line	410
# 410 "touch_test.c"
IORWF M12,w ;# 
	line	411
# 411 "touch_test.c"
BTFSC _STATUS,2 ;# 
	line	412
# 412 "touch_test.c"
GOTO ENDDIV ;# 
	line	413
# 413 "touch_test.c"
MOVLW 08H ;# 
	line	414
# 414 "touch_test.c"
MOVWF COUNT ;# 
	line	416
# 416 "touch_test.c"
Div_02: ;# 
	line	417
# 417 "touch_test.c"
INCF COUNT,f ;# 
	line	418
# 418 "touch_test.c"
BTFSC M12,3 ;# 
	line	419
# 419 "touch_test.c"
GOTO Div_03 ;# 
	line	420
# 420 "touch_test.c"
BCF _STATUS,0 ;# 
	line	422
# 422 "touch_test.c"
RLF M11,f ;# 
	line	423
# 423 "touch_test.c"
RLF M12,f ;# 
	line	424
# 424 "touch_test.c"
GOTO Div_02 ;# 
	line	426
# 426 "touch_test.c"
Div_03: ;# 
	line	427
# 427 "touch_test.c"
BCF _STATUS,0 ;# 
	line	428
# 428 "touch_test.c"
RLF SUML,f ;# 
	line	429
# 429 "touch_test.c"
RLF SUMM,f ;# 
	line	432
# 432 "touch_test.c"
MOVF M12,w ;# 
	line	433
# 433 "touch_test.c"
SUBWF M02,w ;# 
	line	434
# 434 "touch_test.c"
BTFSS _STATUS,2 ;# 
	line	435
# 435 "touch_test.c"
GOTO Div_04 ; ;# 
	line	436
# 436 "touch_test.c"
MOVF M11,w ;# 
	line	437
# 437 "touch_test.c"
SUBWF M01,w ;# 
	line	443
# 443 "touch_test.c"
Div_04: ;# 
	line	444
# 444 "touch_test.c"
BTFSS _STATUS,0 ;# 
	line	445
# 445 "touch_test.c"
GOTO Div_05 ;# 
	line	449
# 449 "touch_test.c"
MOVF M11,w ;# 
	line	452
# 452 "touch_test.c"
SUBWF M01,f ;# 
	line	453
# 453 "touch_test.c"
MOVF M12,w ;# 
	line	454
# 454 "touch_test.c"
BTFSS _STATUS,0 ;# 
	line	455
# 455 "touch_test.c"
INCFSZ M12,w ;# 
	line	456
# 456 "touch_test.c"
SUBWF M02,f ;# 
	line	458
# 458 "touch_test.c"
BSF SUML,0 ;# 
	line	460
# 460 "touch_test.c"
Div_05: ;# 
	line	461
# 461 "touch_test.c"
BCF _STATUS,0 ;# 
	line	464
# 464 "touch_test.c"
RLF M01,f ;# 
	line	465
# 465 "touch_test.c"
RLF M02,f ;# 
	line	466
# 466 "touch_test.c"
DECfSZ COUNT,f ;# 
	line	467
# 467 "touch_test.c"
GOTO Div_03 ;# 
	line	469
# 469 "touch_test.c"
ENDDIV: ;# 
psect	text7
	line	471
	
l8016:	
	return
	opt stack 0
GLOBAL	__end_of_DIV
	__end_of_DIV:
	signat	_DIV,89
	global	_ConmunicateToPc

;; *************** function _ConmunicateToPc *****************
;; Defined at:
;;		line 362 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uiTemp          2    7[BANK0l] unsigned int 
;;  i               1   12[BANK0l] unsigned char 
;;  ucTempPackNu    1   11[BANK0l] unsigned char 
;;  temp_xor        1   10[BANK0l] unsigned char 
;;  ucTempLength    1    9[BANK0l] unsigned char 
;;  ucTemp          1    6[BANK0l] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       7       0       0       0
;;      Temps:          0       0       0       6       0       0       0
;;      Totals:         0       0       0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ReceiveDataPc
;;		_SendDataToPC
;;		_TSC_GetPrevData
;; This function is called by:
;;		_TSC_Start_Debug
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"uart.c"
	line	362
global __ptext8
__ptext8:	;psect for function _ConmunicateToPc
psect	text8
	file	"uart.c"
	line	362
	global	__size_of_ConmunicateToPc
	__size_of_ConmunicateToPc	equ	__end_of_ConmunicateToPc-_ConmunicateToPc
	
_ConmunicateToPc:	
;incstack = 0
	opt	stack 2
; Regs used in _ConmunicateToPc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	365
	
l10456:	
;uart.c: 365: unsigned char temp_xor = 0,i,ucTempLength,ucTemp,ucTempPackNum = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ConmunicateToPc@temp_xor)
	line	367
	
l10458:	
;uart.c: 366: unsigned int uiTemp;
;uart.c: 367: if(TX_Flag)
	btfss	(_TX_Flag/8),(_TX_Flag)&7
	goto	u1941
	goto	u1940
u1941:
	goto	l6005
u1940:
	line	369
	
l10460:	
;uart.c: 368: {
;uart.c: 369: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	370
	
l10462:	
;uart.c: 370: UART_TX_Buff[0] = 0x3A;
	movlw	low(03Ah)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_UART_TX_Buff)^080h
	line	371
;uart.c: 371: UART_TX_Buff[1] = 0xA3;
	movlw	low(0A3h)
	movwf	0+(_UART_TX_Buff)^080h+01h
	line	372
;uart.c: 372: UART_TX_Buff[2] = 0x11;
	movlw	low(011h)
	movwf	0+(_UART_TX_Buff)^080h+02h
	line	373
	
l10464:	
;uart.c: 373: UART_TX_Buff[3] = 0xB0 + ucPackNum;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_ucPackNum),w
	addlw	0B0h
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_UART_TX_Buff)^080h+03h
	line	374
	
l10466:	
;uart.c: 374: for (i = 0; i < 4; i++)
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ConmunicateToPc@i)
	line	376
	
l10472:	
;uart.c: 375: {
;uart.c: 376: temp_xor ^= UART_TX_Buff[i];
	movf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorwf	(ConmunicateToPc@temp_xor),f
	line	374
	
l10474:	
	incf	(ConmunicateToPc@i),f
	
l10476:	
	movlw	low(04h)
	subwf	(ConmunicateToPc@i),w
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l10472
u1950:
	line	378
	
l10478:	
;uart.c: 377: }
;uart.c: 378: for (i = 0; i < 8; i++)
	clrf	(ConmunicateToPc@i)
	line	379
	
l5976:	
	line	380
;uart.c: 379: {
;uart.c: 380: if(bTestSleepFlag)
	btfss	(258/8),(258)&7	;volatile
	goto	u1961
	goto	u1960
u1961:
	goto	l10486
u1960:
	line	382
	
l10484:	
;uart.c: 381: {
;uart.c: 382: uiTemp = TSC_GetPrevData(0);
	movlw	low(0)
	fcall	_TSC_GetPrevData
	movf	(1+(?_TSC_GetPrevData)),w
	movwf	(ConmunicateToPc@uiTemp+1)
	movf	(0+(?_TSC_GetPrevData)),w
	movwf	(ConmunicateToPc@uiTemp)
	line	383
;uart.c: 383: }
	goto	l10488
	line	384
	
l10486:	
;uart.c: 384: else uiTemp = TSC_GetPrevData(ucPackNum*8 + i);
	movf	(_ucPackNum),w
	movwf	(??_ConmunicateToPc+0)+0
	clrc
	rlf	(??_ConmunicateToPc+0)+0,f
	clrc
	rlf	(??_ConmunicateToPc+0)+0,f
	clrc
	rlf	(??_ConmunicateToPc+0)+0,f
	movf	(ConmunicateToPc@i),w
	addwf	0+(??_ConmunicateToPc+0)+0,w
	fcall	_TSC_GetPrevData
	movf	(1+(?_TSC_GetPrevData)),w
	movwf	(ConmunicateToPc@uiTemp+1)
	movf	(0+(?_TSC_GetPrevData)),w
	movwf	(ConmunicateToPc@uiTemp)
	line	385
	
l10488:	
;uart.c: 385: UART_TX_Buff[(unsigned char)(4+2*i)] = (unsigned char)(uiTemp>>8);
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+04h)&0ffh
	movwf	fsr0
	movf	0+(ConmunicateToPc@uiTemp)+01h,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	386
	
l10490:	
;uart.c: 386: UART_TX_Buff[(unsigned char)(4+2*i+1)] = (unsigned char)uiTemp;
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+05h)&0ffh
	movwf	fsr0
	movf	(ConmunicateToPc@uiTemp),w
	movwf	indf
	line	387
	
l10492:	
;uart.c: 387: temp_xor ^= UART_TX_Buff[(unsigned char)(4+2*i)];
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+04h)&0ffh
	movwf	fsr0
	movf	indf,w
	xorwf	(ConmunicateToPc@temp_xor),f
	line	388
	
l10494:	
;uart.c: 388: temp_xor ^= UART_TX_Buff[(unsigned char)(4+2*i+1)];
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+05h)&0ffh
	movwf	fsr0
	movf	indf,w
	xorwf	(ConmunicateToPc@temp_xor),f
	line	378
	
l10496:	
	incf	(ConmunicateToPc@i),f
	
l10498:	
	movlw	low(08h)
	subwf	(ConmunicateToPc@i),w
	skipc
	goto	u1971
	goto	u1970
u1971:
	goto	l5976
u1970:
	line	390
	
l10500:	
;uart.c: 389: }
;uart.c: 390: UART_TX_Buff[20] = temp_xor;
	movf	(ConmunicateToPc@temp_xor),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_UART_TX_Buff)^080h+014h
	line	391
	
l10502:	
;uart.c: 391: SendDataToPC(21);
	movlw	low(015h)
	fcall	_SendDataToPC
	line	392
	
l10504:	
;uart.c: 392: ucPackNum ++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_ucPackNum),f
	line	394
	
l10506:	
;uart.c: 394: if(ucPackNum > ((1-1)/8))
	movf	((_ucPackNum)),w
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l10522
u1980:
	line	396
	
l10508:	
;uart.c: 395: {
;uart.c: 396: TX_Flag = 0;
	bcf	(_TX_Flag/8),(_TX_Flag)&7
	line	397
	
l10510:	
;uart.c: 397: ucPackNum = 0;
	clrf	(_ucPackNum)
	line	398
	
l10512:	
;uart.c: 398: if(bTestSleepFlag)
	btfss	(258/8),(258)&7	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l10522
u1990:
	line	400
	
l10514:	
;uart.c: 399: {
;uart.c: 400: _ucLPGapCnt++;
	incf	(__ucLPGapCnt),f
	line	401
	
l10516:	
;uart.c: 401: if(_ucLPGapCnt>50)
	movlw	low(033h)
	subwf	(__ucLPGapCnt),w
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l10522
u2000:
	line	403
	
l10518:	
;uart.c: 402: {
;uart.c: 403: _ucLPGapCnt = 0;
	clrf	(__ucLPGapCnt)
	line	404
	
l10520:	
;uart.c: 404: bTestSleepFlag = 0;
	bcf	(258/8),(258)&7	;volatile
	line	409
	
l10522:	
;uart.c: 405: }
;uart.c: 406: }
;uart.c: 407: }
;uart.c: 409: if(ReceiveDataPc() == 1)
	fcall	_ReceiveDataPc
	xorlw	01h
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l10592
u2010:
	line	411
	
l10524:	
;uart.c: 410: {
;uart.c: 411: temp_xor = 0;
	clrf	(ConmunicateToPc@temp_xor)
	line	412
	
l10526:	
;uart.c: 412: ucTempLength = UART_TX_Buff[2];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_UART_TX_Buff)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ConmunicateToPc@ucTempLength)
	line	413
	
l10528:	
;uart.c: 413: if(UART_TX_Buff[0] != 0x3A || UART_TX_Buff[1] != 0xA3)
		movlw	58
	bsf	status, 5	;RP0=1, select bank1
	xorwf	((_UART_TX_Buff)^080h),w
	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l10532
u2020:
	
l10530:	
		movlw	163
	xorwf	(0+(_UART_TX_Buff)^080h+01h),w
	btfsc	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l10534
u2030:
	line	415
	
l10532:	
;uart.c: 414: {
;uart.c: 415: UART_TX_Buff[0] = 0x00;
	clrf	(_UART_TX_Buff)^080h
	line	416
;uart.c: 416: }
	goto	l10592
	line	419
	
l10534:	
;uart.c: 417: else
;uart.c: 418: {
;uart.c: 419: for (i = 0; i < (ucTempLength + 3); i++)
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ConmunicateToPc@i)
	goto	l10540
	line	421
	
l10536:	
;uart.c: 420: {
;uart.c: 421: temp_xor ^= UART_TX_Buff[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorwf	(ConmunicateToPc@temp_xor),f
	line	419
	
l10538:	
	incf	(ConmunicateToPc@i),f
	
l10540:	
	movf	(ConmunicateToPc@ucTempLength),w
	addlw	low(03h)
	movwf	(??_ConmunicateToPc+0)+0
	movlw	high(03h)
	skipnc
	movlw	(high(03h)+1)&0ffh
	movwf	((??_ConmunicateToPc+0)+0)+1
	movf	1+(??_ConmunicateToPc+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u2045
	movf	0+(??_ConmunicateToPc+0)+0,w
	subwf	(ConmunicateToPc@i),w
u2045:

	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l10536
u2040:
	line	423
	
l10542:	
;uart.c: 422: }
;uart.c: 423: if(temp_xor == UART_TX_Buff[(unsigned char)(ucTempLength + 3)])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ConmunicateToPc@ucTempLength),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+03h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorwf	(ConmunicateToPc@temp_xor),w
	skipz
	goto	u2051
	goto	u2050
u2051:
	goto	l10588
u2050:
	line	425
	
l10544:	
;uart.c: 424: {
;uart.c: 425: ucTempPackNum = UART_TX_Buff[3] & 0x0F;
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_UART_TX_Buff)^080h+03h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ConmunicateToPc@ucTempPackNum)
	
l10546:	
	movlw	low(0Fh)
	andwf	(ConmunicateToPc@ucTempPackNum),f
	line	426
	
l10548:	
;uart.c: 426: if(ucTempPackNum == ((1-1)/8))
	movf	((ConmunicateToPc@ucTempPackNum)),w
	btfss	status,2
	goto	u2061
	goto	u2060
u2061:
	goto	l10554
u2060:
	line	432
	
l5993:	
	line	434
;uart.c: 432: else
;uart.c: 433: {
;uart.c: 434: ucTemp = (1 % 8);
	clrf	(ConmunicateToPc@ucTemp)
	incf	(ConmunicateToPc@ucTemp),f
	goto	l10556
	line	439
	
l10554:	
;uart.c: 437: else
;uart.c: 438: {
;uart.c: 439: ucTemp = 8;
	movlw	low(08h)
	movwf	(ConmunicateToPc@ucTemp)
	line	441
	
l10556:	
;uart.c: 440: }
;uart.c: 441: if((UART_TX_Buff[3] & 0xF0) == 0xC0)
	movlw	low(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	0+(_UART_TX_Buff)^080h+03h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ConmunicateToPc+0)+0
		movlw	192
	xorwf	((??_ConmunicateToPc+0)+0),w
	btfss	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l10568
u2070:
	line	443
	
l10558:	
;uart.c: 442: {
;uart.c: 443: for(i=0;i<ucTemp;i++)
	clrf	(ConmunicateToPc@i)
	goto	l10564
	line	445
	
l10560:	
;uart.c: 444: {
;uart.c: 445: ucActiveSensorDeltaArray[ucTempPackNum*8 + i] = UART_TX_Buff[4+i];
	movf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+04h)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ConmunicateToPc+0)+0
	movf	(ConmunicateToPc@ucTempPackNum),w
	movwf	(??_ConmunicateToPc+1)+0
	clrc
	rlf	(??_ConmunicateToPc+1)+0,f
	clrc
	rlf	(??_ConmunicateToPc+1)+0,f
	clrc
	rlf	(??_ConmunicateToPc+1)+0,f
	movlw	(low(_ucActiveSensorDeltaArray|((0x0)<<8)))&0ffh
	addwf	0+(??_ConmunicateToPc+1)+0,w
	movwf	(??_ConmunicateToPc+2)+0
	movf	(ConmunicateToPc@i),w
	addwf	0+(??_ConmunicateToPc+2)+0,w
	movwf	(??_ConmunicateToPc+3)+0
	movf	0+(??_ConmunicateToPc+3)+0,w
	movwf	fsr0
	movf	(??_ConmunicateToPc+0)+0,w
	movwf	indf
	line	446
;uart.c: 446: ucInActiveSensorDeltaArray[ucTempPackNum*8 + i] = UART_TX_Buff[4+i] - UART_TX_Buff[4+i]/4;
	movf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+04h)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ConmunicateToPc+0)+0
	clrc
	rrf	(??_ConmunicateToPc+0)+0,f
	clrc
	rrf	(??_ConmunicateToPc+0)+0,f
	movf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+04h)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ConmunicateToPc+1)+0
	movf	0+(??_ConmunicateToPc+0)+0,w
	subwf	(??_ConmunicateToPc+1)+0,w
	movwf	(??_ConmunicateToPc+2)+0
	movf	(ConmunicateToPc@ucTempPackNum),w
	movwf	(??_ConmunicateToPc+3)+0
	clrc
	rlf	(??_ConmunicateToPc+3)+0,f
	clrc
	rlf	(??_ConmunicateToPc+3)+0,f
	clrc
	rlf	(??_ConmunicateToPc+3)+0,f
	movlw	(low(_ucInActiveSensorDeltaArray|((0x0)<<8)))&0ffh
	addwf	0+(??_ConmunicateToPc+3)+0,w
	movwf	(??_ConmunicateToPc+4)+0
	movf	(ConmunicateToPc@i),w
	addwf	0+(??_ConmunicateToPc+4)+0,w
	movwf	(??_ConmunicateToPc+5)+0
	movf	0+(??_ConmunicateToPc+5)+0,w
	movwf	fsr0
	movf	(??_ConmunicateToPc+2)+0,w
	movwf	indf
	line	443
	
l10562:	
	incf	(ConmunicateToPc@i),f
	
l10564:	
	movf	(ConmunicateToPc@ucTemp),w
	subwf	(ConmunicateToPc@i),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l10560
u2080:
	line	448
	
l10566:	
;uart.c: 447: }
;uart.c: 448: ucMULTIPLE = UART_TX_Buff[ucTempLength + 2];
	movf	(ConmunicateToPc@ucTempLength),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+02h)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(_ucMULTIPLE)
	line	449
;uart.c: 449: }
	goto	l10586
	line	450
	
l10568:	
;uart.c: 450: else if((UART_TX_Buff[3] & 0xF0) == 0xD0)
	movlw	low(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	0+(_UART_TX_Buff)^080h+03h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ConmunicateToPc+0)+0
		movlw	208
	xorwf	((??_ConmunicateToPc+0)+0),w
	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l10586
u2090:
	line	452
	
l10570:	
;uart.c: 451: {
;uart.c: 452: for(i=0;i<4;i++)
	clrf	(ConmunicateToPc@i)
	line	454
	
l10576:	
;uart.c: 453: {
;uart.c: 454: uiGroupArray[i] = (unsigned int)UART_TX_Buff[(unsigned char)(4+2*i)];
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+04h)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ConmunicateToPc+0)+0
	clrf	(??_ConmunicateToPc+0)+0+1
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_uiGroupArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_ConmunicateToPc+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_ConmunicateToPc+0)+0,w
	movwf	indf
	line	455
;uart.c: 455: uiGroupArray[i] <<= 8;
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_uiGroupArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	clrf	indf
	incf	fsr0,f
	movwf	indf
	decf	fsr0,f
	line	456
	
l10578:	
;uart.c: 456: uiGroupArray[i] += UART_TX_Buff[(unsigned char)(4+2*i+1)];
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8)+05h)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ConmunicateToPc+0)+0
	clrf	(??_ConmunicateToPc+0)+0+1
	clrc
	rlf	(ConmunicateToPc@i),w
	addlw	low(_uiGroupArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??_ConmunicateToPc+0)+0,w
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movf	1+(??_ConmunicateToPc+0)+0,w
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	452
	
l10580:	
	incf	(ConmunicateToPc@i),f
	
l10582:	
	movlw	low(04h)
	subwf	(ConmunicateToPc@i),w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l10576
u2100:
	
l6003:	
	line	459
;uart.c: 458: }
;uart.c: 459: bTestSleepFlag = 1;
	bsf	(258/8),(258)&7	;volatile
	line	460
	
l10584:	
;uart.c: 460: _ucLPGapCnt = 0;
	clrf	(__ucLPGapCnt)
	line	462
	
l10586:	
;uart.c: 461: }
;uart.c: 462: UART_TX_Buff[0] = 0x55;
	movlw	low(055h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_UART_TX_Buff)^080h
	line	463
;uart.c: 463: }
	goto	l10590
	line	466
	
l10588:	
;uart.c: 464: else
;uart.c: 465: {
;uart.c: 466: UART_TX_Buff[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_UART_TX_Buff)^080h
	line	468
	
l10590:	
;uart.c: 467: }
;uart.c: 468: SendDataToPC(1);
	movlw	low(01h)
	fcall	_SendDataToPC
	line	471
	
l10592:	
;uart.c: 469: }
;uart.c: 470: }
;uart.c: 471: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	475
	
l6005:	
	return
	opt stack 0
GLOBAL	__end_of_ConmunicateToPc
	__end_of_ConmunicateToPc:
	signat	_ConmunicateToPc,89
	global	_TSC_GetPrevData

;; *************** function _TSC_GetPrevData *****************
;; Defined at:
;;		line 858 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;  KeyNum          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyNum          1    0[BANK0l] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       1       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       1       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GetKeyVal
;; This function is called by:
;;		_ConmunicateToPc
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"touch_test.c"
	line	858
global __ptext9
__ptext9:	;psect for function _TSC_GetPrevData
psect	text9
	file	"touch_test.c"
	line	858
	global	__size_of_TSC_GetPrevData
	__size_of_TSC_GetPrevData	equ	__end_of_TSC_GetPrevData-_TSC_GetPrevData
	
_TSC_GetPrevData:	
;incstack = 0
	opt	stack 2
; Regs used in _TSC_GetPrevData: [wreg+status,2+status,0+pclath+cstack]
;TSC_GetPrevData@KeyNum stored from wreg
	movwf	(TSC_GetPrevData@KeyNum)
	line	860
	
l10208:	
	movf	((TSC_GetPrevData@KeyNum)),w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l10220
u1700:
	line	862
	
l10210:	
;touch_test.c: 861: {
;touch_test.c: 862: cidx = KeyNum;
	movf	(TSC_GetPrevData@KeyNum),w
	movwf	(33)
	line	863
;touch_test.c: 863: coffset = 6;
	movlw	low(06h)
	movwf	(106)
	line	864
	
l10212:	
;touch_test.c: 864: GetKeyVal();
	fcall	_GetKeyVal
	line	865
	
l10214:	
;touch_test.c: 865: return ReferenceData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(109+1),w
	movwf	(?_TSC_GetPrevData+1)
	movf	(109),w
	movwf	(?_TSC_GetPrevData)
	goto	l8066
	line	869
	
l10220:	
;touch_test.c: 867: else
;touch_test.c: 868: {
;touch_test.c: 869: return 0;
	clrf	(?_TSC_GetPrevData)
	clrf	(?_TSC_GetPrevData+1)
	line	871
	
l8066:	
	return
	opt stack 0
GLOBAL	__end_of_TSC_GetPrevData
	__end_of_TSC_GetPrevData:
	signat	_TSC_GetPrevData,4218
	global	_SendDataToPC

;; *************** function _SendDataToPC *****************
;; Defined at:
;;		line 352 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  size            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  size            1    3[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_ConmunicateToPc
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"uart.c"
	line	352
global __ptext10
__ptext10:	;psect for function _SendDataToPC
psect	text10
	file	"uart.c"
	line	352
	global	__size_of_SendDataToPC
	__size_of_SendDataToPC	equ	__end_of_SendDataToPC-_SendDataToPC
	
_SendDataToPC:	
;incstack = 0
	opt	stack 2
; Regs used in _SendDataToPC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SendDataToPC@size stored from wreg
	movwf	(SendDataToPC@size)
	line	355
	
l9552:	
;uart.c: 354: unsigned char i;
;uart.c: 355: for(i=0;i<size;i++)
	clrf	(SendDataToPC@i)
	goto	l9558
	line	357
	
l9554:	
;uart.c: 356: {
;uart.c: 357: uart_tx(UART_TX_Buff[i]);
	movf	(SendDataToPC@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_uart_tx
	line	355
	
l9556:	
	incf	(SendDataToPC@i),f
	
l9558:	
	movf	(SendDataToPC@size),w
	subwf	(SendDataToPC@i),w
	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l9554
u1080:
	line	360
	
l5970:	
	return
	opt stack 0
GLOBAL	__end_of_SendDataToPC
	__end_of_SendDataToPC:
	signat	_SendDataToPC,4217
	global	_uart_tx

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 99 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_delay
;; This function is called by:
;;		_SendDataToPC
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	99
global __ptext11
__ptext11:	;psect for function _uart_tx
psect	text11
	file	"uart.c"
	line	99
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
;incstack = 0
	opt	stack 2
; Regs used in _uart_tx: [wreg+status,2+status,0+pclath+cstack]
;uart_tx@data stored from wreg
	line	100
	movwf	(uart_tx@data)
	line	102
	
l9360:	
;uart.c: 102: PB7 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	103
;uart.c: 103: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	104
;uart.c: 104: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	105
	
l9362:	
;uart.c: 105: uart_delay();
	fcall	_uart_delay
	line	106
	
l9364:	
;uart.c: 106: if(data & 0x01)
	btfss	(uart_tx@data),(0)&7
	goto	u851
	goto	u850
u851:
	goto	l5907
u850:
	line	108
	
l9366:	
;uart.c: 107: {
;uart.c: 108: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	109
;uart.c: 109: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	110
	
l9368:	
;uart.c: 110: uart_delay();
	fcall	_uart_delay
	line	111
;uart.c: 111: }
	goto	l9372
	line	112
	
l5907:	
	line	114
;uart.c: 112: else
;uart.c: 113: {
;uart.c: 114: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	115
;uart.c: 115: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	116
;uart.c: 116: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9368
	line	119
	
l9372:	
;uart.c: 118: }
;uart.c: 119: if(data & 0x02)
	btfss	(uart_tx@data),(1)&7
	goto	u861
	goto	u860
u861:
	goto	l5909
u860:
	line	121
	
l9374:	
;uart.c: 120: {
;uart.c: 121: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	122
;uart.c: 122: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	123
	
l9376:	
;uart.c: 123: uart_delay();
	fcall	_uart_delay
	line	124
;uart.c: 124: }
	goto	l9380
	line	125
	
l5909:	
	line	127
;uart.c: 125: else
;uart.c: 126: {
;uart.c: 127: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	128
;uart.c: 128: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	129
;uart.c: 129: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9376
	line	132
	
l9380:	
;uart.c: 131: }
;uart.c: 132: if(data & 0x04)
	btfss	(uart_tx@data),(2)&7
	goto	u871
	goto	u870
u871:
	goto	l5911
u870:
	line	134
	
l9382:	
;uart.c: 133: {
;uart.c: 134: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	135
;uart.c: 135: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	136
	
l9384:	
;uart.c: 136: uart_delay();
	fcall	_uart_delay
	line	137
;uart.c: 137: }
	goto	l9388
	line	138
	
l5911:	
	line	140
;uart.c: 138: else
;uart.c: 139: {
;uart.c: 140: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	141
;uart.c: 141: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	142
;uart.c: 142: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9384
	line	145
	
l9388:	
;uart.c: 144: }
;uart.c: 145: if(data & 0x08)
	btfss	(uart_tx@data),(3)&7
	goto	u881
	goto	u880
u881:
	goto	l5913
u880:
	line	147
	
l9390:	
;uart.c: 146: {
;uart.c: 147: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	148
;uart.c: 148: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	149
	
l9392:	
;uart.c: 149: uart_delay();
	fcall	_uart_delay
	line	150
;uart.c: 150: }
	goto	l9396
	line	151
	
l5913:	
	line	153
;uart.c: 151: else
;uart.c: 152: {
;uart.c: 153: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	154
;uart.c: 154: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	155
;uart.c: 155: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9392
	line	158
	
l9396:	
;uart.c: 157: }
;uart.c: 158: if(data & 0x10)
	btfss	(uart_tx@data),(4)&7
	goto	u891
	goto	u890
u891:
	goto	l5915
u890:
	line	160
	
l9398:	
;uart.c: 159: {
;uart.c: 160: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	161
;uart.c: 161: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	162
	
l9400:	
;uart.c: 162: uart_delay();
	fcall	_uart_delay
	line	163
;uart.c: 163: }
	goto	l9404
	line	164
	
l5915:	
	line	166
;uart.c: 164: else
;uart.c: 165: {
;uart.c: 166: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	167
;uart.c: 167: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	168
;uart.c: 168: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9400
	line	171
	
l9404:	
;uart.c: 170: }
;uart.c: 171: if(data & 0x20)
	btfss	(uart_tx@data),(5)&7
	goto	u901
	goto	u900
u901:
	goto	l5917
u900:
	line	173
	
l9406:	
;uart.c: 172: {
;uart.c: 173: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	174
;uart.c: 174: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	175
	
l9408:	
;uart.c: 175: uart_delay();
	fcall	_uart_delay
	line	176
;uart.c: 176: }
	goto	l9412
	line	177
	
l5917:	
	line	179
;uart.c: 177: else
;uart.c: 178: {
;uart.c: 179: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	180
;uart.c: 180: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	181
;uart.c: 181: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9408
	line	184
	
l9412:	
;uart.c: 183: }
;uart.c: 184: if(data & 0x40)
	btfss	(uart_tx@data),(6)&7
	goto	u911
	goto	u910
u911:
	goto	l5919
u910:
	line	186
	
l9414:	
;uart.c: 185: {
;uart.c: 186: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	187
;uart.c: 187: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	188
	
l9416:	
;uart.c: 188: uart_delay();
	fcall	_uart_delay
	line	189
;uart.c: 189: }
	goto	l9420
	line	190
	
l5919:	
	line	192
;uart.c: 190: else
;uart.c: 191: {
;uart.c: 192: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	193
;uart.c: 193: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	194
;uart.c: 194: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9416
	line	197
	
l9420:	
;uart.c: 196: }
;uart.c: 197: if(data & 0x80)
	btfss	(uart_tx@data),(7)&7
	goto	u921
	goto	u920
u921:
	goto	l5921
u920:
	line	199
	
l9422:	
;uart.c: 198: {
;uart.c: 199: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	200
;uart.c: 200: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	201
	
l9424:	
;uart.c: 201: uart_delay();
	fcall	_uart_delay
	line	202
;uart.c: 202: }
	goto	l9428
	line	203
	
l5921:	
	line	205
;uart.c: 203: else
;uart.c: 204: {
;uart.c: 205: PB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	206
;uart.c: 206: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	207
;uart.c: 207: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l9424
	line	210
	
l9428:	
;uart.c: 209: }
;uart.c: 210: PB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	211
	
l9430:	
;uart.c: 211: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	212
	
l9432:	
;uart.c: 212: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	213
;uart.c: 213: uart_delay ();
	fcall	_uart_delay
	line	215
	
l5923:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
	signat	_uart_tx,4217
	global	_uart_delay

;; *************** function _uart_delay *****************
;; Defined at:
;;		line 85 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_tx
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	85
global __ptext12
__ptext12:	;psect for function _uart_delay
psect	text12
	file	"uart.c"
	line	85
	global	__size_of_uart_delay
	__size_of_uart_delay	equ	__end_of_uart_delay-_uart_delay
	
_uart_delay:	
;incstack = 0
	opt	stack 2
; Regs used in _uart_delay: []
	line	88
	
l9356:	
;uart.c: 88: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	89
;uart.c: 89: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	90
;uart.c: 90: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	91
;uart.c: 91: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	92
;uart.c: 92: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	94
;uart.c: 94: __nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	97
	
l5904:	
	return
	opt stack 0
GLOBAL	__end_of_uart_delay
	__end_of_uart_delay:
	signat	_uart_delay,89
	global	_ReceiveDataPc

;; *************** function _ReceiveDataPc *****************
;; Defined at:
;;		line 340 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_rx
;; This function is called by:
;;		_ConmunicateToPc
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	340
global __ptext13
__ptext13:	;psect for function _ReceiveDataPc
psect	text13
	file	"uart.c"
	line	340
	global	__size_of_ReceiveDataPc
	__size_of_ReceiveDataPc	equ	__end_of_ReceiveDataPc-_ReceiveDataPc
	
_ReceiveDataPc:	
;incstack = 0
	opt	stack 3
; Regs used in _ReceiveDataPc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	343
	
l9530:	
;uart.c: 342: unsigned char i;
;uart.c: 343: for(i=0;i<14;i++)
	clrf	(ReceiveDataPc@i)
	line	345
	
l9536:	
;uart.c: 344: {
;uart.c: 345: if(uart_rx() == IDLE_STA) return 0;
	fcall	_uart_rx
	xorlw	0
	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l9542
u1060:
	
l9538:	
	movlw	low(0)
	goto	l5964
	line	346
	
l9542:	
;uart.c: 346: UART_TX_Buff[i] = data;
	movf	(ReceiveDataPc@i),w
	addlw	low(_UART_TX_Buff|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(_data),w	;volatile
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	343
	
l9544:	
	incf	(ReceiveDataPc@i),f
	
l9546:	
	movlw	low(0Eh)
	subwf	(ReceiveDataPc@i),w
	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l9536
u1070:
	line	348
	
l9548:	
;uart.c: 347: }
;uart.c: 348: return 1;
	movlw	low(01h)
	line	349
	
l5964:	
	return
	opt stack 0
GLOBAL	__end_of_ReceiveDataPc
	__end_of_ReceiveDataPc:
	signat	_ReceiveDataPc,89
	global	_uart_rx

;; *************** function _uart_rx *****************
;; Defined at:
;;		line 217 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E2985
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReceiveDataPc
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	217
global __ptext14
__ptext14:	;psect for function _uart_rx
psect	text14
	file	"uart.c"
	line	217
	global	__size_of_uart_rx
	__size_of_uart_rx	equ	__end_of_uart_rx-_uart_rx
	
_uart_rx:	
;incstack = 0
	opt	stack 3
; Regs used in _uart_rx: [wreg+status,2+status,0]
	line	220
	
l9434:	
;uart.c: 220: data = 0;
	clrf	(_data)	;volatile
	line	221
;uart.c: 221: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	222
;uart.c: 222: while(PB6)
	goto	l5926
	line	225
	
l9436:	
;uart.c: 223: {
;uart.c: 225: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	226
	
l9438:	
;uart.c: 226: if(uiRX_t > 250)
	movlw	low(0FBh)
	subwf	(_uiRX_t),w	;volatile
	skipc
	goto	u931
	goto	u930
u931:
	goto	l5928
u930:
	line	228
	
l9440:	
;uart.c: 227: {
;uart.c: 228: return IDLE_STA;
	movlw	low(0)
	goto	l5929
	line	229
	
l5928:	
	line	230
;uart.c: 229: }
;uart.c: 230: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	231
	
l5926:	
	line	222
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7	;volatile
	goto	u941
	goto	u940
u941:
	goto	l9436
u940:
	
l5930:	
	line	232
;uart.c: 231: }
;uart.c: 232: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	233
	
l9444:	
;uart.c: 233: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	234
;uart.c: 234: while(uiRX_t != 11)
	goto	l9448
	line	236
	
l9446:	
;uart.c: 235: {
;uart.c: 236: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	234
	
l9448:	
		movlw	11
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l9446
u950:
	line	238
	
l9450:	
;uart.c: 237: }
;uart.c: 238: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	239
	
l9452:	
;uart.c: 239: data |= (unsigned char)PB6;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7	;volatile
	movlw	1
	iorwf	(_data),f	;volatile
	line	244
;uart.c: 244: while(uiRX_t != 8)
	goto	l9456
	line	246
	
l9454:	
;uart.c: 245: {
;uart.c: 246: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	244
	
l9456:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l9454
u960:
	line	248
	
l9458:	
;uart.c: 247: }
;uart.c: 248: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	249
	
l9460:	
;uart.c: 249: data |= (unsigned char)PB6 << 1;
	movlw	0
	btfsc	(54/8),(54)&7	;volatile
	movlw	(1 << (01h))
	iorwf	(_data),f	;volatile
	line	255
;uart.c: 255: while(uiRX_t != 8)
	goto	l9464
	line	257
	
l9462:	
;uart.c: 256: {
;uart.c: 257: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	255
	
l9464:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l9462
u970:
	line	259
	
l9466:	
;uart.c: 258: }
;uart.c: 259: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	260
	
l9468:	
;uart.c: 260: data |= (unsigned char)PB6 << 2;
	movlw	0
	btfsc	(54/8),(54)&7	;volatile
	movlw	(1 << (02h))
	iorwf	(_data),f	;volatile
	line	266
;uart.c: 266: while(uiRX_t != 8)
	goto	l9472
	line	268
	
l9470:	
;uart.c: 267: {
;uart.c: 268: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	266
	
l9472:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u981
	goto	u980
u981:
	goto	l9470
u980:
	line	270
	
l9474:	
;uart.c: 269: }
;uart.c: 270: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	271
	
l9476:	
;uart.c: 271: data |= (unsigned char)PB6 << 3;
	movlw	0
	btfsc	(54/8),(54)&7	;volatile
	movlw	(1 << (03h))
	iorwf	(_data),f	;volatile
	line	277
;uart.c: 277: while(uiRX_t != 8)
	goto	l9480
	line	279
	
l9478:	
;uart.c: 278: {
;uart.c: 279: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	277
	
l9480:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u991
	goto	u990
u991:
	goto	l9478
u990:
	line	281
	
l9482:	
;uart.c: 280: }
;uart.c: 281: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	282
	
l9484:	
;uart.c: 282: data |= (unsigned char)PB6 << 4;
	movlw	0
	btfsc	(54/8),(54)&7	;volatile
	movlw	(1 << (04h))
	iorwf	(_data),f	;volatile
	line	289
;uart.c: 289: while(uiRX_t != 8)
	goto	l9488
	line	291
	
l9486:	
;uart.c: 290: {
;uart.c: 291: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	289
	
l9488:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l9486
u1000:
	line	293
	
l9490:	
;uart.c: 292: }
;uart.c: 293: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	294
	
l9492:	
;uart.c: 294: data |= (unsigned char)PB6 << 5;
	movlw	0
	btfsc	(54/8),(54)&7	;volatile
	movlw	(1 << (05h))
	iorwf	(_data),f	;volatile
	line	301
;uart.c: 301: while(uiRX_t != 8)
	goto	l9496
	line	303
	
l9494:	
;uart.c: 302: {
;uart.c: 303: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	301
	
l9496:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l9494
u1010:
	line	305
	
l9498:	
;uart.c: 304: }
;uart.c: 305: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	306
	
l9500:	
;uart.c: 306: data |= (unsigned char)PB6 << 6;
	movlw	0
	btfsc	(54/8),(54)&7	;volatile
	movlw	(1 << (06h))
	iorwf	(_data),f	;volatile
	line	313
;uart.c: 313: while(uiRX_t != 8)
	goto	l9504
	line	315
	
l9502:	
;uart.c: 314: {
;uart.c: 315: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	313
	
l9504:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l9502
u1020:
	line	317
	
l9506:	
;uart.c: 316: }
;uart.c: 317: uiRX_t = 0;
	clrf	(_uiRX_t)	;volatile
	line	318
	
l9508:	
;uart.c: 318: data |= (unsigned char)PB6 << 7;
	movlw	0
	btfsc	(54/8),(54)&7	;volatile
	movlw	(1 << (07h))
	iorwf	(_data),f	;volatile
	line	325
;uart.c: 325: while(uiRX_t != 8)
	goto	l9512
	line	327
	
l9510:	
;uart.c: 326: {
;uart.c: 327: uiRX_t++;
	incf	(_uiRX_t),f	;volatile
	line	325
	
l9512:	
		movlw	8
	xorwf	((_uiRX_t)),w	;volatile
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l9510
u1030:
	
l5957:	
	line	334
;uart.c: 328: }
;uart.c: 334: if(!PB6)
	btfsc	(54/8),(54)&7	;volatile
	goto	u1041
	goto	u1040
u1041:
	goto	l9518
u1040:
	line	335
	
l9514:	
;uart.c: 335: return STOP_ERROR_STA;
	movlw	low(02h)
	goto	l5929
	line	337
	
l9518:	
;uart.c: 337: return DATA_STA;
	movlw	low(01h)
	line	338
	
l5929:	
	return
	opt stack 0
GLOBAL	__end_of_uart_rx
	__end_of_uart_rx:
	signat	_uart_rx,89
	global	_TSC_INITIAL

;; *************** function _TSC_INITIAL *****************
;; Defined at:
;;		line 591 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/200
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       3       0       0       0
;;      Totals:         0       0       0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearKeyBuff
;;		_ReadCap
;;		_SavKeyData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"touch_test.c"
	line	591
global __ptext15
__ptext15:	;psect for function _TSC_INITIAL
psect	text15
	file	"touch_test.c"
	line	591
	global	__size_of_TSC_INITIAL
	__size_of_TSC_INITIAL	equ	__end_of_TSC_INITIAL-_TSC_INITIAL
	
_TSC_INITIAL:	
;incstack = 0
	opt	stack 4
; Regs used in _TSC_INITIAL: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	594
	
l10696:	
;touch_test.c: 594: TKCON0 = 0x09;
	movlw	low(09h)
	movwf	(283)^0100h	;volatile
	line	597
;touch_test.c: 597: PCON = 0x88;
	movlw	low(088h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(142)^080h	;volatile
	line	598
;touch_test.c: 598: T1CON0 = 0x40;
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(262)^0100h	;volatile
	line	599
;touch_test.c: 599: PR1H = 0x0F;
	movlw	low(0Fh)
	movwf	(280)^0100h	;volatile
	line	600
;touch_test.c: 600: PR1L = 0xFF;
	movlw	low(0FFh)
	movwf	(279)^0100h	;volatile
	line	601
;touch_test.c: 601: MSCON2 = 0x03;
	movlw	low(03h)
	movwf	(269)^0100h	;volatile
	line	604
;touch_test.c: 604: *((char *)(&uiDefaultSysclk)) = FOSCCALL;
	movf	(265)^0100h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_uiDefaultSysclk)
	line	605
	
l10698:	
;touch_test.c: 605: MSCON1 |= 0X02;;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(257)^0100h+(1/8),(1)&7	;volatile
	line	606
;touch_test.c: 606: TransferData = FOSCCALH;
	movf	(265)^0100h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(115)
	line	607
	
l10700:	
;touch_test.c: 607: MSCON1 &= ~0X02;;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(257)^0100h+(1/8),(1)&7	;volatile
	line	608
;touch_test.c: 608: *((char *)(&uiDefaultSysclk)+1) = TransferData;
	bcf	status, 6	;RP1=0, select bank0
	movf	(115),w
	movwf	0+(_uiDefaultSysclk)+01h	;volatile
	line	612
;touch_test.c: 612: T0CON0 = 0x05;
	movlw	low(05h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	613
;touch_test.c: 613: PR0 = 3;
	movlw	low(03h)
	movwf	(263)^0100h	;volatile
	line	614
;touch_test.c: 614: T0DUTY = 2;
	movlw	low(02h)
	movwf	(264)^0100h	;volatile
	line	620
	
l10702:	
;touch_test.c: 620: MSCON1 |= 0X02;;
	bsf	(257)^0100h+(1/8),(1)&7	;volatile
	line	621
;touch_test.c: 621: LVDCON = 0x77;
	movlw	low(077h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(26)	;volatile
	line	622
	
l10704:	
;touch_test.c: 622: MSCON1 &= ~0X02;;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(257)^0100h+(1/8),(1)&7	;volatile
	line	624
	
l10706:	
;touch_test.c: 624: for (ucTempCount = 0; ucTempCount < ucKEY_NUMBER_MAX; ucTempCount++)
	clrf	(_ucTempCount)
	
l10708:	
	movf	((_ucTempCount)),w
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l10712
u2140:
	goto	l10718
	line	626
	
l10712:	
;touch_test.c: 625: {
;touch_test.c: 626: ucTempIndex = ucKeyIndexMapArray[ucTempCount];
	movf	(_ucTempCount),w
	addlw	low((((_ucKeyIndexMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_ucTempIndex)
	line	627
;touch_test.c: 627: *((unsigned char*)(stTouchIoMapArray[ucTempIndex].tr&0x7F)) &= ~stTouchIoMapArray[ucTempIndex].b;
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h)+01h)
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_TSC_INITIAL+0)+0
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	07Fh
	movwf	(??_TSC_INITIAL+1)+0
	clrf	(??_TSC_INITIAL+1)+0+1
	movf	0+(??_TSC_INITIAL+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_TSC_INITIAL+1)+0,0
	bcf	status,7
	movf	(??_TSC_INITIAL+0)+0,w
	andwf	indf,f
	line	628
;touch_test.c: 628: *((unsigned char*)(stTouchIoMapArray[ucTempIndex].tr)) &= ~stTouchIoMapArray[ucTempIndex].b;
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h)+01h)
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	movwf	(??_TSC_INITIAL+0)+0
	clrc
	rlf	(_ucTempIndex),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TSC_INITIAL+1)+0
	clrf	(??_TSC_INITIAL+1)+0+1
	movf	0+(??_TSC_INITIAL+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_TSC_INITIAL+1)+0,0
	bcf	status,7
	movf	(??_TSC_INITIAL+0)+0,w
	andwf	indf,f
	line	624
	
l10714:	
	incf	(_ucTempCount),f
	goto	l10708
	line	630
	
l10718:	
;touch_test.c: 629: }
;touch_test.c: 630: ClearKeyBuff();
	fcall	_ClearKeyBuff
	line	632
	
l10720:	
;touch_test.c: 632: for(ResultDataL = 0; ResultDataL < ucKEY_NUMBER_MAX; ResultDataL++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(107)
	
l10722:	
	movf	((107)),w
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l10726
u2150:
	goto	l10732
	line	634
	
l10726:	
;touch_test.c: 633: {
;touch_test.c: 634: ucActiveSensorDeltaArray[ResultDataL] = 0xFF;
	movf	(107),w
	addlw	low(_ucActiveSensorDeltaArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(0FFh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	635
;touch_test.c: 635: ucInActiveSensorDeltaArray[ResultDataL] = 0xFF;
	movf	(107),w
	addlw	low(_ucInActiveSensorDeltaArray|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(0FFh)
	movwf	indf
	line	632
	
l10728:	
	incf	(107),f
	goto	l10722
	line	638
	
l10732:	
;touch_test.c: 636: }
;touch_test.c: 638: unTKData.uiTKData[1] = 0;
	clrf	0+(96)+02h
	clrf	1+(96)+02h
	line	639
;touch_test.c: 639: unTKData.uiTKData[2] = 0;
	clrf	0+(96)+04h
	clrf	1+(96)+04h
	line	640
;touch_test.c: 640: for(ResultDataL = 0; ResultDataL < ucKEY_NUMBER_MAX; ResultDataL++)
	clrf	(107)
	
l10734:	
	movf	((107)),w
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l10738
u2160:
	goto	l10746
	line	642
	
l10738:	
;touch_test.c: 641: {
;touch_test.c: 642: unTKData.uiTKData[0] = 128;
	movlw	080h
	movwf	(96)
	clrf	(96+1)
	line	643
;touch_test.c: 643: cidx = ResultDataL;
	movf	(107),w
	movwf	(33)
	line	644
	
l10740:	
;touch_test.c: 644: SavKeyData();
	fcall	_SavKeyData
	line	640
	
l10742:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(107),f
	goto	l10734
	line	646
	
l10746:	
	clrf	(_ucSEND_GAP)
	line	647
;touch_test.c: 647: ucSweepKeyNum = 0;
	clrf	(_ucSweepKeyNum)
	line	648
;touch_test.c: 648: ucFreqChargeCount = 0;
	clrf	(_ucFreqChargeCount)
	line	649
;touch_test.c: 649: ucKeyPollingCount = 0;
	clrf	(_ucKeyPollingCount)
	line	650
;touch_test.c: 650: ucFreqIndex = F_4M;
	clrf	(_ucFreqIndex)
	line	651
;touch_test.c: 651: ucTKeyOutStrongest = 0;
	clrf	(_ucTKeyOutStrongest)
	line	652
	
l10748:	
;touch_test.c: 652: bTestScanSetFlag = 1;
	bsf	(259/8),(259)&7	;volatile
	line	653
	
l10750:	
;touch_test.c: 653: bTestSleepFlag = 0;
	bcf	(258/8),(258)&7	;volatile
	line	655
	
l10752:	
;touch_test.c: 655: ReadCap();
	fcall	_ReadCap
	line	656
	
l8043:	
	return
	opt stack 0
GLOBAL	__end_of_TSC_INITIAL
	__end_of_TSC_INITIAL:
	signat	_TSC_INITIAL,89
	global	_SavKeyData

;; *************** function _SavKeyData *****************
;; Defined at:
;;		line 1357 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_GetAddress
;; This function is called by:
;;		_TSC_INITIAL
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	line	1357
global __ptext16
__ptext16:	;psect for function _SavKeyData
psect	text16
	file	"touch_test.c"
	line	1357
	global	__size_of_SavKeyData
	__size_of_SavKeyData	equ	__end_of_SavKeyData-_SavKeyData
	
_SavKeyData:	
;incstack = 0
	opt	stack 3
; Regs used in _SavKeyData: [status,2+status,0+pclath+cstack]
	line	1359
	
l10240:	
;touch_test.c: 1359: GetAddress();
	fcall	_GetAddress
	line	1361
# 1361 "touch_test.c"
MOVF _cidx,w ;# 
	line	1362
# 1362 "touch_test.c"
MOVWF _FSR ;# 
	line	1364
# 1364 "touch_test.c"
MOVF 0x60+0,w ;# 
	line	1365
# 1365 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1366
# 1366 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1367
# 1367 "touch_test.c"
MOVWF _INDF ;# 
	line	1369
# 1369 "touch_test.c"
INCF _FSR,f ;# 
	line	1370
# 1370 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1371
# 1371 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1372
# 1372 "touch_test.c"
MOVF 0x60+1,w ;# 
	line	1373
# 1373 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1374
# 1374 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1375
# 1375 "touch_test.c"
MOVWF _INDF ;# 
	line	1377
# 1377 "touch_test.c"
INCF _FSR,f ;# 
	line	1378
# 1378 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1379
# 1379 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1380
# 1380 "touch_test.c"
MOVF 0x60+2,w ;# 
	line	1381
# 1381 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1382
# 1382 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1383
# 1383 "touch_test.c"
MOVWF _INDF ;# 
	line	1385
# 1385 "touch_test.c"
INCF _FSR,f ;# 
	line	1386
# 1386 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1387
# 1387 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1388
# 1388 "touch_test.c"
MOVF 0x60+3,w ;# 
	line	1389
# 1389 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1390
# 1390 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1391
# 1391 "touch_test.c"
MOVWF _INDF ;# 
	line	1393
# 1393 "touch_test.c"
INCF _FSR,f ;# 
	line	1394
# 1394 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1395
# 1395 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1396
# 1396 "touch_test.c"
MOVF 0x60+4,w ;# 
	line	1397
# 1397 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1398
# 1398 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1399
# 1399 "touch_test.c"
MOVWF _INDF ;# 
	line	1401
# 1401 "touch_test.c"
INCF _FSR,f ;# 
	line	1402
# 1402 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1403
# 1403 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1404
# 1404 "touch_test.c"
MOVF 0x60+5,w ;# 
	line	1405
# 1405 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1406
# 1406 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1407
# 1407 "touch_test.c"
MOVWF _INDF ;# 
	line	1409
# 1409 "touch_test.c"
INCF _FSR,f ;# 
	line	1410
# 1410 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1411
# 1411 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1412
# 1412 "touch_test.c"
MOVF 0x60+6,w ;# 
	line	1413
# 1413 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1414
# 1414 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1415
# 1415 "touch_test.c"
MOVWF _INDF ;# 
	line	1417
# 1417 "touch_test.c"
INCF _FSR,f ;# 
	line	1418
# 1418 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1419
# 1419 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1420
# 1420 "touch_test.c"
MOVF 0x60+7,w ;# 
	line	1421
# 1421 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1422
# 1422 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1423
# 1423 "touch_test.c"
MOVWF _INDF ;# 
	line	1425
# 1425 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
psect	text16
	line	1427
	
l8120:	
	return
	opt stack 0
GLOBAL	__end_of_SavKeyData
	__end_of_SavKeyData:
	signat	_SavKeyData,89
	global	_ReadCap

;; *************** function _ReadCap *****************
;; Defined at:
;;		line 516 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  channel         2    0[BANK0l] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       2       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         3       0       0       2       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SetTouchFreq
;; This function is called by:
;;		_TSC_INITIAL
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	line	516
global __ptext17
__ptext17:	;psect for function _ReadCap
psect	text17
	file	"touch_test.c"
	line	516
	global	__size_of_ReadCap
	__size_of_ReadCap	equ	__end_of_ReadCap-_ReadCap
	
_ReadCap:	
;incstack = 0
	opt	stack 4
; Regs used in _ReadCap: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	522
	
l10594:	
;touch_test.c: 518: unsigned int channel;
;touch_test.c: 522: ucKeyMapNumber = ucKeyIndexMapArray[ucSweepKeyNum];
	movf	(_ucSweepKeyNum),w
	addlw	low((((_ucKeyIndexMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_ucKeyMapNumber)
	line	523
;touch_test.c: 523: *((unsigned char*)(stTouchIoMapArray[ucKeyMapNumber].tr)) |= stTouchIoMapArray[ucKeyMapNumber].b;
	clrc
	rlf	(_ucKeyMapNumber),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h)+01h)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_ReadCap+0)+0
	clrc
	rlf	(_ucKeyMapNumber),w
	addlw	low((((_stTouchIoMapArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_ReadCap+1)+0
	clrf	(??_ReadCap+1)+0+1
	movf	0+(??_ReadCap+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_ReadCap+1)+0,0
	bcf	status,7
	movf	(??_ReadCap+0)+0,w
	iorwf	indf,f
	line	526
	
l10596:	
;touch_test.c: 526: if (ucKeyMapNumber < 14)
	movlw	low(0Eh)
	subwf	(_ucKeyMapNumber),w
	skipnc
	goto	u2111
	goto	u2110
u2111:
	goto	l10608
u2110:
	line	528
	
l10598:	
;touch_test.c: 527: {
;touch_test.c: 528: channel = 0x0001 << ucKeyMapNumber;
	incf	(_ucKeyMapNumber),w
	movwf	(??_ReadCap+0)+0
	movlw	01h
	movwf	(??_ReadCap+1)+0
	movlw	0
	movwf	(??_ReadCap+1)+0+1
	goto	u2124
u2125:
	clrc
	rlf	(??_ReadCap+1)+0,f
	rlf	(??_ReadCap+1)+1,f
u2124:
	decfsz	(??_ReadCap+0)+0,f
	goto	u2125
	
	movf	0+(??_ReadCap+1)+0,w
	movwf	(ReadCap@channel)
	movf	1+(??_ReadCap+1)+0,w
	movwf	(ReadCap@channel+1)
	line	529
	
l10600:	
;touch_test.c: 529: TKEN0 = channel & 0xFF;
	movf	(ReadCap@channel),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(284)^0100h	;volatile
	line	530
	
l10602:	
;touch_test.c: 530: TKEN1 = (channel >> 8) & 0x3F;
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(ReadCap@channel)+01h,w
	andlw	03Fh
	bsf	status, 6	;RP1=1, select bank2
	movwf	(285)^0100h	;volatile
	line	531
	
l10604:	
;touch_test.c: 531: TKEN2 = 0;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(412)^0180h	;volatile
	line	532
	
l10606:	
;touch_test.c: 532: TKEN3 = 0xC0;
	movlw	low(0C0h)
	movwf	(413)^0180h	;volatile
	line	533
;touch_test.c: 533: }
	goto	l10620
	line	536
	
l10608:	
;touch_test.c: 534: else
;touch_test.c: 535: {
;touch_test.c: 536: channel = 0x0001 << (ucKeyMapNumber - 14);
	clrf	(ReadCap@channel)
	incf	(ReadCap@channel),f
	clrf	(ReadCap@channel+1)
	
l10610:	
	movf	(_ucKeyMapNumber),w
	addlw	-14
	addlw	1
	goto	u2130
u2135:
	clrc
	rlf	(ReadCap@channel),f
	rlf	(ReadCap@channel+1),f
u2130:
	addlw	-1
	skipz
	goto	u2135
	line	537
	
l10612:	
;touch_test.c: 537: TKEN0 = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(284)^0100h	;volatile
	line	538
	
l10614:	
;touch_test.c: 538: TKEN1 = 0;
	clrf	(285)^0100h	;volatile
	line	539
;touch_test.c: 539: TKEN2 = channel & 0xFF;;
	bcf	status, 6	;RP1=0, select bank0
	movf	(ReadCap@channel),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(412)^0180h	;volatile
	line	540
	
l10616:	
;touch_test.c: 540: TKEN3 = (channel >> 8) & 0x3F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(ReadCap@channel)+01h,w
	andlw	03Fh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(413)^0180h	;volatile
	line	541
	
l10618:	
;touch_test.c: 541: TKEN3 |= 0xC0;
	movlw	low(0C0h)
	iorwf	(413)^0180h,f	;volatile
	line	546
	
l10620:	
;touch_test.c: 542: }
;touch_test.c: 546: TKCON0 = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	movwf	(283)^0100h	;volatile
	line	549
	
l10622:	
;touch_test.c: 549: TRISD &= ~0x20;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(136)^080h+(5/8),(5)&7	;volatile
	line	550
	
l10624:	
;touch_test.c: 550: PORTD &= ~0x20;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(8)+(5/8),(5)&7	;volatile
	line	553
	
l10626:	
;touch_test.c: 553: PCON = 0x8B;
	movlw	low(08Bh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(142)^080h	;volatile
	line	554
	
l10628:	
;touch_test.c: 554: T1CON0 = 0x40;
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(262)^0100h	;volatile
	line	556
	
l10630:	
;touch_test.c: 556: SetTouchFreq();
	fcall	_SetTouchFreq
	line	559
	
l10632:	
;touch_test.c: 559: T0ON = 0;
	bcf	(2091/8)^0100h,(2091)&7	;volatile
	line	560
	
l10634:	
;touch_test.c: 560: TMR0 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	563
	
l10636:	
;touch_test.c: 563: TMR1H = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(282)^0100h	;volatile
	line	564
	
l10638:	
;touch_test.c: 564: TMR1L = 0;
	clrf	(281)^0100h	;volatile
	line	567
	
l10640:	
;touch_test.c: 567: TRISD |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(136)^080h+(5/8),(5)&7	;volatile
	line	570
	
l10642:	
;touch_test.c: 570: TKCON0 = 0x09;
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(283)^0100h	;volatile
	line	573
	
l10644:	
;touch_test.c: 573: T1ON = 1;
	bsf	(2098/8)^0100h,(2098)&7	;volatile
	line	576
	
l10646:	
;touch_test.c: 576: T0ON = 1;
	bsf	(2091/8)^0100h,(2091)&7	;volatile
	line	579
	
l10648:	
;touch_test.c: 579: LVDIF = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	580
	
l10650:	
;touch_test.c: 580: LVDIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1125/8)^080h,(1125)&7	;volatile
	line	581
	
l8034:	
	return
	opt stack 0
GLOBAL	__end_of_ReadCap
	__end_of_ReadCap:
	signat	_ReadCap,89
	global	_SetTouchFreq

;; *************** function _SetTouchFreq *****************
;; Defined at:
;;		line 488 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/200
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadCap
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	488
global __ptext18
__ptext18:	;psect for function _SetTouchFreq
psect	text18
	file	"touch_test.c"
	line	488
	global	__size_of_SetTouchFreq
	__size_of_SetTouchFreq	equ	__end_of_SetTouchFreq-_SetTouchFreq
	
_SetTouchFreq:	
;incstack = 0
	opt	stack 4
; Regs used in _SetTouchFreq: [wreg+status,2+status,0]
	line	490
	
l10224:	
;touch_test.c: 490: if(ucFreqIndex == F_3d8M)
	bcf	status, 6	;RP1=0, select bank0
		decf	((_ucFreqIndex)),w
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l10228
u1710:
	file	"touch.h"
	line	213
	
l10226:	
	movlw	080h
	movwf	(114)
	movlw	01Dh
	movwf	((114))+1
	line	493
;touch_test.c: 493: }
	goto	l10230
	file	"touch_test.c"
	line	496
	
l10228:	
;touch_test.c: 494: else
;touch_test.c: 495: {
;touch_test.c: 496: ResultData2 = 0;
	clrf	(114)
	clrf	(114+1)
	line	498
	
l10230:	
;touch_test.c: 497: }
;touch_test.c: 498: ResultData2 += uiDefaultSysclk;
	movf	(_uiDefaultSysclk),w	;volatile
	addwf	(114),f
	skipnc
	incf	(114+1),f
	movf	(_uiDefaultSysclk+1),w	;volatile
	addwf	(114+1),f
	line	500
	
l10232:	
;touch_test.c: 500: FOSCCALL = ResultData2L;
	movf	(114),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(265)^0100h	;volatile
	line	501
	
l10234:	
;touch_test.c: 501: MSCON1 |= 0X02;;
	bsf	(257)^0100h+(1/8),(1)&7	;volatile
	line	502
	
l10236:	
;touch_test.c: 502: FOSCCALH = ResultData2H;
	bcf	status, 6	;RP1=0, select bank0
	movf	(115),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(265)^0100h	;volatile
	line	503
	
l10238:	
;touch_test.c: 503: MSCON1 &= ~0X02;;
	bcf	(257)^0100h+(1/8),(1)&7	;volatile
	line	504
	
l8029:	
	return
	opt stack 0
GLOBAL	__end_of_SetTouchFreq
	__end_of_SetTouchFreq:
	signat	_SetTouchFreq,89
	global	_ClearKeyBuff

;; *************** function _ClearKeyBuff *****************
;; Defined at:
;;		line 1231 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/200
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_INITIAL
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	1231
global __ptext19
__ptext19:	;psect for function _ClearKeyBuff
psect	text19
	file	"touch_test.c"
	line	1231
	global	__size_of_ClearKeyBuff
	__size_of_ClearKeyBuff	equ	__end_of_ClearKeyBuff-_ClearKeyBuff
	
_ClearKeyBuff:	
;incstack = 0
	opt	stack 5
; Regs used in _ClearKeyBuff: []
	line	1234
	
l10016:	
# 1234 "touch_test.c"
BANKSEL _coffset ;# 
	line	1235
# 1235 "touch_test.c"
MOVLW 0X20 ;# 
	line	1236
# 1236 "touch_test.c"
MOVWF _coffset ;# 
	line	1237
# 1237 "touch_test.c"
MOVLW 0X50 ;# 
	line	1238
# 1238 "touch_test.c"
MOVWF _ucSetIndex ;# 
	line	1239
# 1239 "touch_test.c"
BCF _STATUS,7 ;# 
	line	1240
# 1240 "touch_test.c"
LCALL _ClearKeyBuff1 ;# 
	line	1241
# 1241 "touch_test.c"
BSF _STATUS,7 ;# 
	line	1242
# 1242 "touch_test.c"
LCALL _ClearKeyBuff1 ;# 
	line	1243
# 1243 "touch_test.c"
MOVLW 0XA0 ;# 
	line	1244
# 1244 "touch_test.c"
MOVWF _coffset ;# 
	line	1245
# 1245 "touch_test.c"
BCF _STATUS,7 ;# 
	line	1246
# 1246 "touch_test.c"
LCALL _ClearKeyBuff1 ;# 
	line	1247
# 1247 "touch_test.c"
MOVLW 0X28 ;# 
	line	1248
# 1248 "touch_test.c"
MOVWF _ucSetIndex ;# 
	line	1249
# 1249 "touch_test.c"
BSF _STATUS,7 ;# 
	line	1251
# 1251 "touch_test.c"
_ClearKeyBuff1: ;# 
	line	1252
# 1252 "touch_test.c"
MOVF _ucSetIndex,w ;# 
	line	1253
# 1253 "touch_test.c"
MOVWF COUNT ;# 
	line	1254
# 1254 "touch_test.c"
MOVF _coffset,w ;# 
	line	1255
# 1255 "touch_test.c"
MOVWF _FSR ;# 
	line	1256
# 1256 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1257
# 1257 "touch_test.c"
BCF _STATUS,5 ;# 
	line	1258
# 1258 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1259
# 1259 "touch_test.c"
MOVLW 0X00 ;# 
	line	1260
# 1260 "touch_test.c"
ClearKeyBuff_L0: ;# 
	line	1261
# 1261 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1262
# 1262 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1263
# 1263 "touch_test.c"
MOVWF _INDF ;# 
	line	1264
# 1264 "touch_test.c"
INCF _FSR,f ;# 
	line	1265
# 1265 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1266
# 1266 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1267
# 1267 "touch_test.c"
DECFSZ COUNT , f ;# 
	line	1268
# 1268 "touch_test.c"
LJMP ClearKeyBuff_L0 ;# 
	line	1269
# 1269 "touch_test.c"
RET ;# 
psect	text19
	line	1271
	
l8114:	
	return
	opt stack 0
GLOBAL	__end_of_ClearKeyBuff
	__end_of_ClearKeyBuff:
	signat	_ClearKeyBuff,89
	global	_TSC_GetLocalKey

;; *************** function _TSC_GetLocalKey *****************
;; Defined at:
;;		line 834 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ulTKeyOutSin    4    8[BANK0l] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0l] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       4       0       0       0
;;      Locals:         0       0       0       4       0       0       0
;;      Temps:          0       0       0       4       0       0       0
;;      Totals:         0       0       0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GetKeyVal
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	834
global __ptext20
__ptext20:	;psect for function _TSC_GetLocalKey
psect	text20
	file	"touch_test.c"
	line	834
	global	__size_of_TSC_GetLocalKey
	__size_of_TSC_GetLocalKey	equ	__end_of_TSC_GetLocalKey-_TSC_GetLocalKey
	
_TSC_GetLocalKey:	
;incstack = 0
	opt	stack 4
; Regs used in _TSC_GetLocalKey: [wreg+status,2+status,0+pclath+cstack]
	line	836
	
l10758:	
;touch_test.c: 836: unsigned long ulTKeyOutSingle = 0;
	clrf	(TSC_GetLocalKey@ulTKeyOutSingle)
	clrf	(TSC_GetLocalKey@ulTKeyOutSingle+1)
	clrf	(TSC_GetLocalKey@ulTKeyOutSingle+2)
	clrf	(TSC_GetLocalKey@ulTKeyOutSingle+3)
	line	837
	
l10760:	
;touch_test.c: 837: for(ucTempCount=0;ucTempCount<ucKEY_NUMBER_MAX;ucTempCount++)
	clrf	(_ucTempCount)
	
l10762:	
	movf	((_ucTempCount)),w
	btfsc	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l10766
u2170:
	goto	l10778
	line	839
	
l10766:	
;touch_test.c: 838: {
;touch_test.c: 839: cidx = ucTempCount;
	movf	(_ucTempCount),w
	movwf	(33)
	line	840
;touch_test.c: 840: coffset = 2;
	movlw	low(02h)
	movwf	(106)
	line	841
	
l10768:	
;touch_test.c: 841: GetKeyVal();
	fcall	_GetKeyVal
	line	842
	
l10770:	
;touch_test.c: 842: if(ReferenceDataH & 0x80)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(110),(7)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l10774
u2180:
	line	844
	
l10772:	
;touch_test.c: 843: {
;touch_test.c: 844: ulTKeyOutSingle |= ((unsigned long)0x00000001 << ucTempCount);
	movlw	01h
	movwf	((??_TSC_GetLocalKey+0)+0)
	movlw	0
	movwf	((??_TSC_GetLocalKey+0)+0+1)
	movlw	0
	movwf	((??_TSC_GetLocalKey+0)+0+2)
	movlw	0
	movwf	((??_TSC_GetLocalKey+0)+0+3)
	incf	(_ucTempCount),w
	goto	u2190
u2195:
	clrc
	rlf	(??_TSC_GetLocalKey+0)+0,f
	rlf	(??_TSC_GetLocalKey+0)+1,f
	rlf	(??_TSC_GetLocalKey+0)+2,f
	rlf	(??_TSC_GetLocalKey+0)+3,f
u2190:
	addlw	-1
	skipz
	goto	u2195
	movf	0+(??_TSC_GetLocalKey+0)+0,w
	iorwf	(TSC_GetLocalKey@ulTKeyOutSingle),f
	movf	1+(??_TSC_GetLocalKey+0)+0,w
	iorwf	(TSC_GetLocalKey@ulTKeyOutSingle+1),f
	movf	2+(??_TSC_GetLocalKey+0)+0,w
	iorwf	(TSC_GetLocalKey@ulTKeyOutSingle+2),f
	movf	3+(??_TSC_GetLocalKey+0)+0,w
	iorwf	(TSC_GetLocalKey@ulTKeyOutSingle+3),f
	line	837
	
l10774:	
	incf	(_ucTempCount),f
	goto	l10762
	line	847
	
l10778:	
;touch_test.c: 845: }
;touch_test.c: 846: }
;touch_test.c: 847: return ulTKeyOutSingle;
	movf	(TSC_GetLocalKey@ulTKeyOutSingle+3),w
	movwf	(?_TSC_GetLocalKey+3)
	movf	(TSC_GetLocalKey@ulTKeyOutSingle+2),w
	movwf	(?_TSC_GetLocalKey+2)
	movf	(TSC_GetLocalKey@ulTKeyOutSingle+1),w
	movwf	(?_TSC_GetLocalKey+1)
	movf	(TSC_GetLocalKey@ulTKeyOutSingle),w
	movwf	(?_TSC_GetLocalKey)

	line	848
	
l8062:	
	return
	opt stack 0
GLOBAL	__end_of_TSC_GetLocalKey
	__end_of_TSC_GetLocalKey:
	signat	_TSC_GetLocalKey,92
	global	_GetKeyVal

;; *************** function _GetKeyVal *****************
;; Defined at:
;;		line 1131 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_GetAddress
;; This function is called by:
;;		_TSC_GetLocalKey
;;		_TSC_GetPrevData
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	1131
global __ptext21
__ptext21:	;psect for function _GetKeyVal
psect	text21
	file	"touch_test.c"
	line	1131
	global	__size_of_GetKeyVal
	__size_of_GetKeyVal	equ	__end_of_GetKeyVal-_GetKeyVal
	
_GetKeyVal:	
;incstack = 0
	opt	stack 2
; Regs used in _GetKeyVal: [status,2+status,0+pclath+cstack]
	line	1133
	
l10200:	
;touch_test.c: 1133: GetAddress();
	fcall	_GetAddress
	line	1135
# 1135 "touch_test.c"
MOVF _cidx,w ;# 
	line	1136
# 1136 "touch_test.c"
ADDWF _coffset,w ;# 
	line	1137
# 1137 "touch_test.c"
MOVWF _FSR ;# 
	line	1138
# 1138 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1140
# 1140 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1142
# 1142 "touch_test.c"
MOVF _INDF,w ;# 
	line	1143
# 1143 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1144
# 1144 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1145
# 1145 "touch_test.c"
MOVWF _ReferenceDataL ;# 
	line	1146
# 1146 "touch_test.c"
BSF _STATUS,6 ;# 
	line	1147
# 1147 "touch_test.c"
BSF _MSCON1&0x7F,1 ;# 
	line	1148
# 1148 "touch_test.c"
INCF _FSR,f ;# 
	line	1149
# 1149 "touch_test.c"
MOVF _INDF,w ;# 
	line	1150
# 1150 "touch_test.c"
BCF _MSCON1&0x7F,1 ;# 
	line	1151
# 1151 "touch_test.c"
BCF _STATUS,6 ;# 
	line	1152
# 1152 "touch_test.c"
MOVWF _ReferenceDataH ;# 
psect	text21
	line	1154
	
l8105:	
	return
	opt stack 0
GLOBAL	__end_of_GetKeyVal
	__end_of_GetKeyVal:
	signat	_GetKeyVal,89
	global	_GetAddress

;; *************** function _GetAddress *****************
;; Defined at:
;;		line 1197 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetKeyVal
;;		_GetKeyData
;;		_SavKeyData
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	1197
global __ptext22
__ptext22:	;psect for function _GetAddress
psect	text22
	file	"touch_test.c"
	line	1197
	global	__size_of_GetAddress
	__size_of_GetAddress	equ	__end_of_GetAddress-_GetAddress
	
_GetAddress:	
;incstack = 0
	opt	stack 3
; Regs used in _GetAddress: []
	line	1201
	
l10198:	
# 1201 "touch_test.c"
BANKSEL _cidx ;# 
	line	1202
# 1202 "touch_test.c"
BSF _STATUS,7 ;# 
	line	1203
# 1203 "touch_test.c"
BTFSS _cidx,4 ;# 
	line	1204
# 1204 "touch_test.c"
BCF _STATUS,7 ;# 
	line	1205
# 1205 "touch_test.c"
MOVLW 0X0F ;# 
	line	1206
# 1206 "touch_test.c"
ANDWF _cidx,f ;# 
	line	1207
# 1207 "touch_test.c"
MOVF _cidx,w ;# 
	line	1208
# 1208 "touch_test.c"
BCF _STATUS,0 ;# 
	line	1209
# 1209 "touch_test.c"
RLF _cidx ;# 
	line	1210
# 1210 "touch_test.c"
RLF _cidx ;# 
	line	1211
# 1211 "touch_test.c"
RLF _cidx ;# 
	line	1214
# 1214 "touch_test.c"
ANDLW 0X08 ;# 
	line	1215
# 1215 "touch_test.c"
MOVLW 0X20; ;# 
	line	1216
# 1216 "touch_test.c"
BTFSS _STATUS,2 ;# 
	line	1217
# 1217 "touch_test.c"
MOVLW 0X60 ;# 
	line	1218
# 1218 "touch_test.c"
ADDWF _cidx,f ;# 
psect	text22
	line	1221
	
l8111:	
	return
	opt stack 0
GLOBAL	__end_of_GetAddress
	__end_of_GetAddress:
	signat	_GetAddress,89
	global	_TSC_GetCsKey

;; *************** function _TSC_GetCsKey *****************
;; Defined at:
;;		line 820 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	820
global __ptext23
__ptext23:	;psect for function _TSC_GetCsKey
psect	text23
	file	"touch_test.c"
	line	820
	global	__size_of_TSC_GetCsKey
	__size_of_TSC_GetCsKey	equ	__end_of_TSC_GetCsKey-_TSC_GetCsKey
	
_TSC_GetCsKey:	
;incstack = 0
	opt	stack 6
; Regs used in _TSC_GetCsKey: [wreg]
	line	822
	
l10144:	
;touch_test.c: 822: return ucTKeyOutStrongest;
	movf	(_ucTKeyOutStrongest),w
	line	823
	
l8056:	
	return
	opt stack 0
GLOBAL	__end_of_TSC_GetCsKey
	__end_of_TSC_GetCsKey:
	signat	_TSC_GetCsKey,89
	global	_TSC_DataProcessing

;; *************** function _TSC_DataProcessing *****************
;; Defined at:
;;		line 690 in file "touch_test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	690
global __ptext24
__ptext24:	;psect for function _TSC_DataProcessing
psect	text24
	file	"touch_test.c"
	line	690
	global	__size_of_TSC_DataProcessing
	__size_of_TSC_DataProcessing	equ	__end_of_TSC_DataProcessing-_TSC_DataProcessing
	
_TSC_DataProcessing:	
;incstack = 0
	opt	stack 6
; Regs used in _TSC_DataProcessing: [wreg+status,2+status,0]
	line	693
	
l10124:	
;touch_test.c: 693: if(ucKeyPollingOk == SET)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_ucKeyPollingOk)),w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l10140
u1570:
	line	695
	
l10126:	
;touch_test.c: 694: {
;touch_test.c: 695: ucKeyPollingOk = RESET;
	clrf	(_ucKeyPollingOk)
	line	796
	
l10128:	
;touch_test.c: 796: _ucSendGapCnt++;
	incf	(__ucSendGapCnt),f
	line	797
	
l10130:	
;touch_test.c: 797: if(_ucSendGapCnt > ucSEND_GAP)
	movf	(__ucSendGapCnt),w
	subwf	(_ucSEND_GAP),w
	skipnc
	goto	u1581
	goto	u1580
u1581:
	goto	l10136
u1580:
	line	799
	
l10132:	
;touch_test.c: 798: {
;touch_test.c: 799: _ucSendGapCnt = 0;
	clrf	(__ucSendGapCnt)
	line	800
	
l10134:	
;touch_test.c: 800: TX_Flag = 1;
	bsf	(_TX_Flag/8),(_TX_Flag)&7
	line	804
	
l10136:	
;touch_test.c: 801: }
;touch_test.c: 804: return 1;
	movlw	low(01h)
	goto	l8053
	line	807
	
l10140:	
;touch_test.c: 806: }
;touch_test.c: 807: return 0;
	movlw	low(0)
	line	808
	
l8053:	
	return
	opt stack 0
GLOBAL	__end_of_TSC_DataProcessing
	__end_of_TSC_DataProcessing:
	signat	_TSC_DataProcessing,89
	global	_SleepProcess_Virtual

;; *************** function _SleepProcess_Virtual *****************
;; Defined at:
;;		line 335 in file "main.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"main.C"
	line	335
global __ptext25
__ptext25:	;psect for function _SleepProcess_Virtual
psect	text25
	file	"main.C"
	line	335
	global	__size_of_SleepProcess_Virtual
	__size_of_SleepProcess_Virtual	equ	__end_of_SleepProcess_Virtual-_SleepProcess_Virtual
	
_SleepProcess_Virtual:	
;incstack = 0
	opt	stack 6
; Regs used in _SleepProcess_Virtual: []
	line	337
	
l1990:	
	return
	opt stack 0
GLOBAL	__end_of_SleepProcess_Virtual
	__end_of_SleepProcess_Virtual:
	signat	_SleepProcess_Virtual,89
	global	_SYS_INITIAL

;; *************** function _SYS_INITIAL *****************
;; Defined at:
;;		line 176 in file "main.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	176
global __ptext26
__ptext26:	;psect for function _SYS_INITIAL
psect	text26
	file	"main.C"
	line	176
	global	__size_of_SYS_INITIAL
	__size_of_SYS_INITIAL	equ	__end_of_SYS_INITIAL-_SYS_INITIAL
	
_SYS_INITIAL:	
;incstack = 0
	opt	stack 4
; Regs used in _SYS_INITIAL: [wreg+status,2+status,0+pclath+cstack]
	line	179
	
l10652:	
;main.C: 179: OSCCON = 0B01110001;
	movlw	low(071h)
	movwf	(143)^080h	;volatile
	line	183
;main.C: 183: OPTION = 0B00001000;
	movlw	low(08h)
	movwf	(129)^080h	;volatile
	line	186
	
l10654:	
;main.C: 186: DelayMs(40);
	movlw	low(028h)
	fcall	_DelayMs
	line	188
	
l10656:	
;main.C: 188: INTCON = 0;
	clrf	(11)	;volatile
	line	190
	
l10658:	
;main.C: 190: PORTA = 0;
	clrf	(5)	;volatile
	line	191
	
l10660:	
;main.C: 191: PORTB = 0;
	clrf	(6)	;volatile
	line	192
	
l10662:	
;main.C: 192: PORTD = 0;
	clrf	(8)	;volatile
	line	193
	
l10664:	
;main.C: 193: PORTC = 0;
	clrf	(7)	;volatile
	line	202
	
l10666:	
;main.C: 202: TRISA = 0B11111111;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	203
	
l10668:	
;main.C: 203: TRISB = 0B01111111;
	movlw	low(07Fh)
	movwf	(134)^080h	;volatile
	line	204
	
l10670:	
;main.C: 204: TRISC = 0B11111111;
	movlw	low(0FFh)
	movwf	(135)^080h	;volatile
	line	205
	
l10672:	
;main.C: 205: TRISD = 0B11111111;
	movlw	low(0FFh)
	movwf	(136)^080h	;volatile
	line	208
	
l10674:	
;main.C: 208: ANSEL1 = 0B10000000;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(287)^0100h	;volatile
	line	210
	
l10676:	
;main.C: 210: MSCON1 |= 0X02;;
	bsf	(257)^0100h+(1/8),(1)&7	;volatile
	line	211
	
l10678:	
;main.C: 211: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	212
	
l10680:	
;main.C: 212: WPUB = 0B00000000;
	clrf	(149)^080h	;volatile
	line	213
	
l10682:	
;main.C: 213: WPUC = 0B00000000;
	clrf	(150)^080h	;volatile
	line	214
	
l10684:	
;main.C: 214: WPUD = 0B00000000;
	clrf	(151)^080h	;volatile
	line	215
	
l10686:	
;main.C: 215: WPDA = 0B00000000;
	clrf	(144)^080h	;volatile
	line	216
	
l10688:	
;main.C: 216: WPDB = 0B00000000;
	clrf	(145)^080h	;volatile
	line	217
	
l10690:	
;main.C: 217: WPDC = 0B00000000;
	clrf	(146)^080h	;volatile
	line	218
	
l10692:	
;main.C: 218: WPDD = 0B00000000;
	clrf	(147)^080h	;volatile
	line	219
	
l10694:	
;main.C: 219: MSCON1 &= ~0X02;;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(257)^0100h+(1/8),(1)&7	;volatile
	line	221
	
l1973:	
	return
	opt stack 0
GLOBAL	__end_of_SYS_INITIAL
	__end_of_SYS_INITIAL:
	signat	_SYS_INITIAL,89
	global	_DelayMs

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 77 in file "main.C"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    2[BANK0l] unsigned char 
;;  b               1    4[BANK0l] unsigned char 
;;  a               1    3[BANK0l] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       3       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_SYS_INITIAL
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	77
global __ptext27
__ptext27:	;psect for function _DelayMs
psect	text27
	file	"main.C"
	line	77
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
;incstack = 0
	opt	stack 4
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]
;DelayMs@Time stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(DelayMs@Time)
	line	80
	
l10308:	
;main.C: 79: unsigned char a,b;
;main.C: 80: for(a=0;a<Time;a++)
	clrf	(DelayMs@a)
	goto	l10324
	line	82
	
l10310:	
;main.C: 81: {
;main.C: 82: for(b=0;b<5;b++)
	clrf	(DelayMs@b)
	line	84
	
l10316:	
;main.C: 83: {
;main.C: 84: DelayUs(197);
	movlw	0C5h
	movwf	(DelayUs@Time)
	clrf	(DelayUs@Time+1)
	fcall	_DelayUs
	line	82
	
l10318:	
	incf	(DelayMs@b),f
	
l10320:	
	movlw	low(05h)
	subwf	(DelayMs@b),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l10316
u1770:
	line	80
	
l10322:	
	incf	(DelayMs@a),f
	
l10324:	
	movf	(DelayMs@Time),w
	subwf	(DelayMs@a),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l10310
u1780:
	line	87
	
l1958:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
	signat	_DelayMs,4217
	global	_DelayUs

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 62 in file "main.C"
;; Parameters:    Size  Location     Type
;;  Time            2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  a               2    0[BANK0l] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       2       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayMs
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	62
global __ptext28
__ptext28:	;psect for function _DelayUs
psect	text28
	file	"main.C"
	line	62
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
;incstack = 0
	opt	stack 4
; Regs used in _DelayUs: [wreg+status,2+status,0]
	line	65
	
l10202:	
;main.C: 64: unsigned int a;
;main.C: 65: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	clrf	(DelayUs@a+1)
	goto	l10206
	line	66
	
l1948:	
	line	67
;main.C: 66: {
;main.C: 67: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	65
	
l10204:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(DelayUs@a),f
	skipnz
	incf	(DelayUs@a+1),f
	
l10206:	
	movf	(DelayUs@Time+1),w
	subwf	(DelayUs@a+1),w
	skipz
	goto	u1695
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
u1695:
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l1948
u1690:
	line	69
	
l1950:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
	signat	_DelayUs,4217
	global	_Initialize_Communication

;; *************** function _Initialize_Communication *****************
;; Defined at:
;;		line 132 in file "main.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/100
;;		Unchanged: 800/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	132
global __ptext29
__ptext29:	;psect for function _Initialize_Communication
psect	text29
	file	"main.C"
	line	132
	global	__size_of_Initialize_Communication
	__size_of_Initialize_Communication	equ	__end_of_Initialize_Communication-_Initialize_Communication
	
_Initialize_Communication:	
;incstack = 0
	opt	stack 6
; Regs used in _Initialize_Communication: [status,2]
	line	135
	
l9170:	
;main.C: 135: I2CCR1 = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(406)^0180h	;volatile
	line	136
;main.C: 136: I2CCR2 = 0;
	clrf	(407)^0180h	;volatile
	line	137
;main.C: 137: I2CADDR = 0;
	clrf	(408)^0180h	;volatile
	line	138
;main.C: 138: I2CCCR = 0;
	clrf	(409)^0180h	;volatile
	line	139
;main.C: 139: I2CDAT = 0;
	clrf	(410)^0180h	;volatile
	line	140
;main.C: 140: I2CISR = 0;
	clrf	(414)^0180h	;volatile
	line	142
;main.C: 142: SPIDAT = 0;
	clrf	(396)^0180h	;volatile
	line	143
;main.C: 143: SPICR0 = 0;
	clrf	(397)^0180h	;volatile
	line	144
;main.C: 144: SPICFG = 0;
	clrf	(398)^0180h	;volatile
	line	145
;main.C: 145: SPISCR = 0;
	clrf	(399)^0180h	;volatile
	line	146
;main.C: 146: SPICRCP = 0;
	clrf	(400)^0180h	;volatile
	line	147
;main.C: 147: SPITXCRC = 0;
	clrf	(402)^0180h	;volatile
	line	148
;main.C: 148: SPIRXCRC = 0;
	clrf	(401)^0180h	;volatile
	line	149
;main.C: 149: SPIIER = 0;
	clrf	(403)^0180h	;volatile
	line	150
;main.C: 150: SPICR1 = 0;
	clrf	(404)^0180h	;volatile
	line	151
;main.C: 151: SPISTAT = 0;
	clrf	(405)^0180h	;volatile
	line	153
;main.C: 153: UR0DATL = 0;
	clrf	(389)^0180h	;volatile
	line	154
;main.C: 154: UR0DATH = 0;
	clrf	(390)^0180h	;volatile
	line	155
;main.C: 155: UR0CR1 = 0;
	clrf	(391)^0180h	;volatile
	line	156
;main.C: 156: UR0CR2 = 0;
	clrf	(392)^0180h	;volatile
	line	157
;main.C: 157: UR0BRRL = 0;
	clrf	(393)^0180h	;volatile
	line	158
;main.C: 158: UR0STAT = 0;
	clrf	(415)^0180h	;volatile
	line	159
;main.C: 159: UR1DATL = 0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(144)^080h	;volatile
	line	160
;main.C: 160: UR1DATH = 0;
	clrf	(145)^080h	;volatile
	line	161
;main.C: 161: UR1CR1 = 0;
	clrf	(146)^080h	;volatile
	line	162
;main.C: 162: UR1CR2 = 0;
	clrf	(147)^080h	;volatile
	line	163
;main.C: 163: UR1BRRL = 0;
	clrf	(148)^080h	;volatile
	line	164
;main.C: 164: UR1STAT = 0;
	clrf	(149)^080h	;volatile
	line	165
	
l1970:	
	return
	opt stack 0
GLOBAL	__end_of_Initialize_Communication
	__end_of_Initialize_Communication:
	signat	_Initialize_Communication,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 98 in file "main.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:    COMMONh COMMONl BANK0lh BANK0ll   BANK3   BANK1   BANK2
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	98
global __ptext30
__ptext30:	;psect for function _ISR
psect	text30
	file	"main.C"
	line	98
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text30
	line	101
	
i1l10172:	
;main.C: 101: if(AUXPGE==0)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfsc	(2057/8)^0100h,(2057)&7	;volatile
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l1963
u162_20:
	line	103
	
i1l10174:	
;main.C: 102: {
;main.C: 103: temp = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_temp)
	line	104
;main.C: 104: }
	goto	i1l1964
	line	105
	
i1l1963:	
	line	107
;main.C: 105: else
;main.C: 106: {
;main.C: 107: AUXPGE = 0;
	bcf	(2057/8)^0100h,(2057)&7	;volatile
	line	108
;main.C: 108: temp = 1;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_temp)
	incf	(_temp),f
	line	109
	
i1l1964:	
	line	112
;main.C: 109: }
;main.C: 112: if(AUXPGE==0)
	bsf	status, 6	;RP1=1, select bank2
	btfsc	(2057/8)^0100h,(2057)&7	;volatile
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l1965
u163_20:
	line	114
	
i1l10176:	
;main.C: 113: {
;main.C: 114: AUXPGE = temp ;
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_temp),0
	goto	u164_21
	goto	u164_20
	
u164_21:
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2057/8)^0100h,(2057)&7	;volatile
	goto	u165_24
u164_20:
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2057/8)^0100h,(2057)&7	;volatile
u165_24:
	line	115
;main.C: 115: }
	goto	i1l1967
	line	116
	
i1l1965:	
	line	118
;main.C: 116: else
;main.C: 117: {
;main.C: 118: AUXPGE = 0;
	bcf	(2057/8)^0100h,(2057)&7	;volatile
	line	119
;main.C: 119: AUXPGE = temp ;
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_temp),0
	goto	u166_21
	goto	u166_20
	
u166_21:
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2057/8)^0100h,(2057)&7	;volatile
	goto	u167_24
u166_20:
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2057/8)^0100h,(2057)&7	;volatile
u167_24:
	line	121
	
i1l1967:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
