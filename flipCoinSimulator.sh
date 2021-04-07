#!/bin/bash 

heads=0
tails=0
win=21
while (( $heads < $win && $tails < $win ))
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq 1 ]
	then
		(( heads++ ))
	else
		(( tails++ ))
	fi
done
if [ $heads -le $tails ]
then
	echo "Tails won: " $tails
	echo Tails win by $(($tails-$heads))
elif [ $tails -le $heads ]
then
	echo "Heads won: " $heads	
	echo Heads win by $(($heads-$tails))
else 
	echo Its a tie
fi


