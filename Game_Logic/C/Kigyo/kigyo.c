
#include "kigyo.h"
#include "fal.h"

#include <stdlib.h>


Kigyo kigyo;

static bool iranyValidator(Irany ujIrany, Irany regiIrany);

void megy(Irany ujIrany)
{
    bool ujIranyValid;

    ujIranyValid=iranyValidator(ujIrany, kigyo.poz[0].irany);



    uint16_t i=kigyo.aktHossz-1;

    for(; i>0; i--)
    {       // ???
        kigyo.poz[i] = kigyo.poz[i-1];
    }

   // switch(kigyo.poz[0].irany)
    switch(ujIrany)
    {
        case FEL:
            kigyo.poz[0].poz.y--;
            break;
        case JOBB:
            kigyo.poz[0].poz.x++;
            break;
        case LE:
            kigyo.poz[0].poz.y++;
            break;
        case BAL:
            kigyo.poz[0].poz.x--;
            break;
    }

    if(ujIranyValid)
        kigyo.poz[0].irany = ujIrany;
    // Különben marad az eredeti haladási iránya a fejnek
}

bool vizsgalMagabaHarap(void)
{
    int i=1;

    for(;i<kigyo.aktHossz; i++)
        if(kigyo.poz[i].poz == kigyo.poz[0].poz)       // ??? struktúrák összehasonlítása
            return true;                // magába harapott

    return false;
}

static bool iranyValidator(Irany ujIrany, Irany regiIrany)
{
    if(abs(ujIrany-regiIrany)==2)
        return false;

    return true;
}

bool vizsgalFal(void)
{
    int i=0;

    for(;i<MAX_FAL; i++)
        if(falak[i] == kigyo.poz[0].poz)       // ??? struktúrák összehasonlítása
            return true;                // magába harapott

    return false;
}
