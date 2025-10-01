#!/bin/bash

# Run as an unprivileged user.

WHOAMI="/usr/bin/whoami"
TEE="/usr/bin/tee"

${WHOAMI} | ${TEE} -a hoge2.log
