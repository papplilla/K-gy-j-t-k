#include <xparameters.h>
#include <mb_interface.h>
#include <stdio.h>


//*****************************************************************************
//* Makr�k a mem�ria el�r�shez.                                               *
//*****************************************************************************
#define MEM8(addr)    (*(volatile unsigned char *)(addr))
#define MEM16(addr)   (*(volatile unsigned short *)(addr))
#define MEM32(addr)   (*(volatile unsigned long *)(addr))


//*****************************************************************************
//* A DMA adat�tvitelhez haszn�lt bufferek.                                   *
//*****************************************************************************
unsigned char dma_tx_buf[1024*1024] __attribute__(());
unsigned char dma_rx_buf[1024*1024] __attribute__(());


//*****************************************************************************
//* Az AXI DMA perif�ri�t kezel� f�gv�nyek.                                   *
//*****************************************************************************
void dma_init(unsigned long baseaddr)
{
	//Az MM2S csatorna enged�lyez�se: a vez�rl� reg. RS bitj�nek 1-be �ll�t�sa.
	//Megszak�t�sokat nem haszn�lunk.
	MEM32(baseaddr + 0x00) = 

	//AZ S2MM csatorna enged�lyez�se: a vez�rl� reg. RS bitj�nek 1-be �ll�t�sa.
	//Megszak�t�sokat nem haszn�lunk.

}

void dma_mm2s_start(unsigned long baseaddr, void *src, unsigned long length)
{
	//A forr�sc�m be�ll�t�sa. A fels� 32 bit mindig 0.

	
	//Az adatm�ret be�ll�t�sa, ennek hat�s�ra indul az MM2S DMA �tvitel.

}

void dma_s2mm_start(unsigned long baseaddr, void *dst, unsigned long length)
{
	//A c�lc�m be�ll�t�sa. A fels� 32 bit mindig 0.

	
	//Az adatm�ret be�ll�t�sa, ennek hat�s�ra indul az S2MM DMA �tvitel.

}

void dma_mm2s_wait(unsigned long baseaddr)
{
	unsigned long status;

	//V�rakoz�s, am�g az MM2S DMA �tvitel be nem fejez�dik.

}

void dma_s2mm_wait(unsigned long baseaddr)
{
	unsigned long status;

	//V�rakoz�s, am�g az S2MM DMA �tvitel be nem fejez�dik.

}


//*****************************************************************************
//* K�t buffer tartalm�nak �sszehasonl�t�sa.                                  *
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
//* F�program.                                                                *
//*****************************************************************************
int main()
{
	unsigned long i;

	//A t�mb�k inicializ�l�sa.
	for(i = 0; i < 1024*1024; i++)
	{
		dma_tx_buf[i] = (unsigned char)(i & 0xff);
		dma_rx_buf[i] = 0x00;
	}

	//Tartalom �sszehasonl�t�s a DMA �tvitel el�tt.
	mem_cmp(dma_tx_buf, dma_rx_buf, 1024);

	//Az AXI DMA vez�rl� inicializ�l�sa.
	dma_init(XPAR_AXIDMA_0_BASEADDR);

	//A DMA adat�tvitel elind�t�sa.
	dma_s2mm_start(XPAR_AXIDMA_0_BASEADDR, dma_rx_buf, 1024);
	dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, dma_tx_buf, 1024);

	//V�rakoz�s a DMA �tvitel befejez�d�s�re.
	dma_s2mm_wait(XPAR_AXIDMA_0_BASEADDR);
	dma_mm2s_wait(XPAR_AXIDMA_0_BASEADDR);

	//Tartalom �sszehasonl�t�s a DMA �tvitel ut�n.
	mem_cmp(dma_tx_buf, dma_rx_buf, 1024);

	for (;;);

	return 0;
}


