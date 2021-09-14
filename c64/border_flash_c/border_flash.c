#include <c64.h>
#include <peekpoke.h>

unsigned int current_scanline()
{
    return PEEK(0xD012);
}

void wait_for_top_of_frame()
{
    const unsigned char start = current_scanline();
    while(current_scanline() >= start);
}

unsigned char wait_number_of_scanlines(unsigned char count)
{
    const unsigned char start = current_scanline();
    for(;;)
    {
        const unsigned char current = current_scanline();
        if (current < start)
        {
            return 0;
        }

        if (current >= start + count)
        {
            return 1;
        }
    }
}

int main()
{
    unsigned char bvalue = 0;
    unsigned char frames = 0;
    for (;;)
    {
        unsigned char value = 0;
        wait_for_top_of_frame();

        for (;;)
        {
            POKE(53280, value++);

            if (wait_number_of_scanlines(1) == 0)
            {             
                ++frames;
                if (frames % 60 == 0)
                {
                    POKE(53281, bvalue++);
                }   
                break;
            }
        }
    }

    return 0;
}