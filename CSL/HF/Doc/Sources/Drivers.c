/*
 * Drivers.c
 *
 *  Created on: 2018. nov. 18.
 *      Author: Janos
 */

#include "Drivers.h"

//*****************************************************************************
//* Az AXI DMA perif�ri�t kezel� f�gv�nyek.                                   *
//*****************************************************************************
void dma_init(unsigned long baseaddr)
{
	//Az MM2S csatorna enged�lyez�se: a vez�rl� reg. RS bitj�nek 1-be �ll�t�sa.
	//Megszak�t�sokat nem haszn�lunk.
	MEM32(baseaddr + 0x00) = (1 << 0);

	//AZ S2MM csatorna enged�lyez�se: a vez�rl� reg. RS bitj�nek 1-be �ll�t�sa.
	//Megszak�t�sokat nem haszn�lunk.
	//MEM32(baseaddr + 0x30) = (1 << 0);
}

void dma_mm2s_start(unsigned long baseaddr, void *src, unsigned long length)
{
	//A forr�sc�m be�ll�t�sa. A fels� 32 bit mindig 0.
	MEM32(baseaddr + 0x18) = (unsigned long)src;
	MEM32(baseaddr + 0x1c) = 0;
	//Az adatm�ret be�ll�t�sa, ennek hat�s�ra indul az MM2S DMA �tvitel.
	MEM32(baseaddr + 0x28) = length;
}

uint32_t dma_mm2s_finished(unsigned long baseaddr)
{
	unsigned long status;
	status = MEM32(baseaddr + 0x04);
	return status & (1 << 1);
}
void timer1_Init()
{
	MEM32(XPAR_AXI_TIMER_0_BASEADDR + 4) = 0;
	MEM32(XPAR_AXI_TIMER_0_BASEADDR) = 0x90;
	return;
}

uint32_t GetTick()
{
	return MEM32(XPAR_AXI_TIMER_0_BASEADDR + 8);
}

