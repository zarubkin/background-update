LAST_IMAGE=$(find *.jpg | xargs stat -t "%Y-%m-%dT%h:%m:%s%Z" -f "%SB %N" | sort -r | head -n 1 | sed s/.*\ //)
echo $LAST_IMAGE
cp $LAST_IMAGE ~/Pictures/bu/BackgroundImage.jpg
