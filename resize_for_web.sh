#!/bin/bash
if [ $# != 4 ]; then
  echo "Usage: $0 WIDTH INPUT OUTPUT"
  exit 1
fi

OUTPUT_WIDTH="$1"
INPUT_PATH="$2"
OUTPUT_PATH="$3"

mogrify -path "$OUTPUT_PATH" -filter Triangle -define filter:support=2 -thumbnail "$OUTPUT_WIDTH" -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB "$INPUT_PATH"
