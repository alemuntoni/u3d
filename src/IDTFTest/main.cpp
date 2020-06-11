#include "Converter.h"

#ifdef __APPLE__

#define INPUT "/Users/alessandro/tmp/dod.u3d.idtf"
#define OUTPUT "/Users/alessandro/tmp/dod.u3d"

#elif WIN32

#else

#define INPUT "/home/alessandro/tmp/dod.idtf"
#define OUTPUT "/home/alessandro/tmp/dod.u3d"

#endif //__APPLE__

int main(int, char *[])
{
    bool res = IDTFConverter::IDTFToU3d(INPUT, OUTPUT);
	return !res;
}
