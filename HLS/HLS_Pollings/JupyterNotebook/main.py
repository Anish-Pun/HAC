from pynq import Overlay, allocate
import numpy as np
from PIL import Image
import os

# Constants
IMG_WIDTH = 64
IMG_HEIGHT = 64
POOL_WIDTH = 32
POOL_HEIGHT = 32
UPSCALE_FACTOR = 8  # final image = 32x8 = 256
INPUT_DIR = "images"
OUTPUT_DIR = "results"

print("🔄 Loading Overlay...")
overlay = Overlay("Pooling.xsa")
overlay.download()
print("✅ Overlay Loaded.")

poll = overlay.pollings_0
os.makedirs(OUTPUT_DIR, exist_ok=True)

for i in range(1, 11):
    img_path = f"{INPUT_DIR}/input{i}.png"
    out_max = f"{OUTPUT_DIR}/max_pool_{i}.png"
    out_min = f"{OUTPUT_DIR}/min_pool_{i}.png"
    out_avg = f"{OUTPUT_DIR}/avg_pool_{i}.png"

    print(f"\n📥 Processing {img_path}")

    try:
        img = Image.open(img_path).convert("L").resize((IMG_WIDTH, IMG_HEIGHT))
        img_np = np.array(img, dtype=np.uint8)
    except Exception as e:
        print(f"❌ Error loading image: {e}")
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
        print("❌ Timeout waiting for IP to finish.")
        continue

    print("✅ IP done, saving images...")

    def upscale(buf):
        return np.kron(buf, np.ones((UPSCALE_FACTOR, UPSCALE_FACTOR), dtype=np.uint8))

    Image.fromarray(upscale(max_buf)).save(out_max)
    Image.fromarray(upscale(min_buf)).save(out_min)
    Image.fromarray(upscale(avg_buf)).save(out_avg)

    print(f"✅ Saved: {out_max}, {out_min}, {out_avg}")
