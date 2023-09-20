#ifndef DRAWABLE_H
#define DRAWABLE_H
#include <SDL2/SDL.h>

class Drawable{
private:
protected:
public:
    virtual void draw(SDL_Renderer* r);
};

class CircleShape : Drawable{
private:
    float center[3];
    float radius;
public:
    void draw(SDL_Renderer* r);
};

#endif