#include "HLS.h"
#include <limits.h>

void convolution2D(int in[MAX_HEIGHT][MAX_WIDTH], int height, int width, int kernel[3][3], int out[MAX_HEIGHT][MAX_WIDTH]) {
    for (int i = 0; i < height - 2; i++) {
        for (int j = 0; j < width - 2; j++) {
#pragma HLS PIPELINE II=1
            int sum = 0;
            for (int ki = 0; ki < 3; ki++) {
                for (int kj = 0; kj < 3; kj++) {
                    sum += in[i + ki][j + kj] * kernel[ki][kj];
                }
            }
            out[i][j] = sum;
        }
    }
}

void max_pooling(int in[MAX_HEIGHT][MAX_WIDTH], int height, int width, int out[MAX_HEIGHT][MAX_WIDTH]) {
    for (int i = 0; i < height / 2; i++) {
        for (int j = 0; j < width / 2; j++) {
#pragma HLS PIPELINE II=1
            int max = INT_MIN;
            for (int m = 0; m < 2; m++) {
                for (int n = 0; n < 2; n++) {
                    int val = in[i * 2 + m][j * 2 + n];
                    if (val > max) max = val;
                }
            }
            out[i][j] = max;
        }
    }
}

void min_pooling(int in[MAX_HEIGHT][MAX_WIDTH], int height, int width, int out[MAX_HEIGHT][MAX_WIDTH]) {
    for (int i = 0; i < height / 2; i++) {
        for (int j = 0; j < width / 2; j++) {
#pragma HLS PIPELINE II=1
            int min = INT_MAX;
            for (int m = 0; m < 2; m++) {
                for (int n = 0; n < 2; n++) {
                    int val = in[i * 2 + m][j * 2 + n];
                    if (val < min) min = val;
                }
            }
            out[i][j] = min;
        }
    }
}

void avg_pooling(int in[MAX_HEIGHT][MAX_WIDTH], int height, int width, int out[MAX_HEIGHT][MAX_WIDTH]) {
    for (int i = 0; i < height / 2; i++) {
        for (int j = 0; j < width / 2; j++) {
#pragma HLS PIPELINE II=1
            int sum = 0;
            for (int m = 0; m < 2; m++) {
                for (int n = 0; n < 2; n++) {
                    sum += in[i * 2 + m][j * 2 + n];
                }
            }
            out[i][j] = sum / 4;
        }
    }
}

void full_pipeline(
    int input[MAX_HEIGHT][MAX_WIDTH],
    int height,
    int width,
    int kernel[3][3],
    int conv_out[MAX_HEIGHT][MAX_WIDTH],
    int max_out[MAX_HEIGHT][MAX_WIDTH],
    int min_out[MAX_HEIGHT][MAX_WIDTH],
    int avg_out[MAX_HEIGHT][MAX_WIDTH]
) {
#pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem depth=9402976
#pragma HLS INTERFACE m_axi port=kernel offset=slave bundle=gmem depth=9
#pragma HLS INTERFACE m_axi port=conv_out offset=slave bundle=gmem depth=9402976
#pragma HLS INTERFACE m_axi port=max_out offset=slave bundle=gmem depth=2350744
#pragma HLS INTERFACE m_axi port=min_out offset=slave bundle=gmem depth=2350744
#pragma HLS INTERFACE m_axi port=avg_out offset=slave bundle=gmem depth=2350744

#pragma HLS INTERFACE s_axilite port=input bundle=control
#pragma HLS INTERFACE s_axilite port=kernel bundle=control
#pragma HLS INTERFACE s_axilite port=conv_out bundle=control
#pragma HLS INTERFACE s_axilite port=max_out bundle=control
#pragma HLS INTERFACE s_axilite port=min_out bundle=control
#pragma HLS INTERFACE s_axilite port=avg_out bundle=control
#pragma HLS INTERFACE s_axilite port=height bundle=control
#pragma HLS INTERFACE s_axilite port=width bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    convolution2D(input, height, width, kernel, conv_out);
    max_pooling(input, height, width, max_out);
    min_pooling(input, height, width, min_out);
    avg_pooling(input, height, width, avg_out);
}
