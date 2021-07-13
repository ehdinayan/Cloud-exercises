#!/usr/bin/env bash
# File: gitbot.sh

token=[yourtoken]

curl -i -u ehdinayan:$token https://api.github.com/users/ehdinayan > gitinfo.txt || { echo >&2 "Not possible to connect with git server. Please try again later." ;exit 1; }

echo ""
echo "A file with info you requested has been created:"
echo ""
echo "If you don't want it to be overwritten in the next script usage, please move it to whatever position is best for you."
echo ""
cat gitinfo.txt
