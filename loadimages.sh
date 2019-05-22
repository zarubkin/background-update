
while read image; do
	if ! [ -f $image ]; then
		wget "bing.com/th?id=OHR.$image" -O $image
	fi	
done <tmp.log
