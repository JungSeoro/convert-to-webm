#!/bin/bash

INPUT_DIR=$(dirname $(realpath $1))
INPUT_FILE=$(basename $1)
OUTPUT_DIR=$(dirname $(realpath $2))
OUTPUT_FILE=$(basename $2)

docker run --rm -it -v $INPUT_DIR:/vol/input -v $OUTPUT_DIR:/vol/output jungseoro/ffmpeg sh -c "ffmpeg -i /vol/input/$INPUT_FILE /vol/output/$OUTPUT_FILE"