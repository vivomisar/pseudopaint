#include <SDL2/SDL.h>
#include <iostream>

int initgraph(SDL_Window** w, SDL_Renderer** r){
    if(SDL_Init(SDL_INIT_VIDEO) != 0){
        printf("SDL_Init error: %s", SDL_GetError());
        return 1;
    }
    *w = SDL_CreateWindow("Hello", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 640, 480, 0);

    if(*w == NULL){
        printf("SDL_CreateWindow error: %s", SDL_GetError());
        return 1;
    }

    *r = SDL_CreateRenderer(*w, -1, SDL_RENDERER_ACCELERATED);

    if(*r == NULL){
        printf("SDL_CreateRenderer error: %s", SDL_GetError());
        return 1;
    }

    return 0;

}

int main(void){

    SDL_Window* window;
    

    SDL_Renderer* renderer;

    if(initgraph(&window, &renderer))
        return -1;

    SDL_RenderClear(renderer);
    SDL_SetRenderDrawColor(renderer, 255,255,255,255);
    for(int i = 10; i < 100; i++){
        SDL_RenderDrawPoint(renderer, i, i);
        SDL_RenderPresent(renderer);   
    }

    SDL_RenderPresent(renderer);
    SDL_SetRenderDrawColor(renderer, 0,0,0,0);

    SDL_RenderClear(renderer);
    SDL_SetRenderDrawColor(renderer, 255,255,255,255);

    SDL_RenderDrawLine(renderer, 100, 10, 10, 100);
    SDL_RenderPresent(renderer);

    SDL_Delay(2000); // Wait for 2 seconds

    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();

    return 0;
}
