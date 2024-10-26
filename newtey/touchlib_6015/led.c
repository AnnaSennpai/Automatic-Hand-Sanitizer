/**
  *********************************************************************************
  * @file    	    led.c
  * @author  	    FMD AE
  * @brief   	    FMD Demo板 LED灯与按键的对应显示
  * @version 	    V2.0.0           
  * @data		    2021-12-29
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
//heard definition
//===========================================================
#include "led.h"

//===========================================================
//Variable definition
//===========================================================
extern unsigned char strongest;
extern unsigned long single;
//===========================================================
//function definition
//===========================================================
#define _USER_8KEY_LED
//#define _USER_12KEY_LED 
//#define _USER_28KEY_LED 
//#define _USER_1668_LED
/******************************************************************************
  * @brief  28KEY LED	program
  * @Description LED初始全灭
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
#ifdef _USER_28KEY_LED 

extern void DelayUs(unsigned int Time);
volatile unsigned int  ledBuffer[2]={0,0};
#define	 SDA	PD2		
#define SDA_OUT TRISD2 = 0;
/******************************************************************************
  * @brief  Send_Data	program
  * @Description 32bit 数据传输
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
void Send_Data(void)
{
	unsigned char i,j;
	unsigned int data, temp;
        
		SDA = 0;
		DelayUs(5);
		SDA = 1;
		
		for(i = 0; i < 2; i++)
		{
            data = ledBuffer[i];
            temp = 0x0001;
            
            for(j = 0; j< 16; j++)
            {
				if( data & temp )			//1   H:2.1us  L:3.7us
				{
					SDA = 0;
					NOP();						
					NOP();					
					SDA = 1;
					 
				}
				else								//0   H:0.6us  L:3.6us
				{
					SDA = 0;
					DelayUs(5);
					SDA = 1;					
				}
                
				temp <<= 1;
			}
        }
		
		SDA = 1;
}

/******************************************************************************
  * @brief  28KEY LED	program
  * @Description LED初始全灭
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED(void)
{
    SDA = 0;
    SDA_OUT;
    DelayUs(100);
    
    ledBuffer[0] = 0;
	ledBuffer[1] = 0;
    Send_Data();
    DelayUs(10);
    Send_Data();
}

/******************************************************************************
  * @brief  LED_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Scan(void)
{
    unsigned long mulitkey = 0;
    unsigned char i = 0;
    
	ledBuffer[0] = 0;
	ledBuffer[1] = 0;
	if( strongest > 21)
	{
		ledBuffer[1] = 0x0100 << (strongest -  22);
	}
	else
	if( strongest > 14)
	{
		ledBuffer[1] = 0x0001 << (strongest - 15);
	}
	else
	if( strongest > 7)
	{
		ledBuffer[0] = 0x0001 << strongest;
	}
	else
	if( strongest > 0)
	{
		ledBuffer[0] = 0x0001 << (strongest - 1);
	}
    
	Send_Data();
}
#endif



/******************************************************************************
  * @brief  12KEY LED	program
  * @Description LED初始全灭
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

#ifdef _USER_12KEY_LED 

void LED(void)
{
        PB7 =1;
        TRISB7 = 0;
        PB5 =1; 
        TRISB5 = 0;      
		PB3 =1;
        TRISB3 = 0;
		PB2 =1; 
        TRISB2 = 0;
        PB1 =1;
        TRISB1 = 0;
		PC5 =1; 
        TRISC5 = 0;
		PC4 =1;   
        TRISC4 = 0;     
		PC3 =1;
        TRISC3 = 0;
        PC2 =1;
        TRISC2 = 0;
		PC1 =1; 
        TRISC1 = 0;
        PD2 =1;
        TRISD2 = 0;
        PD3 =1; 
        TRISD3 = 0;      
}

/******************************************************************************
  * @brief  LED_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Scan(void)
{
   
		PD2 =1;
PC5 =1; 
		PC4 =1;        
		PC3 =1;
		PD3 =1;       
		PC2 =1;
		PC1 =1; 
		PB7 =1;
		PB5 =1;       
		PB3 =1;
		PB2 =1; 
		PB1 =1;
		
        if(strongest ==12)
		{
			PD2 =0;
		}
		else
		if(strongest ==11)
		{
PC5 =0; 
		}
		else
		if(strongest ==10)
		{         
			PC4 =0;        
		}
		else
		if(strongest ==9)
		{
			PC3 =0;
		}
		else
		if(strongest ==8)
		{
            PD3 =0;       
		}
		else
		if(strongest ==7)
		{
			PC2 =0;
		}
		else
		if(strongest ==6)
		{
			PC1 =0; 
		}
		else
		if(strongest ==5)
		{
			PB7 =0;
        
		}
        else
		if(strongest ==4)
        {
            PB5 =0;       
        }
        else
		if(strongest ==3)
        {
			PB3 =0;
        }
        else
		if(strongest ==2)
        {
			PB2 =0; 
        }
        else
		if(strongest ==1)
        { 
			PB1 =0;
        }
}
#endif

/******************************************************************************
  * @brief  8KEY LED	program
  * @Description LED初始全灭
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
#ifdef _USER_8KEY_LED 
//#define  _USER_8KEY_DEMO1  //L4 对应的LED为PD4 demo pcba 2021-08-02
void LED(void)
{
	PA2 =1;
	TRISA2=0;
	PA1 =1;  
	TRISA1=0;
	PA0 =1; 
	TRISA0=0;
	PB3 =1; 	
	TRISB3=0;
	PB2 =1;
	TRISB2=0;
    PA7 =1;
    TRISA7=0;
	//PB1 =1;  
//	TRISB1=0;     	
	#ifdef _USER_8KEY_DEMO1
	PD4 =1;
	TRISD4=0;
	#else
	PB5 =1;
	TRISB5=0;
	#endif    
	PC7 =1;
	TRISC7=0;
}

/******************************************************************************
  * @brief  LED_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Scan(void)
{
	#ifdef _USER_8KEY_DEMO1
	PD4 =1;
	#else
	PB5 =1;
	#endif
	PB3 =1; 
	PA1 =1;
	PB2 =1;
	PA7 =1;         
	PA2 =1;         
	PA0 =1; 
	PC7 =1;
    
	if(strongest == 1)
	{
		PB3 = 0;
	}
	else
	if(strongest == 2)
	{
		PB2 = 0;
	}
	else
	if(strongest == 3)
	{
		PA7 = 0;
	}
	else
	if(strongest == 4)
	{         
		#ifdef _USER_8KEY_DEMO1
		PD4 = 0;
		#else
		PB5 = 0;
		#endif
	}
	else
	if(strongest == 5)
	{
		PC7 = 0;
	}
	else
	if(strongest == 6)
	{
		PA2 = 0;
	}
	else
	if(strongest == 7)
	{
		PA1 = 0;
	}
	else
	if(strongest == 8)
	{
		PA0 = 0;
	}  
}
/******************************************************************************
  * @brief  LED_Local_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Local_Scan(void)
{
	#ifdef _USER_8KEY_DEMO1
	PD4 =1;
	#else
	PB5 =1;
	#endif
	PB3 =1; 
	PA1 =1;
	PB2 =1;
	PA7 =1;         
	PA2 =1;         
	PA0 =1; 
	PC7 =1;
    
	if(single&0x00000001)
	{
		PB3 = 0;
	}
	if(single&0x00000002)
	{
		PB2 = 0;
	}
	if(single&0x00000004)
	{
		PA7 = 0;
	}
	if(single&0x00000008)
	{         
		#ifdef _USER_8KEY_DEMO1
		PD4 = 0;
		#else
		PB5 = 0;
		#endif
	}
	if(single&0x00000010)
	{
		PC7 = 0;
	}
	if(single&0x00000020)
	{
		PA2 = 0;
	}
	if(single&0x00000040)
	{
		PA1 = 0;
	}
	if(single&0x00000080)
	{
		PA0 = 0;
	}  
}

#endif

//1688驱动

#ifdef _USER_1668_LED 
#define	 STB	PB7
#define	 SDA	PC7	
#define	 SCK	PC0
#define	 STB_OUT	TRISB7 = 0	
#define	 SDA_OUT	TRISC7 = 0		
#define	 SCK_OUT	TRISC0 = 0	
extern void DelayUs(unsigned int Time);
/******************************************************************************
  * @brief  Send_Data	program
  * @Description 32bit 数据传输
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
void Send_Data(unsigned char data)
{
	unsigned char j;

        
		STB = 0;
		DelayUs(5);     
        for(j = 0; j< 8; j++)
        {
			SCK = 0;
			if( data & 0x01)			//1   H:2.1us  L:3.7us
			{
				SDA = 1; 
			}
			else								//0   H:0.6us  L:3.6us
			{
				SDA = 0;					
			}         
			data >>= 1;
            DelayUs(5);
            SCK = 1;
            DelayUs(5);   
        }
}

/******************************************************************************
  * @brief  28KEY LED	program
  * @Description LED初始全灭
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED(void)
{
    SDA = 0;
    STB = 1;
    SCK = 1;
    SDA_OUT;
    STB_OUT;
    SCK_OUT;
    DelayUs(1);    
    Send_Data(0B00000011);
    STB= 1;
    DelayUs(5); 
    Send_Data(0B01000000);
    STB= 1;
    DelayUs(5);    
    Send_Data(0B11000000);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);
    Send_Data(0x00);   
     Send_Data(0x00);
    Send_Data(0x00);     
    STB= 1;
    DelayUs(5);         
    Send_Data(0B10001011);
}

/******************************************************************************
  * @brief  LED_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Scan(void)
{ 
	switch(strongest)
    {
		case 1: 
        {
			STB= 1;
	        DelayUs(5); 
			Send_Data(0B01000100);
			STB= 1;
	        DelayUs(5);             
			Send_Data(0B11000000);
			Send_Data(0x40);          
    
        }
        break;
 		case 2: 
        {
			STB= 1;
	        DelayUs(5);         
 			Send_Data(0B01000100);
			STB= 1;
	        DelayUs(5);             
			Send_Data(0B11000000);
			Send_Data(0x80);          
        }
        break;
 		case 3: 
        {
			STB= 1;
	        DelayUs(5);          
			Send_Data(0B01000100);
			STB= 1;
	        DelayUs(5);       
			Send_Data(0B11000000);
			Send_Data(0x20);            
        }
        break;          
		case 4: 
        {

 			STB= 1;
	        DelayUs(5);        
 			Send_Data(0B01000100);
 			STB= 1;
	        DelayUs(5);            
			Send_Data(0B11000010);
			Send_Data(0x20);                   
        }
        break;
 		case 5: 
        {
			STB= 1;
	        DelayUs(5);         
 			Send_Data(0B01000100);
 			STB= 1;
	        DelayUs(5);            
			Send_Data(0B11000010);
			Send_Data(0x10);        
        }
        break; 
 		case 6: 
        {
			STB= 1;
	        DelayUs(5);         
			Send_Data(0B01000100);
			STB= 1;
	        DelayUs(5);             
			Send_Data(0B11000010);
			Send_Data(0x04);          
        }
        break;     
        default:
 			STB= 1;
	        DelayUs(5);        
			Send_Data(0B01000100);
			STB= 1;
	        DelayUs(5);             
			Send_Data(0B11000000);
			Send_Data(0x00);
			STB= 1;
	        DelayUs(5);                     
 			Send_Data(0B01000100);
			STB= 1;
	        DelayUs(5);             
			Send_Data(0B11000010);
			Send_Data(0x00);			
        break;            
    }
   
}
#endif
