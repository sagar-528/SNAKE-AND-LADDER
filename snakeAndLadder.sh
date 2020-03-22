#!/bin/bash -x

#->Author: Sagar Gupta 
#->Date: Mar 2020 

#Constant
POSITION=0

#Variable
position=0
ladderCount=0
snakeCount=0

echo "Snake And Ladder Game"
player=$((RANDOM%6+1))			#Random Function for roll the die from 1 to 6.
echo "Outcomes are" $player

case $((RANDOM%3)) in
#No play the player stays in the same position
		0)
			echo "Current position is: "$position
			echo "you stay in same position: "$position ;;
#Ladder
		1)
			((ladderCount++))
			echo "Current position is: "$position
			position=$((position+player))
			echo "Player Ladder moves ahead: "$position ;;
#Snake
		2)
			((snakeCount++))
			echo "Current position is: "$position
			position=$((position-player))
			if (($position<0))
			then
				echo "Player Snake moves behind: "$POSITION
			else
				echo "Player moves behind: "$position
			fi ;;
esac
