## app1cli
App1 (or app1cli) is a simple project written in C# and Pascal (they are different versions). It can:
* Be a calculator (C# only)
* Compare 2 numbers (C# only)
* Give you, or your kids, a question to answer (Pascal only)
* And run it from Terminal:)

## Build and run
Requirement(s):
* git - optional as you can download the source code as a zip
* fpc (Free Pascal Compiler) for the Pascal version
* make - optional, for the Pascal version
* .NET SDK 6 for the C# version

Just run the following command in the Pascal subdirectory:
```
make
```

Or (still inside [Pascal/](Pascal/)):

```
# Use add_languages.bat if on Windows instead of the line below
add_languages.sh
fpc app1.pas
```

Run the executable named `app1`.

For C# version, simply run these inside CSharp/:
```
dotnet run
# build only
# dotnet build
```

## Download
Get it [here.](https://github.com/lebao3105/app1cli/releases/)

## Screenshots:
![image](https://user-images.githubusercontent.com/77564176/139211727-06351e51-9b6b-4363-be7d-109b0597bca6.png)
![image](https://user-images.githubusercontent.com/77564176/138020987-e248b913-0680-40eb-8e90-d71848780e3f.png)
![image](https://user-images.githubusercontent.com/77564176/139212160-2cfd1b74-0f59-444d-af8f-517d3e5475df.png)
![image](https://user-images.githubusercontent.com/77564176/139212433-a15929d2-7e75-45b8-b764-f702242a56bc.png)
![image](https://user-images.githubusercontent.com/77564176/139212736-f8670679-9d78-4b28-be0b-cbc20dbb9c77.png)

