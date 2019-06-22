mkdir itb_subshells && cd lbthw_subshells
VAR1='the original variable'
$ (
echo Inside the subshell
echo ${VAR1}
VAR1='the updated variable'
echo ${VAR1}
VAR2='the second variable'
)
   $ echo ${VAR1}
(
export VAR1='the first variable exported'
)
echo ${VAR1}
echo Some output, ls to follow >> logfile
ls >> logfile
(
echo Some output, ls to follow
ls
) >> logfile
(
echo Some output, ls to follow
ls
) >> logfile
( echo output ) >> logfile
{ echo output } >> logfile
{ echo output ; } >> logfile
pwd
( mkdir itb_subshells_2
cd itb_subshells_2
pwd )
pwd
