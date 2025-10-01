#!/bin/bash

# Run with root privileges.

DEST="/home/ec2-user/cicd_test"

USER="ec2-user"
GROUP="ec2-user"

CD="/usr/bin/cd"
DATE="/usr/bin/date"
CHOWN="/usr/bin/chown"
SU="/usr/bin/su"

${CHOWN} -R ${USER}:${GROUP} ${DEST}

${CD} ${DEST}

${SU} - ${USER} <<-EOF
	./hoge2.sh
EOF
