#!/bin/bash

# Run as an unprivileged user.

PWD="/usr/bin/pwd"
WHOAMI="/usr/bin/whoami"

${PWD} >> hoge2.log
${WHOAMI} >> hoge2.log
