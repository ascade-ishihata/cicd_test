#!/bin/bash

# Run as an unprivileged user.

DEST="/home/ec2-user/cicd_test"
LOG="${DEST}/hoge2.log"

CP="/usr/bin/cp"
DATE="/usr/bin/date"
PWD_CMD="/usr/bin/pwd"
LS="/usr/bin/ls"
GIT="/usr/bin/git"
PKILL="/usr/bin/pkill"
UV="${HOME}/.local/bin/uv"
NOHUP="/usr/bin/nohup"

${CP} /dev/null ${LOG}

# Use the built-in cd instead of /usr/bin/cd.
cd ${DEST}/

${DATE} >> ${LOG}
echo "pwd: `${PWD_CMD}`" >> ${LOG}
${LS} >> ${LOG}
${GIT} config --global --add safe.directory ${DEST} >> ${LOG}

${PKILL} python >> ${LOG} 2>&1
${UV} sync >> ${LOG} 2>&1
${NOHUP} ${UV} run main.py > nohup.log 2>&1 &
