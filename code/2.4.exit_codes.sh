#!/bin/bash
set -x
ls
echo $?
doesnotexist
echo $?
set +x
echo type: bash
echo type: function trycmd {
echo type:       $1
echo type:       if [[ $? -eq 127 ]]
echo type:       then
echo type:               echo 'What are you doing?'
echo type:       fi
echo type: }
echo type: trycmd ls
echo type: trycmd doesnotexist
echo type: exit
set -x
echo 'grepme' > afile.txt
grep not_there afile.txt
echo $?
if grep grepme afile.txt
then
        echo 'matched!'
fi
set +x
echo type: bash
echo type: exit 67
echo type: echo $?
echo type: bash
echo type: function trycmd {
echo type:       $1
echo type:       if [[ $? -eq 127 ]]
echo type:       then
echo type:               echo 'What are you doing?'
echo type:               return 1
echo type:       fi
echo type: }
echo type: trycmd ls
echo type: trycmd doesnotexit
echo type: exit
set -x
ps -ef | grep bash | grep $$
sleep 999 &
echo $!
