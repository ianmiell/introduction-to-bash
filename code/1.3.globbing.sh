mkdir itb_glob
cd itb_glob
touch file1 file2 file3
ls *
echo *
echo ls *
echo ls '*'
echo '$HOME'
echo "$HOME"
ls "*"
ls *1
ls file[12]
ls file[a-z]
ls fil[a-z][0-9]
echo file?
touch .adotfile
mkdir .adotfolder
touch .adotfolder/file1 .adotfolder/.adotfile
ls
ls *
echo .*
ls .*
cd .
echo text > afile
grep text afile
grep '*' afile
grep '.*' afile
