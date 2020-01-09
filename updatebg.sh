LAST_IMAGE=$((find *UHD.jpg -printf '%T+ %p\n' || find *.jpg -printf '%T+ %p\n') | sort -r | head -n 1 | sed s/.*\ //)
echo $LAST_IMAGE
cp $LAST_IMAGE ~/Pictures/BackgroundImage.jpg
