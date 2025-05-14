#include "hls_process_images.h"

// Convolutie functie
void convolution(unsigned char *input, unsigned char *output, int img_height, int img_width, char kernel[3][3]) {
    for (int y = 1; y < img_height - 1; y++) {
        for (int x = 1; x < img_width - 1; x++) {
            int sum = 0;
            for (int ky = -1; ky <= 1; ky++) {
                for (int kx = -1; kx <= 1; kx++) {
                    sum += input[(y + ky) * img_width + (x + kx)] * kernel[ky + 1][kx + 1];
                }
            }
            if (sum < 0) sum = 0;
            if (sum > 255) sum = 255;
            output[y * img_width + x] = (unsigned char)sum;
        }
    }
}

// Max pooling functie
void max_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width) {
    for (int y = 0; y < img_height; y += 2) {
        for (int x = 0; x < img_width; x += 2) {
            unsigned char max_val = input[y * img_width + x];
            if (input[y * img_width + (x + 1)] > max_val) max_val = input[y * img_width + (x + 1)];
            if (input[(y + 1) * img_width + x] > max_val) max_val = input[(y + 1) * img_width + x];
            if (input[(y + 1) * img_width + (x + 1)] > max_val) max_val = input[(y + 1) * img_width + (x + 1)];
            output[(y / 2) * (img_width / 2) + (x / 2)] = max_val;
        }
    }
}

// Min pooling functie
void min_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width) {
    for (int y = 0; y < img_height; y += 2) {
        for (int x = 0; x < img_width; x += 2) {
            unsigned char min_val = input[y * img_width + x];
            if (input[y * img_width + (x + 1)] < min_val) min_val = input[y * img_width + (x + 1)];
            if (input[(y + 1) * img_width + x] < min_val) min_val = input[(y + 1) * img_width + x];
            if (input[(y + 1) * img_width + (x + 1)] < min_val) min_val = input[(y + 1) * img_width + (x + 1)];
            output[(y / 2) * (img_width / 2) + (x / 2)] = min_val;
        }
    }
}

// Average pooling functie
void average_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width) {
    for (int y = 0; y < img_height; y += 2) {
        for (int x = 0; x < img_width; x += 2) {
            int sum = input[y * img_width + x] + input[y * img_width + (x + 1)] + input[(y + 1) * img_width + x] + input[(y + 1) * img_width + (x + 1)];
            output[(y / 2) * (img_width / 2) + (x / 2)] = (unsigned char)(sum / 4);
        }
    }
}

// Top-functie voor het verwerken van de afbeelding
void process_images(unsigned char *input, unsigned char *conv_output, unsigned char *max_output, unsigned char *min_output, unsigned char *avg_output, int img_height, int img_width) {
    #pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=conv_output offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=max_output offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=min_output offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=avg_output offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    unsigned char conv_result[img_height * img_width];
    unsigned char max_result[(img_height / 2) * (img_width / 2)];
    unsigned char min_result[(img_height / 2) * (img_width / 2)];
    unsigned char avg_result[(img_height / 2) * (img_width / 2)];

    char kernel[3][3] = {
        { 1, 0, -1 },
        { 1, 0, -1 },
        { 1, 0, -1 }
    };

    // Convolutie
    convolution(input, conv_result, img_height, img_width, kernel);

    // Max pooling
    max_pooling(input, max_result, img_height, img_width);

    // Min pooling
    min_pooling(input, min_result, img_height, img_width);

    // Average pooling
    average_pooling(input, avg_result, img_height, img_width);

    for (int i = 0; i < img_height; i++) {
        for (int j = 0; j < img_width; j++) {
            #pragma HLS PIPELINE
            conv_output[i * img_width + j] = conv_result[i * img_width + j];
        }
    }

    int pooled_height = img_height / 2;
    int pooled_width = img_width / 2;
    for (int i = 0; i < pooled_height; i++) {
        for (int j = 0; j < pooled_width; j++) {
            #pragma HLS PIPELINE
            max_output[i * pooled_width + j] = max_result[i * pooled_width + j];
            min_output[i * pooled_width + j] = min_result[i * pooled_width + j];
            avg_output[i * pooled_width + j] = avg_result[i * pooled_width + j];
        }
    }
}
