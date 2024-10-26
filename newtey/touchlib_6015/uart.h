/**
  *********************************************************************************
  * @file    	    led.h
  * @author  	    FMD AE
  * @brief   	    Í·ÎÄ¼þ
  * @version 	    V2.0.0           
  * @data		    2021-12-29
  **********************************************************************************
  * @attention
  * COPYRIGHT (C) 2021 Fremont Micro Devices Corporation All rights reserved.
  *    This software is provided by the copyright holders and contributors,and the
  *software is believed to be accurate and reliable. However, Fremont Micro Devices
  *(SZ) Corporation assumes no responsibility for the consequences of use of such
  *software or for any infringement of patents of other rights of third parties,
  *which may result from its use. No license is granted by implication or otherwise
  *under any patent rights of Fremont Micro Devices Corporation.
  **********************************************************************************
  */  

#ifndef	_UART_H_
#define	_UART_H_

#include "syscfg.h"

typedef enum
{
	IDLE_STA = 0, 
	DATA_STA,
    STOP_ERROR_STA,
}RXStatus;

void uart_tx(unsigned char data);
void SEND_16(unsigned int data);
void SEND_16asc(unsigned int data);
void SendHead();
void SendDataToPC(unsigned char size);
unsigned char ReceiveDataPc(void);
void ConmunicateToPc(void);

#endif	