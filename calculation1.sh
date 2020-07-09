#!/bin/bash 


#CONSTANTS
IS_FULL_TIME=1
IS_PART_TIME=2
WAGE_PER_HR=20
FULL_DAY_HR=8
PART_TIME_HR=4
WORKING_DAY_PER_MONTH=20

att=$((RANDOM%3))

case $att in 
$IS_FULL_TIME)
	monthlyWage=$((WAGE_PER_HR*FULL_DAY_HR*WORKING_DAY_PER_MONTH))
	echo "Salary provided for a Full Time employee per day is " $monthlyWage
		;;
$IS_PART_TIME)
	monthlyWage=$((WAGE_PER_HR*PART_TIME_HR*WORKING_DAY_PER_MONTH))
	echo "Salary provided for a Part Time employee per day is " $monthlyWage
		;;
*) 	
	echo "Sorry, Employee is Absent"
		;;
esac
 
