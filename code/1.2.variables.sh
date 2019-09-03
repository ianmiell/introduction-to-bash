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
readonly READONLYVAR=astring
READONLYMYVAR=anotherstring
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
env
declare
declare -f  # just functions
declare -F  # just function headers
declare -r  # readonlys
declare -i  # just integers
declare -v
bash --version
declare -a
echo $BASH_VERSINFO
echo $BASH_VERSINFO[0]
echo ${BASH_VERSINFO[0]}
echo $BASH_VERSION_and_some_string
echo ${BASH_VERSION}_and_some_string
echo ${BASH_VERSINFO}
unset A
echo $A
A=1
echo $A
echo ${A[0]}
echo ${A[1]}
echo ${BASH_VERSINFO[0]}
echo ${BASH_VERSINFO[1]}
echo ${BASH_VERSINFO[2]}
echo ${BASH_VERSINFO[3]}
echo ${BASH_VERSINFO[4]}
echo ${BASH_VERSINFO[5]}
echo ${BASH_VERSINFO[6]}
