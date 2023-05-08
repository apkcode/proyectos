#!/bin/bash

NOW=$(TZ='Europe/Athens' date +%Y-%m-%d_%H%M)
FILENAME=/home/lugosi/capturas/image_$NOW.png
STREAMURL=http://192.168.1.97:8000/stream.mjpg

ffmpeg -i "$STREAMURL" -f image2 -vframes 1 "$FILENAME"
#convert "$FILENAME" -gravity SouthEast -pointsize 22 -fill white -annotate +10+10  "$NOW" "$FILENAME"
