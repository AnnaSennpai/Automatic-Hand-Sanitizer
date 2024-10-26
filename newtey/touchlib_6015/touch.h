/**
  **************************************************************************************************************
  * @file    	    touch.h
  * @author  	    FMD AE
  * @brief   	    库头文件
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
  * @芯片资源
  * 1. Device: FT62F28X
  * 2. Memory: Flash 8KX14b, EEPROM 128X8b, SRAM 616X8b
  * @库使用资源说明:
  * 1. TIMER0、TIMER1
  * 2. LVD中断
  *
  * 4.SRAM指定地址:
  *	 指定地址 特殊变量应用定义：0x20、0x21、0x68 ~ 0x6F
  ***************************************************************************************************************
  */  


//////////////////////////////////////////////////////////////////////
#ifndef _TOUCH_H
#define _TOUCH_H
#define TOUCH_LIB_VERSION        V1.0.1
//{{VERSION_DEFINE
//}}VERSION_DEFINE
///////////头文件/////////////////////////////////////
#include <string.h>
#include "SYSCFG.h"
//{{CONST_DEFINE
#define TOUCH_TOOL_VERSION    V2.0.3.3

//#define TOUCH_DEBUG
//#define _DEF_LOW_POWER
//#define TOUCH_CS
#define  TX									PB7
#define  RX									PB6
/////////系统时钟定义//////////////////////////////////////
#define	SYS_OSCCON							0B01110001 //16M
/////////62F28X不同型号C/D组特殊IO端口配置//////////////////
//PC1:由于F283B,F285B的PB7与PC1打在一起，如果用PB6PB7做debug模式那么PC1需要设为输入
//PC6:当需要用PC6做debug模式时，需要设为输入
//PC7:由于F283B,F285B的PC7与PD5打在一起, PD5与PC7要配置相同，设为输入
//PD3:由于F283X,F285B,F286A,F287A的PD3与GND打在一起则禁止输出高或使能内部上拉,设为输入
//    由于F287C的PD3与VDD打在一起则禁止输出低或使能内部下拉,设为输入 
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
/////////按键对应芯片KEYIO映射定义//////////////////////////
#define   KEY0_INDEX_MAP       25

#define   KEY_NUMBER             1  //按键数
//}}KEY_DEFINE

//{{KEY_ONOFF_VALUE
/////////////按键有效阀值////////////////////////////////////
#define   KEY0_ON                12  //取值>=5

///////////按键无效阀值//////////////////////////////////////
#define   KEY0_OFF               8
//}}KEY_ONOFF_VALUE

//{{OTHER_CONST_PARAMS
//////////采集数据处理相关定义///////////////////////////////////////////
#define   LOCAL_FILTER               3     //多按键滤波次数
#define   LOCAL_FILTER_SAMPLES       4     //多按键滤波采样次数
#define   CS_FILTER                  3     //CS按键滤波次数
#define   CS_FILTER_SAMPLES          4     //CS按键滤波采样次数
#define   BL_SLOW_DOWN_SPEED         126     //慢速向下更新速度
#define   BL_SLOW_UP_SPEED           126     //慢速向上更新速度
#define   BL_SLOW_DIFF_COEFF         63                  //慢速更新难度系数
#define   BL_CATCHUP_DOWN_SPEED      254     //快速向下更新速度
#define   BL_CATCHUP_UP_SPEED        254     //快速向上更新速度
#define   BL_CATCHUP_DIFF_COEFF      5                    //快速更新难度系数
#define	MEANTIME_MAX_KEY_NUM       KEY_NUMBER  

//////////正常状态或CS模式下的条件判定///////////////////////////////////////////
#define   RESONANCE_DATA_FILTER      8    

#define   MULTIPLE                   48    //放大倍数
#define   CS_ON_FACTOR               20    //整体信噪比
#define   CS_OFF_FACTOR              20    //整体信噪比
//}}OTHER_CONST_PARAMS
#ifdef _DEF_LOW_POWER
////////低功耗定义///////////////////////////////////////////////////
//睡眠模式下的基线更新
#define	SLEEP_BL_UPDATA_SPEED				8
//多少次无按键按下进入低功耗,处理所有按键计一次
#define	SLEEP_MODE_WAIT_NUMBER				4000/KEY_NUMBER
//低功耗状态下看门狗唤醒频率
#define	SLEEP_RATE_SET0						0B00001111      // 1/4096
#define	SLEEP_RATE_SET1						0B00001111      // 1/4096
//次数，即每2s扫一次，那么就是 2000/128 = 15
#define	SLEEP_UPDATA_BASELINE_WAIT_NUMBER	16 
//{{PARAM_LOWPOWER
//低功耗按键有效阈值
#define SLEEP_KEY_ON_VALUE					0
//低功耗扫描组合数
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

////////频率微调定义///////////////////////////////////////////////////
#define	FREQ_CHARGER_L						0X80		//扫描频率
#define	FREQ_CHARGER_H						0X02		//扫描频率

/////////BANK 切换定义////////////////////////////////////////
#define	BANKSEL4_7							MSCON1 |= 0X02;   //间接地址为 0x200~0x3FF
#define	BANKSEL0_3							MSCON1 &= ~0X02; //间接地址为 0x000~0x1FF
#define	TSC_TKRSEL				 			0xFF
#ifdef TOUCH_CS
#define FREQ_CHANGER_NUMBER_MIN   			12		//每按键扫描的最小次数，其值必须是频点数的倍数
#else 
#define FREQ_CHANGER_NUMBER_MIN   			3		//每按键扫描的最小次数，其值必须是频点数的倍数
#endif
//{{KEY_MAP
////////按键对应KEYIO映射表/////////////////////////////////////////////
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
//外部变量引用
extern volatile bit bSleepEnable;//休眠流程处理标志位
extern volatile bit bSleepMode;
extern volatile bit bIEBackupsFlag;

//低功耗功能函数定义
void TSC_SleepPrcoessing(void);//休眠状态下的按键检测处理流程
void TSC_Sleep(void);
////////低功耗定义///////////////////////////////////////////////////
#endif
#endif
extern volatile bit bTestSleepFlag;
///////////功能函数定义/////////////////////////////////////
void TSC_INITIAL(void);  //触摸按键配置初始化          
void TSC_Start(void); //按键扫描结果处理，每次只做一个按键的一次扫描处理
void TSC_Start_Test(void); //debug模式下的按键扫描
void TSC_Reset(void); //复位触摸. 长按保护可使用
unsigned char TSC_DataProcessing(void);//所有按键数据处理状态: 1表示所有按键数据处理完成 0表示未处理按键数据
unsigned char TSC_GetCsKey(void);  //获取CS按键值
unsigned long TSC_GetLocalKey(void); //获取按键有效标志，每bit表示一个键，1为有按键按下，0为无按键按下
unsigned char TSC_GetDelta(unsigned char KeyNum); //获取变化量, >最大按键数KEY_NUMBER则获取最大值 
unsigned int TSC_GetPrevData(unsigned char KeyNum); //当前按键采集数据值
unsigned int TSC_GetBaseValue(unsigned char KeyNum);//当前按键采集基线值
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
