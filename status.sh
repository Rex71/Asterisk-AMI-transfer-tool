#!/bin/bash
amidata=$@
path=$HOME/xfer
TIME=$(date '+%F_%H:%M:%S');

info=$(
zenity --title="Debug $TIME" \
--height=800 \
--width=800 \
--text-info \
--filename=$path/status.log
)

exit 0