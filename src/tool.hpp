#ifndef TOOL_H
#define TOOL_H
#include "canvas.hpp"
#include "drawable.hpp"
class Tool{
private:
    Drawable f;
    Canvas* canvas;

public:
    Tool();
    void sendDrawable();
    void updateDrawable();

};


#endif