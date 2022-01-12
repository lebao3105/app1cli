## Table of contents
* [General info](#general-info)
* [Recent changes](#recent-changes)
* [Compile](#compile)
* [What's new](#whats-new)
* [Warnings](#warnings)
* [Contribute](#contribute)

## General info
OK, so welcome to the development release(s) of app1.<br> 
This document will talk about changes in this release, and how you can contribute app1.
	
## Recent changes:
* Make the application easier to read (I mean read the code:)) with if and case statement. See in the calculator mode.
* Ready to "push" the arguments function to app1, but only launch the modes;
* Added new units to set the color
* And the most interesting thing is added new Language and a script to change the language before compile!
* (and planted some new featues in 1.0.29 too)

## Compile
First, make sure that you are in Pascal directory - where we at now. Then FPC is installed correctly, and included in PATH if needded.<br>
Let's compile it now :
```
fpc app1.pas
# fpc <other files>.pas #if you want to compile a specific file
```
The output will like this (not 100%):
![image](https://user-images.githubusercontent.com/77564176/142795151-55a35239-1232-4794-adde-f0f86c5780b4.png)
Explain the outputs:<br>
  * maths.pas: maths.ppu (our needed unit), maths.o (object file), maths.bak ("backup" file)<br>
  * app1.pas: app1.exe (the final output that can run). Others like .o and .bak are do the same as in maths.pas.<br>
  * New in 1.0.28 : app1_utils.ppu: A unit like maths, but it do many things like write colored line(s) or give us the usage of app1. 
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
maths.pas(line,location) Warning: Function result does not seem to be set
```
I think FPC may warm us that we need a "return value" like C++:
```
# C++ example code:
function hello() {
	cout << "Hello world!";
	return 1; <- this is what you think
}
```
Just ignore it.<br>
* There also a warning like "Unreachable code", skip it too.
* Some other warnings: 
  - /usr/bin/ld.bfd: warning: link.res contains output sections; did you forget -T? (found in Linux)
  - Comparison might be always false due to range of constant and expression : This is about the functions
  - Local variables not used : some variables I may not cleared yet, or I use it for a new funciton.
* Errors:
  - Unit ... not found: 
    - Make sure that FPC is installed correctly, if needed, download and build FPC from source code.
    - Make sure that the unit is not corrupted. If the missing unit is maths, try to clone the source code again.
    - If the missing unit is maths, make sure you have compiled it before and get the .ppu file.
  - ; expected but else found:
    - see the example:
      ![bug_example](https://user-images.githubusercontent.com/77564176/142801380-1e273b0c-54ea-4219-90a7-3077d3839f13.png)<br><br>
      In if..else, before else you must not leave any ; including it is used to separate command lines (in this case you should place these code to begin...end block.).      
      
## What's new:
*For the latest stable release, find it [here](https://github.com/lebao3105/app1cli/releases/)* <br>

***In version 1.0.28:***
- Apply array for yes_no (now cancelled)
- Create "unit" for C# version do the same things as the Pascal one (one of the hardest things i need to do)
- Apply color and 1.0.27's enhancements to C# version
- Access app1 easily with [command-line arguments](https://stackoverflow.com/questions/25891529/command-line-args-in-pascal) (may only in Pascal, use to run some calculations...)<br>
- If you want to add to this program a language, you're welcome. I will add this support to app1 by a script before compile. There's no way to change the language directly while running app1.

## Contribute
If you want to contribute to this application, here's what you can do:
* Fork the repo and clone the forked one, then code and make a Pull request 
* Clone the repo, try to debug and report any bugs you found;
* Or make new language for app1 (require fork and make pull request)
