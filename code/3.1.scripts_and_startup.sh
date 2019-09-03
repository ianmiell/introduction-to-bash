mkdir -p itb_scripts_and_startups
cd itb_scripts_and_startups
#!/bin/bash
echo I am a script
./simple_script
mkdir tmp
cd tmp
../simple_script
cd ..
rm -rf tmp
chmod +x simple_script
./simple_script
simple_script
echo $PATH
echo $PATH
PATH=${PATH}:.
simple_script
MYVAR=Hello
echo 'echo $MYVAR' > simple_echo
chmod +x simple_echo
./simple_echo
source simple_echo
unset MYVAR
echo $MYVAR
echo 'MYVAR=1' > simple_echo
./simple_echo
echo $MYVAR
. simple_echo
echo $MYVAR
env -i bash --noprofile --norc
env
