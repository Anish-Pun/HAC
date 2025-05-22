#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

int clamp(int value, int min_val, int max_val) {
    if (value < min_val) return min_val;
    if (value > max_val) return max_val;
    return value;
}

void convolution_cpu(unsigned char* input, unsigned char* output, int width, int height, int channels, const int* kernel, int kernel_size) {
    int half_k = kernel_size / 2;
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            for (int c = 0; c < channels; c++) {
                int sum = 0;
                for (int ky = -half_k; ky <= half_k; ky++) {
                    for (int kx = -half_k; kx <= half_k; kx++) {
                        int ix = clamp(x + kx, 0, width - 1);
                        int iy = clamp(y + ky, 0, height - 1);
                        int pixel = input[(iy * width + ix) * channels + c];
                        int kval = kernel[(ky + half_k) * kernel_size + (kx + half_k)];
                        sum += pixel * kval;
                    }
                }
                sum = clamp(sum, 0, 255);
                output[(y * width + x) * channels + c] = (unsigned char)sum;
            }
        }
    }
}

void max_pooling_cpu(unsigned char* input, unsigned char* output, int width, int height, int channels) {
    int out_width = width / 2;
    int out_height = height / 2;
    for (int y = 0; y < out_height; y++) {
        for (int x = 0; x < out_width; x++) {
            for (int c = 0; c < channels; c++) {
                unsigned char max_val = 0;
                for (int ky = 0; ky < 2; ky++) {
                    for (int kx = 0; kx < 2; kx++) {
                        int ix = x * 2 + kx;
                        int iy = y * 2 + ky;
                        unsigned char pixel = input[(iy * width + ix) * channels + c];
                        if (pixel > max_val) max_val = pixel;
                    }
                }
                output[(y * out_width + x) * channels + c] = max_val;
            }
        }
    }
}

void min_pooling_cpu(unsigned char* input, unsigned char* output, int width, int height, int channels) {
    int out_width = width / 2;
    int out_height = height / 2;
    for (int y = 0; y < out_height; y++) {
        for (int x = 0; x < out_width; x++) {
            for (int c = 0; c < channels; c++) {
                unsigned char min_val = 255;
                for (int ky = 0; ky < 2; ky++) {
                    for (int kx = 0; kx < 2; kx++) {
                        int ix = x * 2 + kx;
                        int iy = y * 2 + ky;
                        unsigned char pixel = input[(iy * width + ix) * channels + c];
                        if (pixel < min_val) min_val = pixel;
                    }
                }
                output[(y * out_width + x) * channels + c] = min_val;
            }
        }
    }
}

void average_pooling_cpu(unsigned char* input, unsigned char* output, int width, int height, int channels) {
    int out_width = width / 2;
    int out_height = height / 2;
    for (int y = 0; y < out_height; y++) {
        for (int x = 0; x < out_width; x++) {
            for (int c = 0; c < channels; c++) {
                int sum = 0;
                for (int ky = 0; ky < 2; ky++) {
                    for (int kx = 0; kx < 2; kx++) {
                        int ix = x * 2 + kx;
                        int iy = y * 2 + ky;
                        sum += input[(iy * width + ix) * channels + c];
                    }
                }
                output[(y * out_width + x) * channels + c] = sum / 4;
            }
        }
    }
}

void save_raw(const char* filename, unsigned char* buffer, int size) {
    FILE* f = fopen(filename, "wb");
    if (f) {
        fwrite(buffer, 1, size, f);
        fclose(f);
    }
}

int main() {
    const char* input_path = "input.png";
    int width, height, channels;

    unsigned char* input_image = stbi_load(input_path, &width, &height, &channels, 0);
    if (!input_image) {
        printf("Failed to load image.\n");
        return 1;
    }

    if (channels == 4) {
        unsigned char* rgb_image = (unsigned char*)malloc(width * height * 3);
        for (int i = 0; i < width * height; i++) {
            rgb_image[i * 3 + 0] = input_image[i * 4 + 0];
            rgb_image[i * 3 + 1] = input_image[i * 4 + 1];
            rgb_image[i * 3 + 2] = input_image[i * 4 + 2];
        }
        free(input_image);
        input_image = rgb_image;
        channels = 3;
    }

    int kernelSize = 3;
    int kernel[9] = {
        1, 0, -1,
        1, 0, -1,
        1, 0, -1
    };

    int pooled_width = width / 2;
    int pooled_height = height / 2;
    size_t pooled_size = pooled_width * pooled_height * channels;
    size_t image_size = width * height * channels;

    unsigned char* result_conv = (unsigned char*)malloc(image_size);
    unsigned char* result_max  = (unsigned char*)malloc(pooled_size);
    unsigned char* result_min  = (unsigned char*)malloc(pooled_size);
    unsigned char* result_avg  = (unsigned char*)malloc(pooled_size);

    convolution_cpu(input_image, result_conv, width, height, channels, kernel, kernelSize);
    max_pooling_cpu(input_image, result_max, width, height, channels);
    min_pooling_cpu(input_image, result_min, width, height, channels);
    average_pooling_cpu(input_image, result_avg, width, height, channels);

    stbi_write_png("convolution.png", width, height, channels, result_conv, width * channels);
    stbi_write_png("max_pooling.png", pooled_width, pooled_height, channels, result_max, pooled_width * channels);
    stbi_write_png("min_pooling.png", pooled_width, pooled_height, channels, result_min, pooled_width * channels);
    stbi_write_png("average_pooling.png", pooled_width, pooled_height, channels, result_avg, pooled_width * channels);

    // Save raw buffers
    save_raw("max_pooling.raw", result_max, pooled_size);
    save_raw("min_pooling.raw", result_min, pooled_size);
    save_raw("average_pooling.raw", result_avg, pooled_size);

    printf("Pooled size: %d x %d x %d = %lu bytes\n", pooled_width, pooled_height, channels, (unsigned long)pooled_size);
    printf("Afbeeldingen opgeslagen:\n");
    printf(" - convolution.png\n");
    printf(" - max_pooling.png\n");
    printf(" - min_pooling.png\n");
    printf(" - average_pooling.png\n");

    stbi_image_free(input_image);
    free(result_conv);
    free(result_max);
    free(result_min);
    free(result_avg);

    return 0;
}
