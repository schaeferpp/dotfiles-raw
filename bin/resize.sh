#!/bin/bash

MAX_SIZE=250000
size=$(stat -c%s "$1")
convert "$1" -strip -interlace Plane -gaussian-blur 0.05 -quality 85% "$1"
while [ $size -ge $MAX_SIZE ] ; do
        echo converting $1
        convert "$1" -resize 90% "$1"
        size=$(stat -c%s "$1")
done
echo $1 ready: `stat -c%s "$1"`

