# HLS

## Table of Contents
- [HLS](#hls)
  - [Table of Contents](#table-of-contents)
  - [Project Description](#project-description)
  - [Features](#features)
  - [Project Structure](#project-structure)
  - [How to Run](#how-to-run)
  - [Contributing](#contributing)

---

## Project Description

This repository contains hardware-accelerated image processing modules implemented using High-Level Synthesis (HLS). The project demonstrates how to accelerate common image operations such as 2D convolution and pooling (max, min, average) using HLS tools, targeting FPGA platforms.

---
## Features

- **Image Processing:**
  - 2D Convolution (with results saved under a new filename)
  - Max Pooling (with results saved)
  - Min Pooling (with results saved)
  - Average Pooling (with results saved) 

---

## Project Structure

```
HLS/
├── README.md
├── HLS_Convolution/                # Convolution module (HLS & integration)
│   ├── BlockDesign.pdf             # Block diagram for hardware design
│   ├── Convolution/                # Vitis HLS project files for convolution
│   ├── Images/                     # Input images for testing
│   ├── Include/                    # C source, headers, and stb image libraries
│   ├── JupyterConvolution/         # Jupyter notebooks for convolution analysis
│   └── Vivado/                     # Vivado project for hardware integration
├── HLS_Poolings/                   # Pooling modules (max, min, avg)
│   ├── BlockDesign.pdf             # Block diagram for pooling hardware
│   ├── Poolings_HLS/               # Vitis HLS project files for pooling
│   ├── Images/                     # Input/output images for pooling tests
│   ├── Include/                    # C source, headers, and stb image libraries
│   └── JupyterPoolings/            # Jupyter notebooks for pooling analysis
│   └── Vivado/                     # Vivado project for hardware integration
```
**Notes:**
- Each module folder contains its own HLS project, test images, and code.
- `Include/` holds both algorithm code and third-party libraries (e.g., stb).
- Jupyter notebooks demonstrate hardware acceleration and visualize results.
- Vivado folders are for hardware system integration and IP packaging.

---
## How to Run

See [detailed instructions](HLS.ipynb) for the project.


## Contributing
- [Anish](https://github.com/Anish-Pun)
- [Bowen](https://github.com/BowenS123)