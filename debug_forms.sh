#!/bin/bash
path=$HOME/xfer 
rm status.log
touch status.log
TIME=$(date '+%F_%H:%M:%S');
echo log start >> status.log
echo ___debugFORM: $TIME ____ >> status.log

amidata=$(zenity --forms --title="AMI Tester" --text="AMI Parameters" --separator " "\
   --add-entry="Host Name" \
   --add-entry="Host Port" \
   --add-entry="Username" \
   --add-password="Password" \
   --add-entry="Agent Extn" \
   --add-entry="Context" \
   --add-entry="Xfr Etxn")

    case $? in
        0) $path/debug_repeat.sh $amidata ;;
        1) exit ;;
       -1) echo "An unexpected error has occurred." ;;
    esac


exit 0

