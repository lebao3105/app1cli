## Table of contents
* [General info](#general-info)
* [Building](#building)
* [What's new](#whats-new)
* [Screenshots](#screenshots)

## General info
[![Build status for .Net version](https://github.com/lebao3105/app1cli/actions/workflows/dotnet.yml/badge.svg)](https://github.com/lebao3105/app1cli/actions/workflows/)
[![Build status for Pascal version](https://github.com/lebao3105/app1cli/actions/workflows/pascal.yml/badge.svg)](https://github.com/lebao3105/app1cli/actions/workflows/)

App1 (or app1cli) is a simple project written in C# and Pascal. It can:
* Be a calculator
* Compare 2 numbers
* And run it from Terminal:)

## Building
Requirement(s) - only fpc needed now:
* git to clone the repository (or get source code from the repository releases)
* fpc (Free Pascal Compiler)
* .NET SDK to build C# edition

Just run the following command in source_code_root/Pascal:
```
fpc app1.pas
```

Or in source_code_root/C#:
```
dotnet run
# or dotnet run --project app1cli/app1cli.csproj
# run without build (you built it before):
# dotnet build --project app1cli/app1cli.csproj
```

## Change language
There are 2 languages: Vietnamese and English (Default). Change language by changing lang_en to lang_vi (Vietnamese) in these files:
* [Pascal/app1.pas](Pascal/app1.pas)
* [Pascal/maths.pas](Pascal/maths.pas)
* [Pascal/utils.pas](Pascal/app1_utils.pas)

(Re-)compile the file then run it. Change back to lang_en to use English.


## Download
Get it [here.](https://github.com/lebao3105/app1cli/releases/)

## Screenshots:
![image](https://user-images.githubusercontent.com/77564176/139211727-06351e51-9b6b-4363-be7d-109b0597bca6.png)
![image](https://user-images.githubusercontent.com/77564176/138020987-e248b913-0680-40eb-8e90-d71848780e3f.png)
![image](https://user-images.githubusercontent.com/77564176/139212160-2cfd1b74-0f59-444d-af8f-517d3e5475df.png)
![image](https://user-images.githubusercontent.com/77564176/139212433-a15929d2-7e75-45b8-b764-f702242a56bc.png)
![image](https://user-images.githubusercontent.com/77564176/139212736-f8670679-9d78-4b28-be0b-cbc20dbb9c77.png)

