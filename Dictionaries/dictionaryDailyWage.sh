#
declare -A perDayWages;
declare -A perDayWorkHour;
MAX_DAY_IN_MONTH=20;
MAX_HOUR_MONTH=40;
PAY_PER_HOUR=20;
TOTAL_SALARY=0;
total_working_hour=0;
for (( i=0; i<$MAX_DAY_IN_MONTH; i++ ))
do
 	isPresent=$((RANDOM%3));
	Working_hour=0;
 	case $isPresent in
		0) Working_hour=0; ;;
                1) Working_hour=8; ;;
                2) Working_hour=4; ;;

	esac
	total_working_hour=$(( $total_working_hour + $Working_hour ));
	salary=$(($Working_hour*$PAY_PER_HOUR));
	if [ $total_working_hour -le $MAX_HOUR_MONTH ]
	then
		perDayWages[day$(($i+1))]=$salary;
		perDayWorkHour[day$(($i+1))]=$Working_hour;
 		TOTAL_SALARY=$(($TOTAL_SALARY+$salary));
	else
        total_working_hour=$(( $total_working_hour - $Working_hour ));
	fi
done
echo "Total wage $TOTAL_SALARY for working $total_working_hour hour; "
for key in ${!perDayWages[@]}
do
	echo " $key Wage = ${perDayWages[$key]} -> for ${perDayWorkHour[$key]} Hour.";
done

