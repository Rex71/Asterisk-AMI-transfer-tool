#!/bin/bash
# 

TIME=$(date '+%F_%H:%M:%S');
echo ___ $TIME ____ >> status.log
echo inputvav: $amidata >> status.log
echo ------- >> status.log

amidata=$(zenity --forms --title="AMI Tester" --text="AMI Parameters" --separator " "\
   --add-entry="Host Name" \
   --add-entry="Host Port" \
   --add-entry="Username" \
   --add-password="Password" \
   --add-entry="Context" \
   --add-entry="Xfr Etxn")

    case $? in
        0) ./repeat.sh $amidata ;;
        1) exit ;;
        -1) echo "An unexpected error has occurred." ;;
    esac
done
echo expect executed : $amidata >> status.log

exit 0
