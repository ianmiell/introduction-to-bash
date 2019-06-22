#!/bin/bash
set -x
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
   /home/imiell/perl5/bin:/opt/local/bin:/opt/local/sbin:/Users/imiell/google-cloud-sdk/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/space/git/shutit:/space/git/work/bin:/space/git/home/bin:~/.dotfiles/bin:/space/go/bin
   /usr/sbin:/usr/bin
PATH=${PATH}:.
simple_script
MYVAR=Hello
echo 'echo $MYVAR' > simple_echo
chmod +x simple_echo
./simple_echo
source simple_echo
env -i bash --noprofile --norc
env
