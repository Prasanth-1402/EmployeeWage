#!/bin/bash 


#CONSTANTS
IS_PRESENT=1
IS_ABSENT=0


att=$((RANDOM%2))

if (($att==$IS_PRESENT))
then
	echo "Present"
else
	echo "Absent"
fi
