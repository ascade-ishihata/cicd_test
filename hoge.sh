#!/bin/bash

# Run with root privileges.

DEST="/home/ec2-user/cicd_test"

UID="ec2-user"
GID="ec2-user"

CD="/usr/bin/cd"
DATE="/usr/bin/date"
CHOWN="/usr/bin/chown"
SU="/usr/bin/su"

${CHOWN} -R ${UID}:${GID} ${DEST}

${CD} ${DEST}

${SU} - ${UID} <<-EOF
	./hoge2.sh
EOF
