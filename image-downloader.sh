#!/bin/bash

mkdir images

grep "/uploads/images/[a-zA-Z0-9.]\+" -r . -o --no-filename | awk '{ print "https://worldanvil.com" $1 }' | parallel wget -P ./images
