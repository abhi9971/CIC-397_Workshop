#!/bin/bash 

array=(10 15 17 23 78)
echo ${array[*]}
length=${#array[*]}
echo "$length"

for (( i=0; i<$length; i++ ))
do
	flag=0
	val=$((${array[i]}/2))
	for (( j=2; j<=$val; j++ ))
	do
		rem=$((${array[i]}%$j))
		if [ $rem -eq 0 ]
		then
			flag=1
			break
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo "${array[i]} is not prime no"
	else
		echo "${array[i]} is a prime no"
	fi
done

