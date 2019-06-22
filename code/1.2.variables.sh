#!/bin/bash
set -x
MYSTRING=astring
echo $MYSTRING
MYSENTENCE=A sentence
MYSENTENCE="A sentence"
echo $MYSENTENCE
MYSENTENCE="A sentence with $MYSTRING in it"
echo $MYSENTENCE
MYSENTENCE='A sentence with $MYSTRING in it'
echo $MYSENTENCE
echo $PPID
PPID=nonsense
echo $PPID
readonly MYVAR=astring
MYVAR=anotherstring
MYSTRING=astring
echo type: bash
echo type: echo $MYSTRING
echo type: exit
echo $MYSTRING
unset MYSTRING
echo $MYSTRING
export MYSTRING=anotherstring
echo type: bash
echo type: echo $MYSTRING
echo type: exit
env
compgen -v
bash --version
echo $BASH_VERSINFO
echo $BASH_VERSINFO[0]
echo ${BASH_VERSINFO[0]}
echo ${BASH_VERSINFO}
echo $BASH_VERSION_and_some_string
echo ${BASH_VERSION}_and_some_string
echo ${BASH_VERSION[0]}
echo ${BASH_VERSINFO[1]}
echo ${BASH_VERSINFO[2]}
echo ${BASH_VERSINFO[3]}
echo ${BASH_VERSINFO[4]}
echo ${BASH_VERSINFO[5]}
echo ${BASH_VERSINFO[6]}
declare -a
