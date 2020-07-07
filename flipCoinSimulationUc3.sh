#!/bin/bash -x

declare -A storeCoin

echo "Number of time flip the coin: "
read flipTime

counOfHH=0;
countOfTT=0;
countOfHT=0;
countOfTH=0;
for ((i=0;i<$flipTime;i++))
do
	randomCheck=$((RANDOM%4+1))

if [ $randomCheck -eq 1 ]
then
	
	storeCoin[$i]="HH"
	((countOfHH++))
elif [ $randomCheck -eq 2 ]
then
	storeCoin[$i]="TT"
	((countOfTT++))
elif [ $randomCheck -eq 3 ]
then
	storeCoin[$i]="HT"
	((countOfHT++))
elif [ $randomCheck -eq 4 ]
then
	 storeCoin[$i]="TH"
        ((countOfTH++))
fi
done

perOfHH=`echo $countOfHH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
perOfTT=`echo $countOfTT $flipTime | awk -F" " '{ a=$1; b=$2; res2=(a/b*100); print res2}'`
perOfHT=`echo $countOfHT $flipTime | awk -F" " '{ a=$1; b=$2; res3=(a/b*100); print res3}'`
perOfTH=`echo $countOfTH $flipTime | awk -F" " '{ a=$1; b=$2; res4=(a/b*100); print res4}'`
echo ${storeCoin[@]}
