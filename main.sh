#!/bin/bash
path=$HOME/xfer
TIME=$(date '+%F_%H:%M:%S');

echo ___Main: $TIME ____ >> status.log

response=`zenity --height=240 --width=270 --list --radiolist --text 'Asterisk Manager Tester' --column 'Select' --column 'Choose Test Option' TRUE "New" FALSE "Debug" FALSE "Repeat" FALSE "LOGfile"`

case $response in

  New)
    $path/forms.sh
    exit 0
    ;;

  Debug)
    $path/debug_forms.sh
    exit 0
    ;;

  Repeat)
    $path/repeat.sh $(< $path/key)
exit 0    ;;

LOGfile)
    $path/status.sh
exit 0    ;;
  esac


exit 0
