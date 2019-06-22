#!/bin/bash

set -x

function myfunc {
        echo Hello World
}
myfunc
function myfunc {
  echo $1
  echo $2
}
myfunc "Hello World"
myfunc Hello World
function myfunc {
  echo $myvar
}
myfunc
myvar="Hi from outside the function"
myfunc
function myfunc {
 local myvar="Hi from inside the function"
 echo $myvar
}
myfunc
echo $myvar
local myvar="Will this work?"
builtin cd /tmp
cd -
builtin grep
builtin notaprogram
function cd() {
        echo 'No!'
}
cd /tmp
builtin cd /tmp
cd -
unset -f cd
cd /tmp
cd -
declare -f
declare -F
which grep
which cd
which builtin
which doesnotexist
alias cd=doesnotexist
alias
cd
unalias cd
cd /tmp
cd -
alias
type ls
type pwd
type myfunc
