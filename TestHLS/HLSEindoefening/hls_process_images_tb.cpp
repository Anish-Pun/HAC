#include <stdio.h>
#include <stdlib.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"
#include "hls_process_images.hpp"

typedef ap_axiu < 8, 1, 1, 1 > pixel_t;

int main() {
  int width, height, channels;
  unsigned char * input_image = stbi_load("input.png", & width, & height, & channels, 1);
  if (!input_image) {
    printf("Kan afbeelding niet laden.\n");
    return 1;
  }

  int img_size = width * height;
  int pooled_width = width / 2;
  int pooled_height = height / 2;
  int pooled_size = pooled_width * pooled_height;

  // AXI streams
  hls::stream < pixel_t > in_stream;
  hls::stream < pixel_t > conv_stream;
  hls::stream < pixel_t > max_stream;
  hls::stream < pixel_t > min_stream;
  hls::stream < pixel_t > avg_stream;

  // Input data in stream zetten
  for (int i = 0; i < img_size; ++i) {
    pixel_t pix;
    pix.data = input_image[i];
    pix.keep = -1;
    pix.strb = -1;
    pix.user = 0;
    pix.last = (i == img_size - 1) ? 1 : 0;
    pix.id = 0;
    pix.dest = 0;
    in_stream.write(pix);
  }

  // Roep de HLS top-functie aan
  process_images(in_stream, conv_stream, max_stream, min_stream, avg_stream, height, width);

  // Dynamisch geheugen alloceren voor de output images
  unsigned char * conv_image = (unsigned char * ) malloc(img_size);
  unsigned char * max_image = (unsigned char * ) malloc(pooled_size);
  unsigned char * min_image = (unsigned char * ) malloc(pooled_size);
  unsigned char * avg_image = (unsigned char * ) malloc(pooled_size);

  // Resultaat uit de streams halen
  for (int i = 0; i < img_size; ++i) {
    conv_image[i] = conv_stream.read().data;
  }

  for (int i = 0; i < pooled_size; ++i) {
    max_image[i] = max_stream.read().data;
    min_image[i] = min_stream.read().data;
    avg_image[i] = avg_stream.read().data;
  }

  // Schrijf de verschillende outputs naar aparte bestanden
  if (!stbi_write_png("output_conv.png", width, height, 1, conv_image, width))
    printf("[WARN] Fout bij schrijven van output_conv.png\n");
  if (!stbi_write_png("output_max.png", pooled_width, pooled_height, 1, max_image, pooled_width))
    printf("[WARN] Fout bij schrijven van output_max.png\n");
  if (!stbi_write_png("output_min.png", pooled_width, pooled_height, 1, min_image, pooled_width))
    printf("[WARN] Fout bij schrijven van output_min.png\n");
  if (!stbi_write_png("output_avg.png", pooled_width, pooled_height, 1, avg_image, pooled_width))
    printf("[WARN] Fout bij schrijven van output_avg.png\n");

  printf("[SUCCESS] Vier uitvoerafbeeldingen zijn opgeslagen.\n");

  stbi_image_free(input_image);
  free(conv_image);
  free(max_image);
  free(min_image);
  free(avg_image);

  return 0;
}
