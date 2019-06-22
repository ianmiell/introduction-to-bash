#!/bin/bash
set -x
mkdir itb_pipes_redirects
cd itb_pipes_redirects
echo "contents of file1" > file1
cat file1
cat file1 | grep -c file
cat file1 | grep 'contents of file1'
cat file1 | grep 'not in file'
cat file2
cat file2 | grep -c file
command_does_not_exist
command_does_not_exist 2> /dev/null
command_does_not_exist 2>&1
command_does_not_exist 2>&1 > outfile
command_does_not_exist > outfile 2>&1
grep -c file < file1
echo line1 > file3
echo line2 > file3
echo line3 >> file3
cat file3
cd -
rm -rf itb_pipes_redirects
