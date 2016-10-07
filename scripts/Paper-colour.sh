#!/bin/bash
#
# Original author: damo, on 2016-01-31
# https://forums.bunsenlabs.org/viewtopic.php?id=1200
#
# Requires Imagemagick
#
# Colorize, preserves alpha and white elements
# mogrify -fill 'rgb(x,y,z)' -tint 100 icon.png 
# Imgs to convert: folder*.png user-home.png inode-directory.png
#

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

#Move to Paper icons folder
cd /usr/share/icons/Paper
#echo "Current directory is $PWD"

tintcolour="rgb(205,168,124)"  # sandy brown   #CDA87C

for f in */places/*;do
    fname=$(basename $f)
    if [[ "$fname" = folder*.png ]] && ! [[ "$fname" = "folder-saved-search.png" ]];then 
		#echo "Editing $f"
        mogrify -fill "$tintcolour" -tint 100 "$f"
    fi
done

for f in */places/*;do
    fname=$(basename $f)
    if [[ "$fname" = user-home.png ]];then 
		#echo "Editing $f"
        mogrify -fill "$tintcolour" -tint 100 "$f"
    fi
done

for f in */status/*;do
    fname=$(basename $f)
    if [[ "$fname" = folder*.png ]];then 
		#echo "Editing $f"
        mogrify -fill "$tintcolour" -tint 100 "$f"
    fi
done

for f in */mimetypes/*;do   
    fname=$(basename $f)
    if [[ "$fname" = inode*.png ]];then
		#echo "Editing $f"
        mogrify -fill "$tintcolour" -tint 100 "$f"
    fi
done

echo "Paper-colour.sh: done"

