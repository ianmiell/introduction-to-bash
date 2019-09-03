ls
echo $?
doesnotexist
echo $?
bash
function trycmd {
      $1
      if [[ $? -eq 127 ]]
      then
              echo 'What are you doing?'
      fi
}
trycmd ls
trycmd doesnotexist
exit
echo 'grepme' > afile.txt
grep not_there afile.txt
echo $?
if grep grepme afile.txt
then
        echo 'matched!'
fi
bash
exit 67
echo $?
bash
function trycmd {
      $1
      if [[ $? -eq 127 ]]
      then
              echo 'What are you doing?'
              return 1
      fi
}
trycmd ls
trycmd doesnotexit
exit
return 1
echo $$
ps -ef | grep bash | grep $$
echo $-
if grep not_there /dev/null
then
    echo there
else
    echo not there
fi
