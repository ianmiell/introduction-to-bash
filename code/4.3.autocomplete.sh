#!/bin/bash
set -x
mkdir -p itb_autocomplete && cd lbthw_autocomplete
#!/usr/bin/env bash
function usage() {
	echo "Usage: $0 [red|green|blue] [message]"
	exit $1
}
if [ -z "$1" ]
then
	usage 1
fi
typeset -l COLOR="$1"
shift
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
MSG="$@"
COLOR=${COLOR,,}
if [[ "${COLOR}" = 'red' ]]
then
	MSG="${RED}${@}${RED}"
elif [[ "${COLOR}" = 'green' ]]
then
	MSG="${GREEN}${@}${GREEN}"
elif [[ "${COLOR}" = 'blue' ]]
then
	MSG="${BLUE}${@}${BLUE}"
else
	usage 1
fi
echo -e "${MSG}"
END
chmod +x myecho
PATH=.:${PATH}
myecho red WARNING this is dangerous
myecho green OK good to go
myecho_completion()
{
  COMPREPLY+=("red")
  COMPREPLY+=("blue")
  COMPREPLY+=("green")
}
complete -F myecho_completion myecho
END
source myechocomplete
myecho_completion()
{
  if [ ${COMP_CWORDS -ge 2 ]
  then
    COMPREPLY+=("Input")
    COMPREPLY+=("message!")
  else
    COMPREPLY+=("red")
    COMPREPLY+=("blue")
    COMPREPLY+=("green")
  fi
}
complete -F myecho_completion myecho
END
source myechocomplete
