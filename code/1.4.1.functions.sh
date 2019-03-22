# Basic functions
function myfunc {
 echo hello world
}
myfunc

# Function arguments
function myfunc {
	echo arg1: $1
	echo arg2: $2
}
myfunc "hello world"
myfunc hello world

# Functions and set/unset variables
function myfunc {
  echo $myvar
}
myfunc
myvar=hello
myfunc

# local variables
function myfunc {
  local myvar=inside
  echo $myvar
}
myfunc
myvar=outside
echo $myvar
myfunc

# locals outside functions
local newvar=newval

