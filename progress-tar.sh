#!/bin/bash
if [ $# != 2 ]; then
  echo "Usage: progress-tar.sh DIRNAME DEST"
  exit 1
fi

name=$(basename "$1")

tar cf - "$1" -P | pv -s $(du -sb "$1" | awk '{print $1}') | gzip > "$2/$name.tar.gz"
