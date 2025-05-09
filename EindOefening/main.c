#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#define MIN(a,b) ((a)<(b)?(a):(b))
#define MAX(a,b) ((a)>(b)?(a):(b))

double get_time_diff(struct timespec start, struct timespec end) {
    return (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / 1e9;
}

void convolution(unsigned char* input, unsigned char* output, int width, int height, int channels, const int* kernel, int kernel_size) {
    int half_k = kernel_size / 2;
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            for (int c = 0; c < channels; c++) {
                int sum = 0;
                for (int ky = -half_k; ky <= half_k; ky++) {
                    for (int kx = -half_k; kx <= half_k; kx++) {
                        int ix = MIN(MAX(x + kx, 0), width - 1);
                        int iy = MIN(MAX(y + ky, 0), height - 1);
                        int pixel = input[(iy * width + ix) * channels + c];
                        int kval = kernel[(ky + half_k) * kernel_size + (kx + half_k)];
                        sum += pixel * kval;
                    }
                }
                sum = MIN(MAX(sum, 0), 255);
                output[(y * width + x) * channels + c] = (unsigned char)sum;
            }
        }
    }
}

void max_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels, int pool_size) {
    int half_pool = pool_size / 2;
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            for (int c = 0; c < channels; c++) {
                unsigned char max_val = 0;
                for (int ky = -half_pool; ky <= half_pool; ky++) {
                    for (int kx = -half_pool; kx <= half_pool; kx++) {
                        int ix = MIN(MAX(x + kx, 0), width - 1);
                        int iy = MIN(MAX(y + ky, 0), height - 1);
                        unsigned char pixel = input[(iy * width + ix) * channels + c];
                        max_val = MAX(max_val, pixel);
                    }
                }
                output[(y * width + x) * channels + c] = max_val;
            }
        }
    }
}

void min_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels, int pool_size) {
    int half_pool = pool_size / 2;
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            for (int c = 0; c < channels; c++) {
                unsigned char min_val = 255;
                for (int ky = -half_pool; ky <= half_pool; ky++) {
                    for (int kx = -half_pool; kx <= half_pool; kx++) {
                        int ix = MIN(MAX(x + kx, 0), width - 1);
                        int iy = MIN(MAX(y + ky, 0), height - 1);
                        unsigned char pixel = input[(iy * width + ix) * channels + c];
                        min_val = MIN(min_val, pixel);
                    }
                }
                output[(y * width + x) * channels + c] = min_val;
            }
        }
    }
}

void average_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels, int pool_size) {
    int half_pool = pool_size / 2;
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            for (int c = 0; c < channels; c++) {
                int sum = 0;
                int count = 0;
                for (int ky = -half_pool; ky <= half_pool; ky++) {
                    for (int kx = -half_pool; kx <= half_pool; kx++) {
                        int ix = MIN(MAX(x + kx, 0), width - 1);
                        int iy = MIN(MAX(y + ky, 0), height - 1);
                        sum += input[(iy * width + ix) * channels + c];
                        count++;
                    }
                }
                output[(y * width + x) * channels + c] = (unsigned char)(sum / count);
            }
        }
    }
}

int main() {
    struct timespec start, end;
    FILE* profile = fopen("profile.md", "w");

    const char* input_path = "image.png";
    int width, height, channels;
    unsigned char* input_image = stbi_load(input_path, &width, &height, &channels, 0);
    if (!input_image) {
        printf("Failed to load image.\n");
        return 1;
    }

    size_t img_size = width * height * channels * sizeof(unsigned char);
    unsigned char* result_image = malloc(img_size);

    const int kernelWidth = 3;
    int host_kernel[] = {
        1, 0, -1,
        1, 0, -1,
        1, 0, -1
    };

    printf("Profiling application: ./image_processor_cpu\n");
    fprintf(profile, "Profiling application: ./image_processor_cpu\n");

    clock_gettime(CLOCK_MONOTONIC, &start);
    convolution(input_image, result_image, width, height, channels, host_kernel, kernelWidth);
    stbi_write_jpg("convolution.jpg", width, height, channels, result_image, 90);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_conv = get_time_diff(start, end);
    printf(" - convolution: %.4fs\n", t_conv);
    fprintf(profile, " ### convolution: %.4fs\n", t_conv);

    clock_gettime(CLOCK_MONOTONIC, &start);
    max_pooling(input_image, result_image, width, height, channels, 2);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_max = get_time_diff(start, end);
    printf(" - max_pooling: %.4fs\n", t_max);
    fprintf(profile, " ### max_pooling: %.4fs\n", t_max);
    stbi_write_jpg("max_pooling.jpg", width, height, channels, result_image, 90);

    clock_gettime(CLOCK_MONOTONIC, &start);
    min_pooling(input_image, result_image, width, height, channels, 2);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_min = get_time_diff(start, end);
    printf(" - min_pooling: %.4fs\n", t_min);
    fprintf(profile, " ### min_pooling: %.4fs\n", t_min);
    stbi_write_jpg("min_pooling.jpg", width, height, channels, result_image, 90);

    clock_gettime(CLOCK_MONOTONIC, &start);
    average_pooling(input_image, result_image, width, height, channels, 2);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_avg = get_time_diff(start, end);
    printf(" - average_pooling: %.4fs\n", t_avg);
    fprintf(profile, " ### average_pooling: %.4fs\n", t_avg);
    stbi_write_jpg("average_pooling.jpg", width, height, channels, result_image, 90);

    printf("Afbeeldingen opgeslagen:\n");
    printf(" - convolution.jpg\n");
    printf(" - max_pooling.jpg\n");
    printf(" - min_pooling.jpg\n");
    printf(" - average_pooling.jpg\n");

    fprintf(profile, "Afbeeldingen opgeslagen:\n");
    fprintf(profile, " ### convolution.jpg\n");
    fprintf(profile, " ### max_pooling.jpg\n");
    fprintf(profile, " ### min_pooling.jpg\n");
    fprintf(profile, " ### average_pooling.jpg\n");

    fclose(profile);
    stbi_image_free(input_image);
    free(result_image);

    return 0;
}