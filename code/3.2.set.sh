function a {
 echo in a
}
a
set
man bash
set -o posix
set
set +o posix
set
set -o
set
env
set -o errexit
set -o xtrace
set -o nounset
#!/bin/bash
set -o errexit
set -o xtrace
set -o nounset
pwd
cd $HOME
cd -
echo $DOESNOTEXIST
echo "should not get here"
chmod +x ascript.sh
./ascript.sh
set -e
set -x
set -o errexit
set -o xtrace
#!/bin/bash
set -o nounset
set -o xtrace
A="some value"
PS4='$(date "+%s%N => ")'
B=
echo "${A}"
A="another value"
echo "${A}"
echo "${B}"
pwd
sleep 1
pwd
shopt -s globstar
ls **
#!/bin/bash
A=some value
echo "${A}
echo "${B}"
bash -n debug_script.sh
bash debug_script.sh
bash -v debug_script.sh
bash -x debug_script.sh
shellcheck ~/.bashrc
