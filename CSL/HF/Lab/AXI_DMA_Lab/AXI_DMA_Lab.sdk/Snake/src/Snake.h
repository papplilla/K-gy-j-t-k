/*
 * Snake.h
 *
 *  Created on: 2018. nov. 18.
 *      Author: Janos
 */

#ifndef SRC_SNAKE_H_
#define SRC_SNAKE_H_

#include <inttypes.h>
#include "Drivers.h"
#include  <stdlib.h>

typedef struct
{
	int x;
	int y;
} point_typedef;

typedef enum
{
	UP = 0,
	DOWN = 1,
	LEFT = 2,
	RIGHT = 3,
	NONE = 4
}direction_typedef;

typedef struct
{
	int x0;
	int y0;
	int x1;
	int y1;
	uint8_t color;
}fillData_typedef;

#define SPEED 	325		// ms/10pixel


#endif /* SRC_SNAKE_H_ */
