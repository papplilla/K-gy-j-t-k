#include <xparameters.h>
#include <mb_interface.h>
#include <stdio.h>


//*****************************************************************************
//* Makrók a memória eléréshez.                                               *
//*****************************************************************************
#define MEM8(addr)    (*(volatile unsigned char *)(addr))
#define MEM16(addr)   (*(volatile unsigned short *)(addr))
#define MEM32(addr)   (*(volatile unsigned long *)(addr))


//*****************************************************************************
//* A DMA adatátvitelhez használt bufferek.                                   *
//*****************************************************************************
unsigned char dma_tx_buf[1024*1024] __attribute__(());
unsigned char dma_rx_buf[1024*1024] __attribute__(());


//*****************************************************************************
//* Az AXI DMA perifériát kezelõ fügvények.                                   *
//*****************************************************************************
void dma_init(unsigned long baseaddr)
{
	//Az MM2S csatorna engedélyezése: a vezérlõ reg. RS bitjének 1-be állítása.
	//Megszakításokat nem használunk.
	MEM32(baseaddr + 0x00) = 

	//AZ S2MM csatorna engedélyezése: a vezérlõ reg. RS bitjének 1-be állítása.
	//Megszakításokat nem használunk.

}

void dma_mm2s_start(unsigned long baseaddr, void *src, unsigned long length)
{
	//A forráscím beállítása. A felsõ 32 bit mindig 0.

	
	//Az adatméret beállítása, ennek hatására indul az MM2S DMA átvitel.

}

void dma_s2mm_start(unsigned long baseaddr, void *dst, unsigned long length)
{
	//A célcím beállítása. A felsõ 32 bit mindig 0.

	
	//Az adatméret beállítása, ennek hatására indul az S2MM DMA átvitel.

}

void dma_mm2s_wait(unsigned long baseaddr)
{
	unsigned long status;

	//Várakozás, amíg az MM2S DMA átvitel be nem fejezõdik.

}

void dma_s2mm_wait(unsigned long baseaddr)
{
	unsigned long status;

	//Várakozás, amíg az S2MM DMA átvitel be nem fejezõdik.

}


//*****************************************************************************
//* Két buffer tartalmának összehasonlítása.                                  *
//*****************************************************************************
void mem_cmp(void *buf1, void *buf2, unsigned long length)
{
	unsigned char *ptr1 = (unsigned char *)buf1;
	unsigned char *ptr2 = (unsigned char *)buf2;
	unsigned long i;

	for (i = 0; i < length; i++)
	{
		if (ptr1[i] != ptr2[i])
		{
			xil_printf("mem_cmp(): Compare error! buf1[%d]=0x%02x, buf2[%d]=0x%02x\r\n", i, ptr1[i], i, ptr2[i]);
			return;
		}
	}

	xil_printf("mem_cmp(): Content of the buffers is the same.\r\n");
}


//*****************************************************************************
//* Fõprogram.                                                                *
//*****************************************************************************
int main()
{
	unsigned long i;

	//A tömbök inicializálása.
	for(i = 0; i < 1024*1024; i++)
	{
		dma_tx_buf[i] = (unsigned char)(i & 0xff);
		dma_rx_buf[i] = 0x00;
	}

	//Tartalom összehasonlítás a DMA átvitel elõtt.
	mem_cmp(dma_tx_buf, dma_rx_buf, 1024);

	//Az AXI DMA vezérlõ inicializálása.
	dma_init(XPAR_AXIDMA_0_BASEADDR);

	//A DMA adatátvitel elindítása.
	dma_s2mm_start(XPAR_AXIDMA_0_BASEADDR, dma_rx_buf, 1024);
	dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, dma_tx_buf, 1024);

	//Várakozás a DMA átvitel befejezõdésére.
	dma_s2mm_wait(XPAR_AXIDMA_0_BASEADDR);
	dma_mm2s_wait(XPAR_AXIDMA_0_BASEADDR);

	//Tartalom összehasonlítás a DMA átvitel után.
	mem_cmp(dma_tx_buf, dma_rx_buf, 1024);

	for (;;);

	return 0;
}


