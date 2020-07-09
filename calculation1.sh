#!/bin/bash 


#CONSTANTS
IS_FULL_TIME=1
IS_PART_TIME=2
WAGE_PER_HR=20
FULL_DAY_HR=8
PART_TIME_HR=4

att=$((RANDOM%3))

case $att in 
$IS_FULL_TIME)
	dailyWage=$((WAGE_PER_HR*FULL_DAY_HR))
	echo "Salary provided for a Full Time employee per day is " $dailyWage
		;;
$IS_PART_TIME)
	dailyWage=$((WAGE_PER_HR*PART_TIME_HR))
	echo "Salary provided for a Part Time employee per day is " $dailyWage
		;;
*) 	
	echo "Sorry, Employee is Absent"
		;;
esac
 
