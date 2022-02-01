#!/bin/sh
# Set the app1cli's language

# Make these function first
function confirm_exit() {
    echo "This script should work if there are not any error."
    echo "Now use fpc to compile the source file, e.g"
    echo "fpc app1.pas"
    echo "If there are not any error, please confirm it here.: "
    echo "[Y/n]"
    read Answer
    if [ $Answer == "y" ] 
    then 
        echo "All files are successfully changed by you so" 
        echo "just go ahead and compile the codes!"
        echo "Have a good day!"
        exit
    elif [ $Answer == "n" ] 
    then 
        echo "Error? You should check for the file permission by ls -la and chmod,"
        echo "or make sure that the files are not corrupted."
        echo "Have a good day!"
        exit 1
    fi
}

function check_vim() {
    if ! command -v vi &> /dev/null
    then
        echo "Vim not found! Perhaps you want to use the graphical program."
        echo "You can use GNOME Text Editor (gedit), Emacs or VS Code (code)..."
        echo "Configuration aborted, exitting..."
        exit 1
    else
        echo "I found the vim program!"
        echo "Now change the lang_{language} to one of these strings:"
        echo "lang_vi"
        echo "lang_en (Default)"
        echo "Entering the editor..."
        vi maths.pas
        vi app1.pas
        vi app1_utils.pas
    fi
}

echo ----------------------------------------------------
echo ----------------------------------------------------
echo Change language for app1cli - Pascal
echo Only use this file in *NIX. For Windows or ReactOS,
echo you can look for change_lang.cmd.
echo ----------------------------------------------------
echo ----------------------------------------------------
echo " "
echo Checking for the command-line editor...
sleep 5 # Delay 5 seconds...
if ! command -v nano &> /dev/null
then
    echo "Nano not found. Checking for vi (vim)..."
    check_vim
    confirm_exit
else
    echo "nano found!" 
    echo "Now change the lang_{language} to one of these strings:"
    echo "lang_vi"
    echo "lang_en (Default)"
    echo "Entering the editor..."
    nano app1.pas
    nano app1_utils.pas
    nano maths.pas
    confirm_exit
fi
