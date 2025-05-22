#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

// Clamp helper
int clamp(int value, int min_val, int max_val) {
    if (value < min_val) return min_val;
    if (value > max_val) return max_val;
    return value;
}

// Convolution (same as CUDA logic)
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

// Max Pooling (2x2)
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

// Min Pooling (2x2)
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

// Average Pooling (2x2)
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
                output[(y * out_width + x) * channels + c] = (unsigned char)(sum / 4);
            }
        }
    }
}

// Save raw buffer
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

    // Profile image loading
    clock_t start_load = clock();
    unsigned char* input_image = stbi_load(input_path, &width, &height, &channels, 0);
    clock_t end_load = clock();
    double load_time = (double)(end_load - start_load) / CLOCKS_PER_SEC;

    if (!input_image) {
        printf("Failed to load image.\n");
        return 1;
    }
    printf("Image loaded in %.4f seconds\n", load_time);

    // Remove alpha channel if present
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

    // Profile convolution
    clock_t start_conv = clock();
    convolution_cpu(input_image, result_conv, width, height, channels, kernel, kernelSize);
    clock_t end_conv = clock();
    double conv_time = (double)(end_conv - start_conv) / CLOCKS_PER_SEC;
    printf("Convolution done in %.4f seconds\n", conv_time);

    // Profile max pooling
    clock_t start_max = clock();
    max_pooling_cpu(input_image, result_max, width, height, channels);
    clock_t end_max = clock();
    double max_time = (double)(end_max - start_max) / CLOCKS_PER_SEC;
    printf("Max pooling done in %.4f seconds\n", max_time);

    // Profile min pooling
    clock_t start_min = clock();
    min_pooling_cpu(input_image, result_min, width, height, channels);
    clock_t end_min = clock();
    double min_time = (double)(end_min - start_min) / CLOCKS_PER_SEC;
    printf("Min pooling done in %.4f seconds\n", min_time);

    // Profile average pooling
    clock_t start_avg = clock();
    average_pooling_cpu(input_image, result_avg, width, height, channels);
    clock_t end_avg = clock();
    double avg_time = (double)(end_avg - start_avg) / CLOCKS_PER_SEC;
    printf("Average pooling done in %.4f seconds\n", avg_time);

    // Profile image saving
    clock_t start_save = clock();
    stbi_write_png("PictureResult/convolution.png", width, height, channels, result_conv, width * channels);
    stbi_write_png("PictureResult/max_pooling.png", pooled_width, pooled_height, channels, result_max, pooled_width * channels);
    stbi_write_png("PictureResult/min_pooling.png", pooled_width, pooled_height, channels, result_min, pooled_width * channels);
    stbi_write_png("PictureResult/average_pooling.png", pooled_width, pooled_height, channels, result_avg, pooled_width * channels);
    clock_t end_save = clock();
    double save_time = (double)(end_save - start_save) / CLOCKS_PER_SEC;
    printf("Images saved in %.4f seconds\n", save_time);

    // Write profiling results to result_profiling.md
    FILE* f = fopen("result_profiling.md", "w");
    if (f) {
        fprintf(f, "# Profiling Results\n\n");
        fprintf(f, "- Image load time: %.4f seconds\n", load_time);
        fprintf(f, "- Convolution time: %.4f seconds\n", conv_time);
        fprintf(f, "- Max pooling time: %.4f seconds\n", max_time);
        fprintf(f, "- Min pooling time: %.4f seconds\n", min_time);
        fprintf(f, "- Average pooling time: %.4f seconds\n", avg_time);
        fprintf(f, "- Image save time: %.4f seconds\n", save_time);
        fclose(f);
    }

    printf("Profiling results saved to result_profiling.md\n");

    stbi_image_free(input_image);
    free(result_conv);
    free(result_max);
    free(result_min);
    free(result_avg);

    return 0;
}