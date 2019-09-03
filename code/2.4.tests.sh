[ 1 = 0 ]
echo $?
[ 1 = 1 ]
echo $?
[ 0 == 0 ]
echo $?
[ 1 == 1 ]
echo $?
A=1
[ $A = 1 ]
echo $?
[ $A = 2 ]
echo $?
[ $(hostname) = myhost ]
echo $?
builtin [
which [
builtin [ ]
which test
man test
man [
test 1 == 1
echo $?
doesnotexist && echo here
doesnotexist || echo here
mkdir tmp && cd tmp
([ 1 = 1 ] || [ ! 0 = 0 ]) && [ 2 = 2 ]
echo $?
[  1 = 1 -o ! 0 = 0  -a 2 = 2 ]
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
cd itb_tests_dir
touch itb_tests_file
[ -a itb_tests_file ]
echo $?
[ -d itb_tests_file ]
echo $?
[ -a itb_tests_dir ]
echo $?
[ -d itb_tests_dir ]
echo $?
cd -
rm -rf itb_tests_dir
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
[ '10' -lt '2' ]
echo $?
declare -i
if [[ 10 -lt 2 ]]
then
  echo 'right'
elif [[ 10 -gt 2 ]]
then
  echo 'right'
else
  echo 'impossible'
fi
if [[ 10 -lt 2 ]]; then echo 'impossible'; fi
