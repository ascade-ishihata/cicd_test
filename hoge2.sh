#!/bin/bash

# Run as an unprivileged user.

DEST="/home/ec2-user/cicd_test"
LOG="${DEST}/hoge2.log"

CP="/usr/bin/cp"
PWD_CMD="/usr/bin/pwd"
WHOAMI="/usr/bin/whoami"
GIT="/usr/bin/git"
UV="~/.local/bin/uv"
NOHUP="/usr/bin/nohup"

${CP} /dev/null ${LOG}
${CD} ${DEST}
${PWD_CMD} >> ${LOG}
${WHOAMI} >> ${LOG}
echo ${HOME} >> ${LOG}
${GIT} config --global --add safe.directory ${DEST} >> ${LOG}

${UV} sync >> ${LOG} 2>&1
${NOHUP} ${UV} run main.py > nohup.log 2>&1 &
