#!/bin/bash
set -x
hostname
echo 'My hostname is: $(hostname)'
echo "My hostname is: $(hostname)"
echo "My hostname is: `hostname`"
echo "My hostname is: $(hostname)"
mkdir itb_cmdsub
cd itb_cmdsub
echo $(touch $(ls ..))
cd ..
rm -rf itb_cmdsub
mkdir itb_cmdsub
cd itb_cmdsub
echo `touch \`ls ..\``
cd ..
echo $(echo hello1 $(echo hello2))
echo `echo hello1 `echo hello2``
echo `echo hello1 \`echo hello2\``
echo `echo \`echo \\\`echo inside\\\`\``
echo $(echo $(echo $(echo inside)))
