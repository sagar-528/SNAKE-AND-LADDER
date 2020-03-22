#!/bin/bash -x

#->Author: Sagar Gupta 
#->Date: Mar 2020 

#Constant
POSITION=0
WINNING_POSITION=100

#Variable
position=0

echo "Snake And Ladder Game"
#Random Function for roll the die from 1 to 6.
#Winning Condition
while(($position!=$WINNING_POSITION))
do
	player=$((RANDOM%6+1))
	echo "Outcomes are" $player

	case $((RANDOM%3)) in
		#No play the player stays in the same position
		0)
			echo "Current position is: "$position
			echo "you stay in same position: "$position
			position=$position 
			echo " " ;;

		#Ladder
		1)
			echo "Current position is: "$position
			echo "You encountered a ladder"
		
			#Exact winning position
			if (( $((position+player))>100 ))
			then
				position=$position
				echo "Current position is: "$position
			else
				position=$((position+player))
				echo "Player Ladder moves ahead: "$position 
			fi
				echo " "  ;;
		
		#Snake
		2)
			echo "You encountered snake"
			echo "Current position is: "$position
		
			#Exact winning position.
			if (($position<0))
			then
				echo "Player Snake moves behind: "$POSITION
				position=$POSITION
			else
				position=$((position-player))
				echo "Player moves behind: "$position
				position=$position
			fi 
			echo " " ;;
	esac
done
