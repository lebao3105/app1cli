## Table of contents
* [General info](#general-info)
* [Features](#features)
* [Setup](#setup)
* [What's new](#whats-new)

## General info
app1 (also called app1cli) is a (very) simple Pascal project
![image](https://user-images.githubusercontent.com/77564176/138020987-e248b913-0680-40eb-8e90-d71848780e3f.png)

	
## Features
* Calculate some thing...
* Compare 2 numbers
* And run it from Terminal:)
I will add new features to app1GUI - a GUI version of app1.
	
## Setup
If you are in Windows/OSes that doesn't have a package manager, install [Free Pascal IDE](https://www.freepascal.org/download.html). <br>
In *NIX, try one of these commands:

```
$ sudo apt update && sudo apt install fpc # for apt-based distros
$ sudo dnf update && sudo dnf install fpc # for dnf-based distros
$ sudo zypper install fpc # for zypper-based distros
$ sudo brew install fpc # you also can use it for macOS (and BSD) with brew installed
$ sudo pkg install fpc # usually used in BSD
$ sudo pacman -Syu fpc # for pacman-based distros
```
Next, "cd" to project folder (make sure you're cloned it first) and type the following command to compile app1:
```
$ fpc app1.pas
```
Ignore all warnings and errors unaffected to the compile progress. <br>
Then, make our output excutable, then run it:
``` 
$ chmod +x app1 # note that you dont need this in Windows and however, chmod is not available in Windows yet:)
$ ./app1 # run it 
```
You can use Free Pascal IDE to open the .pas file and compile it (of cource). <br>
Congratulations, now you have compiled app1!

## What's new:
*See in the latest release from [here](https://github.com/lebao3105/app1cli/releases/)*

<b>Note: The snapcraft.yaml file is used for build and publish app1 to Snap Store
