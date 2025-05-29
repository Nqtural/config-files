#!/bin/bash
# Usage: feh.sh <url>

mkdir -p /tmp/newsboat
filename="$(date +%s%N).png"
[ -n "$1" ] && wget "$1" -qP "/tmp/newsboat/$filename" && feh -F "/tmp/newsboat/$filename"
