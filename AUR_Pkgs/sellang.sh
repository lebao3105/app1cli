#!/bin/bash
## Script that ask the user for replacing app1 language
## Current available langs: English and Vietnamese

# Create some variable
DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0

# Create a dialog
dialog \
    --title "Language Chooser" \
    --clear --cancel-label "Exit" \
    --menu "Please choose the language you want to use for app1:" \
    $HEIGHT $WIDTH 4 \
    "1" "English (Default)" \
    "2" "Vietnamese" 2>&1 1>&3

exit_status=$?
case $exit_status in
    $DIALOG_CANCEL)
        clear
        echo "Canceled. Now we will compile the code in English."
        ;;
    $DIALOG_ESC)
        clear
        echo "Canceled. Now we will compile the code in English."
        ;;
esac
case $selection in
    1)
        clear
        echo "Now we will compile the code in English."
        ;;
    2)
        clear
        echo "Now we will compile the code in Vietnamese."
        sed -i 's/lang_en/lang_vi/g' "${srcdir}/*.pas"
        ;;
esac


