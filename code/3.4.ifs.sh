mkdir itb_ifs && cd lbthw_ifs
echo file1 created > "Spaces in filename1.txt"
cat "Spaces in filename1.txt"
echo file2 created > "Spaces in filename2.txt"
cat "Spaces in filename2.txt"
for f in $(ls)
do
  ls $f
done
for f in $(echo 1 2 3 4)
do
  echo $f
done
echo $IFS
set | grep IFS
IFS=$' \t\n'
   Spaces in filename1.txt
   Spaces in filename2.txt
   Spaces
   in
   filename1.txt
   Spaces
   in
   filename2.txt
IFS=$'\t\n'
for f in $(ls)
do
  ls $f
done
find . -type f | xargs -n1 grep somestring
find . -type f -print0 | xargs -0 -n1 grep somestring
IFS=$'\n\t'
for f in $(echo 1 2 3 4)
do
  echo $f
done
for f in 1 2 3 4
do
  echo $f
done
IFS=$' \n\t'
for f in "1 2" 3 4
do
  echo $f
done
