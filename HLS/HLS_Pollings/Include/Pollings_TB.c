#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_RESIZE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION

#include "stb_image.h"
#include "stb_image_write.h"
#include "stb_image_resize.h"
#include "Pollings.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define IMG_SIZE 64
#define POOL_SIZE 32
#define UPSCALED_WIDTH 4408
#define UPSCALED_HEIGHT 2132

void upsample_nn(uint8_t input[POOL_SIZE][POOL_SIZE], uint8_t output[UPSCALED_HEIGHT][UPSCALED_WIDTH]) {
    for (int y = 0; y < UPSCALED_HEIGHT; y++) {
        int src_y = y * POOL_SIZE / UPSCALED_HEIGHT;
        for (int x = 0; x < UPSCALED_WIDTH; x++) {
            int src_x = x * POOL_SIZE / UPSCALED_WIDTH;
            output[y][x] = input[src_y][src_x];
        }
    }
}

int main() {
    char filename[20];

    for (int img_num = 1; img_num <= 10; img_num++) {
        sprintf(filename, "input%d.png", img_num);

        int width, height, channels;
        uint8_t* input_img = stbi_load(filename, &width, &height, &channels, 1);
        if (!input_img) {
            printf("Failed to load image: %s\n", filename);
            continue;
        }

        uint8_t resized_img[IMG_SIZE * IMG_SIZE];
        stbir_resize_uint8(input_img, width, height, 0, resized_img, IMG_SIZE, IMG_SIZE, 0, 1);

        uint8_t input_array[IMG_SIZE][IMG_SIZE];
        for (int i = 0; i < IMG_SIZE; i++)
            for (int j = 0; j < IMG_SIZE; j++)
                input_array[i][j] = resized_img[i * IMG_SIZE + j];

        uint8_t max_pool[POOL_SIZE][POOL_SIZE];
        uint8_t min_pool[POOL_SIZE][POOL_SIZE];
        uint8_t avg_pool[POOL_SIZE][POOL_SIZE];

        Pollings(input_array, max_pool, min_pool, avg_pool);

        uint8_t max_upsampled[UPSCALED_HEIGHT][UPSCALED_WIDTH];
        uint8_t min_upsampled[UPSCALED_HEIGHT][UPSCALED_WIDTH];
        uint8_t avg_upsampled[UPSCALED_HEIGHT][UPSCALED_WIDTH];

        upsample_nn(max_pool, max_upsampled);
        upsample_nn(min_pool, min_upsampled);
        upsample_nn(avg_pool, avg_upsampled);

        char max_name[32], min_name[32], avg_name[32];
        sprintf(max_name, "max_pool_%d.png", img_num);
        sprintf(min_name, "min_pool_%d.png", img_num);
        sprintf(avg_name, "avg_pool_%d.png", img_num);

        stbi_write_png(max_name, UPSCALED_WIDTH, UPSCALED_HEIGHT, 1, max_upsampled, UPSCALED_WIDTH);
        stbi_write_png(min_name, UPSCALED_WIDTH, UPSCALED_HEIGHT, 1, min_upsampled, UPSCALED_WIDTH);
        stbi_write_png(avg_name, UPSCALED_WIDTH, UPSCALED_HEIGHT, 1, avg_upsampled, UPSCALED_WIDTH);

        stbi_image_free(input_img);
        printf("Processed image: %s\n", filename);
    }

    printf("All images processed.\n");
    return 0;
}
