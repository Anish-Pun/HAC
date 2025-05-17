from pynq import Overlay, allocate
import numpy as np
from PIL import Image
import os
import time

# Constants
IMG_WIDTH = 128
IMG_HEIGHT = 128
INPUT_DIR = "images"
OUTPUT_DIR = "results"

print("Loading Overlay.")
overlay = Overlay("Convolution.xsa")
overlay.download()
print("Overlay Loaded.")

conv = overlay.convolution_0
os.makedirs(OUTPUT_DIR, exist_ok=True)

for i in range(1, 11):
    img_path = f"{INPUT_DIR}/input{i}.png"
    out_path = f"{OUTPUT_DIR}/output{i}.png"

    print(f"\nProcessing {img_path} -> {out_path}")

    # Load and preprocess image
    img = Image.open(img_path).convert("L").resize((IMG_WIDTH, IMG_HEIGHT))
    img_np = np.array(img, dtype=np.uint8)

    # Allocate buffers
    in_buf = allocate(shape=(IMG_HEIGHT, IMG_WIDTH), dtype=np.uint8)
    out_buf = allocate(shape=(IMG_HEIGHT, IMG_WIDTH), dtype=np.uint8)

    # Copy image data
    np.copyto(in_buf, img_np)

    # Write 64-bit physical addresses to 32-bit register space
    in_addr = int(in_buf.physical_address)
    out_addr = int(out_buf.physical_address)

    conv.write(0x10, in_addr & 0xFFFFFFFF)       # IN_IMG lower
    conv.write(0x14, (in_addr >> 32) & 0xFFFFFFFF)  # IN_IMG upper
    conv.write(0x1C, out_addr & 0xFFFFFFFF)      # OUT_IMG lower
    conv.write(0x20, (out_addr >> 32) & 0xFFFFFFFF) # OUT_IMG upper

    # Start IP
    conv.write(0x00, 0x01)

    # Wait for IP completion
    while (conv.read(0x00) & 0x2) == 0:
        pass

    # Debug output
    print("Center pixel:", out_buf[64, 64])
    print("Sum of output:", np.sum(out_buf))

    # Save result
    out_img = Image.fromarray(out_buf).convert("L")
    out_img.save(out_path)
    print(f"Saved {out_path}")
