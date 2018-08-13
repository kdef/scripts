#!/bin/bash

# Remove exif data to save a .10s of a MB:
# 
# $ exiftool -all= *.jpg
# $ ls -lh
# total 26M
# -rw-------. 1 kyle kyle 3.3M Jan 20 21:58 IMG_20150120_213231123.jpg
# -rw-------. 1 kyle kyle 3.4M Jan 20 21:56 IMG_20150120_213231123.jpg_original
# -rw-------. 1 kyle kyle 3.1M Jan 20 21:58 IMG_20150120_213241856.jpg
# -rw-------. 1 kyle kyle 3.3M Jan 20 21:55 IMG_20150120_213241856.jpg_original
# -rw-------. 1 kyle kyle 3.1M Jan 20 21:58 IMG_20150120_213310301.jpg
# -rw-------. 1 kyle kyle 3.2M Jan 20 21:56 IMG_20150120_213310301.jpg_original
# -rw-------. 1 kyle kyle 3.0M Jan 20 21:58 IMG_20150120_213319491.jpg
# -rw-------. 1 kyle kyle 3.1M Jan 20 21:55 IMG_20150120_213319491.jpg_original
# 
# Shrink the image proportionally such neither width nor height exceeds 2000px:
# 
# $ mogrify -resize 2000x2000 *.jpg
# $ ls -lh
# total 16M
# -rw-rw-r--. 1 kyle kyle 755K Jan 20 22:17 IMG_20150120_213231123.jpg
# -rw-------. 1 kyle kyle 3.4M Jan 20 21:56 IMG_20150120_213231123.jpg_original
# -rw-rw-r--. 1 kyle kyle 716K Jan 20 22:17 IMG_20150120_213241856.jpg
# -rw-------. 1 kyle kyle 3.3M Jan 20 21:55 IMG_20150120_213241856.jpg_original
# -rw-rw-r--. 1 kyle kyle 701K Jan 20 22:17 IMG_20150120_213310301.jpg
# -rw-------. 1 kyle kyle 3.2M Jan 20 21:56 IMG_20150120_213310301.jpg_original
# -rw-rw-r--. 1 kyle kyle 638K Jan 20 22:17 IMG_20150120_213319491.jpg
# -rw-------. 1 kyle kyle 3.1M Jan 20 21:55 IMG_20150120_213319491.jpg_original

exiftool -all= "$1"
mogrify -resize 2000x2000 "$1"
