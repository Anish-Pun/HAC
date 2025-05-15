#ifndef HLS_H
#define HLS_H

#define MAX_HEIGHT 4408
#define MAX_WIDTH  2132

void full_pipeline(
    int input[MAX_HEIGHT][MAX_WIDTH],
    int height,
    int width,
    int kernel[3][3],
    int conv_out[MAX_HEIGHT][MAX_WIDTH],
    int max_out[MAX_HEIGHT][MAX_WIDTH],
    int min_out[MAX_HEIGHT][MAX_WIDTH],
    int avg_out[MAX_HEIGHT][MAX_WIDTH]
);

#endif
