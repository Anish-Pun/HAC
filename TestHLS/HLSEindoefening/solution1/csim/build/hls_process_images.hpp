#ifndef HLS_PROCESS_IMAGES_HPP
#define HLS_PROCESS_IMAGES_HPP
#endif

#include <hls_stream.h>
#include <ap_axi_sdata.h>

#define MAX_HEIGHT 1080
#define MAX_WIDTH 1920

typedef ap_axiu < 8, 1, 1, 1 > pixel_t;

void process_images(hls::stream < pixel_t > & in_stream, hls::stream < pixel_t > & conv_out, hls::stream < pixel_t > & max_out, hls::stream < pixel_t > & min_out, hls::stream < pixel_t > & avg_out, int img_height, int img_width);
