#!/bin/bash 

#CONSTANTS
IS_PRESENT=1
IS_ABSENT=0
WAGE_PER_HR=20
FULL_DAY_HR=8

att=$((RANDOM%2))

if (($att==$IS_PRESENT))
then
	dailyWage=$((WAGE_PER_HR*FULL_DAY_HR))
	echo "Salary provided per is " $dailyWage
else
	echo "Sorry, the Employee is Absent"
fi
