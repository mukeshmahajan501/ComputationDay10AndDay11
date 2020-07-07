#!/bin/bash -x


headCount=0;
tailCount=0;
no=0
while [  $no -ne 100  ]
do

	getRandomNo=$((RANDOM%2))
	if [ $getRandomNo -eq 1 ]
	then
		echo "head"
		((headCount++))
	else
		echo "tails"
		((tailCount++))
	fi
	((no++))

done


echo "number of time head win: "$headCount
echo "number of time tail win:"$tailCount


if [ $headCount -ge $tailCount ]
then
	diff=$(($headCount-$tailCount))

	echo "win head by:$diff"
else
	diff=$(($tailCount-$headCount))

	echo "win tail by:$diff"
fi

