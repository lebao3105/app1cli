## Table of contents
* [General info](#general-info)
* [Setup](#setup)
* [What's new](#whats-new)
* [Images](#some-images)

## General info
app1 (also called app1cli) is a (very) simple project written in C# and Pascal. It can:
* Be a calculator
* Compare 2 numbers
* And run it from Terminal:)
	
## Setup
If you are in Windows/OSes that doesn't have a package manager, install [Free Pascal IDE](https://www.freepascal.org/download.html). <br>
In BSD and Linux, try one of these commands:

```
$ sudo apt update && sudo apt install fpc # for apt-based distros
$ sudo dnf update && sudo dnf install fpc # for dnf-based distros
$ sudo zypper install fpc # for zypper-based distros
$ brew install fpc # you also can use it in macOS (and BSD, Linux) with brew installed
$ sudo pkg install fpc # usually used in BSD
$ sudo pacman -Syu fpc # for pacman-based distros
```
Next, "cd" to Pascal from the project folder (make sure you're cloned it first) and type the following command to compile app1:
```
$ fpc app1.pas
```
In version 1.0.27, we have a new unit called maths. Compile it **before** you compile app1.
Ignore all warnings and errors unaffected to the compile progress. <br>
Then, make our output excutable, and run it:
``` 
$ chmod +x app1 
$ ./app1 # run it 
```
In Windows this is useless because the .exe, .bat,... files are automaticaly excutable before. <br>
However, Windows does not have chmod or chown:)  <br>
You can use Free Pascal IDE to open the .pas file and compile it (of cource). <br>
Congratulations, now you have compiled app1!

## What to use C# version? Try now!
C# makes app1 smaller with ~300 lines of code and app1 still can run from Windows, macOS and Linux.<br>
First, install .NET SDK with this [address](https://dotnet.microsoft.com/download)<br>
Then, clone the repository, cd to C# directory and "open" it in Terminal (Command Prompt). Next type:
```
dotnet run
```
Wait and ejnoy!

## What's new:
*See in the latest release from [here](https://github.com/lebao3105/app1cli/releases/)*

## Some images:
![image](https://user-images.githubusercontent.com/77564176/139211727-06351e51-9b6b-4363-be7d-109b0597bca6.png)
![image](https://user-images.githubusercontent.com/77564176/138020987-e248b913-0680-40eb-8e90-d71848780e3f.png)
![image](https://user-images.githubusercontent.com/77564176/139212160-2cfd1b74-0f59-444d-af8f-517d3e5475df.png)
![image](https://user-images.githubusercontent.com/77564176/139212433-a15929d2-7e75-45b8-b764-f702242a56bc.png)
![image](https://user-images.githubusercontent.com/77564176/139212736-f8670679-9d78-4b28-be0b-cbc20dbb9c77.png)

