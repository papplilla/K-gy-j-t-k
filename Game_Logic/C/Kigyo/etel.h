#ifndef ETEL_H_INCLUDED
#define ETEL_H_INCLUDED

#include <inttypes.h>
#include <bool.h>

#define MAX_ETEL_SZAM 100

//uint16_t aktEtelszam;

typedef struct
{
    uint16_t x, y;
}Poz;

typedef struct
{
    Poz poz;
    uint8_t plusz;      // ennyivel növeli meg a kígyó hosszát
    bool valid;         // ha true, akkor lenn van az étel
}Etel;

Etel etelek[MAX_ETEL_SZAM];

#endif // ETEL_H_INCLUDED
