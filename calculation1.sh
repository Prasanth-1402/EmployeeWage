#!/usr/local/bin/bash


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


function getWorkHours(){
	read -p  "Enter the Work Hours :" Hours
	hoursLimit=$Hours
}

getWorkHours

declare -A DailyTotalWage

case $att in 
$IS_FULL_TIME)
	echo "THIS IS A FULL TIME EMPLOYEE"
	hours=8

	while (( $hours<=$hoursLimit ))
	do
		totalwage=$((hours*WAGE_PER_HR))
		echo $totalwage
		DailyTotalWage[$totalwage]=0	
		hours=$((hours+8))	
	done
	echo "Salary provided for a Full Time employee  is " $totalwage
	hours=8

	for(( i=$((hours*WAGE_PER_HR)); $i<=totalwage; i=$i+$((hours*WAGE_PER_HR))))
	do	
		DailyTotalWage[$i]=$totalwage
	done


	echo FULL TIME EMPLOYEE DAILY WAGE DICTIONARY VALUE :     ${DailyTotalWage[*]}
      
	echo FULL TIME EMPLOYEE DAILY WAGE DICTIONARY KEYS  : 	  ${!DailyTotalWage[*]}
		;;
$IS_PART_TIME)
	echo "THIS IS A PART TIME EMPLOYEE"
	hours=4
	while (( $hours<=$hoursLimit ))
        do
                totalwage=$((hours*WAGE_PER_HR))
                echo $totalwage
                DailyTotalWage[$totalwage]=0
                hours=$((hours+4))
        done
        echo "Salary provided for a Part Time employee  is " $totalwage
        hours=4

        for(( i=$((hours*WAGE_PER_HR)); $i<=totalwage; i=$i+$((hours*WAGE_PER_HR))))
        do
                DailyTotalWage[$i]=$totalwage
        done

        echo PART TIME EMPLOYEE DAILY WAGE DICTIONARY VALUE : 	${DailyTotalWage[*]}
        echo PART TIME EMPLOYEE DAILY WAGE DICTIONARY KEYS  : 	${!DailyTotalWage[*]}
                ;;

*) 	
	echo "Sorry, Employee is Absent"
		;;
esac
 
