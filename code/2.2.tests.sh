#!/bin/bash
set -x
[ 1 = 0 ]
echo $?
[ 1 = 1 ]
echo $?
A=1
[ $A = 1 ]
echo $?
[ $A == 1 ]
echo $?
[ $A = 2 ]
echo $?
which [
builtin [
which test
man test
man [
( [ 1 = 1 ] || [ ! '0' = '0' ] ) && [ '2' = '2' ]
echo $?
[  1 = 1 -o  ! '0' = '0'  -a  '2' = '2' ]
echo $?
[[ 1 = 1 ]]
echo $?
unset DOESNOTEXIST
[ ${DOESNOTEXIST} = '' ]
echo $?
[ = '' ]
[[ ${DOESNOTEXIST} = '' ]]
echo $?
[ x${DOESNOTEXIST} = x ]
echo $?
   [ '' = '' ]
   [ x = 'x' ]
[[ "x$DOESNOTEXIST" = "x" ]]
echo $PWD
[ -z "$PWD" ]
echo $?
unset DOESNOTEXIST
[ -z "$DOESNOTEXIST" ]
echo $?
[ -z ]
echo $?
mkdir itb_tests_dir
touch itb_tests_file
[ -a itb_tests_file ]
echo $?
[ -d itb_tests_file ]
echo $?
[ -a itb_tests_dir ]
echo $?
[ -d itb_tests_dir ]
echo $?
rmdir itb_tests_dir
rmdir itb_tests_file
[ 10 < 2 ]
echo $?
[ '10' < '2' ]
echo $?
[[ 10 < 2 ]]
echo $?
[[ '10' < '2' ]]
echo $?
[ 10 -lt 2 ]
echo $?
[ 1 -lt 2 ]
echo $?
[ 10 -gt 1 ]
echo $?
[ 1 -eq 1 ]
echo $?
[ 1 -ne 1 ]
echo $?
if [[ 10 -lt 2 ]]
then
  echo 'does not compute'
elif [[ 10 -gt 2 ]]
then
  echo 'computes'
else
  echo 'does not compute'
fi
if [[ 10 -lt 2 ]]; then echo 'does not compute'; fi
if grep not_there /dev/null
then
    echo there
else
    echo not there
fi
