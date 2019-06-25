#!/bin/bash
set -x
sleep 999 # NOW HIT CTRL, HOLD IT DOWN AND THEN HIT C (CTRL-c)
echo $?
man signal
man man
sleep 999 # NOW HIT CTRL, HOLD IT DOWN AND THEN HIT Z (CTRL-z)
echo $?
sleep 999 &
KILLPID=$(echo ${!})
echo ${KILLPID}
kill -2 ${KILLPID}
echo ${?}
wait ${KILLPID}
echo ${?}
while :; do sleep 5; done # NOW HIT CTRL-c
mkdir -p itb_traps && cd lbthw_traps
vi trap_exit.sh
#!/bin/bash
trap "echo trapped" INT
while :; do sleep 5; done
chmod +x trap_exit.sh
./trap_exit.sh # NOW HIT CTRL-c
# HIT CTRL-z
kill %1
#!/bin/bash
trap "echo trapped" EXIT
sleep 999 &
wait
./trap_exit.sh &
TRAP_EXIT_PID=$(echo ${!})
kill -15 ${TRAP_EXIT_PID}
ps -ef | grep sleep
./trap_exit.sh &
TRAP_EXIT_PID=$(echo ${!})
kill -9 ${TRAP_EXIT_PID}
sleep 999 &
wait
sleep 999
./trap_exit.sh # HIT CTRL-c
