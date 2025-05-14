#ifndef HLS_PROCESS_IMAGES_H
#define HLS_PROCESS_IMAGES_H
#endif

#define MAX_HEIGHT 2048
#define MAX_WIDTH 2048

void convolution(unsigned char *input, unsigned char *output, int img_height, int img_width, char kernel[3][3]);
void max_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width);
void min_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width);
void average_pooling(unsigned char *input, unsigned char *output, int img_height, int img_width);
void process_images(unsigned char *input, unsigned char *conv_output, unsigned char *max_output, unsigned char *min_output, unsigned char *avg_output, int img_height, int img_width);
