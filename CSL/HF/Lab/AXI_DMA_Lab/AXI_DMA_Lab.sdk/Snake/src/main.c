#include <xparameters.h>
#include <mb_interface.h>
#include <stdio.h>
#include <stdlib.h>
#include "Snake.h"

//*****************************************************************************
//* Fõprogram.                                                                *
//*****************************************************************************
int main()
{
	srand(0);
	//Az AXI DMA vezérlõ inicializálása.
	dma_init(XPAR_AXIDMA_0_BASEADDR);

	//Timer init 10ns
	timer1_Init();

	SnakeMain();
	return 0;
}


