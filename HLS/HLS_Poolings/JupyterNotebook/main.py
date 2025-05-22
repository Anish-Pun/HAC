from pynq import Overlay, allocate
import numpy as np
from PIL import Image
import os

# Constants
IMG_WIDTH = 64
IMG_HEIGHT = 64
POOL_WIDTH = 32
POOL_HEIGHT = 32
UPSCALE_FACTOR = 16 
INPUT_DIR = "images"
OUTPUT_DIR = "results"

# Pooling-specific folders
MAX_DIR = os.path.join(OUTPUT_DIR, "max_pooling")
MIN_DIR = os.path.join(OUTPUT_DIR, "min_pooling")
AVG_DIR = os.path.join(OUTPUT_DIR, "avg_pooling")
os.makedirs(MAX_DIR, exist_ok=True)
os.makedirs(MIN_DIR, exist_ok=True)
os.makedirs(AVG_DIR, exist_ok=True)

print("\U0001F504 Loading Overlay...")
overlay = Overlay("Pooling.xsa")
overlay.download()
print("\u2705 Overlay Loaded.")

poll = overlay.pollings_0

for i in range(1, 11):
    img_path = f"{INPUT_DIR}/input{i}.png"
    out_max = os.path.join(MAX_DIR, f"max_pool_{i}.png")
    out_min = os.path.join(MIN_DIR, f"min_pool_{i}.png")
    out_avg = os.path.join(AVG_DIR, f"avg_pool_{i}.png")

    print(f"\n\U0001F4E5 Processing {img_path}")

    try:
        img = Image.open(img_path).convert("L").resize((IMG_WIDTH, IMG_HEIGHT))
        img_np = np.array(img, dtype=np.uint8)
    except Exception as e:
        print(f"\u274C Error loading image: {e}")
        continue

    in_buf = allocate(shape=(IMG_HEIGHT, IMG_WIDTH), dtype=np.uint8)
    max_buf = allocate(shape=(POOL_HEIGHT, POOL_WIDTH), dtype=np.uint8)
    min_buf = allocate(shape=(POOL_HEIGHT, POOL_WIDTH), dtype=np.uint8)
    avg_buf = allocate(shape=(POOL_HEIGHT, POOL_WIDTH), dtype=np.uint8)

    np.copyto(in_buf, img_np)

    poll.write(0x10, in_buf.physical_address & 0xFFFFFFFF)
    poll.write(0x14, (in_buf.physical_address >> 32))

    poll.write(0x1C, max_buf.physical_address & 0xFFFFFFFF)
    poll.write(0x20, (max_buf.physical_address >> 32))

    poll.write(0x28, min_buf.physical_address & 0xFFFFFFFF)
    poll.write(0x2C, (min_buf.physical_address >> 32))

    poll.write(0x34, avg_buf.physical_address & 0xFFFFFFFF)
    poll.write(0x38, (avg_buf.physical_address >> 32))

    poll.write(0x00, 0x01)  # Start

    timeout = 1000000
    while (poll.read(0x00) & 0x2) == 0 and timeout > 0:
        timeout -= 1

    if timeout == 0:
        print("\u274C Timeout waiting for IP to finish.")
        continue

    print("\u2705 IP done, saving images...")

    def upscale(buf):
        return np.kron(buf, np.ones((UPSCALE_FACTOR, UPSCALE_FACTOR), dtype=np.uint8))

    Image.fromarray(upscale(max_buf)).save(out_max)
    Image.fromarray(upscale(min_buf)).save(out_min)
    Image.fromarray(upscale(avg_buf)).save(out_avg)

    print(f"\u2705 Saved: {out_max}, {out_min}, {out_avg}")
