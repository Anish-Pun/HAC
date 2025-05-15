#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))

// Function to save profiling results to a markdown file
void save_profiling_results();

// Function to calculate the time difference in seconds
double get_time_diff(struct timespec start, struct timespec end)
{
    return (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / 1e9;
}

// Perform 2D convolution on the input image
// using the specified kernel and store the result in the output image
void convolution(unsigned char *input, unsigned char *output, int width, int height, int channels, const int *kernel, int kernel_size)
{
    int half_k = kernel_size / 2;
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            for (int c = 0; c < channels; c++)
            {
                int sum = 0;
                // Apply the kernel to the surrounding pixels
                for (int ky = -half_k; ky <= half_k; ky++)
                {
                    for (int kx = -half_k; kx <= half_k; kx++)
                    {
                        // Calculate the pixel coordinates
                        // Ensure they are within the image bounds
                        int ix = MIN(MAX(x + kx, 0), width - 1);
                        int iy = MIN(MAX(y + ky, 0), height - 1);
                        int pixel = input[(iy * width + ix) * channels + c];
                        int kval = kernel[(ky + half_k) * kernel_size + (kx + half_k)];
                        sum += pixel * kval;
                    }
                }
                // Clamp the result to the range [0, 255]
                // and store it in the output image
                sum = MIN(MAX(sum, 0), 255);
                output[(y * width + x) * channels + c] = (unsigned char)sum;
            }
        }
    }
}

// Perform max pooling on the input image
// using the specified pool size and store the result in the output image
void max_pooling(unsigned char *input, unsigned char *output, int width, int height, int channels, int pool_size)
{
    int half_pool = pool_size / 2;
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            for (int c = 0; c < channels; c++)
            {
                unsigned char max_val = 0;
                // Check the surrounding pixels within the pool size
                for (int ky = -half_pool; ky <= half_pool; ky++)
                {
                    for (int kx = -half_pool; kx <= half_pool; kx++)
                    {
                        // Calculate the pixel coordinates
                        // Ensure they are within the image bounds
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

// Perform min pooling on the input image
void min_pooling(unsigned char *input, unsigned char *output, int width, int height, int channels, int pool_size)
{
    int half_pool = pool_size / 2;
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            for (int c = 0; c < channels; c++)
            {
                unsigned char min_val = 255;
                // Check the surrounding pixels within the pool size
                for (int ky = -half_pool; ky <= half_pool; ky++)
                {
                    for (int kx = -half_pool; kx <= half_pool; kx++)
                    {
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
// Perform average pooling on the input image
void average_pooling(unsigned char *input, unsigned char *output, int width, int height, int channels, int pool_size)
{
    int half_pool = pool_size / 2;
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            for (int c = 0; c < channels; c++)
            {
                int sum = 0;
                int count = 0;
                // Sum all the pixel in the pooling window
                // and count the number of pixels
                for (int ky = -half_pool; ky <= half_pool; ky++)
                {
                    for (int kx = -half_pool; kx <= half_pool; kx++)
                    {
                        int ix = MIN(MAX(x + kx, 0), width - 1);
                        int iy = MIN(MAX(y + ky, 0), height - 1);
                        sum += input[(iy * width + ix) * channels + c];
                        count++;
                    }
                }
                // Compuite the average and assign it to the output pixel
                output[(y * width + x) * channels + c] = (unsigned char)(sum / count);
            }
        }
    }
}

int main()
{
    struct timespec start, end;
    FILE *profile = fopen("PictureResult/profile.md", "w");

    const char *input_path = "input.png";
    int width, height, channels;
    // Load the input image
    unsigned char *input_image = stbi_load(input_path, &width, &height, &channels, 0);
    if (!input_image)
    {
        printf("Failed to load image.\n");
        return 1;
    }
    // Allocate memory for the output image
    size_t img_size = width * height * channels * sizeof(unsigned char);
    unsigned char *result_image = malloc(img_size);

    // Define the kernel for convolution
    const int kernelWidth = 3;
    int host_kernel[] = {
        1, 0, -1,
        1, 0, -1,
        1, 0, -1};

    printf("Profiling application: ./image_processor_cpu\n");

    // Convolution
    clock_gettime(CLOCK_MONOTONIC, &start);
    convolution(input_image, result_image, width, height, channels, host_kernel, kernelWidth);
    stbi_write_jpg("PictureResult/convolution_result.png", width, height, channels, result_image, 90);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_conv = get_time_diff(start, end);

    // Max Pooling
    clock_gettime(CLOCK_MONOTONIC, &start);
    max_pooling(input_image, result_image, width, height, channels, 2);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_max = get_time_diff(start, end);
    stbi_write_jpg("PictureResult/max_pooling_result.png", width, height, channels, result_image, 90);

    // Min Pooling
    clock_gettime(CLOCK_MONOTONIC, &start);
    min_pooling(input_image, result_image, width, height, channels, 2);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_min = get_time_diff(start, end);
    stbi_write_jpg("PictureResult/min_pooling_result.png", width, height, channels, result_image, 90);

    // Average Pooling
    clock_gettime(CLOCK_MONOTONIC, &start);
    average_pooling(input_image, result_image, width, height, channels, 2);
    clock_gettime(CLOCK_MONOTONIC, &end);
    double t_avg = get_time_diff(start, end);
    stbi_write_jpg("PictureResult/average_pooling_result.png", width, height, channels, result_image, 90);

    // Print output file names
    printf("Afbeeldingen opgeslagen:\n");
    printf(" - convolution_result.png\n");
    printf(" - max_pooling_result.png\n");
    printf(" - min_pooling_result.png\n");
    printf(" - average_pooling_result.png\n\n");

    // Print profiling results to console
    printf(" Profiling Results\n");
    printf("| Operation         | Time (s) | Output File                |\n");
    printf("|-------------------|----------|----------------------------|\n");
    printf("| Convolution       | %7.4f   | convolution_result.png      |\n", t_conv);
    printf("| Max Pooling       | %7.4f   | max_pooling_result.png      |\n", t_max);
    printf("| Min Pooling       | %7.4f   | min_pooling_result.png      |\n", t_min);
    printf("| Average Pooling   | %7.4f   | average_pooling_result.png  |\n", t_avg);

    // Save the profiling results to a markdown file
    save_profiling_results(
        "PictureResult/profile.md",
        input_path,
        width,
        height,
        channels,
        t_conv,
        t_max,
        t_min,
        t_avg);
    // Free allocated memory
    stbi_image_free(input_image);
    free(result_image);

    return 0;
}

// Write profiling results to a markdown file
void save_profiling_results(
    const char *profile_path,
    const char *input_path,
    int width,
    int height,
    int channels,
    double t_conv,
    double t_max,
    double t_min,
    double t_avg)
{
    FILE *profile = fopen(profile_path, "w");
    if (!profile)
    {
        printf("Failed to open profiling file for writing.\n");
        return;
    }
    fprintf(profile, "# Profiling Results\n\n");
    fprintf(profile, "- **Image:** %s\n", input_path);
    fprintf(profile, "- **Dimensions:** %dx%d\n", width, height);
    fprintf(profile, "- **Channels:** %d\n\n", channels);
    fprintf(profile, "| Operation         | Time (s) | Output File                |\n");
    fprintf(profile, "|-------------------|----------|----------------------------|\n");
    fprintf(profile, "| Convolution       | %.4f   | convolution_result.png      |\n", t_conv);
    fprintf(profile, "| Max Pooling       | %.4f   | max_pooling_result.png      |\n", t_max);
    fprintf(profile, "| Min Pooling       | %.4f   | min_pooling_result.png      |\n", t_min);
    fprintf(profile, "| Average Pooling   | %.4f   | average_pooling_result.png  |\n", t_avg);
    fprintf(profile, "\nAll images saved in the 'PictureResult' directory.\n");
    fclose(profile);
}