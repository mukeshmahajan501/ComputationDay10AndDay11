#!/bin/bash -x

declare -A storeCoin

echo "Number of time flip the coin: "
read flipTime

countOfHHH=0;
countOfTTT=0;
countOfHHT=0;
countOfTTH=0;
coutOfHTT=0;
countOfTHH=0
countOfTHT=0;
countOfHTH=0;
for ((i=0;i<$flipTime;i++))
do
	randomCheck=$((RANDOM%8+1))

if [ $randomCheck -eq 1 ]
then
	
	storeCoin[$i]="HHH"
	((countOfHHH++))
elif [ $randomCheck -eq 2 ]
then
	storeCoin[$i]="TTT"
	((countOfTTT++))
elif [ $randomCheck -eq 3 ]
then
	storeCoin[$i]="HHT"
	((countOfHHT++))
elif [ $randomCheck -eq 4 ]
then
	 storeCoin[$i]="TTH"
        ((countOfTTH))
elif [ $randomCheck -eq 5 ]
then
         storeCoin[$i]="HTT"
        ((countOfHTT++))
elif [ $randomCheck -eq 6 ]
then
         storeCoin[$i]="THH"
        ((countOfTHH++))
elif [ $randomCheck -eq 7 ]
then
         storeCoin[$i]="THT"
        ((countOfTHT++))
elif [ $randomCheck -eq 8 ]
then
         storeCoin[$i]="HTH"
        ((countOfHTH++))
fi
done

perOfHHH=`echo $countOfHHH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
perOfTTT=`echo $countOfTTT $flipTime | awk -F" " '{ a=$1; b=$2; res2=(a/b*100); print res2}'`
perOfHHT=`echo $countOfHHT $flipTime | awk -F" " '{ a=$1; b=$2; res3=(a/b*100); print res3}'`
perOfTTH=`echo $countOfTTH $flipTime | awk -F" " '{ a=$1; b=$2; res4=(a/b*100); print res4}'`
perOfHTT=`echo $countOfHTT $flipTime | awk -F" " '{ a=$1; b=$2; res5=(a/b*100); print res5}'`
perOfTHH=`echo $countOfTHH $flipTime | awk -F" " '{ a=$1; b=$2; res6=(a/b*100); print res6}'`
perOfTHT=`echo $countOfTHT $flipTime | awk -F" " '{ a=$1; b=$2; res7=(a/b*100); print res7}'`
perOfHTH=`echo $countOfHTH $flipTime | awk -F" " '{ a=$1; b=$2; res8=(a/b*100); print res8}'`

echo ${storeCoin[@]}



