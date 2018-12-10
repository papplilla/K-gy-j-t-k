/*
 * Snake.c
 *
 *  Created on: 2018. nov. 18.
 *      Author: Janos
 */

#include "Snake.h"

unsigned char picture1[480][640] __attribute__((aligned(128), section(".extmem")));
unsigned char picture2[480][640] __attribute__((aligned(128), section(".extmem")));

point_typedef points[100];
int point_cntr = 0;

fillData_typedef removeTail;
fillData_typedef addHead;
fillData_typedef newFood;
int newFoodPlaced;
point_typedef currentFood;

uint32_t last_tick = 0;
uint32_t tick;
uint8_t currentDmaPicture = 1;
int gameEnded = 0;
int clearStart = 0;

int Score;
int Level;
uint8_t gameRunning = 0;
direction_typedef currentDirection;
direction_typedef lastPressedButton = NONE;

const uint8_t SEG7[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};


void swap(int* x, int *y)
{
	int tmp = *x;
	*x = *y;
	*y = tmp;
}

void FillRectangle(fillData_typedef* in, uint8_t* picture)
{
	if(in->x0 > in->x1)
		swap(&in->x0, &in->x1);
	if(in->y0 > in->y1)
		swap(&in->y0, &in->y1);

	for(int y = in->y0; y <= in->y1; y++)
	{
		for(int x = in->x0; x <= in->x1; x++)
		{
			picture[y * 640 + x] = in->color;
		}
	}
}

int GetRandom(int min, int max)
{
	return rand() / (RAND_MAX / (max-min)) + min;
}

int PointFitsLine(point_typedef p, point_typedef l0, point_typedef l1)
{
	int ret = 0;
	if((l0.x == l1.x) && (l0.x == p.x))
	{
		if((p.y >= l0.y) && (p.y <= l1.y))
			ret = -1;
		if((p.y >= l1.y) && (p.y <= l0.y))
			ret = -1;
	}
	else if((l0.y == l1.y) && (l0.y == p.y))
	{
		if((p.x >= l0.x) && (p.x <= l1.x))
			ret = -1;
		if((p.x >= l1.x) && (p.x <= l0.x))
			ret = -1;
	}
	return ret;
}

void ShiftPoints()
{
	for(int i = point_cntr; i > 0; i--)
	{
		points[i] = points[i -1];
	}
	point_cntr++;
}

void StepAhead()
{
	if((currentDirection == UP) || (currentDirection == DOWN))
	{
		if(lastPressedButton == RIGHT)
		{
			ShiftPoints();
			points[0].x = points[1].x + 10;
			points[0].y = points[1].y;
			currentDirection = RIGHT;
			addHead.x0 = points[0].x - 5;
			addHead.y0 = points[0].y - 4;
			addHead.x1 = points[0].x + 4;
			addHead.y1 = points[0].y + 4;
			addHead.color = 0xFF;
		}
		else if(lastPressedButton == LEFT)
		{
			ShiftPoints();
			points[0].x = points[1].x - 10;
			points[0].y = points[1].y;
			currentDirection = LEFT;
			addHead.x0 = points[0].x - 4;
			addHead.y0 = points[0].y - 4;
			addHead.x1 = points[0].x + 5;
			addHead.y1 = points[0].y + 4;
			addHead.color = 0xFF;
		}
		else if(currentDirection == UP)
		{
			points[0].y -= 10;
			addHead.x0 = points[0].x - 4;
			addHead.y0 = points[0].y - 4;
			addHead.x1 = points[0].x + 4;
			addHead.y1 = points[0].y + 5;
			addHead.color = 0xFF;
		}
		else if(currentDirection == DOWN)
		{
			points[0].y += 10;
			addHead.x0 = points[0].x - 4;
			addHead.y0 = points[0].y - 5;
			addHead.x1 = points[0].x + 4;
			addHead.y1 = points[0].y + 4;
			addHead.color = 0xFF;
		}
	}
	else if((currentDirection == RIGHT) || (currentDirection == LEFT))
	{
		if(lastPressedButton == UP)
		{
			ShiftPoints();
			points[0].x = points[1].x;
			points[0].y = points[1].y - 10;
			currentDirection = UP;
			addHead.x0 = points[0].x - 4;
			addHead.y0 = points[0].y - 4;
			addHead.x1 = points[0].x + 4;
			addHead.y1 = points[0].y + 5;
			addHead.color = 0xFF;
		}
		else if(lastPressedButton == DOWN)
		{
			ShiftPoints();
			points[0].x = points[1].x;
			points[0].y = points[1].y + 10;
			currentDirection = DOWN;
			addHead.x0 = points[0].x - 4;
			addHead.y0 = points[0].y - 5;
			addHead.x1 = points[0].x + 4;
			addHead.y1 = points[0].y + 4;
			addHead.color = 0xFF;
		}
		else if (currentDirection == RIGHT)
		{
			points[0].x += 10;
			addHead.x0 = points[0].x - 5;
			addHead.y0 = points[0].y - 4;
			addHead.x1 = points[0].x + 4;
			addHead.y1 = points[0].y + 4;
			addHead.color = 0xFF;
		}
		else if (currentDirection == LEFT)
		{
			points[0].x -= 10;
			addHead.x0 = points[0].x - 4;
			addHead.y0 = points[0].y - 4;
			addHead.x1 = points[0].x + 5;
			addHead.y1 = points[0].y + 4;
			addHead.color = 0xFF;
		}
	}
}

void RemoveTail()
{
	removeTail.x0 = points[point_cntr - 1].x - 5;
	removeTail.y0 = points[point_cntr - 1].y - 5;
	removeTail.x1 = points[point_cntr - 1].x + 5;
	removeTail.y1 = points[point_cntr - 1].y + 5;
	removeTail.color = 0x00;
	if(points[point_cntr - 1].x == points[point_cntr - 2].x)
	{
		int d = points[point_cntr - 1].y - points[point_cntr - 2].y;
		if(my_abs(d) == 10)
		{
			point_cntr--;
		}
		else
		{
			points[point_cntr - 1].y += (d > 10) ? -10 : 10;
		}
	}
	else
	{
		int d = points[point_cntr - 1].x - points[point_cntr - 2].x;
		if(my_abs(d) == 10)
		{
			point_cntr--;
		}
		else
		{
			points[point_cntr - 1].x += (d > 10) ? -10 : 10;
		}
	}
}

int CheckWall()
{
	if(points[0].x < 0 || points[0].y < 0 || points[0].x > 638 || points[0].y > 478)
		return -1;
	return 0;
}

int CheckBite()
{
	int ret = 0;
		for(int i = 1; i < point_cntr - 1; i++)
	{
		if(PointFitsLine(points[0], points[i], points[i + 1]) != 0)
		{
			ret = -1;
			break;
		}
	}
	return ret;
}

void PlaceNewFood()
{
	int ok = 0;
	while(!ok)
	{
		currentFood.x = GetRandom(0, 20) * 10 + 9;
		currentFood.y = GetRandom(0, 10) * 10 + 9;
		//currentFood.x = GetRandom(0, 63) * 10 + 9;
		//currentFood.y = GetRandom(0, 47) * 10 + 9;
		ok = 1;
		for(int i = 0; i < point_cntr - 1; i++)
		{
			if(PointFitsLine(currentFood, points[i], points[i + 1]) != 0)
				ok = 0;
		}
	}
	newFood.x0 = currentFood.x -4;
	newFood.y0 = currentFood.y -4;
	newFood.x1 = currentFood.x +4;
	newFood.y1 = currentFood.y +4;
	newFood.color = 0x30;
	newFoodPlaced = 1;
}

int FoundFood()
{
	return (points[0].x == currentFood.x) && (points[0].y == currentFood.y);
}

int StepSnake()
{
	int ret = 0;
	StepAhead();
	if(FoundFood())
	{
		PlaceNewFood();
		int tmp = Score / 10 + 1;
		Level = tmp < 8 ? tmp : 8;
		if(Score < 9998)
			Score++;
	}
	else
	{
		RemoveTail();
	}
	if(CheckWall() || CheckBite())
	{
		ret = -1;
	}
	return ret;
}

int ClearScreen(uint8_t *pic, int first)
{
	static int state;
	static int line;
	if(first)
	{
		state = 0;
		line = 0;
	}

	if(state == 0)
	{
		int lineStart = line;
		int j;
		for(j = lineStart; (j < 480) && (j < lineStart + 2); j++)
		{
			for(int i = 0; i < 640; i++)
			{
				*(pic + j * 640 + i) = (unsigned char)(0x00);
			}
		}
		line = j;
		if(j == 480)
			state = 1;
	}
	else if(state == 1)
	{
		for(int i = 0; i < 639; i++)
		{
			*(pic + 0 * 640 + i) = (unsigned char)(0x03);
			*(pic + 1 * 640 + i) = (unsigned char)(0x03);
			*(pic + 2 * 640 + i) = (unsigned char)(0x03);
			*(pic + 3 * 640 + i) = (unsigned char)(0x03);
		}
		state = 2;
	}
	else if(state == 2)
	{
		for(int i = 0; i < 639; i++)
		{
			*(pic + 475 * 640 + i) = (unsigned char)(0x03);
			*(pic + 476 * 640 + i) = (unsigned char)(0x03);
			*(pic + 477 * 640 + i) = (unsigned char)(0x03);
			*(pic + 478 * 640 + i) = (unsigned char)(0x03);
		}
		state = 3;
	}
	else if(state == 3)
	{
		for(int i = 0; i < 479; i++)
		{
			*(pic + i * 640 + 0) = (unsigned char)(0x03);
			*(pic + i * 640 + 1) = (unsigned char)(0x03);
			*(pic + i * 640 + 2) = (unsigned char)(0x03);
			*(pic + i * 640 + 3) = (unsigned char)(0x03);
		}
		state = 4;
	}
	else if(state == 4)
	{
		for(int i = 0; i < 479; i++)
		{
			*(pic + i * 640 + 635) = (unsigned char)(0x03);
			*(pic + i * 640 + 636) = (unsigned char)(0x03);
			*(pic + i * 640 + 637) = (unsigned char)(0x03);
			*(pic + i * 640 + 638) = (unsigned char)(0x03);
		}
		state = 5;
	}
	else if(state == 5)
	{
		fillData_typedef init;
		addHead.x0 = init.x0 = 315;
		addHead.y0 = init.y0 = 235;
		addHead.x1 = init.x1 = 323;
		addHead.y1 = init.y1 = 195;
		addHead.color = init.color = 0xFF;
		FillRectangle(&init, pic);

		removeTail = addHead;

		points[0].x = 319;
		points[0].y = 199;
		points[1].x = 319;
		points[1].y = 239;
		point_cntr = 2;
		currentDirection = UP;

		FillRectangle(&newFood, pic);
		newFoodPlaced = 0;
		Score = 0;
		Level = 1;
		state = 6;
	}

	return !(state == 6);
}

int ClearManage(int *clearStart)
{
	int ret = 0;
	if(*clearStart == 1)
	{
		dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, picture2, 640*480);
		ClearScreen((uint8_t*)picture1, 1);
		*clearStart = 2;
	}
	else if(*clearStart == 2)
	{
		dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, picture2, 640*480);
		if(!ClearScreen((uint8_t*)picture1, 0))
		{
			*clearStart = 3;
		}
	}
	else if(*clearStart == 3)
	{
		dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, picture1, 640*480);
		ClearScreen((uint8_t*)picture2, 1);
		*clearStart = 4;
	}
	else if(*clearStart == 4)
	{
		dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, picture1, 640*480);
		if(!ClearScreen((uint8_t*)picture2, 0))
		{
			ret = 1;
		}
	}
	microblaze_flush_dcache();
	return ret;
}

void ScanButtons()
{
	uint8_t c;
	if(MEM32(XPAR_UARTLITE_0_BASEADDR + 8) & 0x1)
	{
		 c = MEM32(XPAR_UARTLITE_0_BASEADDR);
		 switch(c)
		 {
		 case 'U':
			 lastPressedButton = UP;
			 break;
		 case 'D':
			 lastPressedButton = DOWN;
			 break;
		 case 'L':
			 lastPressedButton = LEFT;
			 break;
		 case 'R':
			 lastPressedButton = RIGHT;
			 break;
		 }
	}

	uint32_t in = MEM32(XPAR_AXI_GPIO_0_BASEADDR + 8);
	if(in & 0x01 << 0)
		lastPressedButton = UP;
	if(in & 0x01 << 1)
		lastPressedButton = DOWN;
	if(in & 0x01 << 2)
		lastPressedButton = RIGHT;
	if(in & 0x01 << 3)
		lastPressedButton = LEFT;

	gameRunning = (in & 0x01 << 4);
}

void UpdateGame()
{
	uint8_t* pic;
	if(currentDmaPicture == 1)
	{
		dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, picture2, 640*480);
		currentDmaPicture = 2;
		pic = picture1;
	}
	else
	{
		dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, picture1, 640*480);
		currentDmaPicture = 1;
		pic = picture2;
	}
	FillRectangle(&removeTail, pic);
	FillRectangle(&addHead, pic);
	FillRectangle(&newFood, pic);
	tick = GetTick();
	uint32_t tmp = tick - last_tick;
	int speed = (100000 * (SPEED - Level * 40));
	if(tmp > speed)
	{
		last_tick += speed;
		if(gameRunning)
		{
			gameEnded = StepSnake();
			uint32_t segData = 0;
			int s = Score;
			for(int i = 0; i < 4; i++)
			{
				segData |= (SEG7[s % 10] << (8 * i));
				s /= 10;
			}
			MEM32(XPAR_GPIO_0_BASEADDR) = 0x01 << (Level - 1);
			MEM32(XPAR_SEVENSEGMENTDRIVER_0_S00_AXI_BASEADDR) = segData;
			if(!gameEnded)
			{
				FillRectangle(&removeTail, pic);
				FillRectangle(&addHead, pic);
				if(newFoodPlaced)
					FillRectangle(&newFood, pic);
				microblaze_flush_dcache();
			}
			else
			{
				clearStart = 1;
			}
		}
		lastPressedButton = NONE;
	}
}

void SnakeMain()
{
		PlaceNewFood();
		ClearScreen((uint8_t*)picture1, 1);
		while(ClearScreen((uint8_t*)picture1, 0))
		{}
		ClearScreen((uint8_t*)picture2, 1);
		while(ClearScreen((uint8_t*)picture2, 0))
		{}

		dma_mm2s_start(XPAR_AXIDMA_0_BASEADDR, picture1, 640*480);

		while(1)
		{
			if(dma_mm2s_finished(XPAR_AXIDMA_0_BASEADDR))
			{
				if(gameEnded)
				{
					if(ClearManage(&clearStart))
					{
						gameEnded = 0;
						currentDmaPicture = 1;
						last_tick = GetTick();
					}
				}
				else
				{
					UpdateGame();
				}
			}
			ScanButtons();
		}
}
