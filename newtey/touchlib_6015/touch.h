/**
  **************************************************************************************************************
  * @file    	    touch.h
  * @author  	    FMD AE
  * @brief   	    ��ͷ�ļ�
  * @version 	    V1.0.1           
  * @data		    2023-12-14
  **************************************************************************************************************
  * @attention
  * COPYRIGHT (C) 2022 Fremont Micro Devices Corporation All rights reserved.
  *    This software is provided by the copyright holders and contributors,and the
  *software is believed to be accurate and reliable. However, Fremont Micro Devices
  *Corporation assumes no responsibility for the consequences of use of such
  *software or for any infringement of patents of other rights of third parties,
  *which may result from its use. No license is granted by implication or otherwise
  *under any patent rights of Fremont Micro Devices Corporation.
  ***************************************************************************************************************
  */  
  
/****************************************************************************************************************
  * @оƬ��Դ
  * 1. Device: FT62F28X
  * 2. Memory: Flash 8KX14b, EEPROM 128X8b, SRAM 616X8b
  * @��ʹ����Դ˵��:
  * 1. TIMER0��TIMER1
  * 2. LVD�ж�
  *
  * 4.SRAMָ����ַ:
  *	 ָ����ַ �������Ӧ�ö��壺0x20��0x21��0x68 ~ 0x6F
  ***************************************************************************************************************
  */  


//////////////////////////////////////////////////////////////////////
#ifndef _TOUCH_H
#define _TOUCH_H
#define TOUCH_LIB_VERSION        V1.0.1
//{{VERSION_DEFINE
//}}VERSION_DEFINE
///////////ͷ�ļ�/////////////////////////////////////
#include <string.h>
#include "SYSCFG.h"
//{{CONST_DEFINE
#define TOUCH_TOOL_VERSION    V2.0.3.3

//#define TOUCH_DEBUG
//#define _DEF_LOW_POWER
//#define TOUCH_CS
#define  TX									PB7
#define  RX									PB6
/////////ϵͳʱ�Ӷ���//////////////////////////////////////
#define	SYS_OSCCON							0B01110001 //16M
/////////62F28X��ͬ�ͺ�C/D������IO�˿�����//////////////////
//PC1:����F283B,F285B��PB7��PC1����һ�������PB6PB7��debugģʽ��ôPC1��Ҫ��Ϊ����
//PC6:����Ҫ��PC6��debugģʽʱ����Ҫ��Ϊ����
//PC7:����F283B,F285B��PC7��PD5����һ��, PD5��PC7Ҫ������ͬ����Ϊ����
//PD3:����F283X,F285B,F286A,F287A��PD3��GND����һ�����ֹ����߻�ʹ���ڲ�����,��Ϊ����
//    ����F287C��PD3��VDD����һ�����ֹ����ͻ�ʹ���ڲ�����,��Ϊ���� 
#ifdef	TOUCH_DEBUG
	#define TRISA_CONFIG					0B11111111 
	#define TRISB_CONFIG					0B01111111 
	#define TRISC_CONFIG					0B11111111 
	#define	TRISD_CONFIG					0B11111111 
#else
	#define TRISA_CONFIG					0B00000000 
	#define TRISB_CONFIG					0B10000000 
	#define TRISC_CONFIG					0B10000010 
	#define TRISD_CONFIG					0B00100000 
#endif

//}}CONST_DEFINE

//{{KEY_DEFINE
/////////������ӦоƬKEYIOӳ�䶨��//////////////////////////
#define   KEY0_INDEX_MAP       25

#define   KEY_NUMBER             1  //������
//}}KEY_DEFINE

//{{KEY_ONOFF_VALUE
/////////////������Ч��ֵ////////////////////////////////////
#define   KEY0_ON                12  //ȡֵ>=5

///////////������Ч��ֵ//////////////////////////////////////
#define   KEY0_OFF               8
//}}KEY_ONOFF_VALUE

//{{OTHER_CONST_PARAMS
//////////�ɼ����ݴ�����ض���///////////////////////////////////////////
#define   LOCAL_FILTER               3     //�ఴ���˲�����
#define   LOCAL_FILTER_SAMPLES       4     //�ఴ���˲���������
#define   CS_FILTER                  3     //CS�����˲�����
#define   CS_FILTER_SAMPLES          4     //CS�����˲���������
#define   BL_SLOW_DOWN_SPEED         126     //�������¸����ٶ�
#define   BL_SLOW_UP_SPEED           126     //�������ϸ����ٶ�
#define   BL_SLOW_DIFF_COEFF         63                  //���ٸ����Ѷ�ϵ��
#define   BL_CATCHUP_DOWN_SPEED      254     //�������¸����ٶ�
#define   BL_CATCHUP_UP_SPEED        254     //�������ϸ����ٶ�
#define   BL_CATCHUP_DIFF_COEFF      5                    //���ٸ����Ѷ�ϵ��
#define	MEANTIME_MAX_KEY_NUM       KEY_NUMBER  

//////////����״̬��CSģʽ�µ������ж�///////////////////////////////////////////
#define   RESONANCE_DATA_FILTER      8    

#define   MULTIPLE                   48    //�Ŵ���
#define   CS_ON_FACTOR               20    //���������
#define   CS_OFF_FACTOR              20    //���������
//}}OTHER_CONST_PARAMS
#ifdef _DEF_LOW_POWER
////////�͹��Ķ���///////////////////////////////////////////////////
//˯��ģʽ�µĻ��߸���
#define	SLEEP_BL_UPDATA_SPEED				8
//���ٴ��ް������½���͹���,�������а�����һ��
#define	SLEEP_MODE_WAIT_NUMBER				4000/KEY_NUMBER
//�͹���״̬�¿��Ź�����Ƶ��
#define	SLEEP_RATE_SET0						0B00001111      // 1/4096
#define	SLEEP_RATE_SET1						0B00001111      // 1/4096
//��������ÿ2sɨһ�Σ���ô���� 2000/128 = 15
#define	SLEEP_UPDATA_BASELINE_WAIT_NUMBER	16 
//{{PARAM_LOWPOWER
//�͹��İ�����Ч��ֵ
#define SLEEP_KEY_ON_VALUE					0
//�͹���ɨ�������
#define SLEEP_SCAN_GROUP					    0

#define TOUCH_IO_MASK_A						0x00FF
#define TOUCH_IO_MASK_B						0x00DF
#define TOUCH_IO_MASK_C						0x00FF
#define TOUCH_IO_MASK_D						0x00FF
#define	SLEEP_TRIS_AB_0						0x0003
#define	SLEEP_TRIS_CD_0						0x0000
#define	SLEEP_TK_01_0						0x000C
#define	SLEEP_TK_23_0						0x00C0
#define	SLEEP_TRIS_AB_1						0x0000
#define	SLEEP_TRIS_CD_1						0x0003
#define	SLEEP_TK_01_1      					0x0003
#define	SLEEP_TK_23_1     					0x00C0
#define	SLEEP_TRIS_AB_2						0x6000
#define	SLEEP_TRIS_CD_2						0x0000
#define	SLEEP_TK_01_2      					0x6000
#define	SLEEP_TK_23_2     					0x00C0
#define	SLEEP_TRIS_AB_3	 					0x0000
#define	SLEEP_TRIS_CD_3    					0x0000
#define	SLEEP_TK_01_3      					0x0000
#define	SLEEP_TK_23_3     					0x0000
#define	SLEEP_TRIS_AB_4	 					0x0000
#define	SLEEP_TRIS_CD_4    					0x0000
#define	SLEEP_TK_01_4      					0x0000
#define	SLEEP_TK_23_4     					0x0000
#define	SLEEP_TRIS_AB_5	 					0x0000
#define	SLEEP_TRIS_CD_5						0x0000
#define	SLEEP_TK_01_5						0x0000
#define	SLEEP_TK_23_5						0x0000
#define	SLEEP_TRIS_AB_6						0x0000
#define	SLEEP_TRIS_CD_6						0x0000
#define	SLEEP_TK_01_6						0x0000
#define	SLEEP_TK_23_6						0x0000
#define	SLEEP_TRIS_AB_7						0x0000
#define	SLEEP_TRIS_CD_7						0x0000
#define	SLEEP_TK_01_7						0x0000
#define	SLEEP_TK_23_7						0x0000
#define	SLEEP_TRIS_AB_8						0x0000
#define	SLEEP_TRIS_CD_8						0x0000
#define	SLEEP_TK_01_8						0x0000
#define	SLEEP_TK_23_8						0x0000
#define	SLEEP_TRIS_AB_9						0x0000
#define	SLEEP_TRIS_CD_9						0x0000
#define	SLEEP_TK_01_9						0x0000
#define	SLEEP_TK_23_9						0x0000
//}}PARAM_LOWPOWER
#endif

////////Ƶ��΢������///////////////////////////////////////////////////
#define	FREQ_CHARGER_L						0X80		//ɨ��Ƶ��
#define	FREQ_CHARGER_H						0X02		//ɨ��Ƶ��

/////////BANK �л�����////////////////////////////////////////
#define	BANKSEL4_7							MSCON1 |= 0X02;   //��ӵ�ַΪ 0x200~0x3FF
#define	BANKSEL0_3							MSCON1 &= ~0X02; //��ӵ�ַΪ 0x000~0x1FF
#define	TSC_TKRSEL				 			0xFF
#ifdef TOUCH_CS
#define FREQ_CHANGER_NUMBER_MIN   			12		//ÿ����ɨ�����С��������ֵ������Ƶ�����ı���
#else 
#define FREQ_CHANGER_NUMBER_MIN   			3		//ÿ����ɨ�����С��������ֵ������Ƶ�����ı���
#endif
//{{KEY_MAP
////////������ӦKEYIOӳ���/////////////////////////////////////////////
const unsigned char ucKeyIndexMapArray[KEY_NUMBER]=
{
   KEY0_INDEX_MAP,
};
//}}KEY_MAP
#ifndef TOUCH_DEBUG
//{{KEY_ONOFF_ARRARY
const unsigned char ucActiveSensorDeltaArray[KEY_NUMBER]=
{
    KEY0_ON   
};


const unsigned char ucInActiveSensorDeltaArray[KEY_NUMBER]=
{
       KEY0_ON<KEY0_OFF?KEY0_ON:KEY0_OFF,   
};
const unsigned char ucMULTIPLE = MULTIPLE;
//}}KEY_ONOFF_ARRARY
#endif
const unsigned char ucLOCAL_FILTER 						= LOCAL_FILTER;
const unsigned char ucLOCAL_FILTER_SAMPLES 				= LOCAL_FILTER_SAMPLES;
const unsigned char ucKEY_NUMBER_MAX 					= KEY_NUMBER;
const unsigned char ucTSC_TKRSEL				 		= TSC_TKRSEL;
const unsigned char ucFREQ_CHARGER_L 					= FREQ_CHARGER_L;
const unsigned char ucFREQ_CHARGER_H 					= FREQ_CHARGER_H;
const unsigned char ucFREQ_CHANGER_NUMBER_MIN			= FREQ_CHANGER_NUMBER_MIN;

#ifndef TOUCH_DEBUG	
const unsigned char ucBL_SLOW_DOWN_SPEED 				= BL_SLOW_DOWN_SPEED;
const unsigned char ucBL_SLOW_UP_SPEED 					= BL_SLOW_UP_SPEED;
const unsigned char ucBL_SLOW_DIFF_COEFF 				= BL_SLOW_DIFF_COEFF;
const unsigned char ucBL_CATCHUP_UP_SPEED 				= BL_CATCHUP_UP_SPEED;
const unsigned char ucBL_CATCHUP_DOWN_SPEED 			= BL_CATCHUP_DOWN_SPEED;
const unsigned char ucBL_CATCHUP_DIFF_COEFF 			= BL_CATCHUP_DIFF_COEFF;
const unsigned char ucMEANTIME_MAX_KEY_NUM 				= MEANTIME_MAX_KEY_NUM;

#ifdef TOUCH_CS
const unsigned char ucCS_FILTER 						= CS_FILTER;
const unsigned char ucCS_FILTER_SAMPLES					= CS_FILTER_SAMPLES;
const unsigned char ucCS_ON_FACTOR 						= CS_ON_FACTOR;	
const unsigned char ucCS_OFF_FACTOR 					= CS_OFF_FACTOR;
const unsigned char ucRESONANCE_DATA_FILTER 			= RESONANCE_DATA_FILTER;
#endif

#ifdef _DEF_LOW_POWER
const unsigned char ucSLEEP_RATE_SET0 					= SLEEP_RATE_SET0;
const unsigned char ucSLEEP_RATE_SET1 					= SLEEP_RATE_SET1;
const unsigned int  uiSLEEP_MODE_WAIT_NUMBER 			= SLEEP_MODE_WAIT_NUMBER;
const unsigned char ucSLEEP_BL_UPDATA_SPEED 			= SLEEP_BL_UPDATA_SPEED;
const unsigned char ucSLEEP_UPDATA_BASELINE_WAIT_NUMBER = SLEEP_UPDATA_BASELINE_WAIT_NUMBER; 
const unsigned char ucSLEEP_KEY_ON_VALUE 				= SLEEP_KEY_ON_VALUE; 
const unsigned char ucSLEEP_SCAN_GROUP 					= SLEEP_SCAN_GROUP; 


const unsigned char ucTOUCH_IO_MASK_A 					= TOUCH_IO_MASK_A; 
const unsigned char ucTOUCH_IO_MASK_B 					= TOUCH_IO_MASK_B; 
const unsigned char ucTOUCH_IO_MASK_C = TOUCH_IO_MASK_C; 
const unsigned char ucTOUCH_IO_MASK_D = TOUCH_IO_MASK_D; 

const unsigned int uiSLEEP_KEY_GPIO_CONFIG[10][4] =
{
	SLEEP_TRIS_AB_0,SLEEP_TRIS_CD_0,SLEEP_TK_01_0,SLEEP_TK_23_0,
    SLEEP_TRIS_AB_1,SLEEP_TRIS_CD_1,SLEEP_TK_01_1,SLEEP_TK_23_1,
    SLEEP_TRIS_AB_2,SLEEP_TRIS_CD_2,SLEEP_TK_01_2,SLEEP_TK_23_2,
	SLEEP_TRIS_AB_3,SLEEP_TRIS_CD_3,SLEEP_TK_01_3,SLEEP_TK_23_3,
    SLEEP_TRIS_AB_4,SLEEP_TRIS_CD_4,SLEEP_TK_01_4,SLEEP_TK_23_4,
    SLEEP_TRIS_AB_5,SLEEP_TRIS_CD_5,SLEEP_TK_01_5,SLEEP_TK_23_5,
	SLEEP_TRIS_AB_6,SLEEP_TRIS_CD_6,SLEEP_TK_01_6,SLEEP_TK_23_6,
    SLEEP_TRIS_AB_7,SLEEP_TRIS_CD_7,SLEEP_TK_01_7,SLEEP_TK_23_7,
    SLEEP_TRIS_AB_8,SLEEP_TRIS_CD_8,SLEEP_TK_01_8,SLEEP_TK_23_8,
    SLEEP_TRIS_AB_9,SLEEP_TRIS_CD_9,SLEEP_TK_01_9,SLEEP_TK_23_9,        
};
//�ⲿ��������
extern volatile bit bSleepEnable;//�������̴����־λ
extern volatile bit bSleepMode;
extern volatile bit bIEBackupsFlag;

//�͹��Ĺ��ܺ�������
void TSC_SleepPrcoessing(void);//����״̬�µİ�����⴦������
void TSC_Sleep(void);
////////�͹��Ķ���///////////////////////////////////////////////////
#endif
#endif
extern volatile bit bTestSleepFlag;
///////////���ܺ�������/////////////////////////////////////
void TSC_INITIAL(void);  //�����������ó�ʼ��          
void TSC_Start(void); //����ɨ��������ÿ��ֻ��һ��������һ��ɨ�账��
void TSC_Start_Test(void); //debugģʽ�µİ���ɨ��
void TSC_Reset(void); //��λ����. ����������ʹ��
unsigned char TSC_DataProcessing(void);//���а������ݴ���״̬: 1��ʾ���а������ݴ������ 0��ʾδ����������
unsigned char TSC_GetCsKey(void);  //��ȡCS����ֵ
unsigned long TSC_GetLocalKey(void); //��ȡ������Ч��־��ÿbit��ʾһ������1Ϊ�а������£�0Ϊ�ް�������
unsigned char TSC_GetDelta(unsigned char KeyNum); //��ȡ�仯��, >��󰴼���KEY_NUMBER���ȡ���ֵ 
unsigned int TSC_GetPrevData(unsigned char KeyNum); //��ǰ�����ɼ�����ֵ
unsigned int TSC_GetBaseValue(unsigned char KeyNum);//��ǰ�����ɼ�����ֵ
#endif



///////////////////////////////////////////////////////
//CONST_ROM_TOTAL         8192
//CONST_RAM_TOTAL         336
//CONST_ROM_TOUCH         1323+3*KEY_NUMBER
//CONST_ROM_CS_TOUCH      1632+3*KEY_NUMBER    
//CONST_ROM_LP_TOUCH      2042+3*KEY_NUMBER
//CONST_ROM_CS_LPTOUCH    2348+3*KEY_NUMBER
//CONST_RAM_TOUCH         34+0*KEY_NUMBER
//CONST_RAM_CS_TOUCH      36+0*KEY_NUMBER
//CONST_RAM_LP_TOUCH      36+0*KEY_NUMBER
//CONST_RAM_CS_LPTOUCH    37+0*KEY_NUMBER
//CONST_TIMER_TOTAL       3
//CONST_TIMER_USED        2
//CONST_TIMER             T0/T1
//CONST_TIMER_USED_VERLI  1
//CONST_TIMER_VERLI       T1
