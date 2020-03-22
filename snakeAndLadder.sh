#!/bin/bash -x

#->Author: Sagar Gupta 
#->Date: Mar 2020 

#Constant
POSITION=0

echo "Snake And Ladder Game"
player=$((RANDOM%6+1))			#Random Function for roll the die from 1 to 6.
echo "Outcomes are" $player
