## Table of contents
* [General info](#general-info)
* [Recent changes](#recent-changes-in-1028)
* [Compile](#compile)
* [Warnings](#warnings)
* [What's new](#whats-new)
* [Contribute](#contribute)

## General info
OK, so welcome you to my building tutorial for app1.<br> 
This document will talk about building progress, whats new and how do you can contribute app1.
	
## Recent changes in 1.0.28:
* Make the application easier to read (I mean read the code:)) with if / case statement. See in the calculator mode;
* Ready to "push" the arguments function to app1, but only launch the modes;
* Added new units to set the color;
* And the most interesting thing is added new Language and ~~a script to change the language before compile!~~
* (and planted some new featues in 1.0.29 too)
* Also apply new features to the C# edition

## Compile

### Requirements:
* Free Pascal Compiler (or IDE if needed) for Pascal edition;
* .NET (dotnet) SDK 6.0 for C# edition;
* git to clone this repository.

### Building:
First clone the repository:
```
git clone https://github.com/lebao3105/app1cli 
```

You can use ```-b``` flag to clone other branch, for example, this will clone 1.0.27 branch:
```
git clone https://github.com/lebao3105/app1cli -b 1.0.27
```

Go to the cloned repo by:
```
cd app1cli
```
Now you can go to Pascal folder for Pascal edition, or C# for C# edition. Let's compile it now:
* With FPC (Free Pascal Compiler):
```
fpc <file name>.pas #if you want to compile a specific file
```
The output should be like [this](https://user-images.githubusercontent.com/77564176/142795151-55a35239-1232-4794-adde-f0f86c5780b4.png) (not 100%):


Explain the outputs:<br>
  * maths.pas: maths.ppu (our needed unit), maths.o (object file), maths.bak ("backup" file)<br>
  * app1.pas: app1.exe (the final output that can run). Others like .o and .bak are do the same as in maths.pas.<br>
  * New in 1.0.28 : app1_utils.ppu: A unit like maths, but do other things like write colored line(s) or give us the usage of app1.<br>

* With dotnet:
Go to ```<project root>/C#/app1``` and try one of these commands:
```
dotnet run // build and run the application
dotnet clean // clean the project
dotnet build // build the project
```  
If you are in C# folder, just use:
```
dotnet build // this will build the .sln file
./app1cli/bin/Debug/net6.0/app1cli // run the application
```
Here is the compile output in Windows Terminal:  
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
also for C# edition:
```
[lebao@Jujitsumfy-3847 C#]$ dotnet build
Microsoft (R) Build Engine version 17.0.0+c9eb9dd64 for .NET
Copyright (C) Microsoft Corporation. All rights reserved.

  Determining projects to restore...
  All projects are up-to-date for restore.
  utilsLib -> /home/lebao/Projects/app1cli/C#/utilsLib/bin/Debug/net6.0/utilsLib.dll
  app1cli -> /home/lebao/Projects/app1cli/C#/app1cli/bin/Debug/net6.0/app1cli.dll

Build succeeded.
    0 Warning(s)
    0 Error(s)

Time Elapsed 00:00:01.80
```
## Warnings 
* As you can see, while compiling maths.pas, FPC says that:
```
maths.pas(line,location) Warning: Function result does not seem to be set
```
I think FPC may warm us that we should use a "return value" like C++:
```
# C++ example code:
int hello() {
	cout << "Hello world!";
	return 1; <- this is what I think
}
```
Just ignore it.<br>
* There also a warning like "Unreachable code", skip it too.
* Some other warnings: 
  - /usr/bin/ld.bfd: warning: link.res contains output sections; did you forget -T? (found in Linux)
  - Comparison might be always false due to range of constant and expression : This is about the functions
  - Local variables not used : some variables I'm not cleared yet, or I use it for a new (but not defined) funciton.
* Errors:
  - Unit ... not found: 
    - Make sure that FPC is installed correctly, if needed, download and build FPC from source code.
    - Make sure that the unit is not corrupted. If the missing unit is maths, try to clone the source code again.
    - If the missing unit is maths, you should compile this unit before compile the application.
  - ; expected but else found: <br>
    - see the [example.](https://user-images.githubusercontent.com/77564176/142801380-1e273b0c-54ea-4219-90a7-3077d3839f13.png)
    - In if..else, before else you must not leave any ; that inside the if... including it is used to separate command lines (in this case you should place these code to begin...end block.).  
  - Numbers is not defined or something else similar (C#):
    - This should be fixed now - if you still see this error, report it to me. You also can archive the current code - this may be easier to fix.    

## Contribute
If you want to contribute to this application, here's what you can do:
* Fork the repo and clone the forked one, then code and make a Pull request 
* Clone the repo, try to debug and report any bugs you found;
* Or make new language for app1 (require fork and make pull request)<br>
You will need to create a GitHub account.