#!/bin/bash

hostname=$1
port=$2
user=$3
password=$4
extn=$5
context=$6
toextn=$7
aamidata=$@
echo __repeat start_____
echo inputvav: $aamidata >> status.log
echo $1 >> status.log 
echo $2 >> status.log
echo $3 >> status.log
echo $4 >> status.log
echo $5 >> status.log
echo $6 >> status.log
echo $7 >> status.log
echo $? is at the moment  >> status.log
echo ----repeat end--- >> status.log
zenity --question \
--title="Transfer call" \
--text "Context:$6 Extn:$7" \
--ok-label="Cancel" \
--cancel-label="Transfer"
case $? in
        1) ./xfer.expect $aamidata ;;
	0) exit ;;
       -1) echo "Error500" ;;
    esac
done

exit 0

