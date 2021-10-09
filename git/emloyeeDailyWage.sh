#
wage_per_hour=20;
full_day_hour=8;
part_time_day_hour=4;
max_hour_in_month=100;
max_in_month_work=20;
#isPresent=$((RANDOM%3));
#if [ $isPresent -eq 1 ]
#then
	#wages=$(($wage_per_hour*$full_day_hour));
	#echo Wage = $wages Re. ";
#elif [ $isPresent -eq 2 ]
#then
        #wages=$(($wage_per_hour*$part_time_day_hour));
        #echo Part Wage = $wages Re. ";
#else
	#echo Wage = 0 Re. ";
#fi
function getWorkHour () {
	case $1 in
                1)
                echo $full_day_hour;
                ;;
                2)
          	echo $part_time_day_hour;
		;;
		*)
		echo 0;
		;;
	esac
}
total_wages=0;
total_hour_work=0;
declare -A dailyWage;
for (( i=1;i<=20;i++ ))
do
	isPresent=$((RANDOM%3));
	work_hour=$( getWorkHour $isPresent );
	wage=$(($wage_per_hour*$work_hour));
	total_wages=$(($total_wages+$wage));
        total_hour_work=$(($total_hour_work+$work_hour));

	if [ $total_hour_work -ge $max_hour_in_month ]
	then
		total_wages=$(($total_wages-$wage));
		total_hour_work=$(($total_hour_work-$work_hour));
		break;
	fi
	dailyWage[day$i]=$wage;
done
echo "Total Wages = $total_wages for $total_hour_work Hour Work.";
for key in ${!dailyWage[@]}
do
	echo "$key Wage = ${dailyWage[$key]} Re.";
done
