// led.c

#include <p32xxxx.h>
#include <plib.h>

#include "led.h"

void setupStatusLED()
{
   TRISFbits.TRISF5 = 0;
}

void enableStatusLED()
{
   LATFbits.LATF5 = 1;
}

void disableStatusLED()
{
   LATFbits.LATF5 = 0;
}
