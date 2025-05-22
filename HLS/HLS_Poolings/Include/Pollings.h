#ifndef POLLINGS_H
#define POLLINGS_H

#include <stdint.h>

#define IMG_SIZE 64
#define POOL_SIZE 32

void pollings(uint8_t in_img[IMG_SIZE][IMG_SIZE],
              uint8_t max_pool[POOL_SIZE][POOL_SIZE],
              uint8_t min_pool[POOL_SIZE][POOL_SIZE],
              uint8_t avg_pool[POOL_SIZE][POOL_SIZE]);

#endif
