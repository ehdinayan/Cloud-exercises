#!/usr/bin/env bash
#File: cpyfile.sh

set -x

function howto {
 echo "You should enter a valid file path. Remember quotation by (') if any space in directory names:"
 sleep 2
 echo ""
 echo "Syntax a: bash cpyfile.sh [path/to/folder/file]"
 echo ""
 echo "Syntax b: bash cpyfile.sh ['path/to/fol der/file']"
}

if [[ -d "${1}"  ]] && [[ $? = 0 ]]
then

	echo "The directory you entered is: "${1}""
	sleep 2
	scp -r "${1}" root@134.209.86.164:/root/Files/ || { echo >&2 "Connection to remote server failed, please train again later."; exit 1; } 
	echo ""
	echo "Files were moved ok!"

elif [[ -e "${1}" ]] && [[ $? = 0 ]]
then
	echo "The directory you entered is: "${1}""
        sleep 2
        scp "${1}" root@134.209.86.164:/root/Files/ || { echo >&2 "Connection to remote server failed, please train again later."; exit 1; }
        echo ""
        echo "Files were moved ok!"

else

	howto

fi



