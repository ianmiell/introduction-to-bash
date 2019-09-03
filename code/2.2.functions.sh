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
builtin ls
builtin cd /tmp
builtin cd -
type cd
type ls
function cd() {
        echo 'No!'
}
cd /tmp
builtin cd /tmp
type cd
cd -
unset -f cd
cd /tmp
type cd
cd -
declare -f
declare -F
type builtin
help builtin
builtin grep
builtin notaprogram
which grep
which cd
which builtin
which doesnotexist
type which
alias cd=doesnotexist
alias
cd
unalias cd
cd /tmp
cd -
alias
