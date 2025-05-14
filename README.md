# CUDA_Eindoefening

## Table of Contents
- [Project Description](#projectdescription)
- [Features](#features)
- [Project Structure](#requirements)
- [Contributing](#contributing)


## ProjectDescription

This project is a CUDA application developed for the NVIDIA Jetson Nano. It processes 640x480 images and applies several image processing operations using both CUDA and standard C. The goal is to compare the performance and efficiency of GPU-accelerated code versus CPU-only code.

---

## Features

- **Image Processing:**
  - 2D Convolution (with results saved under a new filename)
  - Max Pooling (with results saved)
  - Min Pooling (with results saved)
  - Average Pooling
- **Performance Profiling:**
  - Measure and compare execution time for each operation (CUDA vs. C).
- **Image Handling:**
  - Load and save images using `stb_image` and `stb_image_write`.

---
## Requirements

- NVIDIA Jetson Nano
- C Compiler (`gcc`) for standard C code
- CUDA Compiler (`nvcc`) for CUDA code
- `stb_image.h` and `stb_image_write.h` for image I/O

---

## Contributing
- [Anish](https://github.com/Anish-Pun)
- [Bowen](https://github.com/BowenS123)