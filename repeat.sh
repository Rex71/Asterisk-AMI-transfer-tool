#!/bin/bash
path=$HOME/xfer
TIME=$(date '+%F_%H:%M:%S');
echo $@ > key
hostname=$1
port=$2
user=$3
password=$4
extn=$5
context=$6
toextn=$7
aamidata=$@

zenity --question \
--title="Transfer Call" \
--window-icon=voip.png \
--text "Context:$6 Extn:$7" \
--ok-label="Cancel" \
--cancel-label="Transfer"
case $? in
        1) $path/xfer.expect $aamidata ;;
	0) exit 0 ;;
       -1) echo "Error 500" ;;
    esac


exit 0

