#include "hls_process_images.hpp"

void process_images(hls::stream < pixel_t > & in_stream, hls::stream < pixel_t > & conv_out, hls::stream < pixel_t > & max_out, hls::stream < pixel_t > & min_out, hls::stream < pixel_t > & avg_out, int img_height, int img_width) {
  #pragma HLS INTERFACE axis port = in_stream
  #pragma HLS INTERFACE axis port = conv_out
  #pragma HLS INTERFACE axis port = max_out
  #pragma HLS INTERFACE axis port = min_out
  #pragma HLS INTERFACE axis port = avg_out

  #pragma HLS INTERFACE s_axilite port = img_height bundle = control
  #pragma HLS INTERFACE s_axilite port = img_width bundle = control
  #pragma HLS INTERFACE s_axilite port =return bundle = control

  unsigned char image[MAX_HEIGHT][MAX_WIDTH];
  unsigned char conv_result[MAX_HEIGHT][MAX_WIDTH];
  unsigned char max_result[MAX_HEIGHT / 2][MAX_WIDTH / 2];
  unsigned char min_result[MAX_HEIGHT / 2][MAX_WIDTH / 2];
  unsigned char avg_result[MAX_HEIGHT / 2][MAX_WIDTH / 2];

  // Lees input image stream in array
  for (int y = 0; y < img_height; y++) {
    for (int x = 0; x < img_width; x++) {
      #pragma HLS PIPELINE
      pixel_t pix = in_stream.read();
      image[y][x] = pix.data;
    }
  }

  // Convolution kernel
  char kernel[3][3] = {
      { 1, 0, -1 },
      { 1, 0, -1 },
      { 1, 0, -1 }
  };

  // Convolution
  for (int y = 1; y < img_height - 1; y++) {
    for (int x = 1; x < img_width - 1; x++) {
      #pragma HLS PIPELINE
      int sum = 0;
      for (int ky = -1; ky <= 1; ky++) {
        for (int kx = -1; kx <= 1; kx++) {
          sum += image[y + ky][x + kx] * kernel[ky + 1][kx + 1];
        }
      }
      if (sum < 0) sum = 0;
      if (sum > 255) sum = 255;
      conv_result[y][x] = (unsigned char) sum;
    }
  }

  // Pooling
  for (int y = 0; y < img_height - 1; y += 2) {
    for (int x = 0; x < img_width - 1; x += 2) {
      #pragma HLS PIPELINE

      unsigned char v1 = image[y][x];
      unsigned char v2 = image[y][x + 1];
      unsigned char v3 = image[y + 1][x];
      unsigned char v4 = image[y + 1][x + 1];

      // Max
      unsigned char maxv = v1;
      if (v2 > maxv) maxv = v2;
      if (v3 > maxv) maxv = v3;
      if (v4 > maxv) maxv = v4;
      max_result[y / 2][x / 2] = maxv;

      // Min
      unsigned char minv = v1;
      if (v2 < minv) minv = v2;
      if (v3 < minv) minv = v3;
      if (v4 < minv) minv = v4;
      min_result[y / 2][x / 2] = minv;

      // Average
      avg_result[y / 2][x / 2] = (v1 + v2 + v3 + v4) / 4;
    }
  }

  // Stream output: convolution
  for (int y = 0; y < img_height; y++) {
    for (int x = 0; x < img_width; x++) {
      #pragma HLS PIPELINE
      pixel_t p;
      p.data = conv_result[y][x];
      p.keep = -1;
      p.strb = -1;
      p.last = (y == img_height - 1 && x == img_width - 1);
      conv_out.write(p);
    }
  }

  // Stream output: max, min, avg
  int out_h = img_height / 2;
  int out_w = img_width / 2;

  for (int y = 0; y < out_h; y++) {
    for (int x = 0; x < out_w; x++) {
      #pragma HLS PIPELINE
      bool last = (y == out_h - 1 && x == out_w - 1);

      pixel_t max_p, min_p, avg_p;
      max_p.data = max_result[y][x];
      min_p.data = min_result[y][x];
      avg_p.data = avg_result[y][x];

      max_p.keep = min_p.keep = avg_p.keep = -1;
      max_p.strb = min_p.strb = avg_p.strb = -1;
      max_p.last = min_p.last = avg_p.last = last;

      max_out.write(max_p);
      min_out.write(min_p);
      avg_out.write(avg_p);
    }
  }
}
