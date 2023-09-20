#ifndef CANVAS_H
#define CANVAS_H
#include <SDL2/SDL.h>
#include "drawable.hpp"
#include "mouse.hpp"

class Canvas{
private:
    int width;
    int height;
    SDL_Renderer* r;
    SDL_Window* w;

protected:
public:
    Canvas(int width, int height);
    void update(Drawable* f);
    void fill(float point[2]);

};

#endif