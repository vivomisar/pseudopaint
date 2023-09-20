#include "canvas.hpp"
#include <SDL2/SDL.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_timer.h>

Canvas::Canvas(int width, int height){
    this->height = height, this->width = width;
    if(SDL_Init(SDL_INIT_VIDEO) != 0){
        printf("SDL_Init error: %s", SDL_GetError());
    }
    this->w = SDL_CreateWindow("Hello", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, this->width, this->height, 0);

    if(this->w == NULL){
        printf("SDL_CreateWindow error: %s", SDL_GetError());
    }

    this->r = SDL_CreateRenderer(this->w, -1, SDL_RENDERER_ACCELERATED);

    if(this->r == NULL){
        printf("SDL_CreateRenderer error: %s", SDL_GetError());
    }
    SDL_SetRenderDrawColor(this->r, 255, 255, 255, 255);
    SDL_RenderClear(this->r);
    SDL_RenderPresent(this->r);
    SDL_Delay(5000);

}