#!/bin/bash

WORK_DIR=~/.background-update
mkdir -p $WORK_DIR
cp getimages.sh $WORK_DIR
cp loadimages.sh $WORK_DIR  
cp updatebg.sh $WORK_DIR

cd ~/Pictures
mkdir bu

cd ~/.background-update
echo "cd $PWD" > process.sh
echo "./getimages.sh" >> process.sh
echo "./loadimages.sh" >> process.sh
echo "./updatebg.sh" >> process.sh
chmod +x *.sh
crontab -l > mycron
NLB=$(cat mycron | sort | uniq | wc -l)
echo "1 * * * * $PWD/process.sh" >> mycron
NLA=$(cat mycron | sort | uniq | wc -l)
if [ $NLB -ne $NLA ]
then
	crontab mycron
fi
rm mycron
