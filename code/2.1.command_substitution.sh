hostname
echo "My hostname is: $(hostname)"
echo 'My hostname is: $(hostname)'
echo "My hostname is: `hostname`"
echo "My hostname is: $(hostname)"
cd itb_cmdsub
ls $(echo a $(echo b))
cd ..
ls `echo a `echo b``
ls `echo a \`echo b\``
echo `echo \`echo \\\`echo inside\\\`\``
echo $(echo $(echo $(echo inside)))
