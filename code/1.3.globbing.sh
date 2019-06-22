#!/bin/bash
set -x
echo ls *
echo ls '*'
echo '$HOME'
echo "$HOME"
ls "*"
ls *1
ls file[12]
ls file[a-z]
ls file[0-9]
touch .adotfile
mkdir .adotfolder
touch .adotfolder/file1 .adotfolder/.adotfile
ls
ls *
echo .*
echo file?
ls .*
cd .
rename -n 's/(.*)/new$1/' *
'file1' would be renamed to 'newfile1'
'file2' would be renamed to 'newfile2'
'file3' would be renamed to 'newfile3'
