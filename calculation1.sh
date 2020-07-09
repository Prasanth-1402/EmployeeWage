#!/bin/bash -x


#CONSTANTS
IS_FULL_TIME=1
IS_PART_TIME=2
WAGE_PER_HR=20
FULL_DAY_HR=8
PART_TIME_HR=4
WORKING_DAY_PER_MONTH=20


#VARIABLES
hours=0
days=0
att=$((RANDOM%3))

case $att in 
$IS_FULL_TIME)
	echo "THIS IS A FULL TIME EMPLOYEE"
	while (( $hours<100 && $days<20 ))
	do
		wage=$((hours*days*WAGE_PER_HR))
		hours=$((hours+8))	
		days=$((days+1))
	done
	echo "Salary provided for a Full Time employee  is " $wage
		;;
$IS_PART_TIME)
	echo "THIS IS A PART TIME EMPLOYEE"
	while (( $hours<100 && $days<20 ))
	do
		Wage=$((WAGE_PER_HR*hours*days))
		hours=$((hours+4))
		days=$((days+1))
	done
	echo "Salary provided for a Part Time employee  is " $Wage
		;;
*) 	
	echo "Sorry, Employee is Absent"
		;;
esac
 
