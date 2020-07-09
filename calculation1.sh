#!/bin/bash 


#CONSTANTS
IS_PRESENT=1
IS_ABSENT=0
<<<<<<< HEAD
WAGE_PER_HR=20
FULL_DAY_HR=8
=======
>>>>>>> master

att=$((RANDOM%2))

if (($att==$IS_PRESENT))
then
	dailyWage=$((WAGE_PER_HR*FULL_DAY_HR))
	echo "Salary provided for an employee per day is " $dailyWage
else
	echo "Sorry, the Employee is Absent"
fi
