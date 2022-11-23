#! /bin/bash

toJpg(){
    find ${1} -name "*.CR2" | parallel -I% --max-args 1 convert % -sampling-factor 4:2:0 -strip  -quality 85 -interlace JPEG -colorspace sRGB %.jpg
}