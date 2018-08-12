#!/bin/bash
if [ $# != 2 ]; then
  echo "Usage: rsync.sh DIRNAME DEST"
  exit 1
fi

rsync --human-readable --verbose --recursive --partial --progress --times "$1" "$2"
