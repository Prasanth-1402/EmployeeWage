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
	counter=1
	while (( $hours<=$hoursLimit ))
	do
		totalwage=$((hours*WAGE_PER_HR))
		DailyTotalWage[$counter]=$totalwage	
                counter=$((counter+1))
		hours=$((hours+8))	
	done
	echo "Salary provided for a Full Time employee  is " $totalwage
	hours=8


	echo FULL TIME EMPLOYEE DAILY WAGE DICTIONARY VALUE BEFORE ADDING TOTAL WAGE :     ${DailyTotalWage[*]}

        echo FULL TIME EMPLOYEE DAILY WAGE DICTIONARY KEYS  :     ${!DailyTotalWage[*]}
                

	for(( i=1; $i<$counter; i++))
	do
		DailyTotalWage[$i]=${DailyTotalWage[$i]}+$totalwage
	
	done

	echo FULL TIME EMPLOYEE DAILY WAGE DICTIONARY VALUE AFTER ADDING TOTAL WAGE :     ${DailyTotalWage[*]}
	echo FULL TIME EMPLOYEE DAILY WAGE DICTIONARY KEYS  : 	  ${!DailyTotalWage[*]}
		;;
$IS_PART_TIME)
	echo "THIS IS A PART TIME EMPLOYEE"
	hours=4
	counter=1
	while (( $hours<=$hoursLimit ))
        do
                totalwage=$((hours*WAGE_PER_HR))
                DailyTotalWage[$counter]=$totalwage
		counter=$((counter+1))
                hours=$((hours+4))
        done
        echo "Salary provided for a Part Time employee  is " $totalwage
        hours=4

	echo PART TIME EMPLOYEE DAILY WAGE DICTIONARY VALUE BEFORE ADDING TOTAL WAGE :   ${DailyTotalWage[*]}
        echo PART TIME EMPLOYEE DAILY WAGE DICTIONARY KEYS  :   ${!DailyTotalWage[*]}

        for(( i=1; $i<$counter; i++))
        do
                DailyTotalWage[$i]=${DailyTotalWage[$i]}+$totalwage
        done

        echo PART TIME EMPLOYEE DAILY WAGE DICTIONARY VALUE AFTER ADDING TOTAL WAGE : 	${DailyTotalWage[*]}
        echo PART TIME EMPLOYEE DAILY WAGE DICTIONARY KEYS  : 	${!DailyTotalWage[*]}
                ;;

*) 	
	echo "Sorry, Employee is Absent"
		;;
esac
 
