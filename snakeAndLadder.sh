#!/bin/bash -x

#->Author: Sagar Gupta 
#->Date: Mar 2020 

#Constant
POSITION=0
WINNING_POSITION=100

#Variable
position=0
dieCountForPlayer1=0
dieCountForPlayer2=0
positionForPlayer1=0
positionForPlayer2=0

echo "Snake And Ladder Game"
#Random Function for roll the die from 1 to 6.
player=$((RANDOM%6+1))
echo "Outcomes are" $player

#Winning condition
function PlayGame(){
	position=$1
case $((RANDOM%3)) in

		#No play the player stays in the same position
		0)
			position=$position 
			 ;;

		#Ladder
		1)
		#Exact winning position
		if (( $((position+player))>100 ))
		then
			position=$position
		else
				position=$((position+player))
				position=$position 
			fi
		 ;;

		#Snake
		2)
		#Exact restart position.
		if (($position>$player))
		then
			position=$((position-player))
			Position=$position
		else
			position=$position
		fi
		;;
	esac
	echo $position
}

#play till 100
while [[ $positionForPlayer1 -ne $WINNING_POSITION && $positionForPlayer2 -ne $WINNING_POSITION ]]
do
	((dieCountForPlayer1++))
	positionForPlayer1="$(PlayGame $positionForPlayer1)"
	echo "player 1 die count $dieCountForPlayer1 : Position $positionForPlayer1"

	((dieCountForPlayer2++))
   positionForPlayer2="$(PlayGame $positionForPlayer2)" 
   echo "player 2 die count $dieCountForPlayer2 : Position $positionForPlayer2"
done

if(($positionForPlayer1==$WINNING_POSITION))
then
	echo "Player 1 Won. You rolled the die for $dieCountForPlayer1 times"
else
	echo "Player 2 Won. You rolled the die for $dieCountForPlayer2 times"
fi
