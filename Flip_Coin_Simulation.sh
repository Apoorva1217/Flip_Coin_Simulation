#!/bin/bash -x

head=0
tail=0
r=$((RANDOM%2))
if(($r == 1))
then
	head=$(($head+1))
else
	tail=$(($tail+1))
fi
echo "Heads:"$head
echo "Tails:"$tail
if(($head > $tail))
then
	echo "Head wins"
else
	echo "Tail wins"
fi
