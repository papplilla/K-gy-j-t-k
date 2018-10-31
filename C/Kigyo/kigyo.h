#ifndef KIGYO_H_INCLUDED
#define KIGYO_H_INCLUDED

#include <inttypes.h>
#include <stdbool.h>

// FONTOS !!! 1 K�GY�PIXEL != 1 K�PERNY� PIXELLEL

#define KIGYO_MAX_HOSSZ 100

typedef struct
{
    uint16_t x, y;
}Poz;

typedef enum
{
    FEL, JOBB, LE, BAL
}Irany;

typedef struct
{
    Poz poz;
    Irany irany;
}KigyoPoz;

typedef struct
{
    // 0. eleme a k�gy� feje, �gy 1 elem mindig van
    KigyoPoz poz[KIGYO_MAX_HOSSZ];
    uint16_t aktHossz;
}Kigyo;


void megy(Irany ujIrany);
void vizsgalMagabaHarap(void);



#endif // KIGYO_H_INCLUDED
