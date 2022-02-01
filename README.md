## Table of contents
* [General info](#general-info)
* [Setup](#setup)
* [C# version](#try-the-C#-version)
* [Install](#install)
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
Next, "cd" to project folder (make sure you're cloned it first) and type the following command to compile app1:
```
# don't type or copy $!
$ fpc app1.pas
```
Ignore all warnings and errors unaffected to the compile progress. <br>
Then, make our output excutable, and run it:
``` 
$ chmod +x app1 
$ app1 # run it 
```
You don't need to do this in Windows because the .exe, .bat,... files are automaticaly excutable. <br>
However, Windows does not have chmod or chown anymore:)  <br>
You can use Free Pascal IDE to open the .pas file and compile it (of cource). <br>
Congratulations, now you have compiled app1!

## Try the C# version
C# makes app1 small with ~300 lines of code and runnable from Windows, macOS and Linux.<br>
First, install .NET SDK with this [address](https://dotnet.microsoft.com/download)<br>
Then, clone the repository and "open" it in Terminal (Command Prompt). Next type:
```
dotnet run
```
To build the project:
Wait and ejnoy!

## Install
You can make your own .deb package directly with this command:
```
$ cd .. # if you are in the project folder
$ dpkg-deb --build app1cli
$ sudo dpkg -i app1cli*.deb
```
The Pascal edition will be used to install to your computer.
* To install app1 mannually, just compile the package, then copy it to any usable folder in $PATH (/usr/bin or /bin for system-wide).
* If you are in Windows, get the installer from [Releases.](https://github.com/lebao3105/app1cli/releases)

## What's new:
*See in the latest release [here](https://github.com/lebao3105/app1cli/releases/)*

## Some images:
![image](https://user-images.githubusercontent.com/77564176/139211727-06351e51-9b6b-4363-be7d-109b0597bca6.png)
![image](https://user-images.githubusercontent.com/77564176/138020987-e248b913-0680-40eb-8e90-d71848780e3f.png)
![image](https://user-images.githubusercontent.com/77564176/139212160-2cfd1b74-0f59-444d-af8f-517d3e5475df.png)
![image](https://user-images.githubusercontent.com/77564176/139212433-a15929d2-7e75-45b8-b764-f702242a56bc.png)
![image](https://user-images.githubusercontent.com/77564176/139212736-f8670679-9d78-4b28-be0b-cbc20dbb9c77.png)

