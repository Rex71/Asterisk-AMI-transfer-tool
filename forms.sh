#!/bin/bash
 path=$HOME/xfer
amidata=$(zenity --forms --title="AMI Tester" --text="AMI Parameters" --separator " "\
   --add-entry="Host Name" \
   --add-entry="Host Port" \
   --add-entry="Username" \
   --add-password="Password" \
   --add-entry="Agent Extn" \
   --add-entry="Context" \
   --add-entry="Xfr Etxn")

    case $? in
        0) $path/repeat.sh $amidata ;;
        1) exit ;;
       -1) echo "An unexpected error has occurred." ;;
    esac

exit 0

