#!/bin/bash
#
# Author: SimonItaly
#
# Shell script for Paper-icon-theme:
# replace trash icons with the old ones
#

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

#Save the path where the script is launched
oldicons="$PWD/scripts/Paper-trash-icons"

#Move to Paper icons folder
cd /usr/share/icons/Paper

for f in */*/*;do
	fname=$(basename $f)
	if [[ "$fname" = *trash*.png ]];then

		g="${f%/*}"
		h="${g%/*}"

		#echo "Removing $f"
		rm "$f"

		if [[ "$fname" = *full*.png ]];then
			#echo "Copying $oldicons/$h/status/user-trash-full.png"
			cp "$oldicons/$h/status/user-trash-full.png" "$f"
		else
			#echo "Copying $oldicons/$h/places/user-trash.png"
			cp "$oldicons/$h/places/user-trash.png" "$f"
		fi
	fi
done

echo "Paper-trash.sh: done"

