mkdir itb_process_subst && cd itb_process_subst
mkdir a
mkdir b
touch a/1 a/2
touch b/2 b/3
ls a
ls b
ls a
ls b
ls a > aout
ls b > bout
diff aout bout
rm aout bout
diff <(ls a) <(ls b)
diff <(ls a) <(ls b)
