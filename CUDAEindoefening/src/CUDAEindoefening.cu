#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#include "/home/bowen/CUDAEindoefening/stb/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "/home/bowen/CUDAEindoefening/stb/stb_image_write.h"

// convolution
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
__global__ void max_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels, int pool_size) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;
    int half_pool = pool_size / 2;

    if (x >= width || y >= height) return;

    for (int c = 0; c < channels; c++) {
        unsigned char max_val = 0;
        for (int ky = -half_pool; ky <= half_pool; ky++) {
            for (int kx = -half_pool; kx <= half_pool; kx++) {
                int ix = min(max(x + kx, 0), width - 1);
                int iy = min(max(y + ky, 0), height - 1);
                unsigned char pixel = input[(iy * width + ix) * channels + c];
                max_val = max(max_val, pixel);
            }
        }
        output[(y * width + x) * channels + c] = max_val;
    }
}

// Min Pooling
__global__ void min_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels, int pool_size) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;
    int half_pool = pool_size / 2;

    if (x >= width || y >= height) return;

    for (int c = 0; c < channels; c++) {
        unsigned char min_val = 255;
        for (int ky = -half_pool; ky <= half_pool; ky++) {
            for (int kx = -half_pool; kx <= half_pool; kx++) {
                int ix = min(max(x + kx, 0), width - 1);
                int iy = min(max(y + ky, 0), height - 1);
                unsigned char pixel = input[(iy * width + ix) * channels + c];
                min_val = min(min_val, pixel);
            }
        }
        output[(y * width + x) * channels + c] = min_val;
    }
}

// Average Pooling
__global__ void average_pooling(unsigned char* input, unsigned char* output, int width, int height, int channels, int pool_size) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;
    int half_pool = pool_size / 2;

    if (x >= width || y >= height) return;

    for (int c = 0; c < channels; c++) {
        int sum = 0;
        int count = 0;
        for (int ky = -half_pool; ky <= half_pool; ky++) {
            for (int kx = -half_pool; kx <= half_pool; kx++) {
                int ix = min(max(x + kx, 0), width - 1);
                int iy = min(max(y + ky, 0), height - 1);
                sum += input[(iy * width + ix) * channels + c];
                count++;
            }
        }
        unsigned char avg_val = sum / count;
        output[(y * width + x) * channels + c] = avg_val;
    }
}

int main() {
    const char* input_path = "input.png";
    int width, height, channels;
    unsigned char* input_image = stbi_load(input_path, &width, &height, &channels, 0);
    if (!input_image) {
        printf("Failed to load image.\n");
        return 1;
    }

    const int kernelWidth = 3;
    const int kernelHeight = 3;
    int host_kernel[kernelHeight * kernelWidth] = {
        1, 0, -1,
        1, 0, -1,
        1, 0, -1
    };

    size_t img_size = width * height * channels * sizeof(unsigned char);
    unsigned char *d_input, *d_output, *d_pool_output;
    int* d_kernel;

    cudaMalloc((void**)&d_input, img_size);
    cudaMalloc((void**)&d_output, img_size);
    cudaMalloc((void**)&d_pool_output, img_size);
    cudaMalloc((void**)&d_kernel, kernelWidth * kernelHeight * sizeof(int));

    cudaMemcpy(d_input, input_image, img_size, cudaMemcpyHostToDevice);
    cudaMemcpy(d_kernel, host_kernel, kernelWidth * kernelHeight * sizeof(int), cudaMemcpyHostToDevice);

    dim3 blockDim(16, 16);
    dim3 gridDim((width + 15) / 16, (height + 15) / 16);

    // Perform Convolution
    convolution_cuda<<<gridDim, blockDim>>>(d_input, d_output, width, height, channels, d_kernel, kernelWidth);
    cudaDeviceSynchronize();

    // === CONVOLUTION ===
    unsigned char* convolution_result = (unsigned char*)malloc(img_size);
    cudaMemcpy(convolution_result, d_output, img_size, cudaMemcpyDeviceToHost);
    stbi_write_jpg("convolution.jpg", width, height, channels, convolution_result, 90);

    // Allocate host memory for pooling results
    unsigned char* result_image = (unsigned char*)malloc(img_size);

    // === MAX POOLING ===
    max_pooling<<<gridDim, blockDim>>>(d_input, d_pool_output, width, height, channels, 2);
    cudaMemcpy(result_image, d_pool_output, img_size, cudaMemcpyDeviceToHost);
    stbi_write_jpg("max_pooling.jpg", width, height, channels, result_image, 90);

    // === MIN POOLING ===
    min_pooling<<<gridDim, blockDim>>>(d_input, d_pool_output, width, height, channels, 2);
    cudaMemcpy(result_image, d_pool_output, img_size, cudaMemcpyDeviceToHost);
    stbi_write_jpg("min_pooling.jpg", width, height, channels, result_image, 90);

    // === AVERAGE POOLING ===
    average_pooling<<<gridDim, blockDim>>>(d_input, d_pool_output, width, height, channels, 2);
    cudaMemcpy(result_image, d_pool_output, img_size, cudaMemcpyDeviceToHost);
    stbi_write_jpg("average_pooling.jpg", width, height, channels, result_image, 90);

    printf("Afbeeldingen opgeslagen:\n");
    printf(" - convolution.jpg\n");
    printf(" - max_pooling.jpg\n");
    printf(" - min_pooling.jpg\n");
    printf(" - average_pooling.jpg\n");

    // Cleanup
    stbi_image_free(input_image);
    free(result_image);
    cudaFree(d_input);
    cudaFree(d_output);
    cudaFree(d_pool_output);
    cudaFree(d_kernel);

    return 0;
}
