#!/bin/bash -x


declare -A storeInDictionary
declare arr
echo "enter a number 1: "
read a

echo "enter a number 2: "
read b

echo "enter a number 3: "
read c

op1=$(($a+$b*$c))
op2=$(($a*$b+$c))
op3=$(($c+$a/$b))
op4=$(($a%$b+$c))

storeInDictionary[1]=$op1
storeInDictionary[2]=$op2
storeInDictionary[3]=$op3
storeInDictionary[4]=$op4

echo "element in dictionary: "${storeInDictionary[@]}


for ((i=1;i<=4;i++))
do
	arr[i]=${storeInDictionary[$i]}
done

echo "element in array: "${arr[@]}

for ((i=1;i<=4;i++))
do
	for ((j=$i+1;j<=4;j++))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done

echo "array element in ascending order: "${arr[@]}

for ((i=1;i<=4;i++))
do
        for ((j=$i+1;j<=4;j++))
        do
                if [ ${arr[i]} -lt ${arr[j]} ]
                then
                        temp=${arr[i]}
                        arr[i]=${arr[j]}
                        arr[j]=$temp
                fi
        done
done

echo "array element in decending order: "${arr[@]}
