#!/bin/bash
set -x
A='12345678901234567890'
echo "${#A}"
echo "$#A"
echo ${A:2}
echo ${A:2:3}
echo "${A/234/432}"
echo "${A//234/432}"
C=AbCd
echo ${C,}
echo ${C,,}
C=aAbCd
echo ${C^}
echo ${C^^}
shopt -s extglob
A="12345678901234567890"
B="  ${A}  "
echo "B      |${B}|"
echo "B#+( ) |${B#+( )}|"
echo "B#?( ) |${B#?( )}|"
echo "B#*( ) |${B#\*( )}|"
echo "B##+( )|${B##+( )}|"
echo "B##*( )|${B##*( )}|"
echo "B##?( )|${B##?( )}|"
TODAY=$(date +%j)
TODAY=${TODAY##+(0)}
echo 'I really want to echo $HOME and I can't avoid it'
echo "I really want to echo $HOME and I can't avoid it"
echo 'I really want to echo $HOME and I can'"'"'t avoid it'
