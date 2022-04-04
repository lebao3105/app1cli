## Table of contents
* [General info](#general-info)
* [Buiding](#building)
* [Install](#install)
* [What's new](#whats-new)
* [Images](#some-images)

## General info
app1 (also called app1cli) is a (very) simple project written in C# and Pascal. It can:
* Be a calculator
* Compare 2 numbers
* And run it from Terminal:)
	
## Building
Read the [Building.md](Building.md) file for all steps and requirements.

## Install
<<<<<<< HEAD
You can make your own .deb package directly. First copile the project, copy the application to ```<project root>/debian/bin/``` then make the .deb package:
=======
You can make your own .deb package directly. First copile the project, copy the application to ```<project root>/debian/bin/```folder then make the .deb package:
>>>>>>> 1.0.28
```
$ cd .. # if you are in the project folder
$ dpkg-deb --build app1cli
$ sudo dpkg -i app1cli*.deb
```
* To install app1 mannually, just compile the package, then copy it to any usable folder in $PATH (/usr/bin or /bin for system-wide).
<<<<<<< HEAD
* If you are in Windows, get the installer (only for 1.0.27 below) from [Releases.](https://github.com/lebao3105/app1cli/releases)
* <b>Optional for Linux and BSD</b> : If you want to install [```man page```](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjyocScrPD2AhUFp1YBHczqAgQQFnoECAoQAQ&url=https%3A%2F%2Fwww.kernel.org%2Fdoc%2Fman-pages%2F&usg=AOvVaw3OoGlokpkBmAA2VpBY_9J1) for this application, do these following commands:
```
# Go to the project root folder first, if not, then...
$ sudo apt install pandoc # install pandoc first
$ pandoc app1.md -s -t man -o app1.1
$ gzip app1.1
$ manpath # Show the path that man will search for
$ sudo cp app1.1.gz </man/path> # default is /usr/share/man/man1
$ sudo mandb # Update the database
$ man app1 # Try to open the page!
```

## What's new:
*See in the latest release [here.](https://github.com/lebao3105/app1cli/releases/)*
=======
* If you are in Windows, get the installer from [Releases.](https://github.com/lebao3105/app1cli/releases)

## What's new:
*See in the latest release [here](https://github.com/lebao3105/app1cli/releases/)*
>>>>>>> 1.0.28

## Some images:
![image](https://user-images.githubusercontent.com/77564176/139211727-06351e51-9b6b-4363-be7d-109b0597bca6.png)
![image](https://user-images.githubusercontent.com/77564176/138020987-e248b913-0680-40eb-8e90-d71848780e3f.png)
![image](https://user-images.githubusercontent.com/77564176/139212160-2cfd1b74-0f59-444d-af8f-517d3e5475df.png)
![image](https://user-images.githubusercontent.com/77564176/139212433-a15929d2-7e75-45b8-b764-f702242a56bc.png)
![image](https://user-images.githubusercontent.com/77564176/139212736-f8670679-9d78-4b28-be0b-cbc20dbb9c77.png)

