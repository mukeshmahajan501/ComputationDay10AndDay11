#!/bin/bash -x

declare -A storeCoin

echo "Number of time flip the coin: "
read flipTime

counOfH=0;
countOfT=0;

for ((i=0;i<$flipTime;i++))
do
	randomCheck=$((RANDOM%2))

if [ $randomCheck -eq 1 ]
then
	echo "head"
	storeCoin[$i]="H"
	((countOfH++))
else
	echo "tail"
	storeCoin[$i]="T"
	((countOfT++))
fi
done

perOfH=`echo $countOfH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
perOfT=`echo $countOfT $flipTime | awk -F" " '{ a=$1; b=$2; res2=(a/b*100); print res2}'`

echo ${storeCoin[@]}
