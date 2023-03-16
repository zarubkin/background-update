/usr/local/bin/wget bing.com -O - | grep jpg | sed 's/.*th?id=OHR.//' | sed 's/jpg.*/jpg/' | sort | uniq > tmp.log
