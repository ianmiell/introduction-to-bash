#!/bin/bash

# Variables and quoting
#######################
# Simple variable
MYSTRING=astring
echo $MYSTRING
# Quoting
MYSENTENCE=A sentence
MYSENTENCE="A sentence"
echo $MYSENTENCE
# Single vs double quotes
MYSENTENCE="A sentence with $MYSTRING in it"
echo $MYSENTENCE
MYSENTENCE='A sentence with $MYSTRING in it'
echo $MYSENTENCE

# Shell variables
#################
echo $PPID
PPID=nonsense
echo $PPID
# Readonly variables
readonly MYVAR=astring
MYVAR=anotherstring


# exported variables
####################
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


# env / export
##############
# env
env
# There is also export
export

# Arrays
########
# Version string
echo $BASH_VERSION
# Version number
echo $BASH_VERSINFO
# I heard it's an array...
echo $BASH_VERSINFO[0]
# Hmm, I need to use curlies to tell bash it's an array.
echo ${BASH_VERSINFO[0]}
# Curlies are good practice
echo ${BASH_VERSINFO}
# Compare this BASH_VERSION, not BASH_VERSINFO
echo $BASH_VERSION_and_some_string
# to this
echo ${BASH_VERSION}_and_some_string
# a string is actually the zeroth element of the bash array.
echo ${PPID}
echo ${PPID[0]}
echo ${PPID[1]}
# Print each element...
echo ${BASH_VERSINFO[1]}
echo ${BASH_VERSINFO[2]}
echo ${BASH_VERSINFO[3]}
echo ${BASH_VERSINFO[4]}
echo ${BASH_VERSINFO[5]}
# Until item is empty...
echo ${BASH_VERSINFO[6]}
# Print the whole array
echo ${BASH_VERSINFO[@]}

# To create an array
A=(a b c)
echo ${A[1]}

# Associative arrays
# Version - if < 4... https://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/
bash --version
declare -A MYAA=([one]=1 [two]=2 [three]=3)
MYAA[one]="1"
MYAA[two]="2"
echo $MYAA
echo ${MYAA[one]}
MYAA[one]="1"
WANT=two
echo ${MYAA[$WANT]}
