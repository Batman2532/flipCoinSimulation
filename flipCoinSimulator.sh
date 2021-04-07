#!/bin/bash

heads=0
tails=0
for((i=1;i<21;i++))
do

	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq 1 ]
	then
		(( heads++ ))
	else
		(( tails++ ))
	fi
done
echo "Heads won: "$heads "Tails won: " $tails
