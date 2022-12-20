## General info

App1 (or app1cli) is a simple project written in C# and Pascal. It can:
* Be a calculator
* Compare 2 numbers
* And run it from Terminal:)

## Building
Requirement(s) - only fpc needed now:
* git to clone the repository (or get source code from the repository releases)
* fpc (Free Pascal Compiler)
* .NET SDK 6 to build C# edition

Just run the following command in source_code_root/Pascal:
```
fpc app1.pas
```

Since version 1.3, gettext support has been added to the project. Install gettext and make, then:
```
make gen_mo
make build
```
Only do this on *NIX.

If you don't want install these packages, you still can checkout steps in [Changing languages section](#changing-language).

For C# version, simply run these in CSharp folder:
```
dotnet run
# build only
# dotnet build
```

## Changing language
There are 2 languages: Vietnamese and English (Default). You can change language manually by changing resource to lang_en (English) or lang_vi (Vietnamese) from uses clause in these files:
* [Pascal/app1.pas](Pascal/app1.pas)
* [Pascal/maths.pas](Pascal/maths.pas)
* [Pascal/utils.pas](Pascal/app1_utils.pas)

Since version 1.3, please add ```-Fulangs``` parameter to fpc, like this:
```
fpc app1.pas -Fulangs
```

## Download
Get it [here.](https://github.com/lebao3105/app1cli/releases/)

## Screenshots:
![image](https://user-images.githubusercontent.com/77564176/139211727-06351e51-9b6b-4363-be7d-109b0597bca6.png)
![image](https://user-images.githubusercontent.com/77564176/138020987-e248b913-0680-40eb-8e90-d71848780e3f.png)
![image](https://user-images.githubusercontent.com/77564176/139212160-2cfd1b74-0f59-444d-af8f-517d3e5475df.png)
![image](https://user-images.githubusercontent.com/77564176/139212433-a15929d2-7e75-45b8-b764-f702242a56bc.png)
![image](https://user-images.githubusercontent.com/77564176/139212736-f8670679-9d78-4b28-be0b-cbc20dbb9c77.png)

