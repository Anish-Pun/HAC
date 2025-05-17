// Convolution.c
#include "Convolution.h"

#define IDX(i, j) ((i)*IMG_WIDTH + (j))

void convolution(unsigned char *in_img,
                 unsigned char *out_img) {

#pragma HLS INTERFACE m_axi port=in_img offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=out_img offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=return bundle=control
#pragma HLS INTERFACE s_axilite port=in_img bundle=control
#pragma HLS INTERFACE s_axilite port=out_img bundle=control

    char kernel[3][3] = {
        {-1, -1, -1},
        {-1,  8, -1},
        {-1, -1, -1}
    };

    // Optional: Initialize output to zero (or any default)
    for (int i = 0; i < IMG_HEIGHT * IMG_WIDTH; i++) {
#pragma HLS PIPELINE
        out_img[i] = 0;
    }

    for (int i = 1; i < IMG_HEIGHT - 1; i++) {
        for (int j = 1; j < IMG_WIDTH - 1; j++) {
#pragma HLS PIPELINE II=1
            short sum = 0;
            for (int ki = -1; ki <= 1; ki++) {
                for (int kj = -1; kj <= 1; kj++) {
                    sum += kernel[ki + 1][kj + 1] * in_img[IDX(i + ki, j + kj)];
                }
            }
            if (sum < 0) sum = 0;
            if (sum > 255) sum = 255;
            out_img[IDX(i, j)] = (unsigned char)sum;
        }
    }
}
