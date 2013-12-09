#!/bin/bash
red='\e[031m'
blue='\e[034m'
NC='\e[0m' # No Color

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
#echo "$r: ${array[$r]}"
cd ${array[$r]}

while true; do 
    clear
    #git log --reverse --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
    #git log --graph --topo-order --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
	#git lg
	#
	# INSERT HERE YOUR CUSTOM git log
	#
	read -p "" qe
	case $qe in
        [QqEe]* ) clear; exit;;
	esac
	sleep 5
done
