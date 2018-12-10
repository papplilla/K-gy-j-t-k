/*
 * Drivers.h
 *
 *  Created on: 2018. nov. 18.
 *      Author: Janos
 */

#ifndef SRC_DRIVERS_H_
#define SRC_DRIVERS_H_

#include <inttypes.h>
#include  <xparameters.h>

#define MEM32(addr)   (*(volatile unsigned long *)(addr))
#define my_abs(x) (x < 0 ? -x : x)

void dma_init(unsigned long baseaddr);

void dma_mm2s_start(unsigned long baseaddr, void *src, unsigned long length);

uint32_t dma_mm2s_finished(unsigned long baseaddr);

void timer1_Init();

uint32_t GetTick();

#endif /* SRC_DRIVERS_H_ */
