#!/bin/bash

MAX_SIZE=5000000
size=$(stat -c%s "$1")
convert "$1" -strip -interlace Plane "$1"
# convert "$1" -strip -interlace Plane -quality 80% "$1"
while [ $size -ge $MAX_SIZE ] ; do
        echo converting $1
        convert "$1" -resize 90% "$1"
        size=$(stat -c%s "$1")
done
echo $1 ready: `stat -c%s "$1"`

