#!/bin/bash
set -x
set
man bash
bash
set -o posix
set
set +o posix
exit
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
echo "should not get here"' > ascript.sh
chmod +x ascript.sh
./ascript.sh
set -e
set -x
set -o errexit
set -o xtrace
touch afile.txt
set -o pipefail
grep notthere afile.txt | xargs
echo $?
set +o pipefail
grep notthere afile.txt | xargs
echo $?
shopt -s globstar
ls **
