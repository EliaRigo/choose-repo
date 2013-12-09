#!/bin/bash

cd user_path

array=(`ls -1 --ignore="*.*"`)
echo $array
len=${#array[*]}

i=0
while [ $i -lt $len ]; do
if (($i%2 == 0))
then
	echo -e "${red} $i) ${array[$i]}${NC}"
	else
		echo -e "${blue} $i) ${array[$i]}${NC}"
fi
let i++
done

read -p "Repo: " r
cd ${array[$r]}

while true; do 
    clear
	#
	# INSERT HERE YOUR CUSTOM git log
	#
	read -p "" qe
	case $qe in
        [QqEe]* ) clear; exit;;
	esac
	sleep 5
done
