#!/bin/bash

# Variables and quoting
MYSTRING=astring
echo $MYSTRING
MYSENTENCE=A sentence
MYSENTENCE="A sentence"
echo $MYSENTENCE
MYSENTENCE="A sentence with $MYSTRING in it"
echo $MYSENTENCE
MYSENTENCE='A sentence with $MYSTRING in it'
echo $MYSENTENCE

# Quoting
MYGLOB=*
echo $MYGLOB
MYGLOB="*"
echo "$MYGLOB"
MYGLOB='*'
echo "$MYGLOB"
echo '$MYGLOB'
echo $MYGLOB

# Shell variables
echo $PPID
PPID=nonsense
echo $PPID
readonly MYVAR=astring
MYVAR=anotherstring

# env / export
env
export

# export
MYSTRING=astring
bash
echo $MYSTRING
exit
echo $MYSTRING
unset MYSTRING
echo $MYSTRING
export MYSTRING=anotherstring
bash
echo $MYSTRING
exit

# Arrays
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
bash --version
declare -A MYAA=([one]=1 [two]=2 [three]=3)
MYAA[one]="1"
MYAA[two]="2"
echo $MYAA
echo ${MYAA[one]}
MYAA[one]="1"
WANT=two
echo ${MYAA[$WANT]}
