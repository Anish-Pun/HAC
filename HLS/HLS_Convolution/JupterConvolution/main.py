from pynq import Overlay, allocate
import numpy as np
from PIL import Image
import os
import time

# Constants
IMG_WIDTH = 128
IMG_HEIGHT = 128
UPSCALE_FACTOR = 4  
INPUT_DIR = "images"
OUTPUT_DIR = "results"
os.makedirs(OUTPUT_DIR, exist_ok=True)

print("Loading Overlay.")
overlay = Overlay("Convolution.xsa")
overlay.download()
print("Overlay Loaded.")

conv = overlay.convolution_0

for i in range(1, 11):
    img_path = f"{INPUT_DIR}/input{i}.png"
    out_path = f"{OUTPUT_DIR}/output{i}.png"

    print(f"\nProcessing {img_path} -> {out_path}")

    try:
        img = Image.open(img_path).convert("L").resize((IMG_WIDTH, IMG_HEIGHT))
        img_np = np.array(img, dtype=np.uint8)
    except Exception as e:
        print(f"❌ Error loading image: {e}")
        continue

    in_buf = allocate(shape=(IMG_HEIGHT, IMG_WIDTH), dtype=np.uint8)
    out_buf = allocate(shape=(IMG_HEIGHT, IMG_WIDTH), dtype=np.uint8)

    np.copyto(in_buf, img_np)

    in_addr = int(in_buf.physical_address)
    out_addr = int(out_buf.physical_address)

    conv.write(0x10, in_addr & 0xFFFFFFFF)
    conv.write(0x14, (in_addr >> 32) & 0xFFFFFFFF)
    conv.write(0x1C, out_addr & 0xFFFFFFFF)
    conv.write(0x20, (out_addr >> 32) & 0xFFFFFFFF)

    conv.write(0x00, 0x01)

    timeout = 1000000
    while (conv.read(0x00) & 0x2) == 0 and timeout > 0:
        timeout -= 1

    if timeout == 0:
        print("❌ Timeout waiting for IP to finish.")
        continue

    print("Center pixel:", out_buf[64, 64])
    print("Sum of output:", np.sum(out_buf))

    def upscale(buf):
        return np.kron(buf, np.ones((UPSCALE_FACTOR, UPSCALE_FACTOR), dtype=np.uint8))

    Image.fromarray(upscale(out_buf)).convert("L").save(out_path)
    print(f"✅ Saved {out_path}")
