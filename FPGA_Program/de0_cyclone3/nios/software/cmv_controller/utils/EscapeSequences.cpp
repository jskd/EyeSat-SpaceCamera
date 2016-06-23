/**
 *  @file       EscapeSequences.cpp
 *  @brief      ANSI escape codes (Source)
 *  @author     Jérôme Skoda <jerome.skoda@hotmail.fr>
 *  @version    1.3
 *  @date       11/05/2015 - 15/05/2015
 */

#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>

#include "EscapeSequences.h"
/*
//Define static variable
unsigned char EscapeSequences::currentBackground = XTRUITES_DEFAULT_COLOR_BACKGROUND;
unsigned char EscapeSequences::currentForeground = XTRUITES_DEFAULT_COLOR_FOREGROUND;
unsigned char EscapeSequences::xHome= 1;
unsigned char EscapeSequences::yHome= 1;

void EscapeSequences::setHomePosition(unsigned char x, unsigned char y)
{
    EscapeSequences::xHome= x;
    EscapeSequences::yHome= y;
}


void EscapeSequences::moveCursorHome()
{
    //                      Move cursor          yHome-1 (because \n)
    EscapeSequences::write("\033[%d;%dH\n", EscapeSequences::yHome-1, EscapeSequences::xHome);
}

void EscapeSequences::moveCursor(unsigned char x, unsigned char y)
{
    EscapeSequences::write("\033[%d;%df", y+1, x+1);
}

void EscapeSequences::clearScreen()
{
    EscapeSequences::write("\033[2J\r\n");
}


void EscapeSequences::setBackground(unsigned char color, bool force)
{
    if( (color != EscapeSequences::currentBackground) || force)
    {
        EscapeSequences::write("\033[48;5;%dm", color);
        EscapeSequences::currentBackground = color;
    }
}


void EscapeSequences::setForeground(unsigned char color, bool force)
{
    if( (color != EscapeSequences::currentForeground) || force)
    {
        EscapeSequences::write("\033[38;5;%dm", color);
        EscapeSequences::currentForeground = color;
    }
}


void EscapeSequences::reversesColors()
{
    unsigned char background= EscapeSequences::currentBackground;
    EscapeSequences::setBackground(EscapeSequences::currentForeground);
    EscapeSequences::setForeground(background);
}


void EscapeSequences::erasesEntireCurrentLine()
{
    EscapeSequences::write("\033[2K");
}


void EscapeSequences::resetAttributes()
{
    EscapeSequences::write("\033[0m");
}


void EscapeSequences::scrollScreen(unsigned char startRow, unsigned char endRow)
{
    EscapeSequences::write("\033[%d;%dr", startRow, endRow);
}
*/
/*EoF*/
