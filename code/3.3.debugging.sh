#!/bin/bash
set -x
mkdir -p itb_debugging && cd lbthw_debugging
cat > debug_script.sh << 'END'
#!/bin/bash
A=some value
echo "${A}
echo "${B}"
END
bash -n debug_script.sh
bash debug_script.sh
bash -v debug_script.sh
bash -x debug_script.sh
cat > debug_script.sh << 'END'
#!/bin/bash
set -o nounset
A="some value"
echo "${A}"
echo "${B}"
END
bash -x debug_script.sh
cat > debug_script.sh << 'END'
#!/bin/bash
set -o nounset
A="some value"
B=
echo "${A}"
echo "${B}"
END
bash -x debug_script.sh
cat > debug_script.sh << 'END'
#!/bin/bash
set -o nounset
set -o xtrace
declare A="some value"
PS4='$(date "+%s%N => ")'
B=
echo "${A}"
A="another value"
echo "${A}"
echo "${B}"
END
bash -x debug_script.sh
ls
pwd
curl -q bbc.co.uk
shellcheck ~/.bashrc
