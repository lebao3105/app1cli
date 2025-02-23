#!/usr/bin/env bash

rm resource_files.inc

for path in $(ls -d langs/*/*.inc); do
    echo "{\$include $path}" >> resource_files.inc
done