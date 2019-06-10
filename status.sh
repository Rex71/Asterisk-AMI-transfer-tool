#!/bin/bash
amidata=$@
path=$HOME/xfer
TIME=$(date '+%F_%H:%M:%S');

info=$(
zenity --title="Debug $TIME" \
--height=800 \
--width=800 \
--text-info \
--ok-label="OK" \
--cancel-label="Reload" \
--filename=$path/status.log
)

case $? in
        0) exit 0 ;;
        1) $path/status.sh ;;
       -1) echo "An unexpected error has occurred." ;;
esac

exit 0
