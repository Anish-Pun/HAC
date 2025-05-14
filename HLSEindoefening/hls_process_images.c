#include "hls_process_images.h"

// Convolution function with memory optimization
void convolution(unsigned char *input, unsigned char *output, int img_height, int img_width, char kernel[3][3]) {
	#pragma HLS INLINE off
	#pragma HLS PIPELINE II=1
    for (int y = 1; y < img_height - 1; y++) {
        for (int x = 1; x < img_width - 1; x++) {
            int sum = 0;
            for (int ky = -1; ky <= 1; ky++) {
                for (int kx = -1; kx <= 1; kx++) {
                    int pos_x = x + kx;
                    int pos_y = y + ky;
                    if (pos_x >= 0 && pos_x < img_width && pos_y >= 0 && pos_y < img_height) {
                        sum += input[pos_y * img_width + pos_x] * kernel[ky + 1][kx + 1];
                    }
                }
            }
            if (sum < 0) sum = 0;
            if (sum > 255) sum = 255;
            output[y * img_width + x] = (unsigned char)sum;
        }
    }
}

// Pooling function with memory optimization (same for max, min, average)
void pooling(unsigned char *input, unsigned char *output, int img_height, int img_width, int mode) {
	#pragma HLS INLINE off
	#pragma HLS PIPELINE II=1
    for (int y = 0; y < img_height - 1; y += 2) {
        for (int x = 0; x < img_width - 1; x += 2) {
            unsigned char pool_val = input[y * img_width + x];
            if (mode == 1) { // Max pooling
                if (input[y * img_width + (x + 1)] > pool_val) pool_val = input[y * img_width + (x + 1)];
                if (input[(y + 1) * img_width + x] > pool_val) pool_val = input[(y + 1) * img_width + x];
                if (input[(y + 1) * img_width + (x + 1)] > pool_val) pool_val = input[(y + 1) * img_width + (x + 1)];
            } else if (mode == 2) { // Min pooling
                if (input[y * img_width + (x + 1)] < pool_val) pool_val = input[y * img_width + (x + 1)];
                if (input[(y + 1) * img_width + x] < pool_val) pool_val = input[(y + 1) * img_width + x];
                if (input[(y + 1) * img_width + (x + 1)] < pool_val) pool_val = input[(y + 1) * img_width + (x + 1)];
            } else { // Average pooling
                int sum = input[y * img_width + x] + input[y * img_width + (x + 1)] +
                          input[(y + 1) * img_width + x] + input[(y + 1) * img_width + (x + 1)];
                pool_val = (unsigned char)(sum / 4);
            }
            output[(y / 2) * (img_width / 2) + (x / 2)] = pool_val;
        }
    }
}

// Top function to process images in parallel
void process_images(unsigned char *input, unsigned char *conv_output, unsigned char *max_output, unsigned char *min_output, unsigned char *avg_output, int img_height, int img_width) {
    #pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv_output offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=max_output offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=min_output offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=avg_output offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=img_height bundle=control
    #pragma HLS INTERFACE s_axilite port=img_width bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    unsigned char conv_result[MAX_HEIGHT * MAX_WIDTH];
    unsigned char max_result[(MAX_HEIGHT / 2) * (MAX_WIDTH / 2)];
    unsigned char min_result[(MAX_HEIGHT / 2) * (MAX_WIDTH / 2)];
    unsigned char avg_result[(MAX_HEIGHT / 2) * (MAX_WIDTH / 2)];

    char kernel[3][3] = {
        { 1, 0, -1 },
        { 1, 0, -1 },
        { 1, 0, -1 }
    };

	#pragma HLS DATAFLOW

    // Convolution
    convolution(input, conv_result, img_height, img_width, kernel);

    // Pooling
    pooling(input, max_result, img_height, img_width, 1);  // Max pooling
    pooling(input, min_result, img_height, img_width, 2);  // Min pooling
    pooling(input, avg_result, img_height, img_width, 3);  // Average pooling

    for (int i = 0; i < img_height * img_width; i++) {
		#pragma HLS UNROLL
        conv_output[i] = conv_result[i];
    }

    int pooled_height = img_height / 2;
    int pooled_width = img_width / 2;

    for (int i = 0; i < pooled_height * pooled_width; i++) {
		#pragma HLS UNROLL
        max_output[i] = max_result[i];
        min_output[i] = min_result[i];
        avg_output[i] = avg_result[i];
    }
}
