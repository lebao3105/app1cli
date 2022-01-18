@echo off
REM Use this file to change which language will app1 chooses.
REM Because this will open a editor, so you also can edit the source code if you want.

echo --------------------------------------------
echo Welcome to app1 Language setup! Choose your available editor here:
echo 1. Vi (Vim)
echo 2. Nano
echo 3. Notepad
echo 4. Wordpad
echo 5. VS Code
echo Notepad and WordPad are available in Windows PCs by default,
echo Vi and Nano can be installed via its own website or with other program e.g
echo Git (Bash shell), MSYS or MinGW...
echo VS Code (Visual Studio Code) can only installed mannually from its website.
echo --------------------------------------------

set /p ask="Enter your answer here:"
if "%ask%" == "1" (
    echo Finding vi... If the program exists in the PATH and the script found it, this will open the file for you.
    echo Continue? You need to change vi or en from lang_{language} to the others (en - English is the default.). 
    pause
    vi app1.pas
    vi maths.pas
    vi app1_utils.pas
    exit
)
if "%ask%" == "2" (
    echo Finding nano... If you installed nano in MSYS or MinGW, run the program (MSYS..) and cd to this directory, 
    echo then use nano to edit the file app1.pas, maths.pas and app1_utils.pas. You can also use vi instead.
    echo Continue? You need to change vi or en from lang_{language} to the others (en - English is the default.).
    pause
    nano app1.pas
    nano maths.pas
    nano app1_utils.pas 
    exit
)
if "%ask%" == "3" (
    set /p test="Is notepad installed here? It can be install/uninstall_ed via Settings, or MS Store.[y/n]"
    if "%test%" == "y" (
        echo Continue? You need to change vi or en from lang_{language} to the others (en - English is the default.).
        pause
        notepad app1.pas
        notepad maths.pas
        notepad app1_utils.pas 
        exit
    )
    if "%test%" == "n" (
        echo Exitting... You can reopen the script to try again.
        exit
    )
)
if "%ask%" == "4" (
    set /p test="Is wordpad installed here? It can be install/uninstall_ed via Settings, or MS Store.[y/n]"
    if "%test%" == "y" (
        echo Continue? You need to change vi or en from lang_{language} to the others (en - English is the default.).
        pause
        wordpad app1.pas
        wordpad maths.pas
        wordpad app1_utils.pas 
        exit
    )
    if "%test%" == "n" (
        echo Exitting... You can reopen the script to try again.
        exit
    )
)
if "%ask%" == "5" (
    set /p test="Is VSCODE installed here? [y/n]"
    if "%test%" = ="y" (
        echo Continue? You need to change vi or en from lang_{language} to the others (en - English is the default.).
        echo Code will run here and you have to open app1.pas, app1_utils.pas and maths.pas from the left pane.
        pause
        code .
    )
    if "%test%" == "n" (
        echo Exitting... You can reopen the script to try again.
        exit
    )
)
echo Anything should be done if there are not any error here.
echo You can check for the file permission, make sure that you are not open the wrong file...
pause
