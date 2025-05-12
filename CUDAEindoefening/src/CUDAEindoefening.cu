#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#include "/home/bowen/CUDAEindoefening/stb/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "/home/bowen/CUDAEindoefening/stb/stb_image_write.h"

// Convolution
__global__ void convolution_cuda(unsigned char* input, unsigned char* output, int width, int height, int channels, const int* kernel, int kernel_size) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;
    int half_k = kernel_size / 2;

    if (x >= width || y >= height) return;

    for (int c = 0; c < channels; c++) {
        int sum = 0;
        for (int ky = -half_k; ky <= half_k; ky++) {
            for (int kx = -half_k; kx <= half_k; kx++) {
                int ix = min(max(x + kx, 0), width - 1);
                int iy = min(max(y + ky, 0), height - 1);
                int pixel = input[(iy * width + ix) * channels + c];
                int kval = kernel[(ky + half_k) * kernel_size + (kx + half_k)];
                sum += pixel * kval;
            }
        }
        sum = min(max(sum, 0), 255);
        output[(y * width + x) * channels + c] = (unsigned char)sum;
    }
}

// Max Pooling
__global__ void max_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;

    int out_width = width / 2;
    int out_height = height / 2;

    if (x >= out_width || y >= out_height) return;

    for (int c = 0; c < channels; c++) {
        unsigned char max_val = 0;
        for (int ky = 0; ky < 2; ky++) {
            for (int kx = 0; kx < 2; kx++) {
                int ix = x * 2 + kx;
                int iy = y * 2 + ky;
                unsigned char pixel = input[(iy * width + ix) * channels + c];
                max_val = max(max_val, pixel);
            }
        }
        output[(y * out_width + x) * channels + c] = max_val;
    }
}

// Min Pooling
__global__ void min_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;

    int out_width = width / 2;
    int out_height = height / 2;

    if (x >= out_width || y >= out_height) return;

    for (int c = 0; c < channels; c++) {
        unsigned char min_val = 255;
        for (int ky = 0; ky < 2; ky++) {
            for (int kx = 0; kx < 2; kx++) {
                int ix = x * 2 + kx;
                int iy = y * 2 + ky;
                unsigned char pixel = input[(iy * width + ix) * channels + c];
                min_val = min(min_val, pixel);
            }
        }
        output[(y * out_width + x) * channels + c] = min_val;
    }
}

// Average Pooling
__global__ void average_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;

    int out_width = width / 2;
    int out_height = height / 2;

    if (x >= out_width || y >= out_height) return;

    for (int c = 0; c < channels; c++) {
        int sum = 0;
        for (int ky = 0; ky < 2; ky++) {
            for (int kx = 0; kx < 2; kx++) {
                int ix = x * 2 + kx;
                int iy = y * 2 + ky;
                sum += input[(iy * width + ix) * channels + c];
            }
        }
        output[(y * out_width + x) * channels + c] = sum / 4;
    }
}

int main() {
    const char* input_path = "input.png";
    int width, height, channels;

    // === Load input image ===
    unsigned char* input_image = stbi_load(input_path, &width, &height, &channels, 0);
    if (!input_image) {
        printf("Failed to load image.\n");
        return 1;
    }

    // === Initialize CUDA context to reduce timing spikes ===
    cudaFree(0);=

    // === Strip alpha channel if present ===
    if (channels == 4) {
        unsigned char* rgb_image = (unsigned char*)malloc(width * height * 3);
        for (int i = 0; i < width * height; i++) {
            rgb_image[i * 3 + 0] = input_image[i * 4 + 0];
            rgb_image[i * 3 + 1] = input_image[i * 4 + 1];
            rgb_image[i * 3 + 2] = input_image[i * 4 + 2];
        }
        free(input_image);
        input_image = rgb_image;
        channels = 3;
    }

    // === Kernel Definition ===
    const int kernelSize = 3;
    int host_kernel[kernelSize * kernelSize] = {
        1, 0, -1,
        1, 0, -1,
        1, 0, -1
    };

    // === Allocate memory sizes ===
    size_t img_size = width * height * channels * sizeof(unsigned char);
    size_t pooled_width = width / 2;
    size_t pooled_height = height / 2;
    size_t pooled_img_size = pooled_width * pooled_height * channels * sizeof(unsigned char);

    // === Device memory ===
    unsigned char *d_input, *d_output_full, *d_output_pooled;
    int* d_kernel;

    cudaMalloc(&d_input, img_size);
    cudaMalloc(&d_output_full, img_size);
    cudaMalloc(&d_output_pooled, pooled_img_size);
    cudaMalloc(&d_kernel, kernelSize * kernelSize * sizeof(int));

    cudaMemcpy(d_input, input_image, img_size, cudaMemcpyHostToDevice);
    cudaMemcpy(d_kernel, host_kernel, kernelSize * kernelSize * sizeof(int), cudaMemcpyHostToDevice);

    dim3 blockDim(32, 32);
    dim3 gridDim_full((width + blockDim.x - 1) / blockDim.x, (height + blockDim.y - 1) / blockDim.y);
    dim3 gridDim_pooled((pooled_width + blockDim.x - 1) / blockDim.x, (pooled_height + blockDim.y - 1) / blockDim.y);

    // === Host result buffers ===
    unsigned char* result_full = (unsigned char*)malloc(img_size);
    unsigned char* result_pooled = (unsigned char*)malloc(pooled_img_size);

    // === CONVOLUTION ===
    convolution_cuda<<<gridDim_full, blockDim>>>(d_input, d_output_full, width, height, channels, d_kernel, kernelSize);
    cudaDeviceSynchronize();
    cudaMemcpy(result_full, d_output_full, img_size, cudaMemcpyDeviceToHost);
    stbi_write_png("convolution.png", width, height, channels, result_full, width * channels);

    // === MAX POOLING ===
    max_pooling<<<gridDim_pooled, blockDim>>>(d_input, d_output_pooled, width, height, channels);
    cudaDeviceSynchronize();
    cudaMemcpy(result_pooled, d_output_pooled, pooled_img_size, cudaMemcpyDeviceToHost);
    stbi_write_png("max_pooling.png", pooled_width, pooled_height, channels, result_pooled, pooled_width * channels);

    // === MIN POOLING ===
    min_pooling<<<gridDim_pooled, blockDim>>>(d_input, d_output_pooled, width, height, channels);
    cudaDeviceSynchronize();
    cudaMemcpy(result_pooled, d_output_pooled, pooled_img_size, cudaMemcpyDeviceToHost);
    stbi_write_png("min_pooling.png", pooled_width, pooled_height, channels, result_pooled, pooled_width * channels);

    // === AVERAGE POOLING ===
    average_pooling<<<gridDim_pooled, blockDim>>>(d_input, d_output_pooled, width, height, channels);
    cudaDeviceSynchronize();
    cudaMemcpy(result_pooled, d_output_pooled, pooled_img_size, cudaMemcpyDeviceToHost);
    stbi_write_png("average_pooling.png", pooled_width, pooled_height, channels, result_pooled, pooled_width * channels);

    // === Output ===
    printf("Afbeeldingen opgeslagen:\n");
    printf(" - convolution.png\n");
    printf(" - max_pooling.png\n");
    printf(" - min_pooling.png\n");
    printf(" - average_pooling.png\n");

    // === Cleanup ===
    stbi_image_free(input_image);
    free(result_full);
    free(result_pooled);
    cudaFree(d_input);
    cudaFree(d_output_full);
    cudaFree(d_output_pooled);
    cudaFree(d_kernel);

    return 0;
}
