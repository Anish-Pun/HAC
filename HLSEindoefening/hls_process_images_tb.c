#include <stdio.h>
#include <stdlib.h>
#include "hls_process_images.h"
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

int main() {
    int width, height, channels;
    unsigned char *input_image = stbi_load("input.png", &width, &height, &channels, 1);
    if (!input_image) {
        printf("Kan afbeelding niet laden.\n");
        return 1;
    }

    int pooled_width = width / 2;
    int pooled_height = height / 2;

    // Dynamisch geheugen alloceren voor de output images
    unsigned char *conv_image = (unsigned char*) malloc(width * height);
    unsigned char *max_image = (unsigned char*) malloc(pooled_width * pooled_height);
    unsigned char *min_image = (unsigned char*) malloc(pooled_width * pooled_height);
    unsigned char *avg_image = (unsigned char*) malloc(pooled_width * pooled_height);

    // Roep de HLS top-functie aan
    process_images(input_image, conv_image, max_image, min_image, avg_image, height, width);

    // Schrijf de verschillende outputs naar aparte bestanden
    stbi_write_png("output_conv.png", width, height, 1, conv_image, width);
    stbi_write_png("output_max.png", pooled_width, pooled_height, 1, max_image, pooled_width);
    stbi_write_png("output_min.png", pooled_width, pooled_height, 1, min_image, pooled_width);
    stbi_write_png("output_avg.png", pooled_width, pooled_height, 1, avg_image, pooled_width);

    printf("Test succesvol afgerond. Vier afbeeldingen aangemaakt.\n");

    stbi_image_free(input_image);
    free(conv_image);
    free(max_image);
    free(min_image);
    free(avg_image);

    return 0;
}
