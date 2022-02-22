#!/bin/bash
if ! command -v whiptail &> /dev/null
then
    pacman -Syy whiptail
    break
else 
    break
fi

if (whiptail --title "Choose language" \
        --mgsbox "This widzard will help you choose your language for app1. Press Enter to continue." \
        10 60) then
    break
else
    exit 1
fi

Option=$(whiptail --title "Choose language" \
            --menu "Choose your prefered language here" 15 60 4 \
            "1" "Vietnamese" \
            "2" "English" \
            "3" "Both" 3>&1 1>&2 2>&3)
exitstatus = $?
if [ exitstatus = 0 ]; 
then
    echo $Option
else
    break
fi
    


