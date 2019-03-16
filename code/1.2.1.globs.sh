#!/bin/bash
mkdir lbthw_glob
cd lbthw_glob
touch file1 file2 file3 file10 file11
ls *
echo *
ls '*'
ls "*"
touch .adotfile
mkdir .adotdir
ls *
echo *
echo 'Run ls .*'
ls .*
echo 'Run .*'
echo .*
echo 'Run .a*'
echo .a*
# Cleanup
cd ..
rm -rf lbthw_glob
