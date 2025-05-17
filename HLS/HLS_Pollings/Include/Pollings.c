#include <stdint.h>
#include "Pollings.h"

#define IMG_SIZE 64
#define POOL_SIZE 32

// Top-level HLS function
void pollings(uint8_t in_img[IMG_SIZE][IMG_SIZE],
              uint8_t max_pool[POOL_SIZE][POOL_SIZE],
              uint8_t min_pool[POOL_SIZE][POOL_SIZE],
              uint8_t avg_pool[POOL_SIZE][POOL_SIZE]) {

#pragma HLS INTERFACE m_axi port=in_img offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=max_pool offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=min_pool offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=avg_pool offset=slave bundle=gmem

#pragma HLS INTERFACE s_axilite port=return bundle=control

    for (int i = 0; i < POOL_SIZE; i++) {
        for (int j = 0; j < POOL_SIZE; j++) {
#pragma HLS PIPELINE II=1
            uint8_t max_val = 0;
            uint8_t min_val = 255;
            uint16_t sum = 0;

            for (int ki = 0; ki < 2; ki++) {
                for (int kj = 0; kj < 2; kj++) {
                    uint8_t val = in_img[i * 2 + ki][j * 2 + kj];
                    if (val > max_val) max_val = val;
                    if (val < min_val) min_val = val;
                    sum += val;
                }
            }
            max_pool[i][j] = max_val;
            min_pool[i][j] = min_val;
            avg_pool[i][j] = (uint8_t)(sum / 4);
        }
    }
}
