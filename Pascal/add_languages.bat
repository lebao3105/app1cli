@echo off

del resource_files.inc

for /R %%i in (.\langs\*\*.inc) do echo {$include %%i} >> resource_files.inc