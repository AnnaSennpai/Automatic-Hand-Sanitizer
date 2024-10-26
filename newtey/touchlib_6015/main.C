/**
  *********************************************************************************
  * @file    	    main.c
  * @author  	    FMD AE
  * @brief   	    Device: FT62F28X
  *                 Memory: Flash 8KX14b, EEPROM 128X8b, SRAM 616X8b
  *                 主函数，touch库的使用示例	
  * @version 	    V1.0.0           
  * @data		    2023-4-19
  *********************************************************************************
  * @attention
  * COPYRIGHT (C) 2021 Fremont Micro Devices Corporation All rights reserved.
  *    This software is provided by the copyright holders and contributors,and the
  *software is believed to be accurate and reliable. However, Fremont Micro Devices
  *Corporation assumes no responsibility for the consequences of use of such
  *software or for any infringement of patents of other rights of third parties,
  *which may result from its use. No license is granted by implication or otherwise
  *under any patent rights of Fremont Micro Devices Corporation.
  **********************************************************************************
*/

//===========================================================
//include definition
//===========================================================
#include	"SYSCFG.h"
#include	"touch.h"
#include	"led.h"
#include	"uart.h"

//===========================================================
//Variable definition
//===========================================================
unsigned char strongest = 0; //demo_test
unsigned char Sav_strongest = 0; //demo_test
unsigned long Sav_single,single;
unsigned int uiSleepWaitTime, count, val, voltage, level_high, level_low, level;
volatile int flag1;
unsigned char temp = 0;
void ConmunicateToPc(void);
void TSC_Start_Debug(void);
void SleepProcess_Real(void);
void SleepProcess_Virtual(void);
#ifndef TOUCH_DEBUG 
#define TSC_Scan()  TSC_Start()
#else
#define TSC_Scan()  TSC_Start_Debug()
#endif
#if (!defined TOUCH_DEBUG ) && (defined _DEF_LOW_POWER)
#define SleepProcess()	SleepProcess_Real()	
#else
#define SleepProcess()	SleepProcess_Virtual()	
#endif

/******************************************************************************
  * @brief  DelayUs program
  * @Description  延时函数
  * @param  time
  * @note   
  * @retval  None
  *****************************************************************************
*/

void DelayUs(unsigned int Time)
{    
	unsigned int a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
}

/*-------------------------------------------------
 *	函数名称：DelayMs
 *	功能：   短延时函数
 *	输入参数：Time延时时间长度 延时时长Time ms
 *	返回参数：无 
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(197); //快1%
		}
	}
}

/******************************************************************************
  * @brief  interrupt ISR	program
  * @Description  中断入口函数 ，注意BANK的切换
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void interrupt ISR(void) 
{ 
		//进中断时bank保护
		if(AUXPGE==0) //BANK0-3
		{
			temp = 0;
		}
		else
		{
			AUXPGE = 0;
			temp = 1;
		}  
                   
        //进中断时bank保护恢复
		if(AUXPGE==0)//BANK0-3
		{
			AUXPGE = temp ;
		}
		else
		{
			AUXPGE = 0;
			AUXPGE = temp ;
		}
} 

/******************************************************************************
  * @brief  Initialize_Communication program
  * @Description  应用程序应在系统初始化时必须把它们写为合适的值，
  *                        特别是各种使能位，以免产生不必要的中断及额外功耗。
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
void Initialize_Communication(void)
{
  //I2C 模块
  I2CCR1 = 0;
  I2CCR2 = 0;
  I2CADDR = 0;
  I2CCCR = 0;
  I2CDAT = 0;
  I2CISR = 0;
  //SPI 模块
  SPIDAT = 0;
  SPICR0 = 0;
  SPICFG = 0;
  SPISCR = 0;
  SPICRCP = 0;
  SPITXCRC = 0;
  SPIRXCRC = 0;
  SPIIER = 0;
  SPICR1 = 0;
  SPISTAT = 0;
  //UART 模块
  UR0DATL = 0;
  UR0DATH = 0;
  UR0CR1 = 0;
  UR0CR2 = 0;
  UR0BRRL = 0;
  UR0STAT = 0;
  UR1DATL = 0;
  UR1DATH = 0;
  UR1CR1 = 0;
  UR1CR2 = 0;
  UR1BRRL = 0;
  UR1STAT = 0;
}

/******************************************************************************
  * @brief  SYS_INITIAL	program
  * @Description  系统时钟、IO初始化
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
///*
void SYS_INITIAL(void) 
{
	 
	OSCCON = SYS_OSCCON;//0B01110001;    //WDT 32KHZ IRCF=110=16MHZ/4=4MHZ,0.25US/T
							//Bit0=1,系统时钟为内部振荡器
							//Bit0=0,时钟源由FOSC<2：0>决定即编译选项时选择
                            
	OPTION = 0B00001000;	//Bit3 PSA   预分频器分配位 0= 预分频器分配给Timer0模块 1：分配给WDT 
							//Bit2：0：预分频比选择位 000: 1:2 
    
	//DelayMs(40); 			//为进入debug模式延时大于20ms
    
    INTCON = 0;  			//暂禁止所有中断
    
	PORTA = 0;
	PORTB = 0;
    PORTD = 0;
    PORTC = 0;
    
    //**********特别注意*********************************************************//
    //PC1:由于F283B,F285B的PB7与PC1打在一起，如果用PB6PB7做debug模式那么PC1需要设为输入
    //PC6:当需要用PC6做debug模式时，需要设为输入
    //PC7:由于F283B,F285B的PC7与PD5打在一起, PD5与PC7要配置相同，设为输入
    //PD3:由于F283X,F285B,F286A,F287A的PD3与GND打在一起则禁止输出高或使能内部上拉,设为输入
    //    由于F287C的PD3与VDD打在一起则禁止输出低或使能内部下拉,设为输入  
    
    TRISA = TRISA_CONFIG;		// 0-输出 1-输入     RA4 -
    TRISB = TRISB_CONFIG;		// B4-B7  TK5-TK2    PB7--touch
    TRISC = TRISC_CONFIG; 	//  
    TRISD = TRISD_CONFIG;	// TKCAP_PD5设为输入 
    //**********特别注意*********************************************************//
    
    ANSEL1 = 0B10000000; //TKCAP_PD5_AN15设为模拟输入脚		
    
	BANKSEL4_7;
	WPUA = 0B00000000;     //PA端口上拉控制 1-开上拉 0-关上拉
    WPUB = 0B00001100;
	WPUC = 0B00000000;
	WPUD = 0B00010000;
   
    BANKSEL0_3;		
  
}

/******************************************************************************
  * @brief  WDT_INITIAL	program
  * @Description  初始化设置看门狗为16位计数器，用于SLEEP模式的128ms唤醒
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void WDT_INITIAL(void) 
{
	CLRWDT();     			//清看门狗
	WDTCON = 0B00001111;    //bit[6:5]WCKSRC=00=LIRC(32K) 
							//bit[4:1]WDTPS=0110=1:4096,预分频1:1 定时时间=(4096*1)/32000=128ms  
							//bit[0]SWDTEN= 1 开启                      	                  
}


 /*-------------------------------------------------
 * 函数名：ADC_INITIAL
 * 功能：  初始ADC
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void ADC_INITIAL(void)
{
    AUXPGE = 0;          //访问BANK0~3
    ADCON1 = 0B11100101; //Fsysclk/64   负参考电压：GND，正参考电压VDD 右对齐
    ADCON0 = 0B00001011;//AN1，软件触发启动转换
    ADCON3 = 0;
    
    ADON = 1;            //打开ADC
    
	DelayUs(200);        //打开ADC模块后，需等待ADC稳定时间Tst(~15us);当选择内部参考电压时需等待内部参考电压的稳定时间Tvrint(~450us)
	DelayUs(200); 	
	DelayUs(50);  
}


 /*-------------------------------------------------
 * 函数名：GET_ADC_DATA
 * 功能：  读取通道ADC值
 * 输入：  adcChannel通道序号
 * 输出：  INT类型AD值（单次采样无滤波）
 --------------------------------------------------*/
unsigned int GET_ADC_DATA(unsigned char adcChannel)
{
    ADCON0 &= 0B00000111;
    ADCON0 |= adcChannel <<3;
    
    DelayUs(6);          //需等待1.5TAD, 外部串联电阻建议小于10KΩ
    GO_DONE = 1;
    NOP();               //等待一个系统周期再回读GO_DONE
    while(GO_DONE);
    //从GO_DONE = 1 ---> GO_DONE = 0,转换过程需要15TAD
    //TAD(us)与转换时钟Fosc/ADCS[2:0]有关
        
    return (((unsigned int)(ADRESH) <<8 ) | ADRESL);     
}



/******************************************************************************
  * @brief  main	program
  * @Description 主函数
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
volatile unsigned int tscdata[8];
void LEDW_ON (void) 
{ 

    //PORTB |= (1 << 0);
//    PORTB |= (1 << 5);	
//    TRISB &= (~(1 << 0));
//    TRISB &= (~(1 << 5));
//						
//	PORTC |= (1 << 1);	
//    TRISC &= (~(1 << 1));	//PC输入输出 0-输出 1-输?
    
    
    PB0 = 0;
    PB6 = 0;
    TRISB0 = 0;
    TRISB6 = 0;
    
    PC2 = 0;
    TRISC2 = 0;
                             

}


void LEDR_ON (void) 
{ 
	PB0 = 1;
    PB6 = 1;
    TRISB0 = 0;
    TRISB6 = 0;
    
    PC2 = 0;
    TRISC2 = 0;                       

}


void LEDB_ON (void) 
{ 
	PB0 = 0;
    PB6 = 1;
    TRISB0 = 0;
    TRISB6 = 0;
    
    PC2 = 1;
    TRISC2 = 0;                       

}

void LEDG_ON (void) 
{ 
	PB0 = 1;
    PB6 = 0;
    TRISB0 = 0;
    TRISB6 = 0;
    
    PC2 = 1;
    TRISC2 = 0;                       

}



void LED_OFF (void) 
{ 

    //PORTB &= (~(1 << 0));
//    PORTB &= (~(1 << 5));	
//    TRISB &= (~(1 << 0));
//    TRISB &= (~(1 << 5));
//						
//	PORTC &= (~(1 << 1));	
//    TRISC &= (~(1 << 1));	//PC输入输出 0-输出 1-输?
    
    
    PB0 = 1;
    PB6 = 1;
    TRISB0 = 0;
    TRISB6 = 0;
    
    PC2 = 1;
    TRISC2 = 0;
                             

}


void LEDGB_FLASH (void)
{
	LEDG_ON();
    DelayMs(500);
    LED_OFF();
    LEDB_ON();
    DelayMs(500);
    LED_OFF();
}


void Motor_ON (void) 
{ 
	PA6 = 1;
    TRISA6 = 0;
}

void Motor_OFF (void) 
{ 
	PA6 = 0;
    TRISA6 = 0;
}



void InfraRed_ON (void) 
{
	//Emit
	//PB2 = 1;
//    TRISB2 = 0;
    //PB3 = 0;
//TRISB3 = 0;
//    
//PA7 = 1;
//    TRISA7 = 0;
//PA5 = 1;
//    TRISA5 = 0;
//PC1 = 0;
//   TRISC1 = 0;
//Receive
//TRISB0 = 1;
//PC7 = 0;
//    TRISC7 = 0;
//PC6 = 0;
//    TRISC6 = 0;
//PD4 = 0;
//    TRISD4 = 0;
//PC5 = 0;
//    TRISC5 = 0;
//PB0 = 0;
//PB6  = 0;
//PC2 = 0;

    
    
    
//PB2 = 0;
//    TRISB2 = 1;
//    PB3 = 1;
//    TRISB3 = 0;

	PB2 = 1;
    TRISB2 = 0;
    PB3 = 0;
    TRISB3 = 1;
    PD4 = 1;
    TRISD4 = 0;
    
    
    //PA5 = 1;
//    TRISA5 = 0;
//    P1B0P = 1;
//    PA7 = 1;
//    TRISA7 = 0;
//    PC1 = 1;
//    TRISC1 = 0;
//    PC5 = 1;
//    TRISC5 = 0;
}


int InfraRed_GET (void)
{
	val = GET_ADC_DATA(0x01);
    voltage = val *5 * 1000/4096;
    NOP();
    NOP();
}



int InfraRed_Check (void) 
{ 
		val = GET_ADC_DATA(0x01);
        voltage = val *5 * 1000/4096;
        NOP();
        NOP();
        if (voltage > level_high) {
			Motor_ON();
            LEDG_ON();
			DelayMs(340);
			Motor_OFF();
            LED_OFF();
            count++;
        } else if (voltage > level_low){
				Motor_ON();
                LEDG_ON();
				DelayMs(400);
				Motor_OFF();
                LED_OFF();
                count++;
        } else {
			count = 0;
        }
        DelayMs(200);
}


int infraRed_Init (void)
{
	level_high = 4;
    level_low = 3;
    level = 0;
    for (int i = 0; i < 10; i++){
		InfraRed_GET();
        level += voltage*10;
    }
    level = level/100;
	if (voltage >= 7) {
		level_high = level + 3;
		level_low = level + 2;
} 
	else {
		level_high = level + 2;
		level_low = level + 1;
    }
}



int infraRed_DEBUG1 (void)
{
	InfraRed_GET();
    if (voltage > 4) {
		LEDW_ON();
        DelayMs(500);
		LED_OFF();
    } else if (voltage > 3){
		LEDR_ON();
        DelayMs(500);
        LED_OFF();
    } else if (voltage > 2) {
		LEDG_ON();
        DelayMs(500);
        LED_OFF();
    } else if (voltage > 1) {
		LEDB_ON();
        DelayMs(500);
        LED_OFF();
    } else if (voltage > 0) {
		LEDGB_FLASH();
        DelayMs(500);
        LED_OFF();
    } else{}
}


int infraRed_DEBUG2 (void)
{
    if (level_high == 10) {
		LEDW_ON();
        DelayMs(500);
		LED_OFF();
    } else if (level_high == 6){
		LEDR_ON();
        DelayMs(500);
        LED_OFF();
    } else if (level_high == 9) {
		LEDG_ON();
        DelayMs(500);
        LED_OFF();
    } else if (level_high == 8) {
		LEDB_ON();
        DelayMs(500);
        LED_OFF();
    } else if (level_high == 7) {
		LEDGB_FLASH();
        DelayMs(500);
        LED_OFF();
    } else{
		LED_OFF();}
}



//void main(void)
//{
//    Initialize_Communication();//??,?????
//    SYS_INITIAL();//?????IO???
//    LED_OFF();
//	ADC_INITIAL();
//    InfraRed_ON();
//    infraRed_Init();
//	while (1){
//		infraRed_DEBUG2();
//    }
//}

void main(void)
{
	unsigned char i;
    flag1 = 0;
    Initialize_Communication();//??,?????
    SYS_INITIAL();//?????IO???
    TSC_INITIAL();//???????
    LED_OFF();
	ADC_INITIAL();
    InfraRed_ON();
    infraRed_Init();
    
	while(1)
	{
		if (count > 11) {
			LED_OFF();
        }
        else if (count > 10){
			LEDR_ON();
			flag1 = 0;
            DelayMs(2000);
            LED_OFF();
            count++;
        } 
        else if (count > 3) {
			LEDGB_FLASH();
            InfraRed_GET();
            if (voltage >= level_low) {
				count++;
            }
            else{
				count = 0;
            }
        }
        else if (flag1 == 1 && count <= 3) {
			InfraRed_Check();
        }
        else{}
        
		TSC_Scan();
		if(TSC_DataProcessing()== 1) //??1?????????????
		{
			strongest = TSC_GetLocalKey();
            DelayMs(300);
			if (strongest) {
				if (flag1 == 0) {
					LEDW_ON();
					flag1 = 1;
					strongest = 0;
                    count = 0;
					DelayMs(1500);
					LED_OFF();
				} else {
					LEDR_ON();
					flag1 = 0;
					strongest = 0;
                    count = 0;
					DelayMs(1500);
					LED_OFF(); 
				}
			}
		}     
    }
}

/******************************************************************************
  * @brief  SleepProcess	program
  * @Description 低功耗处理函数，若未选择低功耗功能，SleepProcess() 在实际工程中可以删除，
  *	虽然已通过宏裁剪，但是函数也会编译占用4byte rom和 占用cpu执行时间。
  * bSleepEnable用于使能低功耗功能，如程序满足休眠条件之后，请将bSleepEnable置1；
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
#ifndef TOUCH_DEBUG
#ifdef _DEF_LOW_POWER
void SleepProcess_Real(void)
{
	/*例：允许休眠就置位 bSleepEnable */
//	if(PB7 == 0) 
//    {
		bSleepEnable = 1;     
//    }
	if(single == 0)		//single为localkey的值，等于0表示没有任何按键按下
	{
		uiSleepWaitTime++;
		if(uiSleepWaitTime > uiSLEEP_MODE_WAIT_NUMBER)
		{
			uiSleepWaitTime = uiSLEEP_MODE_WAIT_NUMBER;
			if(bSleepEnable)
			{
				while(1)
				{
					CLRWDT(); 
/*					//如休眠时判断其它外部条件唤醒，按照此例实现。注意一定放在 TSC_SleepPrcoessing()前                            
					if(PB7 == 1)
					{
						bSleepEnable = 0;  
					}  
*/
					TSC_SleepPrcoessing(); 
					if(bSleepEnable == 0)
					{
						uiSleepWaitTime = 0;
						break;
					}                       
				}
			}
		}
	}
	else
	{
		uiSleepWaitTime = 0;
	} 

}
#endif
#endif
//void SleepProcess_Virtual(void)
//{
//}
/******************************************************************************
  * @brief  TSC_Scan program
  * @Description 请勿删除此函数
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
void TSC_Start_Debug(void)
{
    TSC_Start_Test();
    ConmunicateToPc(); 
}





//===========================================================
