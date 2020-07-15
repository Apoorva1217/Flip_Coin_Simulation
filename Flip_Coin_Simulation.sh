#!/bin/bash -x

head=0
tail=0
while [ $head -ne 21 ] && [ $tail -ne 21 ]
do
	r=$((RANDOM%2))
	if(($r == 1))
	then
		head=$(($head+1))
	else
		tail=$(($tail+1))
	fi
done
echo "Heads:"$head
echo "Tails:"$tail

if [ $head -gt $tail ]
then
        win=$(($head-$tail))
        echo "Head wins by $win"
elif [ $tail -gt $head ]
then
         win=$(($tail-$head))
         echo "Tail wins by $win"
else
	echo "It's a tie..."
	if [ $head -eq $tail ]
	then
		while true
		do
			res=$((RANDOM%2))
			if(($res==1))
			then
				head=$(($head+1))
			else
				tail=$(($tail+1))
			fi
			if [ $(($head-$tail)) -eq 2 ]
			then
				echo "Head wins by 2 and count is:"$head
			else
				if [ $(($tail-$head)) -eq 2 ]
				then
					echo "Tail wins by 2 and count is:"$tail
				fi
			fi
		done
	fi
fi
