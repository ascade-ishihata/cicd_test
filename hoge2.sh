#!/bin/bash

# Run as an unprivileged user.

DEST="/home/ec2-user/cicd_test"
LOG="${DEST}/hoge2.log"

CP="/usr/bin/cp"
CD="/usr/bin/cd"
DATE="/usr/bin/date"
PWD_CMD="/usr/bin/pwd"
WHOAMI="/usr/bin/whoami"
GIT="/usr/bin/git"
UV="${HOME}/.local/bin/uv"
NOHUP="/usr/bin/nohup"

${CP} /dev/null ${LOG}
${CD} ${DEST}
${DATE} >> ${LOG}
echo "pwd: `${PWD_CMD}`" >> ${LOG}
echo "whoami: `${WHOAMI}`" >> ${LOG}
echo "HOME: ${HOME}" >> ${LOG}
${GIT} config --global --add safe.directory ${DEST} >> ${LOG}

${UV} sync >> ${LOG} 2>&1
${NOHUP} ${UV} run main.py > nohup.log 2>&1 &
