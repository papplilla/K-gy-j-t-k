#ifndef FAL_H_INCLUDED
#define FAL_H_INCLUDED

#define KEPERNYO_SZELESSEG 800
#define KEPERNYO_HOSSZUSAG 600

#define MAX_FAL ((KEPERNYO_SZELESSEG)*(KEPERNYO_HOSSZUSAG))

typedef struct
{
    uint16_t x, y;
}Poz;

Poz falak[MAX_FAL];

#endif // FAL_H_INCLUDED
