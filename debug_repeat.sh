#!/bin/bash
path=$HOME/xfer
TIME=$(date '+%F_%H:%M:%S');
echo $@ > temp.log
echo ___Tx: $TIME _debug___ >> status.log
hostname=$1
port=$2
user=$3
password=$4
extn=$5
context=$6
toextn=$7
aamidata=$@
echo __Ready to Transfer start___debug__ >> status.log
echo AMI_Var: $aamidata >> status.log
echo $1 >> status.log 
echo $2 >> status.log
echo $3 >> status.log
echo $4 >> status.log
echo $5 >> status.log
echo $6 >> status.log
echo $7 >> status.log

zenity --question \
--title="Transfer Call" \
--window-icon=voip.png \
--text "Context:$6 Extn:$7" \
--ok-label="Cancel" \
--cancel-label="Transfer"
case $? in
        1) $path/debug_xfer.expect $aamidata;;
	0) exit 0 ;;
       -1) $path/status.sh ;;
    esac

exit 0

