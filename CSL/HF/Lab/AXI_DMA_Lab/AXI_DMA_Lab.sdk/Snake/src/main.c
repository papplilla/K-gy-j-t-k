#include <xparameters.h>
#include <mb_interface.h>
#include <stdio.h>
#include <stdlib.h>
#include "Snake.h"

//*****************************************************************************
//* F�program.                                                                *
//*****************************************************************************
int main()
{
	srand(0);
	//Az AXI DMA vez�rl� inicializ�l�sa.
	dma_init(XPAR_AXIDMA_0_BASEADDR);

	//Timer init 10ns
	timer1_Init();

	SnakeMain();
	return 0;
}


