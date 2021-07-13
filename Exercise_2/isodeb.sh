#!/usr/bin/env bash
#File: isodeb_devel.sh

#set -x

curl -O https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/MD5SUMS || { echo >&2 "Unable to acces url at the moment. Please try later."; exit 1; }

iso=$( head -1 MD5SUMS | awk '{print $2}' )


	function hashes {
         head -1 MD5SUMS | md5sum -c
         if [[ $? = 0 ]]
         then
                echo "We are in fashion and file status ok!"
         else
                echo "md5sum hashes are not matching.Try download again"
                exit 1
         fi
        }


echo "I'll download $iso from official Debian site..."

sleep 2

if [[ ! -e $iso ]]
then

	curl -L -O https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/$iso || { echo >&2 "Unnable to acces url at the moment. Please try later."; exit 1; }

	hashes

else
	echo ""
	echo "There's a matching iso file in working dir. Let me check hashes..."
	echo ""
	hashes
fi
 
