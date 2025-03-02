@echo off

if exist resource_files.inc del resource_files.inc

for /r .\langs %%i in (*.inc) do echo {$include %%i} >> resource_files.inc