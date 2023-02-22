#!/bin/bash

cd /usr/local/openpose
openpose.bin --image_dir my_test/ --write_json /output --display 0 --write_images /output/
