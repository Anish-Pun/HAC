// Convolution_TB.c

#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#define STB_IMAGE_RESIZE_IMPLEMENTATION
#define STBI_FAILURE_USERMSG

#include "stb_image.h"
#include "stb_image_write.h"
#include "stb_image_resize.h"
#include "Convolution.h"

#include <stdio.h>
#include <stdlib.h>

int main() {
    unsigned char in_img[IMG_HEIGHT][IMG_WIDTH];
    unsigned char out_img[IMG_HEIGHT][IMG_WIDTH];

    char input_name[64], output_name[64];

    for (int i = 1; i <= 10; i++) {
        sprintf(input_name, "input%d.png", i);
        sprintf(output_name, "output%d.png", i);

        int w, h, c;
        unsigned char *img_data = stbi_load(input_name, &w, &h, &c, 1); // force grayscale
        if (!img_data) {
            printf("Failed to open %s: %s\n", input_name, stbi_failure_reason());
            continue;
        }

        unsigned char resized[IMG_HEIGHT * IMG_WIDTH];

        // Resize to 128x128 if needed
        stbir_resize_uint8(img_data, w, h, 0, resized, IMG_WIDTH, IMG_HEIGHT, 0, 1);
        stbi_image_free(img_data);

        // Copy to 2D input image
        for (int y = 0; y < IMG_HEIGHT; y++) {
            for (int x = 0; x < IMG_WIDTH; x++) {
                in_img[y][x] = resized[y * IMG_WIDTH + x];
            }
        }

        // Run the hardware function
        convolution(in_img, out_img);

        // Save output as PNG
        stbi_write_png(output_name, IMG_WIDTH, IMG_HEIGHT, 1, out_img, IMG_WIDTH);
        printf("Processed %s -> %s\n", input_name, output_name);
    }

    return 0;
}
