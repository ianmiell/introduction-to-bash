mkdir itb_loops && cd itb_loops
for (( i=0; i < 20; i++ ))
do
  echo $i
  echo $i > file${i}.txt
done
ls
for f in $(ls *txt)
do
  echo "File $f contains: $(cat $f)"
done
for f in file1.txt file2.txt file3.txt
do
  echo "File $f contains: $(cat $f)"
done
n=0
while [[ ! -a newfile ]]
do
        ((n++))
        echo "In iteration $n"
        if [[ $(cat file${n}.txt) == "15" ]]
        then
               touch newfile
        fi
done
a=1
case "$a" in
1) echo 'a is 1'; echo 'ok';;
2) echo 'a is 2'; echo 'ok';;
*) echo 'a is unmatched'; echo 'failure';;
esac
ls -l
#!/bin/bash
while getopts "ab:c" opt
do
    case "$opt" in
    a) echo '-a invoked';;
    b) echo "-b invoked with argument: ${OPTARG}";;
    c) echo '-c invoked';;
    esac
done
chmod +x case.sh
./case.sh -a
./case.sh -b
./case.sh -b "an argument"
./case.sh -a -b -c
./case.sh
