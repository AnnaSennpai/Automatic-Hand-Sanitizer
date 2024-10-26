//Deviec:FT62F28X
//-----------------------Variable---------------------------------
		_PA6		EQU		05H
		_PB0		EQU		06H
		_PB2		EQU		06H
		_PB3		EQU		06H
		_PB6		EQU		06H
		_PC2		EQU		07H
		_PD4		EQU		08H
		_LVDIF		EQU		0CH
		_TRISA6		EQU		85H
		_TRISB0		EQU		86H
		_TRISB2		EQU		86H
		_TRISB3		EQU		86H
		_TRISB6		EQU		86H
		_TRISC2		EQU		87H
		_TRISD4		EQU		88H
		_LVDIE		EQU		8CH
		_AUXPGE		EQU		101H
		_T0ON		EQU		105H
		_T1ON		EQU		106H
		_ADON		EQU		113H
		_GO_DONE		EQU		113H
		_strongest		EQU		49H
		_count		EQU		38H
		_val		EQU		52H
		_voltage		EQU		36H
		_level_high		EQU		34H
		_level_low		EQU		32H
		_level		EQU		30H
		_flag1		EQU		2EH
		_temp		EQU		48H
		_tscdata		EQU		A0H
		_ucTKFlag		EQU		20H
		_bNoUpdataFlg		EQU		20H
		_bResonanceFlag		EQU		20H
		_bPresentDiscardFlag		EQU		20H
		_bTestScanSetFlag		EQU		20H
		_bTestSleepFlag		EQU		20H
		_bSleepEnable		EQU		20H
		_bSleepUpdataFlag		EQU		20H
		_bIEBackupsFlag		EQU		20H
		_uiDefaultSysclk		EQU		5CH
		_cidx		EQU		21H
		_FsrBackup		EQU		45H
		_coffset		EQU		6AH
		_ucSetIndex		EQU		6FH
		_ucNull		EQU		68H
		_OriginalData		EQU		69H
		_ReferenceData		EQU		6DH
		_ResultData		EQU		6BH
		_ReferenceDataL		EQU		6DH
		_ReferenceDataH		EQU		6EH
		_ResultDataL		EQU		6BH
		_ResultDataH		EQU		6CH
		_uiChargeDataBuffer		EQU		22H
		_unTKData_temp.stTK_Data.UpDown_Counter		EQU		68H
		_unTKData_temp.stTK_Data.ucCatchup		EQU		69H
		_unTKData_temp.stTK_Data.ucLastdata.Last_Data_L		EQU		6AH
		_unTKData_temp.stTK_Data.ucLastdata.Last_Data_H		EQU		6BH
		_unTKData_temp.stTK_Data.ucLastdata..		EQU		6BH
		_unTKData_temp.stTK_Data.ucLastdata.Local_Key		EQU		6BH
		_unTKData_temp.stTK_Data.ucLastdata		EQU		6AH
		_unTKData_temp.stTK_Data.uiLCF_BL.BL_L		EQU		6CH
		_unTKData_temp.stTK_Data.uiLCF_BL.BL_H		EQU		6DH
		_unTKData_temp.stTK_Data.uiLCF_BL.Local_Filter		EQU		6DH
		_unTKData_temp.stTK_Data.uiLCF_BL		EQU		6CH
		_unTKData_temp.stTK_Data.uiPrevData		EQU		6EH
		_unTKData_temp.stTK_Data		EQU		68H
		_unTKData_temp.uiTKData		EQU		68H
		_unTKData_temp		EQU		68H
		_unTKData.stTK_Data.UpDown_Counter		EQU		4AH
		_unTKData.stTK_Data.ucCatchup		EQU		4BH
		_unTKData.stTK_Data.ucLastdata.Last_Data_L		EQU		4CH
		_unTKData.stTK_Data.ucLastdata.Last_Data_H		EQU		4DH
		_unTKData.stTK_Data.ucLastdata..		EQU		4DH
		_unTKData.stTK_Data.ucLastdata.Local_Key		EQU		4DH
		_unTKData.stTK_Data.ucLastdata		EQU		4CH
		_unTKData.stTK_Data.uiLCF_BL.BL_L		EQU		4EH
		_unTKData.stTK_Data.uiLCF_BL.BL_H		EQU		4FH
		_unTKData.stTK_Data.uiLCF_BL.Local_Filter		EQU		4FH
		_unTKData.stTK_Data.uiLCF_BL		EQU		4EH
		_unTKData.stTK_Data.uiPrevData		EQU		50H
		_unTKData.stTK_Data		EQU		4AH
		_unTKData.uiTKData		EQU		4AH
		_unTKData		EQU		4AH
		_ucSweepKeyNum		EQU		44H
		_ucKeyMapNumber		EQU		7BH
		_ucTempCount		EQU		7AH
		_ucTempIndex		EQU		43H
		_ucFreqIndex		EQU		42H
		_ucFreqChargeCount		EQU		41H
		_ucChangeValue		EQU		40H
		_ucKeyPollingCount		EQU		3FH
		_ucKeyPollingOk		EQU		3EH
		_ucAll_of_XCount		EQU		3DH
		_ucScanCount		EQU		3CH
		_uiTemp1		EQU		2CH
		_uiTemp2		EQU		2AH
		_uiTemp3		EQU		28H
		_ucChangeValueMax1		EQU		3BH
		_ucChangeValueMax2		EQU		3AH
		_ResultData2		EQU		72H
		_ResultData2L		EQU		72H
		_ResultData2H		EQU		73H
		_TransferData		EQU		73H
		_uiRX_t		EQU		47H
		_data		EQU		46H
//		infraRed_Init@i		EQU		57H
//		___lwdiv@quotient		EQU		54H
//		___lwdiv@counter		EQU		56H
//		___lwdiv@divisor		EQU		76H
//		___lwdiv@dividend		EQU		78H
//		___lbmod@dividend		EQU		54H
//		___lbmod@rem		EQU		56H
//		___lbmod@counter		EQU		55H
//		___lbmod@dividend		EQU		54H
//		___lbmod@divisor		EQU		76H
//		___lbmod@dividend		EQU		54H
//		TSC_GetLocalKey@ulTKeyOutSingle		EQU		58H
//		ReadCap@channel		EQU		7CH
//		___wmul@product		EQU		7CH
//		___wmul@multiplier		EQU		76H
//		___wmul@multiplicand		EQU		78H
//		GET_ADC_DATA@adcChannel		EQU		55H
//		GET_ADC_DATA@adcChannel		EQU		55H
//		GET_ADC_DATA@adcChannel		EQU		55H
//		DelayMs@Time		EQU		54H
//		DelayMs@b		EQU		56H
//		DelayMs@a		EQU		55H
//		DelayMs@Time		EQU		54H
//		DelayMs@Time		EQU		54H
//		DelayUs@a		EQU		78H
//		DelayUs@Time		EQU		76H
//-----------------------Variable END---------------------------------

		BCR 	PCLATH,4 		//0000 	120A
		BCR 	PCLATH,3 		//0001 	118A
		LJUMP 	0CH 			//0002 	380C
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	74H 			//0006 	01F4
		LDR 	PCLATH,0 		//0007 	080A
		STR 	75H 			//0008 	01F5
		BCR 	PCLATH,4 		//0009 	120A
		BSR 	PCLATH,3 		//000A 	198A
		LJUMP 	74FH 			//000B 	3F4F
		BCR 	PCLATH,4 		//000C 	120A
		BCR 	PCLATH,3 		//000D 	118A
		LJUMP 	0FH 			//000E 	380F
		LDWI 	22H 			//000F 	2A22
		CLRR 	7AH 			//0010 	017A
		CLRR 	7BH 			//0011 	017B
		BCR 	STATUS,7 		//0012 	1383
		STR 	FSR 			//0013 	0184
		LDWI 	54H 			//0014 	2A54
		BCR 	PCLATH,4 		//0015 	120A
		BSR 	PCLATH,3 		//0016 	198A
		LCALL 	72BH 			//0017 	372B
		BCR 	PCLATH,4 		//0018 	120A
		BCR 	PCLATH,3 		//0019 	118A
		LDWI 	A0H 			//001A 	2AA0
		STR 	FSR 			//001B 	0184
		LDWI 	B0H 			//001C 	2AB0
		BCR 	PCLATH,4 		//001D 	120A
		BSR 	PCLATH,3 		//001E 	198A
		LCALL 	72BH 			//001F 	372B
		CLRR 	STATUS 			//0020 	0103
		BCR 	PCLATH,4 		//0021 	120A
		BCR 	PCLATH,3 		//0022 	118A
		LJUMP 	6FBH 			//0023 	3EFB
		BCR 	STATUS,5 		//0024 	1283
		BTSS 	CH,5 			//0025 	1E8C
		RET		 					//0026 	0004
		BSR 	STATUS,6 		//0027 	1B03
		BCR 	1BH,3 			//0028 	119B
		LDR 	19H,0 			//0029 	0819
		BCR 	STATUS,6 		//002A 	1303
		STR 	2CH 			//002B 	01AC
		BSR 	STATUS,6 		//002C 	1B03
		LDR 	1AH,0 			//002D 	081A
		BCR 	STATUS,6 		//002E 	1303
		STR 	2DH 			//002F 	01AD
		LDWI 	0H 			//0030 	2A00
		SUBWR 	2DH,0 			//0031 	0C2D
		LDWI 	FAH 			//0032 	2AFA
		BTSC 	STATUS,2 		//0033 	1503
		SUBWR 	2CH,0 			//0034 	0C2C
		BTSS 	STATUS,0 		//0035 	1C03
		BTSC 	20H,2 			//0036 	1520
		LJUMP 	3AH 			//0037 	383A
		BSR 	20H,2 			//0038 	1920
		LJUMP 	56H 			//0039 	3856
		BCR 	20H,2 			//003A 	1120
		LDWI 	14H 			//003B 	2A14
		SUBWR 	3FH,0 			//003C 	0C3F
		BTSS 	STATUS,0 		//003D 	1C03
		LJUMP 	47H 			//003E 	3847
		LDWI 	1EH 			//003F 	2A1E
		SUBWR 	3FH,0 			//0040 	0C3F
		BTSC 	STATUS,0 		//0041 	1403
		LJUMP 	47H 			//0042 	3847
		LCALL 	32EH 			//0043 	332E
		BCR 	PCLATH,4 		//0044 	120A
		BCR 	PCLATH,3 		//0045 	118A
		LJUMP 	4AH 			//0046 	384A
		LCALL 	348H 			//0047 	3348
		BCR 	PCLATH,4 		//0048 	120A
		BCR 	PCLATH,3 		//0049 	118A
		INCR	41H,1 			//004A 	09C1
		LDR 	44H,0 			//004B 	0844
		STR 	21H 			//004C 	01A1
		LCALL 	362H 			//004D 	3362
		BCR 	PCLATH,4 		//004E 	120A
		BCR 	PCLATH,3 		//004F 	118A
		LDR 	4FH,0 			//0050 	084F
		STR 	29H 			//0051 	01A9
		LDR 	4EH,0 			//0052 	084E
		STR 	28H 			//0053 	01A8
		LDWI 	7H 			//0054 	2A07
		ANDWR 	29H,1 			//0055 	02A9
		LDWI 	3H 			//0056 	2A03
		SUBWR 	41H,0 			//0057 	0C41
		BTSS 	STATUS,0 		//0058 	1C03
		LJUMP 	24FH 			//0059 	3A4F
		LDWI 	14H 			//005A 	2A14
		CLRR 	41H 			//005B 	0141
		SUBWR 	3FH,0 			//005C 	0C3F
		BTSS 	STATUS,0 		//005D 	1C03
		LJUMP 	87H 			//005E 	3887
		LDWI 	1EH 			//005F 	2A1E
		SUBWR 	3FH,0 			//0060 	0C3F
		BTSC 	STATUS,0 		//0061 	1403
		LJUMP 	87H 			//0062 	3887
		LDR 	23H,0 			//0063 	0823
		SUBWR 	25H,0 			//0064 	0C25
		BTSS 	STATUS,2 		//0065 	1D03
		LJUMP 	69H 			//0066 	3869
		LDR 	22H,0 			//0067 	0822
		SUBWR 	24H,0 			//0068 	0C24
		BTSC 	STATUS,0 		//0069 	1403
		LJUMP 	6FH 			//006A 	386F
		LDR 	23H,0 			//006B 	0823
		STR 	2BH 			//006C 	01AB
		LDR 	22H,0 			//006D 	0822
		LJUMP 	72H 			//006E 	3872
		LDR 	25H,0 			//006F 	0825
		STR 	2BH 			//0070 	01AB
		LDR 	24H,0 			//0071 	0824
		STR 	2AH 			//0072 	01AA
		LDWI 	14H 			//0073 	2A14
		XORWR 	3FH,0 			//0074 	043F
		BTSC 	STATUS,2 		//0075 	1503
		LJUMP 	95H 			//0076 	3895
		LDR 	2AH,0 			//0077 	082A
		ADDWR 	28H,0 			//0078 	0B28
		STR 	57H 			//0079 	01D7
		LDR 	2BH,0 			//007A 	082B
		BTSC 	STATUS,0 		//007B 	1403
		INCR	2BH,0 			//007C 	092B
		ADDWR 	29H,0 			//007D 	0B29
		STR 	58H 			//007E 	01D8
		BCR 	STATUS,0 		//007F 	1003
		RRR	58H,1 			//0080 	06D8
		RRR	57H,1 			//0081 	06D7
		LDR 	57H,0 			//0082 	0857
		STR 	2AH 			//0083 	01AA
		LDR 	58H,0 			//0084 	0858
		STR 	2BH 			//0085 	01AB
		LJUMP 	95H 			//0086 	3895
		LDR 	22H,0 			//0087 	0822
		ADDWR 	24H,0 			//0088 	0B24
		STR 	22H 			//0089 	01A2
		LDR 	23H,0 			//008A 	0823
		BTSC 	STATUS,0 		//008B 	1403
		INCR	23H,0 			//008C 	0923
		ADDWR 	25H,0 			//008D 	0B25
		STR 	23H 			//008E 	01A3
		STR 	2BH 			//008F 	01AB
		LDR 	22H,0 			//0090 	0822
		STR 	2AH 			//0091 	01AA
		BCR 	STATUS,0 		//0092 	1003
		RRR	2BH,1 			//0093 	06AB
		RRR	2AH,1 			//0094 	06AA
		LDWI 	14H 			//0095 	2A14
		SUBWR 	3FH,0 			//0096 	0C3F
		BTSS 	STATUS,0 		//0097 	1C03
		LJUMP 	1EAH 			//0098 	39EA
		LDWI 	1EH 			//0099 	2A1E
		SUBWR 	3FH,0 			//009A 	0C3F
		BTSC 	STATUS,0 		//009B 	1403
		LJUMP 	A5H 			//009C 	38A5
		LDR 	2AH,0 			//009D 	082A
		STR 	57H 			//009E 	01D7
		LDWI 	7H 			//009F 	2A07
		ANDWR 	2BH,0 			//00A0 	022B
		LCALL 	3DFH 			//00A1 	33DF
		BCR 	PCLATH,4 		//00A2 	120A
		BCR 	PCLATH,3 		//00A3 	118A
		LJUMP 	1E9H 			//00A4 	39E9
		LDWI 	6EH 			//00A5 	2A6E
		STR 	3FH 			//00A6 	01BF
		LDR 	2BH,0 			//00A7 	082B
		STR 	51H 			//00A8 	01D1
		LDR 	2AH,0 			//00A9 	082A
		STR 	50H 			//00AA 	01D0
		LDR 	4DH,0 			//00AB 	084D
		STR 	2DH 			//00AC 	01AD
		LDR 	4CH,0 			//00AD 	084C
		STR 	2CH 			//00AE 	01AC
		LDWI 	7H 			//00AF 	2A07
		ANDWR 	2DH,1 			//00B0 	02AD
		LDR 	2BH,0 			//00B1 	082B
		SUBWR 	2DH,0 			//00B2 	0C2D
		BTSS 	STATUS,2 		//00B3 	1D03
		LJUMP 	B7H 			//00B4 	38B7
		LDR 	2AH,0 			//00B5 	082A
		SUBWR 	2CH,0 			//00B6 	0C2C
		BTSC 	STATUS,0 		//00B7 	1403
		LJUMP 	CEH 			//00B8 	38CE
		LDR 	2CH,0 			//00B9 	082C
		SUBWR 	2AH,0 			//00BA 	0C2A
		STR 	57H 			//00BB 	01D7
		LDR 	2DH,0 			//00BC 	082D
		BTSS 	STATUS,0 		//00BD 	1C03
		INCR	2DH,0 			//00BE 	092D
		SUBWR 	2BH,0 			//00BF 	0C2B
		STR 	58H 			//00C0 	01D8
		LDWI 	0H 			//00C1 	2A00
		SUBWR 	58H,0 			//00C2 	0C58
		LDWI 	5H 			//00C3 	2A05
		BTSC 	STATUS,2 		//00C4 	1503
		SUBWR 	57H,0 			//00C5 	0C57
		BTSS 	STATUS,0 		//00C6 	1C03
		LJUMP 	D6H 			//00C7 	38D6
		CLRR 	4BH 			//00C8 	014B
		LDR 	2BH,0 			//00C9 	082B
		STR 	2DH 			//00CA 	01AD
		LDR 	2AH,0 			//00CB 	082A
		STR 	2CH 			//00CC 	01AC
		LJUMP 	D7H 			//00CD 	38D7
		LDR 	2AH,0 			//00CE 	082A
		SUBWR 	2CH,0 			//00CF 	0C2C
		STR 	57H 			//00D0 	01D7
		LDR 	2BH,0 			//00D1 	082B
		BTSS 	STATUS,0 		//00D2 	1C03
		INCR	2BH,0 			//00D3 	092B
		SUBWR 	2DH,0 			//00D4 	0C2D
		LJUMP 	C0H 			//00D5 	38C0
		INCR	4BH,1 			//00D6 	09CB
		LDR 	2BH,0 			//00D7 	082B
		SUBWR 	29H,0 			//00D8 	0C29
		BTSS 	STATUS,2 		//00D9 	1D03
		LJUMP 	DDH 			//00DA 	38DD
		LDR 	2AH,0 			//00DB 	082A
		SUBWR 	28H,0 			//00DC 	0C28
		BTSC 	STATUS,0 		//00DD 	1403
		LJUMP 	E4H 			//00DE 	38E4
		INCR	4AH,0 			//00DF 	094A
		BTSC 	STATUS,2 		//00E0 	1503
		LJUMP 	E8H 			//00E1 	38E8
		INCR	4AH,1 			//00E2 	09CA
		LJUMP 	E8H 			//00E3 	38E8
		LDR 	4AH,0 			//00E4 	084A
		BTSC 	STATUS,2 		//00E5 	1503
		LJUMP 	E8H 			//00E6 	38E8
		DECR 	4AH,1 			//00E7 	0DCA
		INCRSZ 	4BH,0 		//00E8 	0A4B
		LJUMP 	F9H 			//00E9 	38F9
		LDR 	2CH,0 			//00EA 	082C
		STR 	57H 			//00EB 	01D7
		LDWI 	7H 			//00EC 	2A07
		ANDWR 	2DH,0 			//00ED 	022D
		LCALL 	3DFH 			//00EE 	33DF
		BCR 	PCLATH,4 		//00EF 	120A
		BCR 	PCLATH,3 		//00F0 	118A
		STR 	4FH 			//00F1 	01CF
		CLRR 	4BH 			//00F2 	014B
		LDR 	2BH,0 			//00F3 	082B
		STR 	2DH 			//00F4 	01AD
		LDR 	2AH,0 			//00F5 	082A
		STR 	2CH 			//00F6 	01AC
		LDWI 	80H 			//00F7 	2A80
		STR 	4AH 			//00F8 	01CA
		LDWI 	7EH 			//00F9 	2A7E
		STR 	76H 			//00FA 	01F6
		LDR 	3CH,0 			//00FB 	083C
		LCALL 	295H 			//00FC 	3295
		BCR 	PCLATH,4 		//00FD 	120A
		BCR 	PCLATH,3 		//00FE 	118A
		XORWI 	0H 			//00FF 	2600
		BTSS 	STATUS,2 		//0100 	1D03
		LJUMP 	10BH 			//0101 	390B
		LDWI 	82H 			//0102 	2A82
		SUBWR 	4AH,0 			//0103 	0C4A
		BTSS 	STATUS,0 		//0104 	1C03
		LJUMP 	10BH 			//0105 	390B
		INCR	4EH,1 			//0106 	09CE
		BTSC 	STATUS,2 		//0107 	1503
		INCR	4FH,1 			//0108 	09CF
		LDWI 	80H 			//0109 	2A80
		STR 	4AH 			//010A 	01CA
		LDWI 	7EH 			//010B 	2A7E
		STR 	76H 			//010C 	01F6
		LDR 	3CH,0 			//010D 	083C
		LCALL 	295H 			//010E 	3295
		BCR 	PCLATH,4 		//010F 	120A
		BCR 	PCLATH,3 		//0110 	118A
		XORWI 	0H 			//0111 	2600
		BTSS 	STATUS,2 		//0112 	1D03
		LJUMP 	11EH 			//0113 	391E
		LDWI 	7FH 			//0114 	2A7F
		SUBWR 	4AH,0 			//0115 	0C4A
		BTSC 	STATUS,0 		//0116 	1403
		LJUMP 	11CH 			//0117 	391C
		LDWI 	1H 			//0118 	2A01
		SUBWR 	4EH,1 			//0119 	0CCE
		BTSS 	STATUS,0 		//011A 	1C03
		DECR 	4FH,1 			//011B 	0DCF
		LDWI 	80H 			//011C 	2A80
		STR 	4AH 			//011D 	01CA
		LDR 	2CH,0 			//011E 	082C
		STR 	57H 			//011F 	01D7
		LDWI 	7H 			//0120 	2A07
		ANDWR 	2DH,0 			//0121 	022D
		STR 	58H 			//0122 	01D8
		LDWI 	F8H 			//0123 	2AF8
		CLRR 	59H 			//0124 	0159
		ANDWR 	4DH,0 			//0125 	024D
		STR 	5AH 			//0126 	01DA
		LDR 	57H,0 			//0127 	0857
		IORWR 	59H,0 			//0128 	0359
		STR 	4CH 			//0129 	01CC
		LDR 	58H,0 			//012A 	0858
		IORWR 	5AH,0 			//012B 	035A
		STR 	4DH 			//012C 	01CD
		LDWI 	30H 			//012D 	2A30
		STR 	69H 			//012E 	01E9
		CLRR 	6AH 			//012F 	016A
		LDR 	2BH,0 			//0130 	082B
		STR 	6EH 			//0131 	01EE
		LDR 	2AH,0 			//0132 	082A
		STR 	6DH 			//0133 	01ED
		LCALL 	252H 			//0134 	3252
		BCR 	PCLATH,4 		//0135 	120A
		BCR 	PCLATH,3 		//0136 	118A
		BCR 	STATUS,5 		//0137 	1283
		BCR 	STATUS,6 		//0138 	1303
		LDR 	6CH,0 			//0139 	086C
		STR 	2BH 			//013A 	01AB
		LDR 	6BH,0 			//013B 	086B
		STR 	2AH 			//013C 	01AA
		LDWI 	30H 			//013D 	2A30
		STR 	69H 			//013E 	01E9
		CLRR 	6AH 			//013F 	016A
		LDR 	29H,0 			//0140 	0829
		STR 	6EH 			//0141 	01EE
		LDR 	28H,0 			//0142 	0828
		STR 	6DH 			//0143 	01ED
		LCALL 	252H 			//0144 	3252
		BCR 	PCLATH,4 		//0145 	120A
		BCR 	PCLATH,3 		//0146 	118A
		BCR 	STATUS,5 		//0147 	1283
		BCR 	STATUS,6 		//0148 	1303
		LDR 	6CH,0 			//0149 	086C
		STR 	29H 			//014A 	01A9
		LDR 	6BH,0 			//014B 	086B
		STR 	28H 			//014C 	01A8
		CLRR 	40H 			//014D 	0140
		LDR 	29H,0 			//014E 	0829
		SUBWR 	2BH,0 			//014F 	0C2B
		BTSS 	STATUS,2 		//0150 	1D03
		LJUMP 	154H 			//0151 	3954
		LDR 	28H,0 			//0152 	0828
		SUBWR 	2AH,0 			//0153 	0C2A
		BTSS 	STATUS,0 		//0154 	1C03
		LJUMP 	17AH 			//0155 	397A
		LDR 	2BH,0 			//0156 	082B
		STR 	2DH 			//0157 	01AD
		LDR 	2AH,0 			//0158 	082A
		STR 	2CH 			//0159 	01AC
		LDR 	28H,0 			//015A 	0828
		SUBWR 	2CH,1 			//015B 	0CAC
		LDR 	29H,0 			//015C 	0829
		BTSS 	STATUS,0 		//015D 	1C03
		DECR 	2DH,1 			//015E 	0DAD
		SUBWR 	2DH,1 			//015F 	0CAD
		LDWI 	1H 			//0160 	2A01
		SUBWR 	2DH,0 			//0161 	0C2D
		LDWI 	0H 			//0162 	2A00
		BTSC 	STATUS,2 		//0163 	1503
		SUBWR 	2CH,0 			//0164 	0C2C
		BTSS 	STATUS,0 		//0165 	1C03
		LJUMP 	16AH 			//0166 	396A
		LDWI 	FFH 			//0167 	2AFF
		STR 	2CH 			//0168 	01AC
		CLRR 	2DH 			//0169 	012D
		LDR 	2CH,0 			//016A 	082C
		STR 	40H 			//016B 	01C0
		SUBWR 	3BH,0 			//016C 	0C3B
		BTSC 	STATUS,0 		//016D 	1403
		LJUMP 	174H 			//016E 	3974
		LDR 	3BH,0 			//016F 	083B
		STR 	3AH 			//0170 	01BA
		LDR 	40H,0 			//0171 	0840
		STR 	3BH 			//0172 	01BB
		LJUMP 	17AH 			//0173 	397A
		LDR 	40H,0 			//0174 	0840
		SUBWR 	3AH,0 			//0175 	0C3A
		BTSC 	STATUS,0 		//0176 	1403
		LJUMP 	17AH 			//0177 	397A
		LDR 	40H,0 			//0178 	0840
		STR 	3AH 			//0179 	01BA
		LDR 	44H,0 			//017A 	0844
		ADDWI 	3AH 			//017B 	273A
		STR 	FSR 			//017C 	0184
		BCR 	PCLATH,4 		//017D 	120A
		BCR 	PCLATH,3 		//017E 	118A
		LCALL 	7BCH 			//017F 	37BC
		BCR 	PCLATH,4 		//0180 	120A
		BCR 	PCLATH,3 		//0181 	118A
		STR 	57H 			//0182 	01D7
		BCR 	STATUS,0 		//0183 	1003
		RRR	57H,0 			//0184 	0657
		STR 	76H 			//0185 	01F6
		LDWI 	3H 			//0186 	2A03
		CLRR 	77H 			//0187 	0177
		STR 	78H 			//0188 	01F8
		CLRR 	79H 			//0189 	0179
		LCALL 	2B1H 			//018A 	32B1
		BCR 	PCLATH,4 		//018B 	120A
		BCR 	PCLATH,3 		//018C 	118A
		LDR 	77H,0 			//018D 	0877
		XORWI 	80H 			//018E 	2680
		STR 	58H 			//018F 	01D8
		LDWI 	80H 			//0190 	2A80
		SUBWR 	58H,0 			//0191 	0C58
		BTSS 	STATUS,2 		//0192 	1D03
		LJUMP 	196H 			//0193 	3996
		LDR 	40H,0 			//0194 	0840
		SUBWR 	76H,0 			//0195 	0C76
		BTSC 	STATUS,0 		//0196 	1403
		LJUMP 	19BH 			//0197 	399B
		BCR 	STATUS,5 		//0198 	1283
		BCR 	STATUS,6 		//0199 	1303
		INCR	3DH,1 			//019A 	09BD
		BCR 	STATUS,5 		//019B 	1283
		BCR 	STATUS,6 		//019C 	1303
		RRR	4FH,0 			//019D 	064F
		STR 	57H 			//019E 	01D7
		RRR	57H,1 			//019F 	06D7
		RRR	57H,0 			//01A0 	0657
		ANDWI 	1FH 			//01A1 	241F
		STR 	6BH 			//01A2 	01EB
		BCR 	STATUS,0 		//01A3 	1003
		RLR 	6BH,0 			//01A4 	056B
		ANDWI 	3EH 			//01A5 	243E
		STR 	6BH 			//01A6 	01EB
		BTSC 	4DH,7 			//01A7 	17CD
		LJUMP 	1C4H 			//01A8 	39C4
		LDR 	44H,0 			//01A9 	0844
		ADDWI 	3AH 			//01AA 	273A
		STR 	FSR 			//01AB 	0184
		BCR 	PCLATH,4 		//01AC 	120A
		BCR 	PCLATH,3 		//01AD 	118A
		LCALL 	7BCH 			//01AE 	37BC
		BCR 	PCLATH,4 		//01AF 	120A
		BCR 	PCLATH,3 		//01B0 	118A
		SUBWR 	40H,0 			//01B1 	0C40
		BTSS 	STATUS,0 		//01B2 	1C03
		LJUMP 	1E0H 			//01B3 	39E0
		BSR 	20H,0 			//01B4 	1820
		LCALL 	3FEH 			//01B5 	33FE
		BCR 	PCLATH,4 		//01B6 	120A
		BCR 	PCLATH,3 		//01B7 	118A
		LCALL 	289H 			//01B8 	3289
		BCR 	PCLATH,4 		//01B9 	120A
		BCR 	PCLATH,3 		//01BA 	118A
		NOP		 					//01BB 	0000
		LDWI 	3H 			//01BC 	2A03
		BCR 	STATUS,5 		//01BD 	1283
		BCR 	STATUS,6 		//01BE 	1303
		SUBWR 	6CH,0 			//01BF 	0C6C
		BTSS 	STATUS,0 		//01C0 	1C03
		LJUMP 	1E0H 			//01C1 	39E0
		BSR 	4DH,7 			//01C2 	1BCD
		LJUMP 	1DFH 			//01C3 	39DF
		BSR 	20H,0 			//01C4 	1820
		LDR 	44H,0 			//01C5 	0844
		ADDWI 	39H 			//01C6 	2739
		STR 	FSR 			//01C7 	0184
		BCR 	PCLATH,4 		//01C8 	120A
		BCR 	PCLATH,3 		//01C9 	118A
		LCALL 	7BCH 			//01CA 	37BC
		BCR 	PCLATH,4 		//01CB 	120A
		BCR 	PCLATH,3 		//01CC 	118A
		STR 	57H 			//01CD 	01D7
		LDR 	40H,0 			//01CE 	0840
		SUBWR 	57H,0 			//01CF 	0C57
		BTSS 	STATUS,0 		//01D0 	1C03
		LJUMP 	1E0H 			//01D1 	39E0
		LCALL 	3FEH 			//01D2 	33FE
		BCR 	PCLATH,4 		//01D3 	120A
		BCR 	PCLATH,3 		//01D4 	118A
		LCALL 	289H 			//01D5 	3289
		BCR 	PCLATH,4 		//01D6 	120A
		BCR 	PCLATH,3 		//01D7 	118A
		LDWI 	3H 			//01D8 	2A03
		BCR 	STATUS,5 		//01D9 	1283
		BCR 	STATUS,6 		//01DA 	1303
		SUBWR 	6CH,0 			//01DB 	0C6C
		BTSS 	STATUS,0 		//01DC 	1C03
		LJUMP 	1E0H 			//01DD 	39E0
		BCR 	4DH,7 			//01DE 	13CD
		CLRR 	6BH 			//01DF 	016B
		LDR 	6BH,0 			//01E0 	086B
		STR 	57H 			//01E1 	01D7
		RLR 	57H,1 			//01E2 	05D7
		RLR 	57H,1 			//01E3 	05D7
		RLR 	57H,1 			//01E4 	05D7
		LDR 	4FH,0 			//01E5 	084F
		XORWR 	57H,0 			//01E6 	0457
		ANDWI 	7H 			//01E7 	2407
		XORWR 	57H,0 			//01E8 	0457
		STR 	4FH 			//01E9 	01CF
		BSR 	STATUS,6 		//01EA 	1B03
		CLRR 	1CH 			//01EB 	011C
		LDWI 	C0H 			//01EC 	2AC0
		ANDWR 	1DH,1 			//01ED 	029D
		BSR 	STATUS,5 		//01EE 	1A83
		CLRR 	1CH 			//01EF 	011C
		STR 	1DH 			//01F0 	019D
		BCR 	STATUS,0 		//01F1 	1003
		RLR 	7BH,0 			//01F2 	057B
		ADDWI 	2H 			//01F3 	2702
		STR 	FSR 			//01F4 	0184
		BCR 	PCLATH,4 		//01F5 	120A
		BCR 	PCLATH,3 		//01F6 	118A
		LCALL 	7BCH 			//01F7 	37BC
		BCR 	PCLATH,4 		//01F8 	120A
		BCR 	PCLATH,3 		//01F9 	118A
		XORWI 	FFH 			//01FA 	26FF
		BCR 	STATUS,5 		//01FB 	1283
		BCR 	STATUS,6 		//01FC 	1303
		LCALL 	404H 			//01FD 	3404
		BCR 	PCLATH,4 		//01FE 	120A
		BCR 	PCLATH,3 		//01FF 	118A
		LCALL 	7BCH 			//0200 	37BC
		BCR 	PCLATH,4 		//0201 	120A
		BCR 	PCLATH,3 		//0202 	118A
		ANDWI 	7FH 			//0203 	247F
		LCALL 	3EAH 			//0204 	33EA
		BCR 	STATUS,0 		//0205 	1003
		RLR 	7BH,0 			//0206 	057B
		ADDWI 	2H 			//0207 	2702
		STR 	FSR 			//0208 	0184
		BCR 	PCLATH,4 		//0209 	120A
		BCR 	PCLATH,3 		//020A 	118A
		LCALL 	7BCH 			//020B 	37BC
		BCR 	PCLATH,4 		//020C 	120A
		BCR 	PCLATH,3 		//020D 	118A
		XORWI 	FFH 			//020E 	26FF
		LCALL 	404H 			//020F 	3404
		BCR 	PCLATH,4 		//0210 	120A
		BCR 	PCLATH,3 		//0211 	118A
		LCALL 	7BCH 			//0212 	37BC
		BCR 	PCLATH,4 		//0213 	120A
		BCR 	PCLATH,3 		//0214 	118A
		LCALL 	3EAH 			//0215 	33EA
		BCR 	PCLATH,4 		//0216 	120A
		BCR 	PCLATH,3 		//0217 	118A
		LDR 	44H,0 			//0218 	0844
		STR 	21H 			//0219 	01A1
		LCALL 	2CAH 			//021A 	32CA
		BCR 	PCLATH,4 		//021B 	120A
		BCR 	PCLATH,3 		//021C 	118A
		BCR 	STATUS,5 		//021D 	1283
		BCR 	STATUS,6 		//021E 	1303
		INCR	44H,1 			//021F 	09C4
		BTSC 	STATUS,2 		//0220 	1503
		LJUMP 	24FH 			//0221 	3A4F
		LDWI 	6EH 			//0222 	2A6E
		CLRR 	44H 			//0223 	0144
		XORWR 	3FH,0 			//0224 	043F
		BTSS 	STATUS,2 		//0225 	1D03
		LJUMP 	24EH 			//0226 	3A4E
		LDWI 	2H 			//0227 	2A02
		INCR	3CH,1 			//0228 	09BC
		CLRR 	3EH 			//0229 	013E
		INCR	3EH,1 			//022A 	09BE
		SUBWR 	3DH,0 			//022B 	0C3D
		BTSS 	STATUS,0 		//022C 	1C03
		LJUMP 	230H 			//022D 	3A30
		LDWI 	13H 			//022E 	2A13
		STR 	3FH 			//022F 	01BF
		CLRR 	3DH 			//0230 	013D
		BTSS 	20H,0 			//0231 	1C20
		LJUMP 	244H 			//0232 	3A44
		CLRR 	7AH 			//0233 	017A
		LDR 	7AH,0 			//0234 	087A
		BTSS 	STATUS,2 		//0235 	1D03
		LJUMP 	244H 			//0236 	3A44
		LDWI 	80H 			//0237 	2A80
		BCR 	STATUS,5 		//0238 	1283
		BCR 	STATUS,6 		//0239 	1303
		STR 	6BH 			//023A 	01EB
		CLRR 	6CH 			//023B 	016C
		LDR 	7AH,0 			//023C 	087A
		STR 	21H 			//023D 	01A1
		CLRR 	6AH 			//023E 	016A
		LCALL 	3B4H 			//023F 	33B4
		BCR 	PCLATH,4 		//0240 	120A
		BCR 	PCLATH,3 		//0241 	118A
		INCR	7AH,1 			//0242 	09FA
		LJUMP 	234H 			//0243 	3A34
		BCR 	STATUS,5 		//0244 	1283
		BCR 	STATUS,6 		//0245 	1303
		BCR 	20H,0 			//0246 	1020
		BCR 	CH,5 			//0247 	128C
		BSR 	STATUS,5 		//0248 	1A83
		BCR 	CH,5 			//0249 	128C
		BCR 	STATUS,5 		//024A 	1283
		BSR 	STATUS,6 		//024B 	1B03
		BCR 	5H,3 			//024C 	1185
		RET		 					//024D 	0004
		INCR	3FH,1 			//024E 	09BF
		BCR 	PCLATH,4 		//024F 	120A
		BCR 	PCLATH,3 		//0250 	118A
		LJUMP 	658H 			//0251 	3E58
		BCR 	STATUS,6 		//0252 	1303
		BCR 	STATUS,5 		//0253 	1283
		LDWI 	FH 			//0254 	2A0F
		ANDWR 	6EH,1 			//0255 	02EE
		CLRR 	6BH 			//0256 	016B
		CLRR 	6CH 			//0257 	016C
		BCR 	STATUS,0 		//0258 	1003
		RLR 	69H,1 			//0259 	05E9
		RLR 	6AH,1 			//025A 	05EA
		BCR 	STATUS,0 		//025B 	1003
		RLR 	69H,1 			//025C 	05E9
		RLR 	6AH,1 			//025D 	05EA
		BCR 	STATUS,0 		//025E 	1003
		RLR 	69H,1 			//025F 	05E9
		RLR 	6AH,1 			//0260 	05EA
		BCR 	STATUS,0 		//0261 	1003
		RLR 	69H,1 			//0262 	05E9
		RLR 	6AH,1 			//0263 	05EA
		LDR 	6DH,0 			//0264 	086D
		IORWR 	6EH,0 			//0265 	036E
		BTSC 	STATUS,2 		//0266 	1503
		LJUMP 	288H 			//0267 	3A88
		LDWI 	8H 			//0268 	2A08
		STR 	68H 			//0269 	01E8
		INCR	68H,1 			//026A 	09E8
		BTSC 	6EH,3 			//026B 	15EE
		LJUMP 	271H 			//026C 	3A71
		BCR 	STATUS,0 		//026D 	1003
		RLR 	6DH,1 			//026E 	05ED
		RLR 	6EH,1 			//026F 	05EE
		LJUMP 	26AH 			//0270 	3A6A
		BCR 	STATUS,0 		//0271 	1003
		RLR 	6BH,1 			//0272 	05EB
		RLR 	6CH,1 			//0273 	05EC
		LDR 	6EH,0 			//0274 	086E
		SUBWR 	6AH,0 			//0275 	0C6A
		BTSS 	STATUS,2 		//0276 	1D03
		LJUMP 	27AH 			//0277 	3A7A
		LDR 	6DH,0 			//0278 	086D
		SUBWR 	69H,0 			//0279 	0C69
		BTSS 	STATUS,0 		//027A 	1C03
		LJUMP 	283H 			//027B 	3A83
		LDR 	6DH,0 			//027C 	086D
		SUBWR 	69H,1 			//027D 	0CE9
		LDR 	6EH,0 			//027E 	086E
		BTSS 	STATUS,0 		//027F 	1C03
		INCRSZ 	6EH,0 		//0280 	0A6E
		SUBWR 	6AH,1 			//0281 	0CEA
		BSR 	6BH,0 			//0282 	186B
		BCR 	STATUS,0 		//0283 	1003
		RLR 	69H,1 			//0284 	05E9
		RLR 	6AH,1 			//0285 	05EA
		DECRSZ 	68H,1 		//0286 	0EE8
		LJUMP 	271H 			//0287 	3A71
		RET		 					//0288 	0004
		CLRR 	7AH 			//0289 	017A
		LDWI 	4H 			//028A 	2A04
		INCR	7AH,1 			//028B 	09FA
		SUBWR 	7AH,0 			//028C 	0C7A
		BTSC 	STATUS,0 		//028D 	1403
		RET		 					//028E 	0004
		BCR 	STATUS,6 		//028F 	1303
		BCR 	STATUS,5 		//0290 	1283
		BTSC 	6DH,1 			//0291 	14ED
		INCR	6CH,1 			//0292 	09EC
		RRR	6DH,1 			//0293 	06ED
		LJUMP 	28AH 			//0294 	3A8A
		STR 	54H 			//0295 	01D4
		LDWI 	8H 			//0296 	2A08
		STR 	55H 			//0297 	01D5
		CLRR 	56H 			//0298 	0156
		LDR 	54H,0 			//0299 	0854
		STR 	77H 			//029A 	01F7
		LDWI 	7H 			//029B 	2A07
		BCR 	STATUS,0 		//029C 	1003
		RRR	77H,1 			//029D 	06F7
		ADDWI 	FFH 			//029E 	27FF
		BCR 	STATUS,0 		//029F 	1003
		BTSS 	STATUS,2 		//02A0 	1D03
		LJUMP 	29DH 			//02A1 	3A9D
		RLR 	56H,0 			//02A2 	0556
		IORWR 	77H,0 			//02A3 	0377
		STR 	56H 			//02A4 	01D6
		BCR 	STATUS,0 		//02A5 	1003
		RLR 	54H,1 			//02A6 	05D4
		LDR 	76H,0 			//02A7 	0876
		SUBWR 	56H,0 			//02A8 	0C56
		BTSS 	STATUS,0 		//02A9 	1C03
		LJUMP 	2ADH 			//02AA 	3AAD
		LDR 	76H,0 			//02AB 	0876
		SUBWR 	56H,1 			//02AC 	0CD6
		DECRSZ 	55H,1 		//02AD 	0ED5
		LJUMP 	299H 			//02AE 	3A99
		LDR 	56H,0 			//02AF 	0856
		RET		 					//02B0 	0004
		CLRR 	7CH 			//02B1 	017C
		CLRR 	7DH 			//02B2 	017D
		BTSS 	76H,0 			//02B3 	1C76
		LJUMP 	2BBH 			//02B4 	3ABB
		LDR 	78H,0 			//02B5 	0878
		ADDWR 	7CH,1 			//02B6 	0BFC
		BTSC 	STATUS,0 		//02B7 	1403
		INCR	7DH,1 			//02B8 	09FD
		LDR 	79H,0 			//02B9 	0879
		ADDWR 	7DH,1 			//02BA 	0BFD
		BCR 	STATUS,0 		//02BB 	1003
		RLR 	78H,1 			//02BC 	05F8
		RLR 	79H,1 			//02BD 	05F9
		BCR 	STATUS,0 		//02BE 	1003
		RRR	77H,1 			//02BF 	06F7
		RRR	76H,1 			//02C0 	06F6
		LDR 	76H,0 			//02C1 	0876
		IORWR 	77H,0 			//02C2 	0377
		BTSS 	STATUS,2 		//02C3 	1D03
		LJUMP 	2B3H 			//02C4 	3AB3
		LDR 	7DH,0 			//02C5 	087D
		STR 	77H 			//02C6 	01F7
		LDR 	7CH,0 			//02C7 	087C
		STR 	76H 			//02C8 	01F6
		RET		 					//02C9 	0004
		LDR 	4BH,0 			//02CA 	084B
		STR 	69H 			//02CB 	01E9
		LDR 	4AH,0 			//02CC 	084A
		STR 	68H 			//02CD 	01E8
		LDR 	4DH,0 			//02CE 	084D
		STR 	6BH 			//02CF 	01EB
		LDR 	4CH,0 			//02D0 	084C
		STR 	6AH 			//02D1 	01EA
		LDR 	4FH,0 			//02D2 	084F
		STR 	6DH 			//02D3 	01ED
		LDR 	4EH,0 			//02D4 	084E
		STR 	6CH 			//02D5 	01EC
		LDR 	51H,0 			//02D6 	0851
		STR 	6FH 			//02D7 	01EF
		LDR 	50H,0 			//02D8 	0850
		STR 	6EH 			//02D9 	01EE
		LCALL 	319H 			//02DA 	3319
		BCR 	PCLATH,4 		//02DB 	120A
		BCR 	PCLATH,3 		//02DC 	118A
		LCALL 	3F3H 			//02DD 	33F3
		BCR 	PCLATH,4 		//02DE 	120A
		BCR 	PCLATH,3 		//02DF 	118A
		LDR 	21H,0 			//02E0 	0821
		STR 	FSR 			//02E1 	0184
		LDR 	68H,0 			//02E2 	0868
		BSR 	STATUS,6 		//02E3 	1B03
		BSR 	1H,1 			//02E4 	1881
		STR 	INDF 			//02E5 	0180
		INCR	FSR,1 			//02E6 	0984
		BCR 	1H,1 			//02E7 	1081
		BCR 	STATUS,6 		//02E8 	1303
		LDR 	69H,0 			//02E9 	0869
		BSR 	STATUS,6 		//02EA 	1B03
		BSR 	1H,1 			//02EB 	1881
		STR 	INDF 			//02EC 	0180
		INCR	FSR,1 			//02ED 	0984
		BCR 	1H,1 			//02EE 	1081
		BCR 	STATUS,6 		//02EF 	1303
		LDR 	6AH,0 			//02F0 	086A
		BSR 	STATUS,6 		//02F1 	1B03
		BSR 	1H,1 			//02F2 	1881
		STR 	INDF 			//02F3 	0180
		INCR	FSR,1 			//02F4 	0984
		BCR 	1H,1 			//02F5 	1081
		BCR 	STATUS,6 		//02F6 	1303
		LDR 	6BH,0 			//02F7 	086B
		BSR 	STATUS,6 		//02F8 	1B03
		BSR 	1H,1 			//02F9 	1881
		STR 	INDF 			//02FA 	0180
		INCR	FSR,1 			//02FB 	0984
		BCR 	1H,1 			//02FC 	1081
		BCR 	STATUS,6 		//02FD 	1303
		LDR 	6CH,0 			//02FE 	086C
		BSR 	STATUS,6 		//02FF 	1B03
		BSR 	1H,1 			//0300 	1881
		STR 	INDF 			//0301 	0180
		INCR	FSR,1 			//0302 	0984
		BCR 	1H,1 			//0303 	1081
		BCR 	STATUS,6 		//0304 	1303
		LDR 	6DH,0 			//0305 	086D
		BSR 	STATUS,6 		//0306 	1B03
		BSR 	1H,1 			//0307 	1881
		STR 	INDF 			//0308 	0180
		INCR	FSR,1 			//0309 	0984
		BCR 	1H,1 			//030A 	1081
		BCR 	STATUS,6 		//030B 	1303
		LDR 	6EH,0 			//030C 	086E
		BSR 	STATUS,6 		//030D 	1B03
		BSR 	1H,1 			//030E 	1881
		STR 	INDF 			//030F 	0180
		INCR	FSR,1 			//0310 	0984
		BCR 	1H,1 			//0311 	1081
		BCR 	STATUS,6 		//0312 	1303
		LDR 	6FH,0 			//0313 	086F
		BSR 	STATUS,6 		//0314 	1B03
		BSR 	1H,1 			//0315 	1881
		STR 	INDF 			//0316 	0180
		BCR 	1H,1 			//0317 	1081
		RET		 					//0318 	0004
		LDR 	FSR,0 			//0319 	0804
		STR 	45H 			//031A 	01C5
		STR 	FSR 			//031B 	0184
		BCR 	STATUS,6 		//031C 	1303
		BCR 	STATUS,5 		//031D 	1283
		BSR 	STATUS,7 		//031E 	1B83
		BTSS 	21H,4 			//031F 	1E21
		BCR 	STATUS,7 		//0320 	1383
		LDWI 	FH 			//0321 	2A0F
		ANDWR 	21H,1 			//0322 	02A1
		LDR 	21H,0 			//0323 	0821
		BCR 	STATUS,0 		//0324 	1003
		RLR 	21H,1 			//0325 	05A1
		RLR 	21H,1 			//0326 	05A1
		RLR 	21H,1 			//0327 	05A1
		ANDWI 	8H 			//0328 	2408
		LDWI 	20H 			//0329 	2A20
		BTSS 	STATUS,2 		//032A 	1D03
		LDWI 	60H 			//032B 	2A60
		ADDWR 	21H,1 			//032C 	0BA1
		RET		 					//032D 	0004
		LDWI 	2H 			//032E 	2A02
		SUBWR 	41H,0 			//032F 	0C41
		BTSC 	STATUS,0 		//0330 	1403
		LJUMP 	333H 			//0331 	3B33
		LJUMP 	3D4H 			//0332 	3BD4
		LDR 	25H,0 			//0333 	0825
		SUBWR 	23H,0 			//0334 	0C23
		BTSS 	STATUS,2 		//0335 	1D03
		LJUMP 	339H 			//0336 	3B39
		LDR 	24H,0 			//0337 	0824
		SUBWR 	22H,0 			//0338 	0C22
		LDR 	23H,0 			//0339 	0823
		BTSC 	STATUS,0 		//033A 	1403
		LJUMP 	340H 			//033B 	3B40
		LCALL 	3C8H 			//033C 	33C8
		BCR 	PCLATH,4 		//033D 	120A
		BCR 	PCLATH,3 		//033E 	118A
		LDR 	23H,0 			//033F 	0823
		SUBWR 	2DH,0 			//0340 	0C2D
		BTSS 	STATUS,2 		//0341 	1D03
		LJUMP 	345H 			//0342 	3B45
		LDR 	22H,0 			//0343 	0822
		SUBWR 	2CH,0 			//0344 	0C2C
		BTSC 	STATUS,0 		//0345 	1403
		RET		 					//0346 	0004
		LJUMP 	3F9H 			//0347 	3BF9
		LDWI 	2H 			//0348 	2A02
		SUBWR 	41H,0 			//0349 	0C41
		BTSC 	STATUS,0 		//034A 	1403
		LJUMP 	34DH 			//034B 	3B4D
		LJUMP 	3D4H 			//034C 	3BD4
		LDR 	23H,0 			//034D 	0823
		SUBWR 	25H,0 			//034E 	0C25
		BTSS 	STATUS,2 		//034F 	1D03
		LJUMP 	353H 			//0350 	3B53
		LDR 	22H,0 			//0351 	0822
		SUBWR 	24H,0 			//0352 	0C24
		BTSC 	STATUS,0 		//0353 	1403
		LJUMP 	359H 			//0354 	3B59
		LDR 	23H,0 			//0355 	0823
		LCALL 	3C8H 			//0356 	33C8
		BCR 	PCLATH,4 		//0357 	120A
		BCR 	PCLATH,3 		//0358 	118A
		LDR 	2DH,0 			//0359 	082D
		SUBWR 	23H,0 			//035A 	0C23
		BTSS 	STATUS,2 		//035B 	1D03
		LJUMP 	35FH 			//035C 	3B5F
		LDR 	2CH,0 			//035D 	082C
		SUBWR 	22H,0 			//035E 	0C22
		BTSC 	STATUS,0 		//035F 	1403
		RET		 					//0360 	0004
		LJUMP 	3F9H 			//0361 	3BF9
		LCALL 	319H 			//0362 	3319
		BCR 	PCLATH,4 		//0363 	120A
		BCR 	PCLATH,3 		//0364 	118A
		LCALL 	3F3H 			//0365 	33F3
		BCR 	PCLATH,4 		//0366 	120A
		BCR 	PCLATH,3 		//0367 	118A
		LDR 	21H,0 			//0368 	0821
		STR 	FSR 			//0369 	0184
		BSR 	STATUS,6 		//036A 	1B03
		BSR 	1H,1 			//036B 	1881
		LDR 	INDF,0 			//036C 	0800
		BCR 	1H,1 			//036D 	1081
		BCR 	STATUS,6 		//036E 	1303
		STR 	68H 			//036F 	01E8
		BSR 	STATUS,6 		//0370 	1B03
		BSR 	1H,1 			//0371 	1881
		INCR	FSR,1 			//0372 	0984
		LDR 	INDF,0 			//0373 	0800
		BCR 	1H,1 			//0374 	1081
		BCR 	STATUS,6 		//0375 	1303
		STR 	69H 			//0376 	01E9
		BSR 	STATUS,6 		//0377 	1B03
		BSR 	1H,1 			//0378 	1881
		INCR	FSR,1 			//0379 	0984
		LDR 	INDF,0 			//037A 	0800
		BCR 	1H,1 			//037B 	1081
		BCR 	STATUS,6 		//037C 	1303
		STR 	6AH 			//037D 	01EA
		BSR 	STATUS,6 		//037E 	1B03
		BSR 	1H,1 			//037F 	1881
		INCR	FSR,1 			//0380 	0984
		LDR 	INDF,0 			//0381 	0800
		BCR 	1H,1 			//0382 	1081
		BCR 	STATUS,6 		//0383 	1303
		STR 	6BH 			//0384 	01EB
		BSR 	STATUS,6 		//0385 	1B03
		BSR 	1H,1 			//0386 	1881
		INCR	FSR,1 			//0387 	0984
		LDR 	INDF,0 			//0388 	0800
		BCR 	1H,1 			//0389 	1081
		BCR 	STATUS,6 		//038A 	1303
		STR 	6CH 			//038B 	01EC
		BSR 	STATUS,6 		//038C 	1B03
		BSR 	1H,1 			//038D 	1881
		INCR	FSR,1 			//038E 	0984
		LDR 	INDF,0 			//038F 	0800
		BCR 	1H,1 			//0390 	1081
		BCR 	STATUS,6 		//0391 	1303
		STR 	6DH 			//0392 	01ED
		BSR 	STATUS,6 		//0393 	1B03
		BSR 	1H,1 			//0394 	1881
		INCR	FSR,1 			//0395 	0984
		LDR 	INDF,0 			//0396 	0800
		BCR 	1H,1 			//0397 	1081
		BCR 	STATUS,6 		//0398 	1303
		STR 	6EH 			//0399 	01EE
		BSR 	STATUS,6 		//039A 	1B03
		BSR 	1H,1 			//039B 	1881
		INCR	FSR,1 			//039C 	0984
		LDR 	INDF,0 			//039D 	0800
		BCR 	1H,1 			//039E 	1081
		BCR 	STATUS,6 		//039F 	1303
		STR 	6FH 			//03A0 	01EF
		BCR 	STATUS,5 		//03A1 	1283
		BCR 	STATUS,6 		//03A2 	1303
		LDR 	69H,0 			//03A3 	0869
		STR 	4BH 			//03A4 	01CB
		LDR 	68H,0 			//03A5 	0868
		STR 	4AH 			//03A6 	01CA
		LDR 	6BH,0 			//03A7 	086B
		STR 	4DH 			//03A8 	01CD
		LDR 	6AH,0 			//03A9 	086A
		STR 	4CH 			//03AA 	01CC
		LDR 	6DH,0 			//03AB 	086D
		STR 	4FH 			//03AC 	01CF
		LDR 	6CH,0 			//03AD 	086C
		STR 	4EH 			//03AE 	01CE
		LDR 	6FH,0 			//03AF 	086F
		STR 	51H 			//03B0 	01D1
		LDR 	6EH,0 			//03B1 	086E
		STR 	50H 			//03B2 	01D0
		RET		 					//03B3 	0004
		LCALL 	319H 			//03B4 	3319
		BCR 	PCLATH,4 		//03B5 	120A
		BCR 	PCLATH,3 		//03B6 	118A
		LCALL 	3F3H 			//03B7 	33F3
		LDR 	21H,0 			//03B8 	0821
		ADDWR 	6AH,0 			//03B9 	0B6A
		STR 	FSR 			//03BA 	0184
		LDR 	6BH,0 			//03BB 	086B
		BSR 	STATUS,6 		//03BC 	1B03
		BSR 	1H,1 			//03BD 	1881
		STR 	INDF 			//03BE 	0180
		INCR	FSR,1 			//03BF 	0984
		BCR 	1H,1 			//03C0 	1081
		BCR 	STATUS,6 		//03C1 	1303
		LDR 	6CH,0 			//03C2 	086C
		BSR 	STATUS,6 		//03C3 	1B03
		BSR 	1H,1 			//03C4 	1881
		STR 	INDF 			//03C5 	0180
		BCR 	1H,1 			//03C6 	1081
		RET		 					//03C7 	0004
		STR 	6CH 			//03C8 	01EC
		LDR 	22H,0 			//03C9 	0822
		STR 	6BH 			//03CA 	01EB
		LDR 	25H,0 			//03CB 	0825
		STR 	23H 			//03CC 	01A3
		LDR 	24H,0 			//03CD 	0824
		STR 	22H 			//03CE 	01A2
		LDR 	6CH,0 			//03CF 	086C
		STR 	25H 			//03D0 	01A5
		LDR 	6BH,0 			//03D1 	086B
		STR 	24H 			//03D2 	01A4
		RET		 					//03D3 	0004
		BCR 	STATUS,0 		//03D4 	1003
		RLR 	41H,0 			//03D5 	0541
		ADDWI 	22H 			//03D6 	2722
		STR 	FSR 			//03D7 	0184
		LDR 	2CH,0 			//03D8 	082C
		BCR 	STATUS,7 		//03D9 	1383
		STR 	INDF 			//03DA 	0180
		INCR	FSR,1 			//03DB 	0984
		LDR 	2DH,0 			//03DC 	082D
		STR 	INDF 			//03DD 	0180
		RET		 					//03DE 	0004
		STR 	58H 			//03DF 	01D8
		LDWI 	F8H 			//03E0 	2AF8
		CLRR 	59H 			//03E1 	0159
		ANDWR 	4FH,0 			//03E2 	024F
		STR 	5AH 			//03E3 	01DA
		LDR 	57H,0 			//03E4 	0857
		IORWR 	59H,0 			//03E5 	0359
		STR 	4EH 			//03E6 	01CE
		LDR 	58H,0 			//03E7 	0858
		IORWR 	5AH,0 			//03E8 	035A
		RET		 					//03E9 	0004
		STR 	58H 			//03EA 	01D8
		CLRR 	59H 			//03EB 	0159
		STR 	FSR 			//03EC 	0184
		BSR 	STATUS,7 		//03ED 	1B83
		BTSS 	59H,0 			//03EE 	1C59
		BCR 	STATUS,7 		//03EF 	1383
		LDR 	57H,0 			//03F0 	0857
		ANDWR 	INDF,1 		//03F1 	0280
		RET		 					//03F2 	0004
		LDR 	FSR,0 			//03F3 	0804
		BCR 	STATUS,5 		//03F4 	1283
		BCR 	STATUS,6 		//03F5 	1303
		STR 	45H 			//03F6 	01C5
		STR 	FSR 			//03F7 	0184
		RET		 					//03F8 	0004
		LDR 	2DH,0 			//03F9 	082D
		STR 	23H 			//03FA 	01A3
		LDR 	2CH,0 			//03FB 	082C
		STR 	22H 			//03FC 	01A2
		RET		 					//03FD 	0004
		BSR 	6BH,0 			//03FE 	186B
		CLRR 	6CH 			//03FF 	016C
		INCR	6CH,1 			//0400 	09EC
		LDR 	6BH,0 			//0401 	086B
		STR 	6DH 			//0402 	01ED
		RET		 					//0403 	0004
		STR 	57H 			//0404 	01D7
		BCR 	STATUS,0 		//0405 	1003
		RLR 	7BH,0 			//0406 	057B
		ADDWI 	1H 			//0407 	2701
		STR 	FSR 			//0408 	0184
		RET		 					//0409 	0004

		//;main.C: 644: DelayMs(1500);
		//;main.C: 643: count = 0;
		//;main.C: 642: strongest = 0;
		LDWI 	4H 			//040A 	2A04
		BCR 	STATUS,5 		//040B 	1283
		STR 	34H 			//040C 	01B4
		LDWI 	3H 			//040D 	2A03
		CLRR 	35H 			//040E 	0135

		//;main.C: 500: level_low = 3;
		STR 	32H 			//040F 	01B2
		CLRR 	33H 			//0410 	0133

		//;main.C: 501: level = 0;
		CLRR 	30H 			//0411 	0130
		CLRR 	31H 			//0412 	0131

		//;main.C: 502: for (int i = 0; i < 10; i++){
		CLRR 	57H 			//0413 	0157
		CLRR 	58H 			//0414 	0158

		//;main.C: 503: InfraRed_GET();
		LCALL 	45CH 			//0415 	345C

		//;main.C: 504: level += voltage*10;
		BCR 	STATUS,5 		//0416 	1283
		BCR 	STATUS,6 		//0417 	1303
		LDR 	37H,0 			//0418 	0837
		STR 	77H 			//0419 	01F7
		LDR 	36H,0 			//041A 	0836
		STR 	76H 			//041B 	01F6
		LDWI 	AH 			//041C 	2A0A
		STR 	78H 			//041D 	01F8
		CLRR 	79H 			//041E 	0179
		BCR 	PCLATH,4 		//041F 	120A
		BCR 	PCLATH,3 		//0420 	118A
		LCALL 	2B1H 			//0421 	32B1
		BCR 	PCLATH,4 		//0422 	120A
		BCR 	PCLATH,3 		//0423 	118A
		LDR 	76H,0 			//0424 	0876
		ADDWR 	30H,1 			//0425 	0BB0
		BTSC 	STATUS,0 		//0426 	1403
		INCR	31H,1 			//0427 	09B1
		LDR 	77H,0 			//0428 	0877
		ADDWR 	31H,1 			//0429 	0BB1
		INCR	57H,1 			//042A 	09D7
		BTSC 	STATUS,2 		//042B 	1503
		INCR	58H,1 			//042C 	09D8
		LDR 	58H,0 			//042D 	0858
		XORWI 	80H 			//042E 	2680
		STR 	7FH 			//042F 	01FF
		LDWI 	80H 			//0430 	2A80
		SUBWR 	7FH,0 			//0431 	0C7F
		BTSS 	STATUS,2 		//0432 	1D03
		LJUMP 	436H 			//0433 	3C36
		LDWI 	AH 			//0434 	2A0A
		SUBWR 	57H,0 			//0435 	0C57
		BTSS 	STATUS,0 		//0436 	1C03
		LJUMP 	415H 			//0437 	3C15

		//;main.C: 505: }
		//;main.C: 506: level = level/100;
		LDWI 	64H 			//0438 	2A64
		STR 	76H 			//0439 	01F6
		CLRR 	77H 			//043A 	0177
		BCR 	STATUS,5 		//043B 	1283
		BCR 	STATUS,6 		//043C 	1303
		LDR 	31H,0 			//043D 	0831
		STR 	79H 			//043E 	01F9
		LDR 	30H,0 			//043F 	0830
		STR 	78H 			//0440 	01F8
		LCALL 	548H 			//0441 	3548
		BCR 	PCLATH,4 		//0442 	120A
		BCR 	PCLATH,3 		//0443 	118A
		LDR 	77H,0 			//0444 	0877
		STR 	31H 			//0445 	01B1
		LDR 	76H,0 			//0446 	0876
		STR 	30H 			//0447 	01B0

		//;main.C: 507: if (voltage >= 7) {
		LDWI 	0H 			//0448 	2A00
		SUBWR 	37H,0 			//0449 	0C37
		LDWI 	7H 			//044A 	2A07
		BTSC 	STATUS,2 		//044B 	1503
		SUBWR 	36H,0 			//044C 	0C36

		//;main.C: 508: level_high = level + 3;
		LDR 	30H,0 			//044D 	0830
		BTSS 	STATUS,0 		//044E 	1C03
		LJUMP 	456H 			//044F 	3C56
		ADDWI 	3H 			//0450 	2703

		//;main.C: 509: level_low = level + 2;
		LCALL 	58FH 			//0451 	358F
		BCR 	PCLATH,4 		//0452 	120A
		BCR 	PCLATH,3 		//0453 	118A
		ADDWI 	2H 			//0454 	2702

		//;main.C: 510: }
		LJUMP 	588H 			//0455 	3D88

		//;main.C: 511: else {
		//;main.C: 512: level_high = level + 2;
		ADDWI 	2H 			//0456 	2702

		//;main.C: 513: level_low = level + 1;
		LCALL 	58FH 			//0457 	358F
		BCR 	PCLATH,4 		//0458 	120A
		BCR 	PCLATH,3 		//0459 	118A
		ADDWI 	1H 			//045A 	2701
		LJUMP 	588H 			//045B 	3D88

		//;main.C: 462: val = GET_ADC_DATA(0x01);
		LDWI 	1H 			//045C 	2A01
		LCALL 	51BH 			//045D 	351B
		BCR 	PCLATH,4 		//045E 	120A
		BCR 	PCLATH,3 		//045F 	118A

		//;main.C: 463: voltage = val *5 * 1000/4096;
		LCALL 	572H 			//0460 	3572
		BCR 	PCLATH,4 		//0461 	120A
		BCR 	PCLATH,3 		//0462 	118A
		LCALL 	2B1H 			//0463 	32B1
		BCR 	PCLATH,4 		//0464 	120A
		BCR 	PCLATH,3 		//0465 	118A
		LDR 	77H,0 			//0466 	0877
		STR 	37H 			//0467 	01B7
		LDR 	76H,0 			//0468 	0876
		STR 	36H 			//0469 	01B6
		LDWI 	CH 			//046A 	2A0C
		BCR 	STATUS,0 		//046B 	1003
		RRR	37H,1 			//046C 	06B7
		RRR	36H,1 			//046D 	06B6
		ADDWI 	FFH 			//046E 	27FF
		BTSS 	STATUS,2 		//046F 	1D03
		LJUMP 	46BH 			//0470 	3C6B

		//;main.C: 464: __nop();
		NOP		 					//0471 	0000

		//;main.C: 465: __nop();
		NOP		 					//0472 	0000
		RET		 					//0473 	0004

		//;main.C: 381: LEDG_ON();
		LCALL 	4D0H 			//0474 	34D0
		BCR 	PCLATH,4 		//0475 	120A
		BCR 	PCLATH,3 		//0476 	118A

		//;main.C: 382: DelayMs(500);
		LDWI 	F4H 			//0477 	2AF4
		LCALL 	4D8H 			//0478 	34D8
		BCR 	PCLATH,4 		//0479 	120A
		BCR 	PCLATH,3 		//047A 	118A

		//;main.C: 383: LED_OFF();
		LCALL 	4EFH 			//047B 	34EF
		BCR 	PCLATH,4 		//047C 	120A
		BCR 	PCLATH,3 		//047D 	118A

		//;main.C: 384: LEDB_ON();
		LCALL 	544H 			//047E 	3544
		BCR 	PCLATH,4 		//047F 	120A
		BCR 	PCLATH,3 		//0480 	118A

		//;main.C: 385: DelayMs(500);
		LDWI 	F4H 			//0481 	2AF4
		LCALL 	4D8H 			//0482 	34D8
		BCR 	PCLATH,4 		//0483 	120A
		BCR 	PCLATH,3 		//0484 	118A

		//;main.C: 386: LED_OFF();
		LJUMP 	4EFH 			//0485 	3CEF

		//;main.C: 472: val = GET_ADC_DATA(0x01);
		LDWI 	1H 			//0486 	2A01
		LCALL 	51BH 			//0487 	351B
		BCR 	PCLATH,4 		//0488 	120A
		BCR 	PCLATH,3 		//0489 	118A

		//;main.C: 473: voltage = val *5 * 1000/4096;
		LCALL 	572H 			//048A 	3572
		BCR 	PCLATH,4 		//048B 	120A
		BCR 	PCLATH,3 		//048C 	118A
		LCALL 	2B1H 			//048D 	32B1
		BCR 	PCLATH,4 		//048E 	120A
		BCR 	PCLATH,3 		//048F 	118A
		LDR 	77H,0 			//0490 	0877
		STR 	37H 			//0491 	01B7
		LDR 	76H,0 			//0492 	0876
		STR 	36H 			//0493 	01B6
		LDWI 	CH 			//0494 	2A0C
		BCR 	STATUS,0 		//0495 	1003
		RRR	37H,1 			//0496 	06B7
		RRR	36H,1 			//0497 	06B6
		ADDWI 	FFH 			//0498 	27FF
		BTSS 	STATUS,2 		//0499 	1D03
		LJUMP 	495H 			//049A 	3C95

		//;main.C: 474: __nop();
		NOP		 					//049B 	0000

		//;main.C: 475: __nop();
		NOP		 					//049C 	0000

		//;main.C: 476: if (voltage > level_high) {
		BCR 	STATUS,5 		//049D 	1283
		BCR 	STATUS,6 		//049E 	1303
		LDR 	37H,0 			//049F 	0837
		SUBWR 	35H,0 			//04A0 	0C35
		BTSS 	STATUS,2 		//04A1 	1D03
		LJUMP 	4A5H 			//04A2 	3CA5
		LDR 	36H,0 			//04A3 	0836
		SUBWR 	34H,0 			//04A4 	0C34
		BTSC 	STATUS,0 		//04A5 	1403
		LJUMP 	4BCH 			//04A6 	3CBC

		//;main.C: 477: Motor_ON();
		LCALL 	4D4H 			//04A7 	34D4
		BCR 	PCLATH,4 		//04A8 	120A
		BCR 	PCLATH,3 		//04A9 	118A

		//;main.C: 478: LEDG_ON();
		LCALL 	4D0H 			//04AA 	34D0
		BCR 	PCLATH,4 		//04AB 	120A
		BCR 	PCLATH,3 		//04AC 	118A

		//;main.C: 479: DelayMs(340);
		LDWI 	54H 			//04AD 	2A54
		LCALL 	4D8H 			//04AE 	34D8
		BCR 	PCLATH,4 		//04AF 	120A
		BCR 	PCLATH,3 		//04B0 	118A

		//;main.C: 480: Motor_OFF();
		LCALL 	540H 			//04B1 	3540
		BCR 	PCLATH,4 		//04B2 	120A
		BCR 	PCLATH,3 		//04B3 	118A

		//;main.C: 481: LED_OFF();
		LCALL 	4EFH 			//04B4 	34EF
		BCR 	PCLATH,4 		//04B5 	120A
		BCR 	PCLATH,3 		//04B6 	118A

		//;main.C: 482: count++;
		BCR 	STATUS,5 		//04B7 	1283
		INCR	38H,1 			//04B8 	09B8
		BTSC 	STATUS,2 		//04B9 	1503
		INCR	39H,1 			//04BA 	09B9

		//;main.C: 483: } else if (voltage > level_low){
		LJUMP 	4CEH 			//04BB 	3CCE
		LDR 	37H,0 			//04BC 	0837
		SUBWR 	33H,0 			//04BD 	0C33
		BTSS 	STATUS,2 		//04BE 	1D03
		LJUMP 	4C2H 			//04BF 	3CC2
		LDR 	36H,0 			//04C0 	0836
		SUBWR 	32H,0 			//04C1 	0C32
		BTSC 	STATUS,0 		//04C2 	1403
		LJUMP 	4CCH 			//04C3 	3CCC

		//;main.C: 484: Motor_ON();
		LCALL 	4D4H 			//04C4 	34D4
		BCR 	PCLATH,4 		//04C5 	120A
		BCR 	PCLATH,3 		//04C6 	118A

		//;main.C: 485: LEDG_ON();
		LCALL 	4D0H 			//04C7 	34D0
		BCR 	PCLATH,4 		//04C8 	120A
		BCR 	PCLATH,3 		//04C9 	118A

		//;main.C: 486: DelayMs(400);
		LDWI 	90H 			//04CA 	2A90
		LJUMP 	4AEH 			//04CB 	3CAE

		//;main.C: 491: count = 0;
		CLRR 	38H 			//04CC 	0138
		CLRR 	39H 			//04CD 	0139

		//;main.C: 492: }
		//;main.C: 493: DelayMs(200);
		LDWI 	C8H 			//04CE 	2AC8
		LJUMP 	4D8H 			//04CF 	3CD8

		//;main.C: 343: PB0 = 1;
		BCR 	STATUS,5 		//04D0 	1283
		BSR 	6H,0 			//04D1 	1806

		//;main.C: 344: PB6 = 0;
		BCR 	6H,6 			//04D2 	1306

		//;main.C: 345: TRISB0 = 0;
		//;main.C: 346: TRISB6 = 0;
		//;main.C: 348: PC2 = 1;
		//;main.C: 349: TRISC2 = 0;
		LJUMP 	580H 			//04D3 	3D80

		//;main.C: 392: PA6 = 1;
		BSR 	5H,6 			//04D4 	1B05

		//;main.C: 393: TRISA6 = 0;
		BSR 	STATUS,5 		//04D5 	1A83
		BCR 	5H,6 			//04D6 	1305
		RET		 					//04D7 	0004
		BCR 	STATUS,5 		//04D8 	1283
		STR 	54H 			//04D9 	01D4

		//;main.C: 80: unsigned char a,b;
		//;main.C: 81: for(a=0;a<Time;a++)
		CLRR 	55H 			//04DA 	0155
		LDR 	54H,0 			//04DB 	0854
		SUBWR 	55H,0 			//04DC 	0C55
		BTSC 	STATUS,0 		//04DD 	1403
		RET		 					//04DE 	0004

		//;main.C: 82: {
		//;main.C: 83: for(b=0;b<5;b++)
		CLRR 	56H 			//04DF 	0156

		//;main.C: 84: {
		//;main.C: 85: DelayUs(197);
		LDWI 	C5H 			//04E0 	2AC5
		STR 	76H 			//04E1 	01F6
		CLRR 	77H 			//04E2 	0177
		LCALL 	50CH 			//04E3 	350C
		BCR 	PCLATH,4 		//04E4 	120A
		BCR 	PCLATH,3 		//04E5 	118A
		BCR 	STATUS,5 		//04E6 	1283
		BCR 	STATUS,6 		//04E7 	1303
		LDWI 	5H 			//04E8 	2A05
		INCR	56H,1 			//04E9 	09D6
		SUBWR 	56H,0 			//04EA 	0C56
		BTSS 	STATUS,0 		//04EB 	1C03
		LJUMP 	4E0H 			//04EC 	3CE0
		INCR	55H,1 			//04ED 	09D5
		LJUMP 	4DBH 			//04EE 	3CDB

		//;main.C: 367: PB0 = 1;
		BCR 	STATUS,5 		//04EF 	1283
		BSR 	6H,0 			//04F0 	1806

		//;main.C: 368: PB6 = 1;
		BSR 	6H,6 			//04F1 	1B06

		//;main.C: 369: TRISB0 = 0;
		//;main.C: 370: TRISB6 = 0;
		//;main.C: 372: PC2 = 1;
		//;main.C: 373: TRISC2 = 0;
		LJUMP 	580H 			//04F2 	3D80

		//;main.C: 247: AUXPGE = 0;
		BCR 	STATUS,5 		//04F3 	1283
		BSR 	STATUS,6 		//04F4 	1B03
		BCR 	1H,1 			//04F5 	1081

		//;main.C: 248: ADCON1 = 0B11100101;
		LDWI 	E5H 			//04F6 	2AE5
		STR 	14H 			//04F7 	0194

		//;main.C: 249: ADCON0 = 0B00001011;
		LDWI 	BH 			//04F8 	2A0B
		STR 	13H 			//04F9 	0193

		//;main.C: 250: ADCON3 = 0;
		CLRR 	16H 			//04FA 	0116

		//;main.C: 252: ADON = 1;
		BSR 	13H,0 			//04FB 	1813

		//;main.C: 254: DelayUs(200);
		LDWI 	C8H 			//04FC 	2AC8
		STR 	76H 			//04FD 	01F6
		CLRR 	77H 			//04FE 	0177
		LCALL 	50CH 			//04FF 	350C
		BCR 	PCLATH,4 		//0500 	120A
		BCR 	PCLATH,3 		//0501 	118A

		//;main.C: 255: DelayUs(200);
		LDWI 	C8H 			//0502 	2AC8
		STR 	76H 			//0503 	01F6
		CLRR 	77H 			//0504 	0177
		LCALL 	50CH 			//0505 	350C
		BCR 	PCLATH,4 		//0506 	120A
		BCR 	PCLATH,3 		//0507 	118A

		//;main.C: 256: DelayUs(50);
		LDWI 	32H 			//0508 	2A32
		STR 	76H 			//0509 	01F6
		CLRR 	77H 			//050A 	0177
		LJUMP 	50CH 			//050B 	3D0C

		//;main.C: 65: unsigned int a;
		//;main.C: 66: for(a=0;a<Time;a++)
		CLRR 	78H 			//050C 	0178
		CLRR 	79H 			//050D 	0179
		LDR 	77H,0 			//050E 	0877
		SUBWR 	79H,0 			//050F 	0C79
		BTSS 	STATUS,2 		//0510 	1D03
		LJUMP 	514H 			//0511 	3D14
		LDR 	76H,0 			//0512 	0876
		SUBWR 	78H,0 			//0513 	0C78
		BTSC 	STATUS,0 		//0514 	1403
		RET		 					//0515 	0004

		//;main.C: 67: {
		//;main.C: 68: __nop();
		NOP		 					//0516 	0000
		INCR	78H,1 			//0517 	09F8
		BTSC 	STATUS,2 		//0518 	1503
		INCR	79H,1 			//0519 	09F9
		LJUMP 	50EH 			//051A 	3D0E
		BCR 	STATUS,5 		//051B 	1283
		BCR 	STATUS,6 		//051C 	1303
		STR 	55H 			//051D 	01D5

		//;main.C: 268: ADCON0 &= 0B00000111;
		LDWI 	7H 			//051E 	2A07
		BSR 	STATUS,6 		//051F 	1B03
		ANDWR 	13H,1 			//0520 	0293

		//;main.C: 269: ADCON0 |= adcChannel <<3;
		BCR 	STATUS,6 		//0521 	1303
		LDR 	55H,0 			//0522 	0855
		STR 	54H 			//0523 	01D4
		BCR 	STATUS,0 		//0524 	1003
		RLR 	54H,1 			//0525 	05D4
		BCR 	STATUS,0 		//0526 	1003
		RLR 	54H,1 			//0527 	05D4
		BCR 	STATUS,0 		//0528 	1003
		RLR 	54H,0 			//0529 	0554
		BSR 	STATUS,6 		//052A 	1B03
		IORWR 	13H,1 			//052B 	0393

		//;main.C: 271: DelayUs(6);
		LDWI 	6H 			//052C 	2A06
		STR 	76H 			//052D 	01F6
		CLRR 	77H 			//052E 	0177
		LCALL 	50CH 			//052F 	350C
		BCR 	PCLATH,4 		//0530 	120A
		BCR 	PCLATH,3 		//0531 	118A

		//;main.C: 272: GO_DONE = 1;
		BCR 	STATUS,5 		//0532 	1283
		BSR 	STATUS,6 		//0533 	1B03
		BSR 	13H,1 			//0534 	1893

		//;main.C: 273: __nop();
		NOP		 					//0535 	0000

		//;main.C: 274: while(GO_DONE);
		BCR 	STATUS,5 		//0536 	1283
		BSR 	STATUS,6 		//0537 	1B03
		BTSC 	13H,1 			//0538 	1493
		LJUMP 	536H 			//0539 	3D36

		//;main.C: 278: return (((unsigned int)(ADRESH) <<8 ) | ADRESL);
		LDR 	12H,0 			//053A 	0812
		STR 	7DH 			//053B 	01FD
		CLRR 	7CH 			//053C 	017C
		LDR 	11H,0 			//053D 	0811
		IORWR 	7CH,1 			//053E 	03FC
		RET		 					//053F 	0004

		//;main.C: 398: PA6 = 0;
		BCR 	5H,6 			//0540 	1305

		//;main.C: 399: TRISA6 = 0;
		BSR 	STATUS,5 		//0541 	1A83
		BCR 	5H,6 			//0542 	1305
		RET		 					//0543 	0004

		//;main.C: 331: PB0 = 0;
		BCR 	STATUS,5 		//0544 	1283
		BCR 	6H,0 			//0545 	1006

		//;main.C: 332: PB6 = 1;
		BSR 	6H,6 			//0546 	1B06

		//;main.C: 333: TRISB0 = 0;
		//;main.C: 334: TRISB6 = 0;
		//;main.C: 336: PC2 = 1;
		//;main.C: 337: TRISC2 = 0;
		LJUMP 	580H 			//0547 	3D80
		CLRR 	54H 			//0548 	0154
		CLRR 	55H 			//0549 	0155
		LDR 	76H,0 			//054A 	0876
		IORWR 	77H,0 			//054B 	0377
		BTSC 	STATUS,2 		//054C 	1503
		LJUMP 	56DH 			//054D 	3D6D
		CLRR 	56H 			//054E 	0156
		INCR	56H,1 			//054F 	09D6
		BTSC 	77H,7 			//0550 	17F7
		LJUMP 	556H 			//0551 	3D56
		BCR 	STATUS,0 		//0552 	1003
		RLR 	76H,1 			//0553 	05F6
		RLR 	77H,1 			//0554 	05F7
		LJUMP 	54FH 			//0555 	3D4F
		BCR 	STATUS,0 		//0556 	1003
		RLR 	54H,1 			//0557 	05D4
		RLR 	55H,1 			//0558 	05D5
		LDR 	77H,0 			//0559 	0877
		SUBWR 	79H,0 			//055A 	0C79
		BTSS 	STATUS,2 		//055B 	1D03
		LJUMP 	55FH 			//055C 	3D5F
		LDR 	76H,0 			//055D 	0876
		SUBWR 	78H,0 			//055E 	0C78
		BTSS 	STATUS,0 		//055F 	1C03
		LJUMP 	569H 			//0560 	3D69
		LDR 	76H,0 			//0561 	0876
		SUBWR 	78H,1 			//0562 	0CF8
		LDR 	77H,0 			//0563 	0877
		BTSS 	STATUS,0 		//0564 	1C03
		DECR 	79H,1 			//0565 	0DF9
		SUBWR 	79H,1 			//0566 	0CF9
		BSR 	54H,0 			//0567 	1854
		BCR 	STATUS,0 		//0568 	1003
		RRR	77H,1 			//0569 	06F7
		RRR	76H,1 			//056A 	06F6
		DECRSZ 	56H,1 		//056B 	0ED6
		LJUMP 	556H 			//056C 	3D56
		LDR 	55H,0 			//056D 	0855
		STR 	77H 			//056E 	01F7
		LDR 	54H,0 			//056F 	0854
		STR 	76H 			//0570 	01F6
		RET		 					//0571 	0004
		LDR 	7DH,0 			//0572 	087D
		BCR 	STATUS,6 		//0573 	1303
		STR 	53H 			//0574 	01D3
		LDR 	7CH,0 			//0575 	087C
		STR 	52H 			//0576 	01D2
		LDR 	53H,0 			//0577 	0853
		STR 	77H 			//0578 	01F7
		LDR 	52H,0 			//0579 	0852
		STR 	76H 			//057A 	01F6
		LDWI 	88H 			//057B 	2A88
		STR 	78H 			//057C 	01F8
		LDWI 	13H 			//057D 	2A13
		STR 	79H 			//057E 	01F9
		RET		 					//057F 	0004
		BSR 	STATUS,5 		//0580 	1A83
		BCR 	6H,0 			//0581 	1006
		BCR 	6H,6 			//0582 	1306
		BCR 	STATUS,5 		//0583 	1283
		BSR 	7H,2 			//0584 	1907
		BSR 	STATUS,5 		//0585 	1A83
		BCR 	7H,2 			//0586 	1107
		RET		 					//0587 	0004
		STR 	32H 			//0588 	01B2
		LDR 	31H,0 			//0589 	0831
		BTSC 	STATUS,0 		//058A 	1403
		ADDWI 	1H 			//058B 	2701
		ADDWI 	0H 			//058C 	2700
		STR 	33H 			//058D 	01B3
		RET		 					//058E 	0004
		STR 	34H 			//058F 	01B4
		LDR 	31H,0 			//0590 	0831
		BTSC 	STATUS,0 		//0591 	1403
		ADDWI 	1H 			//0592 	2701
		STR 	35H 			//0593 	01B5
		LDR 	30H,0 			//0594 	0830
		RET		 					//0595 	0004
		BCR 	STATUS,5 		//0596 	1283
		BCR 	STATUS,6 		//0597 	1303
		DECRSZ 	3EH,0 		//0598 	0E3E
		RETW 	0H 			//0599 	2100
		CLRR 	3EH 			//059A 	013E
		CLRR 	3AH 			//059B 	013A
		CLRR 	3BH 			//059C 	013B
		LCALL 	658H 			//059D 	3658
		RETW 	1H 			//059E 	2101
		BSR 	STATUS,5 		//059F 	1A83
		BCR 	STATUS,6 		//05A0 	1303
		BSR 	8H,5 			//05A1 	1A88
		BCR 	STATUS,5 		//05A2 	1283
		BSR 	STATUS,6 		//05A3 	1B03
		BSR 	1FH,7 			//05A4 	1B9F
		LDWI 	88H 			//05A5 	2A88
		BSR 	STATUS,5 		//05A6 	1A83
		BCR 	STATUS,6 		//05A7 	1303
		STR 	EH 			//05A8 	018E
		LDWI 	49H 			//05A9 	2A49
		BCR 	STATUS,5 		//05AA 	1283
		BSR 	STATUS,6 		//05AB 	1B03
		STR 	6H 			//05AC 	0186
		LDWI 	FH 			//05AD 	2A0F
		STR 	18H 			//05AE 	0198
		LDWI 	FFH 			//05AF 	2AFF
		STR 	17H 			//05B0 	0197
		LDWI 	3H 			//05B1 	2A03
		STR 	DH 			//05B2 	018D
		LDR 	9H,0 			//05B3 	0809
		BCR 	STATUS,6 		//05B4 	1303
		STR 	5CH 			//05B5 	01DC
		BSR 	STATUS,6 		//05B6 	1B03
		BSR 	1H,1 			//05B7 	1881
		LDR 	9H,0 			//05B8 	0809
		BCR 	STATUS,6 		//05B9 	1303
		STR 	73H 			//05BA 	01F3
		BSR 	STATUS,6 		//05BB 	1B03
		BCR 	1H,1 			//05BC 	1081
		BCR 	STATUS,6 		//05BD 	1303
		LDR 	73H,0 			//05BE 	0873
		STR 	5DH 			//05BF 	01DD
		LDWI 	5H 			//05C0 	2A05
		BSR 	STATUS,6 		//05C1 	1B03
		STR 	5H 			//05C2 	0185
		LDWI 	3H 			//05C3 	2A03
		STR 	7H 			//05C4 	0187
		LDWI 	2H 			//05C5 	2A02
		STR 	8H 			//05C6 	0188
		BSR 	1H,1 			//05C7 	1881
		LDWI 	3FH 			//05C8 	2A3F
		BCR 	STATUS,6 		//05C9 	1303
		STR 	1AH 			//05CA 	019A
		BSR 	STATUS,6 		//05CB 	1B03
		BCR 	1H,1 			//05CC 	1081
		CLRR 	7AH 			//05CD 	017A
		LDR 	7AH,0 			//05CE 	087A
		BTSS 	STATUS,2 		//05CF 	1D03
		LJUMP 	600H 			//05D0 	3E00
		LDR 	7AH,0 			//05D1 	087A
		ADDWI 	3BH 			//05D2 	273B
		STR 	FSR 			//05D3 	0184
		BCR 	PCLATH,4 		//05D4 	120A
		BCR 	PCLATH,3 		//05D5 	118A
		LCALL 	7BCH 			//05D6 	37BC
		BCR 	PCLATH,4 		//05D7 	120A
		BCR 	PCLATH,3 		//05D8 	118A
		BCR 	STATUS,6 		//05D9 	1303
		STR 	43H 			//05DA 	01C3
		BCR 	STATUS,0 		//05DB 	1003
		RLR 	43H,0 			//05DC 	0543
		ADDWI 	2H 			//05DD 	2702
		STR 	FSR 			//05DE 	0184
		BCR 	PCLATH,4 		//05DF 	120A
		BCR 	PCLATH,3 		//05E0 	118A
		LCALL 	7BCH 			//05E1 	37BC
		BCR 	PCLATH,4 		//05E2 	120A
		BCR 	PCLATH,3 		//05E3 	118A
		LCALL 	6F4H 			//05E4 	36F4
		BCR 	PCLATH,4 		//05E5 	120A
		BCR 	PCLATH,3 		//05E6 	118A
		LCALL 	7BCH 			//05E7 	37BC
		BCR 	PCLATH,4 		//05E8 	120A
		BCR 	PCLATH,3 		//05E9 	118A
		ANDWI 	7FH 			//05EA 	247F
		LCALL 	6EBH 			//05EB 	36EB
		BCR 	STATUS,0 		//05EC 	1003
		RLR 	43H,0 			//05ED 	0543
		ADDWI 	2H 			//05EE 	2702
		STR 	FSR 			//05EF 	0184
		BCR 	PCLATH,4 		//05F0 	120A
		BCR 	PCLATH,3 		//05F1 	118A
		LCALL 	7BCH 			//05F2 	37BC
		BCR 	PCLATH,4 		//05F3 	120A
		BCR 	PCLATH,3 		//05F4 	118A
		LCALL 	6F4H 			//05F5 	36F4
		BCR 	PCLATH,4 		//05F6 	120A
		BCR 	PCLATH,3 		//05F7 	118A
		LCALL 	7BCH 			//05F8 	37BC
		BCR 	PCLATH,4 		//05F9 	120A
		BCR 	PCLATH,3 		//05FA 	118A
		LCALL 	6EBH 			//05FB 	36EB
		BCR 	PCLATH,4 		//05FC 	120A
		BCR 	PCLATH,3 		//05FD 	118A
		INCR	7AH,1 			//05FE 	09FA
		LJUMP 	5CEH 			//05FF 	3DCE
		LCALL 	625H 			//0600 	3625
		BCR 	PCLATH,4 		//0601 	120A
		BCR 	PCLATH,3 		//0602 	118A
		BCR 	STATUS,5 		//0603 	1283
		BCR 	STATUS,6 		//0604 	1303
		CLRR 	6AH 			//0605 	016A
		CLRR 	6BH 			//0606 	016B
		CLRR 	6CH 			//0607 	016C
		CLRR 	6DH 			//0608 	016D
		CLRR 	7AH 			//0609 	017A
		LDR 	7AH,0 			//060A 	087A
		BTSS 	STATUS,2 		//060B 	1D03
		LJUMP 	61BH 			//060C 	3E1B
		LDWI 	80H 			//060D 	2A80
		BCR 	STATUS,5 		//060E 	1283
		BCR 	STATUS,6 		//060F 	1303
		STR 	68H 			//0610 	01E8
		CLRR 	69H 			//0611 	0169
		LDR 	7AH,0 			//0612 	087A
		STR 	21H 			//0613 	01A1
		BCR 	PCLATH,4 		//0614 	120A
		BCR 	PCLATH,3 		//0615 	118A
		LCALL 	2CAH 			//0616 	32CA
		BCR 	PCLATH,4 		//0617 	120A
		BCR 	PCLATH,3 		//0618 	118A
		INCR	7AH,1 			//0619 	09FA
		LJUMP 	60AH 			//061A 	3E0A
		BCR 	STATUS,5 		//061B 	1283
		BCR 	STATUS,6 		//061C 	1303
		CLRR 	20H 			//061D 	0120
		CLRR 	44H 			//061E 	0144
		CLRR 	41H 			//061F 	0141
		CLRR 	3FH 			//0620 	013F
		CLRR 	42H 			//0621 	0142
		BSR 	20H,3 			//0622 	19A0
		BCR 	20H,2 			//0623 	1120
		LJUMP 	658H 			//0624 	3E58
		LDR 	FSR,0 			//0625 	0804
		BCR 	STATUS,6 		//0626 	1303
		STR 	45H 			//0627 	01C5
		STR 	FSR 			//0628 	0184
		BCR 	STATUS,6 		//0629 	1303
		BCR 	STATUS,5 		//062A 	1283
		LDWI 	20H 			//062B 	2A20
		STR 	6AH 			//062C 	01EA
		LDWI 	50H 			//062D 	2A50
		STR 	6FH 			//062E 	01EF
		BCR 	STATUS,7 		//062F 	1383
		BCR 	PCLATH,4 		//0630 	120A
		BCR 	PCLATH,3 		//0631 	118A
		LCALL 	646H 			//0632 	3646
		BCR 	PCLATH,4 		//0633 	120A
		BCR 	PCLATH,3 		//0634 	118A
		BSR 	STATUS,7 		//0635 	1B83
		BCR 	PCLATH,4 		//0636 	120A
		BCR 	PCLATH,3 		//0637 	118A
		LCALL 	646H 			//0638 	3646
		BCR 	PCLATH,4 		//0639 	120A
		BCR 	PCLATH,3 		//063A 	118A
		LDWI 	A0H 			//063B 	2AA0
		STR 	6AH 			//063C 	01EA
		BCR 	STATUS,7 		//063D 	1383
		BCR 	PCLATH,4 		//063E 	120A
		BCR 	PCLATH,3 		//063F 	118A
		LCALL 	646H 			//0640 	3646
		BCR 	PCLATH,4 		//0641 	120A
		BCR 	PCLATH,3 		//0642 	118A
		LDWI 	28H 			//0643 	2A28
		STR 	6FH 			//0644 	01EF
		BSR 	STATUS,7 		//0645 	1B83
		LDR 	6FH,0 			//0646 	086F
		STR 	68H 			//0647 	01E8
		LDR 	6AH,0 			//0648 	086A
		STR 	FSR 			//0649 	0184
		BSR 	STATUS,6 		//064A 	1B03
		BCR 	STATUS,5 		//064B 	1283
		BSR 	1H,1 			//064C 	1881
		LDWI 	0H 			//064D 	2A00
		BSR 	STATUS,6 		//064E 	1B03
		BSR 	1H,1 			//064F 	1881
		STR 	INDF 			//0650 	0180
		INCR	FSR,1 			//0651 	0984
		BCR 	1H,1 			//0652 	1081
		BCR 	STATUS,6 		//0653 	1303
		DECRSZ 	68H,1 		//0654 	0EE8
		LJUMP 	64EH 			//0655 	3E4E
		RET		 					//0656 	0004
		RET		 					//0657 	0004
		LDR 	44H,0 			//0658 	0844
		ADDWI 	3BH 			//0659 	273B
		STR 	FSR 			//065A 	0184
		BCR 	PCLATH,4 		//065B 	120A
		BCR 	PCLATH,3 		//065C 	118A
		LCALL 	7BCH 			//065D 	37BC
		BCR 	PCLATH,4 		//065E 	120A
		BCR 	PCLATH,3 		//065F 	118A
		STR 	7BH 			//0660 	01FB
		BCR 	STATUS,0 		//0661 	1003
		RLR 	7BH,0 			//0662 	057B
		ADDWI 	2H 			//0663 	2702
		STR 	FSR 			//0664 	0184
		BCR 	PCLATH,4 		//0665 	120A
		BCR 	PCLATH,3 		//0666 	118A
		LCALL 	7BCH 			//0667 	37BC
		BCR 	PCLATH,4 		//0668 	120A
		BCR 	PCLATH,3 		//0669 	118A
		STR 	76H 			//066A 	01F6
		BCR 	STATUS,0 		//066B 	1003
		RLR 	7BH,0 			//066C 	057B
		ADDWI 	1H 			//066D 	2701
		STR 	FSR 			//066E 	0184
		BCR 	PCLATH,4 		//066F 	120A
		BCR 	PCLATH,3 		//0670 	118A
		LCALL 	7BCH 			//0671 	37BC
		BCR 	PCLATH,4 		//0672 	120A
		BCR 	PCLATH,3 		//0673 	118A
		STR 	77H 			//0674 	01F7
		CLRR 	78H 			//0675 	0178
		STR 	FSR 			//0676 	0184
		BSR 	STATUS,7 		//0677 	1B83
		BTSS 	78H,0 			//0678 	1C78
		BCR 	STATUS,7 		//0679 	1383
		LDR 	76H,0 			//067A 	0876
		IORWR 	INDF,1 		//067B 	0380
		LDWI 	EH 			//067C 	2A0E
		SUBWR 	7BH,0 			//067D 	0C7B
		BTSC 	STATUS,0 		//067E 	1403
		LJUMP 	69DH 			//067F 	3E9D
		INCR	7BH,0 			//0680 	097B
		STR 	76H 			//0681 	01F6
		LDWI 	1H 			//0682 	2A01
		STR 	77H 			//0683 	01F7
		LDWI 	0H 			//0684 	2A00
		STR 	78H 			//0685 	01F8
		LJUMP 	68AH 			//0686 	3E8A
		BCR 	STATUS,0 		//0687 	1003
		RLR 	77H,1 			//0688 	05F7
		RLR 	78H,1 			//0689 	05F8
		DECRSZ 	76H,1 		//068A 	0EF6
		LJUMP 	687H 			//068B 	3E87
		LDR 	77H,0 			//068C 	0877
		STR 	7CH 			//068D 	01FC
		LDR 	78H,0 			//068E 	0878
		STR 	7DH 			//068F 	01FD
		LDR 	7CH,0 			//0690 	087C
		BSR 	STATUS,6 		//0691 	1B03
		STR 	1CH 			//0692 	019C
		LDWI 	C0H 			//0693 	2AC0
		ANDWR 	1DH,1 			//0694 	029D
		LDR 	7DH,0 			//0695 	087D
		ANDWI 	3FH 			//0696 	243F
		IORWR 	1DH,1 			//0697 	039D
		BSR 	STATUS,5 		//0698 	1A83
		CLRR 	1CH 			//0699 	011C
		LDWI 	C0H 			//069A 	2AC0
		STR 	1DH 			//069B 	019D
		LJUMP 	6B6H 			//069C 	3EB6
		CLRR 	7CH 			//069D 	017C
		INCR	7CH,1 			//069E 	09FC
		CLRR 	7DH 			//069F 	017D
		LDR 	7BH,0 			//06A0 	087B
		ADDWI 	F2H 			//06A1 	27F2
		ADDWI 	1H 			//06A2 	2701
		LJUMP 	6A7H 			//06A3 	3EA7
		BCR 	STATUS,0 		//06A4 	1003
		RLR 	7CH,1 			//06A5 	05FC
		RLR 	7DH,1 			//06A6 	05FD
		ADDWI 	FFH 			//06A7 	27FF
		BTSS 	STATUS,2 		//06A8 	1D03
		LJUMP 	6A4H 			//06A9 	3EA4
		BSR 	STATUS,6 		//06AA 	1B03
		CLRR 	1CH 			//06AB 	011C
		LDWI 	C0H 			//06AC 	2AC0
		ANDWR 	1DH,1 			//06AD 	029D
		LDR 	7CH,0 			//06AE 	087C
		BSR 	STATUS,5 		//06AF 	1A83
		STR 	1CH 			//06B0 	019C
		LDR 	7DH,0 			//06B1 	087D
		ANDWI 	3FH 			//06B2 	243F
		STR 	1DH 			//06B3 	019D
		LDWI 	C0H 			//06B4 	2AC0
		IORWR 	1DH,1 			//06B5 	039D
		BCR 	STATUS,5 		//06B6 	1283
		BCR 	1BH,3 			//06B7 	119B
		BSR 	STATUS,5 		//06B8 	1A83
		BCR 	STATUS,6 		//06B9 	1303
		BCR 	8H,5 			//06BA 	1288
		BCR 	STATUS,5 		//06BB 	1283
		BCR 	8H,5 			//06BC 	1288
		LCALL 	6D2H 			//06BD 	36D2
		BCR 	5H,3 			//06BE 	1185
		BCR 	STATUS,6 		//06BF 	1303
		CLRR 	1H 			//06C0 	0101
		BSR 	STATUS,6 		//06C1 	1B03
		CLRR 	1AH 			//06C2 	011A
		CLRR 	19H 			//06C3 	0119
		BSR 	STATUS,5 		//06C4 	1A83
		BCR 	STATUS,6 		//06C5 	1303
		BSR 	8H,5 			//06C6 	1A88
		LDWI 	9H 			//06C7 	2A09
		BCR 	STATUS,5 		//06C8 	1283
		BSR 	STATUS,6 		//06C9 	1B03
		IORWR 	1BH,1 			//06CA 	039B
		BSR 	6H,2 			//06CB 	1906
		BSR 	5H,3 			//06CC 	1985
		BCR 	STATUS,6 		//06CD 	1303
		BCR 	CH,5 			//06CE 	128C
		BSR 	STATUS,5 		//06CF 	1A83
		BCR 	CH,5 			//06D0 	128C
		RET		 					//06D1 	0004
		DECRSZ 	42H,0 		//06D2 	0E42
		LJUMP 	6D9H 			//06D3 	3ED9
		LDWI 	80H 			//06D4 	2A80
		STR 	72H 			//06D5 	01F2
		LDWI 	1DH 			//06D6 	2A1D
		STR 	73H 			//06D7 	01F3
		LJUMP 	6DBH 			//06D8 	3EDB
		CLRR 	72H 			//06D9 	0172
		CLRR 	73H 			//06DA 	0173
		LDR 	5CH,0 			//06DB 	085C
		ADDWR 	72H,1 			//06DC 	0BF2
		BTSC 	STATUS,0 		//06DD 	1403
		INCR	73H,1 			//06DE 	09F3
		LDR 	5DH,0 			//06DF 	085D
		ADDWR 	73H,1 			//06E0 	0BF3
		LDR 	72H,0 			//06E1 	0872
		BSR 	STATUS,6 		//06E2 	1B03
		STR 	9H 			//06E3 	0189
		BSR 	1H,1 			//06E4 	1881
		BCR 	STATUS,6 		//06E5 	1303
		LDR 	73H,0 			//06E6 	0873
		BSR 	STATUS,6 		//06E7 	1B03
		STR 	9H 			//06E8 	0189
		BCR 	1H,1 			//06E9 	1081
		RET		 					//06EA 	0004
		STR 	55H 			//06EB 	01D5
		CLRR 	56H 			//06EC 	0156
		STR 	FSR 			//06ED 	0184
		BSR 	STATUS,7 		//06EE 	1B83
		BTSS 	56H,0 			//06EF 	1C56
		BCR 	STATUS,7 		//06F0 	1383
		LDR 	54H,0 			//06F1 	0854
		ANDWR 	INDF,1 		//06F2 	0280
		RET		 					//06F3 	0004
		XORWI 	FFH 			//06F4 	26FF
		STR 	54H 			//06F5 	01D4
		BCR 	STATUS,0 		//06F6 	1003
		RLR 	43H,0 			//06F7 	0543
		ADDWI 	1H 			//06F8 	2701
		STR 	FSR 			//06F9 	0184
		RET		 					//06FA 	0004

		//;main.C: 589: unsigned char i;
		//;main.C: 590: flag1 = 0;
		CLRR 	2EH 			//06FB 	012E
		CLRR 	2FH 			//06FC 	012F

		//;main.C: 591: Initialize_Communication();
		BCR 	PCLATH,4 		//06FD 	120A
		BSR 	PCLATH,3 		//06FE 	198A
		LCALL 	76EH 			//06FF 	376E
		BCR 	PCLATH,4 		//0700 	120A
		BCR 	PCLATH,3 		//0701 	118A

		//;main.C: 592: SYS_INITIAL();
		BCR 	PCLATH,4 		//0702 	120A
		BSR 	PCLATH,3 		//0703 	198A
		LCALL 	78EH 			//0704 	378E
		BCR 	PCLATH,4 		//0705 	120A
		BCR 	PCLATH,3 		//0706 	118A

		//;main.C: 593: TSC_INITIAL();
		BCR 	PCLATH,4 		//0707 	120A
		BCR 	PCLATH,3 		//0708 	118A
		LCALL 	59FH 			//0709 	359F
		BCR 	PCLATH,4 		//070A 	120A
		BCR 	PCLATH,3 		//070B 	118A

		//;main.C: 594: LED_OFF();
		BCR 	PCLATH,4 		//070C 	120A
		BCR 	PCLATH,3 		//070D 	118A
		LCALL 	4EFH 			//070E 	34EF
		BCR 	PCLATH,4 		//070F 	120A
		BCR 	PCLATH,3 		//0710 	118A

		//;main.C: 595: ADC_INITIAL();
		BCR 	PCLATH,4 		//0711 	120A
		BCR 	PCLATH,3 		//0712 	118A
		LCALL 	4F3H 			//0713 	34F3
		BCR 	PCLATH,4 		//0714 	120A
		BCR 	PCLATH,3 		//0715 	118A

		//;main.C: 596: InfraRed_ON();
		BCR 	PCLATH,4 		//0716 	120A
		BSR 	PCLATH,3 		//0717 	198A
		LCALL 	733H 			//0718 	3733
		BCR 	PCLATH,4 		//0719 	120A
		BCR 	PCLATH,3 		//071A 	118A

		//;main.C: 597: infraRed_Init();
		BCR 	PCLATH,4 		//071B 	120A
		BCR 	PCLATH,3 		//071C 	118A
		LCALL 	40AH 			//071D 	340A
		BCR 	PCLATH,4 		//071E 	120A
		BCR 	PCLATH,3 		//071F 	118A

		//;main.C: 600: {
		//;main.C: 601: if (count > 11) {
		LDWI 	0H 			//0720 	2A00
		BCR 	STATUS,5 		//0721 	1283
		SUBWR 	39H,0 			//0722 	0C39
		LDWI 	CH 			//0723 	2A0C
		BTSC 	STATUS,2 		//0724 	1503
		SUBWR 	38H,0 			//0725 	0C38
		BTSS 	STATUS,0 		//0726 	1C03
		LJUMP 	72EH 			//0727 	3F2E

		//;main.C: 602: LED_OFF();
		BCR 	PCLATH,4 		//0728 	120A
		BCR 	PCLATH,3 		//0729 	118A
		LCALL 	4EFH 			//072A 	34EF
		BCR 	PCLATH,4 		//072B 	120A
		BCR 	PCLATH,3 		//072C 	118A

		//;main.C: 603: }
		LJUMP 	77BH 			//072D 	3F7B

		//;main.C: 604: else if (count > 10){
		LDWI 	0H 			//072E 	2A00
		SUBWR 	39H,0 			//072F 	0C39
		LDWI 	BH 			//0730 	2A0B
		BTSC 	STATUS,2 		//0731 	1503
		SUBWR 	38H,0 			//0732 	0C38
		BTSS 	STATUS,0 		//0733 	1C03
		LJUMP 	74DH 			//0734 	3F4D

		//;main.C: 605: LEDR_ON();
		BCR 	PCLATH,4 		//0735 	120A
		BSR 	PCLATH,3 		//0736 	198A
		LCALL 	744H 			//0737 	3744
		BCR 	PCLATH,4 		//0738 	120A
		BCR 	PCLATH,3 		//0739 	118A

		//;main.C: 606: flag1 = 0;
		BCR 	STATUS,5 		//073A 	1283
		CLRR 	2EH 			//073B 	012E
		CLRR 	2FH 			//073C 	012F

		//;main.C: 607: DelayMs(2000);
		LDWI 	D0H 			//073D 	2AD0
		BCR 	PCLATH,4 		//073E 	120A
		BCR 	PCLATH,3 		//073F 	118A
		LCALL 	4D8H 			//0740 	34D8
		BCR 	PCLATH,4 		//0741 	120A
		BCR 	PCLATH,3 		//0742 	118A

		//;main.C: 608: LED_OFF();
		BCR 	PCLATH,4 		//0743 	120A
		BCR 	PCLATH,3 		//0744 	118A
		LCALL 	4EFH 			//0745 	34EF
		BCR 	PCLATH,4 		//0746 	120A
		BCR 	PCLATH,3 		//0747 	118A

		//;main.C: 609: count++;
		BCR 	STATUS,5 		//0748 	1283
		INCR	38H,1 			//0749 	09B8
		BTSC 	STATUS,2 		//074A 	1503
		INCR	39H,1 			//074B 	09B9

		//;main.C: 610: }
		LJUMP 	77BH 			//074C 	3F7B

		//;main.C: 611: else if (count > 3) {
		LDWI 	0H 			//074D 	2A00
		SUBWR 	39H,0 			//074E 	0C39
		LDWI 	4H 			//074F 	2A04
		BTSC 	STATUS,2 		//0750 	1503
		SUBWR 	38H,0 			//0751 	0C38
		BTSS 	STATUS,0 		//0752 	1C03
		LJUMP 	76BH 			//0753 	3F6B

		//;main.C: 612: LEDGB_FLASH();
		BCR 	PCLATH,4 		//0754 	120A
		BCR 	PCLATH,3 		//0755 	118A
		LCALL 	474H 			//0756 	3474
		BCR 	PCLATH,4 		//0757 	120A
		BCR 	PCLATH,3 		//0758 	118A

		//;main.C: 613: InfraRed_GET();
		BCR 	PCLATH,4 		//0759 	120A
		BCR 	PCLATH,3 		//075A 	118A
		LCALL 	45CH 			//075B 	345C
		BCR 	PCLATH,4 		//075C 	120A
		BCR 	PCLATH,3 		//075D 	118A

		//;main.C: 614: if (voltage >= level_low) {
		BCR 	STATUS,5 		//075E 	1283
		BCR 	STATUS,6 		//075F 	1303
		LDR 	33H,0 			//0760 	0833
		SUBWR 	37H,0 			//0761 	0C37
		BTSS 	STATUS,2 		//0762 	1D03
		LJUMP 	766H 			//0763 	3F66
		LDR 	32H,0 			//0764 	0832
		SUBWR 	36H,0 			//0765 	0C36
		BTSC 	STATUS,0 		//0766 	1403
		LJUMP 	748H 			//0767 	3F48

		//;main.C: 617: else{
		//;main.C: 618: count = 0;
		CLRR 	38H 			//0768 	0138
		CLRR 	39H 			//0769 	0139
		LJUMP 	77BH 			//076A 	3F7B

		//;main.C: 621: else if (flag1 == 1 && count <= 3) {
		DECR 	2EH,0 			//076B 	0D2E
		IORWR 	2FH,0 			//076C 	032F
		BTSS 	STATUS,2 		//076D 	1D03
		LJUMP 	77BH 			//076E 	3F7B
		LDWI 	0H 			//076F 	2A00
		SUBWR 	39H,0 			//0770 	0C39
		LDWI 	4H 			//0771 	2A04
		BTSC 	STATUS,2 		//0772 	1503
		SUBWR 	38H,0 			//0773 	0C38
		BTSC 	STATUS,0 		//0774 	1403
		LJUMP 	77BH 			//0775 	3F7B

		//;main.C: 622: InfraRed_Check();
		BCR 	PCLATH,4 		//0776 	120A
		BCR 	PCLATH,3 		//0777 	118A
		LCALL 	486H 			//0778 	3486
		BCR 	PCLATH,4 		//0779 	120A
		BCR 	PCLATH,3 		//077A 	118A

		//;main.C: 623: }
		//;main.C: 626: TSC_Start();
		BCR 	PCLATH,4 		//077B 	120A
		BCR 	PCLATH,3 		//077C 	118A
		LCALL 	24H 			//077D 	3024
		BCR 	PCLATH,4 		//077E 	120A
		BCR 	PCLATH,3 		//077F 	118A

		//;main.C: 627: if(TSC_DataProcessing()== 1)
		BCR 	PCLATH,4 		//0780 	120A
		BCR 	PCLATH,3 		//0781 	118A
		LCALL 	596H 			//0782 	3596
		BCR 	PCLATH,4 		//0783 	120A
		BCR 	PCLATH,3 		//0784 	118A
		XORWI 	1H 			//0785 	2601
		BTSS 	STATUS,2 		//0786 	1D03
		LJUMP 	720H 			//0787 	3F20

		//;main.C: 628: {
		//;main.C: 629: strongest = TSC_GetLocalKey();
		BCR 	PCLATH,4 		//0788 	120A
		BSR 	PCLATH,3 		//0789 	198A
		LCALL 	7B1H 			//078A 	37B1
		BCR 	PCLATH,4 		//078B 	120A
		BCR 	PCLATH,3 		//078C 	118A
		LDR 	76H,0 			//078D 	0876
		STR 	49H 			//078E 	01C9

		//;main.C: 630: DelayMs(300);
		LDWI 	2CH 			//078F 	2A2C
		BCR 	PCLATH,4 		//0790 	120A
		BCR 	PCLATH,3 		//0791 	118A
		LCALL 	4D8H 			//0792 	34D8
		BCR 	PCLATH,4 		//0793 	120A
		BCR 	PCLATH,3 		//0794 	118A

		//;main.C: 631: if (strongest) {
		LDR 	49H,0 			//0795 	0849
		BTSC 	STATUS,2 		//0796 	1503
		LJUMP 	720H 			//0797 	3F20

		//;main.C: 632: if (flag1 == 0) {
		LDR 	2EH,0 			//0798 	082E
		IORWR 	2FH,0 			//0799 	032F
		BTSS 	STATUS,2 		//079A 	1D03
		LJUMP 	7B4H 			//079B 	3FB4

		//;main.C: 633: LEDW_ON();
		BCR 	PCLATH,4 		//079C 	120A
		BSR 	PCLATH,3 		//079D 	198A
		LCALL 	741H 			//079E 	3741
		BCR 	PCLATH,4 		//079F 	120A
		BCR 	PCLATH,3 		//07A0 	118A

		//;main.C: 634: flag1 = 1;
		LDWI 	1H 			//07A1 	2A01
		BCR 	STATUS,5 		//07A2 	1283
		STR 	2EH 			//07A3 	01AE
		CLRR 	2FH 			//07A4 	012F
		LDWI 	DCH 			//07A5 	2ADC

		//;main.C: 635: strongest = 0;
		CLRR 	49H 			//07A6 	0149
		CLRR 	38H 			//07A7 	0138
		CLRR 	39H 			//07A8 	0139

		//;main.C: 637: DelayMs(1500);
		BCR 	PCLATH,4 		//07A9 	120A
		BCR 	PCLATH,3 		//07AA 	118A
		LCALL 	4D8H 			//07AB 	34D8
		BCR 	PCLATH,4 		//07AC 	120A
		BCR 	PCLATH,3 		//07AD 	118A

		//;main.C: 638: LED_OFF();
		BCR 	PCLATH,4 		//07AE 	120A
		BCR 	PCLATH,3 		//07AF 	118A
		LCALL 	4EFH 			//07B0 	34EF
		BCR 	PCLATH,4 		//07B1 	120A
		BCR 	PCLATH,3 		//07B2 	118A

		//;main.C: 639: } else {
		LJUMP 	720H 			//07B3 	3F20

		//;main.C: 640: LEDR_ON();
		BCR 	PCLATH,4 		//07B4 	120A
		BSR 	PCLATH,3 		//07B5 	198A
		LCALL 	744H 			//07B6 	3744
		BCR 	PCLATH,4 		//07B7 	120A
		BCR 	PCLATH,3 		//07B8 	118A

		//;main.C: 641: flag1 = 0;
		BCR 	STATUS,5 		//07B9 	1283
		CLRR 	2EH 			//07BA 	012E
		LJUMP 	7A4H 			//07BB 	3FA4
		LDWI 	7H 			//07BC 	2A07
		STR 	PCLATH 			//07BD 	018A
		LDR 	FSR,0 			//07BE 	0804
		INCR	FSR,1 			//07BF 	0984
		ADDWR 	PCL,1 			//07C0 	0B82
		RETW 	0H 			//07C1 	2100
		RETW 	85H 			//07C2 	2185
		RETW 	1H 			//07C3 	2101
		RETW 	85H 			//07C4 	2185
		RETW 	2H 			//07C5 	2102
		RETW 	85H 			//07C6 	2185
		RETW 	4H 			//07C7 	2104
		RETW 	85H 			//07C8 	2185
		RETW 	8H 			//07C9 	2108
		RETW 	85H 			//07CA 	2185
		RETW 	10H 			//07CB 	2110
		RETW 	85H 			//07CC 	2185
		RETW 	20H 			//07CD 	2120
		RETW 	85H 			//07CE 	2185
		RETW 	40H 			//07CF 	2140
		RETW 	85H 			//07D0 	2185
		RETW 	80H 			//07D1 	2180
		RETW 	88H 			//07D2 	2188
		RETW 	1H 			//07D3 	2101
		RETW 	88H 			//07D4 	2188
		RETW 	2H 			//07D5 	2102
		RETW 	86H 			//07D6 	2186
		RETW 	1H 			//07D7 	2101
		RETW 	86H 			//07D8 	2186
		RETW 	2H 			//07D9 	2102
		RETW 	86H 			//07DA 	2186
		RETW 	4H 			//07DB 	2104
		RETW 	86H 			//07DC 	2186
		RETW 	8H 			//07DD 	2108
		RETW 	87H 			//07DE 	2187
		RETW 	80H 			//07DF 	2180
		RETW 	87H 			//07E0 	2187
		RETW 	40H 			//07E1 	2140
		RETW 	87H 			//07E2 	2187
		RETW 	20H 			//07E3 	2120
		RETW 	87H 			//07E4 	2187
		RETW 	10H 			//07E5 	2110
		RETW 	87H 			//07E6 	2187
		RETW 	8H 			//07E7 	2108
		RETW 	88H 			//07E8 	2188
		RETW 	8H 			//07E9 	2108
		RETW 	87H 			//07EA 	2187
		RETW 	4H 			//07EB 	2104
		RETW 	87H 			//07EC 	2187
		RETW 	2H 			//07ED 	2102
		RETW 	87H 			//07EE 	2187
		RETW 	1H 			//07EF 	2101
		RETW 	86H 			//07F0 	2186
		RETW 	80H 			//07F1 	2180
		RETW 	86H 			//07F2 	2186
		RETW 	40H 			//07F3 	2140
		RETW 	86H 			//07F4 	2186
		RETW 	20H 			//07F5 	2120
		RETW 	86H 			//07F6 	2186
		RETW 	10H 			//07F7 	2110
		RETW 	88H 			//07F8 	2188
		RETW 	10H 			//07F9 	2110
		RETW 	8H 			//07FA 	2108
		RETW 	CH 			//07FB 	210C
		RETW 	19H 			//07FC 	2119
		RETW 	2H 			//07FD 	2102
		RETW 	30H 			//07FE 	2130
		ORG		0F2BH
		CLRWDT	 			//0F2B 	0001
		CLRR 	INDF 			//0F2C 	0100
		INCR	FSR,1 			//0F2D 	0984
		XORWR 	FSR,0 			//0F2E 	0404
		BTSC 	STATUS,2 		//0F2F 	1503
		RETW 	0H 			//0F30 	2100
		XORWR 	FSR,0 			//0F31 	0404
		LJUMP 	72CH 			//0F32 	3F2C

		//;main.C: 440: PB2 = 1;
		BCR 	STATUS,5 		//0F33 	1283
		BCR 	STATUS,6 		//0F34 	1303
		BSR 	6H,2 			//0F35 	1906

		//;main.C: 441: TRISB2 = 0;
		BSR 	STATUS,5 		//0F36 	1A83
		BCR 	6H,2 			//0F37 	1106

		//;main.C: 442: PB3 = 0;
		BCR 	STATUS,5 		//0F38 	1283
		BCR 	6H,3 			//0F39 	1186

		//;main.C: 443: TRISB3 = 1;
		BSR 	STATUS,5 		//0F3A 	1A83
		BSR 	6H,3 			//0F3B 	1986

		//;main.C: 444: PD4 = 1;
		BCR 	STATUS,5 		//0F3C 	1283
		BSR 	8H,4 			//0F3D 	1A08

		//;main.C: 445: TRISD4 = 0;
		BSR 	STATUS,5 		//0F3E 	1A83
		BCR 	8H,4 			//0F3F 	1208
		RET		 					//0F40 	0004

		//;main.C: 304: PB0 = 0;
		BCR 	6H,0 			//0F41 	1006

		//;main.C: 305: PB6 = 0;
		BCR 	6H,6 			//0F42 	1306

		//;main.C: 306: TRISB0 = 0;
		//;main.C: 307: TRISB6 = 0;
		//;main.C: 309: PC2 = 0;
		//;main.C: 310: TRISC2 = 0;
		LJUMP 	747H 			//0F43 	3F47

		//;main.C: 318: PB0 = 1;
		BSR 	6H,0 			//0F44 	1806

		//;main.C: 319: PB6 = 1;
		BSR 	6H,6 			//0F45 	1B06

		//;main.C: 320: TRISB0 = 0;
		//;main.C: 321: TRISB6 = 0;
		//;main.C: 323: PC2 = 0;
		//;main.C: 324: TRISC2 = 0;
		LJUMP 	747H 			//0F46 	3F47
		BSR 	STATUS,5 		//0F47 	1A83
		BCR 	6H,0 			//0F48 	1006
		BCR 	6H,6 			//0F49 	1306
		BCR 	STATUS,5 		//0F4A 	1283
		BCR 	7H,2 			//0F4B 	1107
		BSR 	STATUS,5 		//0F4C 	1A83
		BCR 	7H,2 			//0F4D 	1107
		RET		 					//0F4E 	0004

		//;main.C: 102: if(AUXPGE==0)
		BCR 	STATUS,5 		//0F4F 	1283
		BSR 	STATUS,6 		//0F50 	1B03
		BTSC 	1H,1 			//0F51 	1481
		LJUMP 	756H 			//0F52 	3F56

		//;main.C: 103: {
		//;main.C: 104: temp = 0;
		BCR 	STATUS,6 		//0F53 	1303
		CLRR 	48H 			//0F54 	0148

		//;main.C: 105: }
		LJUMP 	75AH 			//0F55 	3F5A

		//;main.C: 106: else
		//;main.C: 107: {
		//;main.C: 108: AUXPGE = 0;
		BCR 	1H,1 			//0F56 	1081

		//;main.C: 109: temp = 1;
		BCR 	STATUS,6 		//0F57 	1303
		CLRR 	48H 			//0F58 	0148
		INCR	48H,1 			//0F59 	09C8

		//;main.C: 110: }
		//;main.C: 113: if(AUXPGE==0)
		BSR 	STATUS,6 		//0F5A 	1B03
		BTSC 	1H,1 			//0F5B 	1481

		//;main.C: 117: else
		//;main.C: 118: {
		//;main.C: 119: AUXPGE = 0;
		//;main.C: 116: }
		//;main.C: 114: {
		//;main.C: 115: AUXPGE = temp ;
		BCR 	1H,1 			//0F5C 	1081

		//;main.C: 120: AUXPGE = temp ;
		BCR 	STATUS,6 		//0F5D 	1303
		BTSS 	48H,0 			//0F5E 	1C48
		LJUMP 	764H 			//0F5F 	3F64
		BCR 	STATUS,5 		//0F60 	1283
		BSR 	STATUS,6 		//0F61 	1B03
		BSR 	1H,1 			//0F62 	1881
		LJUMP 	767H 			//0F63 	3F67
		BCR 	STATUS,5 		//0F64 	1283
		BSR 	STATUS,6 		//0F65 	1B03
		BCR 	1H,1 			//0F66 	1081
		LDR 	75H,0 			//0F67 	0875
		STR 	PCLATH 			//0F68 	018A
		SWAPR 	74H,0 			//0F69 	0774
		STR 	STATUS 			//0F6A 	0183
		SWAPR 	7EH,1 			//0F6B 	07FE
		SWAPR 	7EH,0 			//0F6C 	077E
		RETI		 			//0F6D 	0009

		//;main.C: 136: I2CCR1 = 0;
		BSR 	STATUS,5 		//0F6E 	1A83
		BSR 	STATUS,6 		//0F6F 	1B03
		CLRR 	16H 			//0F70 	0116

		//;main.C: 137: I2CCR2 = 0;
		CLRR 	17H 			//0F71 	0117

		//;main.C: 138: I2CADDR = 0;
		CLRR 	18H 			//0F72 	0118

		//;main.C: 139: I2CCCR = 0;
		CLRR 	19H 			//0F73 	0119

		//;main.C: 140: I2CDAT = 0;
		CLRR 	1AH 			//0F74 	011A

		//;main.C: 141: I2CISR = 0;
		CLRR 	1EH 			//0F75 	011E

		//;main.C: 143: SPIDAT = 0;
		CLRR 	CH 			//0F76 	010C

		//;main.C: 144: SPICR0 = 0;
		CLRR 	DH 			//0F77 	010D

		//;main.C: 145: SPICFG = 0;
		CLRR 	EH 			//0F78 	010E

		//;main.C: 146: SPISCR = 0;
		CLRR 	FH 			//0F79 	010F

		//;main.C: 147: SPICRCP = 0;
		CLRR 	10H 			//0F7A 	0110

		//;main.C: 148: SPITXCRC = 0;
		CLRR 	12H 			//0F7B 	0112

		//;main.C: 149: SPIRXCRC = 0;
		CLRR 	11H 			//0F7C 	0111

		//;main.C: 150: SPIIER = 0;
		CLRR 	13H 			//0F7D 	0113

		//;main.C: 151: SPICR1 = 0;
		CLRR 	14H 			//0F7E 	0114

		//;main.C: 152: SPISTAT = 0;
		CLRR 	15H 			//0F7F 	0115

		//;main.C: 154: UR0DATL = 0;
		CLRR 	5H 			//0F80 	0105

		//;main.C: 155: UR0DATH = 0;
		CLRR 	6H 			//0F81 	0106

		//;main.C: 156: UR0CR1 = 0;
		CLRR 	7H 			//0F82 	0107

		//;main.C: 157: UR0CR2 = 0;
		CLRR 	8H 			//0F83 	0108

		//;main.C: 158: UR0BRRL = 0;
		CLRR 	9H 			//0F84 	0109

		//;main.C: 159: UR0STAT = 0;
		CLRR 	1FH 			//0F85 	011F

		//;main.C: 160: UR1DATL = 0;
		BCR 	STATUS,6 		//0F86 	1303
		CLRR 	10H 			//0F87 	0110

		//;main.C: 161: UR1DATH = 0;
		CLRR 	11H 			//0F88 	0111

		//;main.C: 162: UR1CR1 = 0;
		CLRR 	12H 			//0F89 	0112

		//;main.C: 163: UR1CR2 = 0;
		CLRR 	13H 			//0F8A 	0113

		//;main.C: 164: UR1BRRL = 0;
		CLRR 	14H 			//0F8B 	0114

		//;main.C: 165: UR1STAT = 0;
		CLRR 	15H 			//0F8C 	0115
		RET		 					//0F8D 	0004

		//;main.C: 180: OSCCON = 0B01110001;
		LDWI 	71H 			//0F8E 	2A71
		STR 	FH 			//0F8F 	018F

		//;main.C: 184: OPTION = 0B00001000;
		LDWI 	8H 			//0F90 	2A08
		STR 	1H 			//0F91 	0181

		//;main.C: 189: INTCON = 0;
		CLRR 	INTCON 			//0F92 	010B

		//;main.C: 191: PORTA = 0;
		BCR 	STATUS,5 		//0F93 	1283
		CLRR 	5H 			//0F94 	0105

		//;main.C: 192: PORTB = 0;
		CLRR 	6H 			//0F95 	0106

		//;main.C: 193: PORTD = 0;
		CLRR 	8H 			//0F96 	0108

		//;main.C: 194: PORTC = 0;
		CLRR 	7H 			//0F97 	0107

		//;main.C: 203: TRISA = 0B00000000;
		BSR 	STATUS,5 		//0F98 	1A83
		CLRR 	5H 			//0F99 	0105

		//;main.C: 204: TRISB = 0B10000000;
		LDWI 	80H 			//0F9A 	2A80
		STR 	6H 			//0F9B 	0186

		//;main.C: 205: TRISC = 0B10000010;
		LDWI 	82H 			//0F9C 	2A82
		STR 	7H 			//0F9D 	0187

		//;main.C: 206: TRISD = 0B00100000;
		LDWI 	20H 			//0F9E 	2A20
		STR 	8H 			//0F9F 	0188

		//;main.C: 209: ANSEL1 = 0B10000000;
		LDWI 	80H 			//0FA0 	2A80
		BCR 	STATUS,5 		//0FA1 	1283
		BSR 	STATUS,6 		//0FA2 	1B03
		STR 	1FH 			//0FA3 	019F

		//;main.C: 211: MSCON1 |= 0X02;;
		BSR 	1H,1 			//0FA4 	1881

		//;main.C: 212: WPUA = 0B00000000;
		BSR 	STATUS,5 		//0FA5 	1A83
		BCR 	STATUS,6 		//0FA6 	1303
		CLRR 	14H 			//0FA7 	0114

		//;main.C: 213: WPUB = 0B00001100;
		LDWI 	CH 			//0FA8 	2A0C
		STR 	15H 			//0FA9 	0195

		//;main.C: 214: WPUC = 0B00000000;
		CLRR 	16H 			//0FAA 	0116

		//;main.C: 215: WPUD = 0B00010000;
		LDWI 	10H 			//0FAB 	2A10
		STR 	17H 			//0FAC 	0197

		//;main.C: 217: MSCON1 &= ~0X02;;
		BCR 	STATUS,5 		//0FAD 	1283
		BSR 	STATUS,6 		//0FAE 	1B03
		BCR 	1H,1 			//0FAF 	1081
		RET		 					//0FB0 	0004
		BCR 	STATUS,5 		//0FB1 	1283
		CLRR 	58H 			//0FB2 	0158
		CLRR 	59H 			//0FB3 	0159
		CLRR 	5AH 			//0FB4 	015A
		CLRR 	5BH 			//0FB5 	015B
		CLRR 	7AH 			//0FB6 	017A
		LDR 	7AH,0 			//0FB7 	087A
		BTSS 	STATUS,2 		//0FB8 	1D03
		LJUMP 	7DEH 			//0FB9 	3FDE
		LDR 	7AH,0 			//0FBA 	087A
		STR 	21H 			//0FBB 	01A1
		LDWI 	2H 			//0FBC 	2A02
		STR 	6AH 			//0FBD 	01EA
		LCALL 	7E7H 			//0FBE 	37E7
		BCR 	PCLATH,4 		//0FBF 	120A
		BSR 	PCLATH,3 		//0FC0 	198A
		BCR 	STATUS,5 		//0FC1 	1283
		BCR 	STATUS,6 		//0FC2 	1303
		BTSS 	6EH,7 			//0FC3 	1FEE
		LJUMP 	7DCH 			//0FC4 	3FDC
		LDWI 	1H 			//0FC5 	2A01
		STR 	54H 			//0FC6 	01D4
		CLRR 	55H 			//0FC7 	0155
		CLRR 	56H 			//0FC8 	0156
		CLRR 	57H 			//0FC9 	0157
		INCR	7AH,0 			//0FCA 	097A
		LJUMP 	7D1H 			//0FCB 	3FD1
		BCR 	STATUS,0 		//0FCC 	1003
		RLR 	54H,1 			//0FCD 	05D4
		RLR 	55H,1 			//0FCE 	05D5
		RLR 	56H,1 			//0FCF 	05D6
		RLR 	57H,1 			//0FD0 	05D7
		ADDWI 	FFH 			//0FD1 	27FF
		BTSS 	STATUS,2 		//0FD2 	1D03
		LJUMP 	7CCH 			//0FD3 	3FCC
		LDR 	54H,0 			//0FD4 	0854
		IORWR 	58H,1 			//0FD5 	03D8
		LDR 	55H,0 			//0FD6 	0855
		IORWR 	59H,1 			//0FD7 	03D9
		LDR 	56H,0 			//0FD8 	0856
		IORWR 	5AH,1 			//0FD9 	03DA
		LDR 	57H,0 			//0FDA 	0857
		IORWR 	5BH,1 			//0FDB 	03DB
		INCR	7AH,1 			//0FDC 	09FA
		LJUMP 	7B7H 			//0FDD 	3FB7
		LDR 	5BH,0 			//0FDE 	085B
		STR 	79H 			//0FDF 	01F9
		LDR 	5AH,0 			//0FE0 	085A
		STR 	78H 			//0FE1 	01F8
		LDR 	59H,0 			//0FE2 	0859
		STR 	77H 			//0FE3 	01F7
		LDR 	58H,0 			//0FE4 	0858
		STR 	76H 			//0FE5 	01F6
		RET		 					//0FE6 	0004
		BCR 	PCLATH,4 		//0FE7 	120A
		BCR 	PCLATH,3 		//0FE8 	118A
		LCALL 	319H 			//0FE9 	3319
		BCR 	PCLATH,4 		//0FEA 	120A
		BSR 	PCLATH,3 		//0FEB 	198A
		BCR 	PCLATH,4 		//0FEC 	120A
		BCR 	PCLATH,3 		//0FED 	118A
		LCALL 	3F3H 			//0FEE 	33F3
		LDR 	21H,0 			//0FEF 	0821
		ADDWR 	6AH,0 			//0FF0 	0B6A
		STR 	FSR 			//0FF1 	0184
		BSR 	STATUS,6 		//0FF2 	1B03
		BSR 	1H,1 			//0FF3 	1881
		LDR 	INDF,0 			//0FF4 	0800
		BCR 	1H,1 			//0FF5 	1081
		BCR 	STATUS,6 		//0FF6 	1303
		STR 	6DH 			//0FF7 	01ED
		BSR 	STATUS,6 		//0FF8 	1B03
		BSR 	1H,1 			//0FF9 	1881
		INCR	FSR,1 			//0FFA 	0984
		LDR 	INDF,0 			//0FFB 	0800
		BCR 	1H,1 			//0FFC 	1081
		BCR 	STATUS,6 		//0FFD 	1303
		STR 	6EH 			//0FFE 	01EE
		RET		 					//0FFF 	0004
			END
