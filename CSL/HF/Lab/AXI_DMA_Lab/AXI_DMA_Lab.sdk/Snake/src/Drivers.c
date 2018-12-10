/*
 * Drivers.c
 *
 *  Created on: 2018. nov. 18.
 *      Author: Janos
 */

#include "Drivers.h"

//*****************************************************************************
//* Az AXI DMA perifériát kezelõ fügvények.                                   *
//*****************************************************************************
void dma_init(unsigned long baseaddr)
{
	//Az MM2S csatorna engedélyezése: a vezérlõ reg. RS bitjének 1-be állítása.
	//Megszakításokat nem használunk.
	MEM32(baseaddr + 0x00) = (1 << 0);

	//AZ S2MM csatorna engedélyezése: a vezérlõ reg. RS bitjének 1-be állítása.
	//Megszakításokat nem használunk.
	//MEM32(baseaddr + 0x30) = (1 << 0);
}

void dma_mm2s_start(unsigned long baseaddr, void *src, unsigned long length)
{
	//A forráscím beállítása. A felsõ 32 bit mindig 0.
	MEM32(baseaddr + 0x18) = (unsigned long)src;
	MEM32(baseaddr + 0x1c) = 0;
	//Az adatméret beállítása, ennek hatására indul az MM2S DMA átvitel.
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

