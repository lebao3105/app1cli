## Table of contents
* [General info](#general-info)
* [Compile](#compile)
* [What's new](#whats-new)
* [Warnings](#warnings)
* [Inside the code](#inside-the-code)

## General info
OK, so welcome to the first development release of app1.<br> 
This document will talk about changes in this release, and how you can contribute app1.
	
## Compile
First, make sure that you are in Pascal directory - where we at now. Then FPC is installed correctly, and included in PATH if needded.<br>
Let's compile it now (maths unit first):
```
fpc maths.pas
fpc app1.pas
```
The output will like this (not 100%):
![image](https://user-images.githubusercontent.com/77564176/142795151-55a35239-1232-4794-adde-f0f86c5780b4.png)
Explain the outputs:<br>
  * maths.pas: maths.ppu (our needed unit), maths.o (object file), maths.bak ("backup" file)<br>
  * app1.pas: app1.exe (the final output that can run). Others like .o and .bak are do the same as in maths.pas.<br>
Compile output in Terminal:  
```
C:\Users\Le Bao Roofs\Documents\source\repos\Pascal\app1>fpc maths.pas
Free Pascal Compiler version 3.2.2 [2021/05/15] for i386
Copyright (c) 1993-2021 by Florian Klaempfl and others
Target OS: Win32 for i386
Compiling maths.pas
maths.pas(25,14) Warning: Function result does not seem to be set
maths.pas(31,14) Warning: Function result does not seem to be set
maths.pas(37,14) Warning: Function result does not seem to be set
maths.pas(43,14) Warning: Function result does not seem to be set
maths.pas(49,14) Warning: Function result does not seem to be set
maths.pas(55,14) Warning: Function result does not seem to be set
maths.pas(71,14) Warning: Function result does not seem to be set
maths.pas(76,14) Warning: Function result does not seem to be set
maths.pas(81,14) Warning: Function result does not seem to be set
maths.pas(88,14) Warning: Function result does not seem to be set
maths.pas(96,14) Warning: Function result does not seem to be set
maths.pas(106,14) Warning: Function result does not seem to be set
113 lines compiled, 0.2 sec
12 warning(s) issued

C:\Users\Le Bao Roofs\Documents\source\repos\Pascal\app1>fpc app1.pas
Free Pascal Compiler version 3.2.2 [2021/05/15] for i386
Copyright (c) 1993-2021 by Florian Klaempfl and others
Target OS: Win32 for i386
Compiling app1.pas
Linking app1.exe
365 lines compiled, 0.3 sec, 94448 bytes code, 5364 bytes data  
```

## Warnings 
* As you can see, while building maths.pas, FPC says that:
```

maths.pas(25,14) Warning: Function result does not seem to be set
maths.pas(31,14) Warning: Function result does not seem to be set
maths.pas(37,14) Warning: Function result does not seem to be set
maths.pas(43,14) Warning: Function result does not seem to be set
maths.pas(49,14) Warning: Function result does not seem to be set
maths.pas(55,14) Warning: Function result does not seem to be set
maths.pas(71,14) Warning: Function result does not seem to be set
maths.pas(76,14) Warning: Function result does not seem to be set
maths.pas(81,14) Warning: Function result does not seem to be set
maths.pas(88,14) Warning: Function result does not seem to be set
maths.pas(96,14) Warning: Function result does not seem to be set
maths.pas(106,14) Warning: Function result does not seem to be set
```
This is "a misunderstanding the source" from FPC because I have defined the result early like this (see the red-underlined text):<br>
However, this does not make any changes or affect to the output.<br>
![image](https://user-images.githubusercontent.com/77564176/142796571-8bb402df-9f64-4874-add6-669c15dd664a.png)
![image](https://user-images.githubusercontent.com/77564176/142796646-7c24fe1d-80a7-44f2-a84f-8cf326f4a6e3.png)
![image](https://user-images.githubusercontent.com/77564176/142796847-b20fbba9-3ff4-4278-8fc9-5d9a165741f0.png)
* In app1.pas, you may see a warning like "Unreachable code", skip it.
* Errors:
  - Unit ... not found: 
    - Make sure that FPC is installed correctly, if needed, download and build FPC from source code.
    - Make sure that the unit is not corrupted. If the missing unit is maths, try to clone the source code again.
    - If the missing unit is maths, make sure you have compiled it before and get the .ppu file.
  - ; expected but else found:
    - see the example:
      ![bug_example](https://user-images.githubusercontent.com/77564176/142801380-1e273b0c-54ea-4219-90a7-3077d3839f13.png)<br>
      In if..else, before else you must not leave any ; including it is used to separate command lines (in this case you should place these code to begin...end block.). 
## What's new:
*For the latest stable release, see from [here](https://github.com/lebao3105/app1cli/releases/)* <br>
***In this release, we have: (only for Pascal version)***
- Replaced sub_choice to yes_no to ask the user for something. yes_no is a string value.
- Merged sub_choice_cal and sub_choice_cpr 
- Merged sub_choice and Infomation section
- Added colors to version number in Infomation
- Fully replaced readkey() to readln() in Infomation
- Almost all the calculations are using its own function<br>
 
***In the next version 1.0.28:***
- Apply array for yes_no
- Create unit for C# version do the same things as the Pascal one (may need Visual Studio)
- Apply color and 1.0.27's enhancements to C# version
- Access app1 easily with command-line [arguments](https://stackoverflow.com/questions/25891529/command-line-args-in-pascal) (may only in Pascal)<br>
*The GUI version of app1 is currently in development state.*<br>
## Inside the code
