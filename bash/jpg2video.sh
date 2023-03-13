#!/bin/bash


sudo apt install ffmpeg v4l2loopback-dkms


ffmpeg -re -loop 1 -i ./kurwasynek.jpeg -vf format=yuv420p -f v4l2 /dev/video0

