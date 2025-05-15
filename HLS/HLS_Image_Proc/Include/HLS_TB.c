#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#include <stdio.h>
#include "HLS.h"

int main() {
    int width, height, channels;
    unsigned char *img = stbi_load("input1.png", &width, &height, &channels, 1);
    if (!img) {
        printf("Failed to load image\n");
        return -1;
    }

    printf("Loaded image: %dx%d\n", width, height);

    int input[MAX_HEIGHT][MAX_WIDTH];
    int conv_out[MAX_HEIGHT][MAX_WIDTH];
    int max_out[MAX_HEIGHT][MAX_WIDTH];
    int min_out[MAX_HEIGHT][MAX_WIDTH];
    int avg_out[MAX_HEIGHT][MAX_WIDTH];

    for (int i = 0; i < height; i++)
        for (int j = 0; j < width; j++)
            input[i][j] = img[i * width + j];

    int kernel[3][3] = {
        {1, 0, -1},
        {1, 0, -1},
        {1, 0, -1}
    };

    full_pipeline(input, height, width, kernel, conv_out, max_out, min_out, avg_out);

    // Save convolution
    int conv_h = height - 2, conv_w = width - 2;
    unsigned char *conv_img = malloc(conv_h * conv_w);
    for (int i = 0; i < conv_h; i++)
        for (int j = 0; j < conv_w; j++)
            conv_img[i * conv_w + j] = (unsigned char)(conv_out[i][j]);
    stbi_write_png("conv_out.png", conv_w, conv_h, 1, conv_img, conv_w);

    // Save pooled outputs
    int pool_h = height / 2, pool_w = width / 2;
    unsigned char *max_img = malloc(pool_h * pool_w);
    unsigned char *min_img = malloc(pool_h * pool_w);
    unsigned char *avg_img = malloc(pool_h * pool_w);

    for (int i = 0; i < pool_h; i++) {
        for (int j = 0; j < pool_w; j++) {
            max_img[i * pool_w + j] = (unsigned char)(max_out[i][j]);
            min_img[i * pool_w + j] = (unsigned char)(min_out[i][j]);
            avg_img[i * pool_w + j] = (unsigned char)(avg_out[i][j]);
        }
    }

    stbi_write_png("max_out.png", pool_w, pool_h, 1, max_img, pool_w);
    stbi_write_png("min_out.png", pool_w, pool_h, 1, min_img, pool_w);
    stbi_write_png("avg_out.png", pool_w, pool_h, 1, avg_img, pool_w);

    free(conv_img);
    free(max_img);
    free(min_img);
    free(avg_img);
    stbi_image_free(img);

    printf("Done. Results saved.\n");
    return 0;
}
