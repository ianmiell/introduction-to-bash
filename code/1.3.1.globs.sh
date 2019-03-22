# Make folder
mkdir lbthw_glob
cd lbthw_glob

# Create some files
touch file1 file2 file3 file10 file11

# Simplest glob
######################
# *
ls *
# Not just ls - any command
echo *

# Quoting Globs
#######################
# Simple assignment
MYGLOB=*
echo $MYGLOB
# Quoting protects globs
MYGLOB="*"
# Single or double quotes
echo "$MYGLOB"
MYGLOB='*'
# Unlike variables
echo "$MYGLOB"
echo '$MYGLOB'
echo $MYGLOB

# Other Glob characters
#######################
# ?
ls file?
ls file*

# [n]
ls file[1]

# [n-m]
ls file[1-3]
ls f*[1-3]1
man ascii

# dotfiles
#######################
touch .adotfile
mkdir .adotdir
ls *
echo *
echo 'Run ls .*'
ls .*
echo 'Run .*'
echo .*
echo 'Run .a*'
echo .a*
ls .
ls ..


# vs regexp
rename -n 's/(.*)/new$1/' *
ls

# Cleanup
cd ..
rm -rf lbthw_glob
