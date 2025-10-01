#!/bin/bash

# Run as an unprivileged user.

DEST="/home/ec2-user/cicd_test"

PWD="/usr/bin/pwd"
WHOAMI="/usr/bin/whoami"

${PWD} >> ${DEST}/hoge2.log
${WHOAMI} >> ${DEST}/hoge2.log
