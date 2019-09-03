sleep 40 &
[1] 39165
pwd
pwd
[1]+  Done                    sleep 40
sleep 10 &
wait
[1]+  Done                    sleep 10
sleep 999 # NOW HIT CTRL, HOLD IT DOWN AND THEN HIT C (CTRL-c)
echo $?
man signal
sleep 999 # NOW HIT CTRL, HOLD IT DOWN AND THEN HIT Z (CTRL-z)
echo $?
jobs
kill %1
sleep 999 &
KILLPID=${!}
echo ${KILLPID}
kill -15 ${KILLPID}
echo $?
echo ${?}
:
: you can type anything here
echo $?
cd /tmp && : now in tmp folder && cd - && : now back in previous folder
while :; do sleep 5; done
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
TRAP_EXIT_PID=$!
kill -15 ${TRAP_EXIT_PID}
ps -ef | grep sleep
./trap_exit.sh &
TRAP_EXIT_PID=$(echo ${!})
kill -9 ${TRAP_EXIT_PID}
sleep 120 &
sleep 121 &
jobs
[1]-  Running                 sleep 120 &
[2]+  Running                 sleep 121 &
fg
sleep 121
[2]+  Stopped                 sleep 121
bg
[2]+ sleep 121 &
kill %1
RETURN
[1]+  Terminated: 15          sleep 120
