#
wage_per_hour=20;
full_day_hour=8;
part_time_day_hour=4;
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
total_wages=0;
total_hour_work=0;
for (( i=1;i<=20;i++ ))
do
	isPresent=$((RANDOM%3));
	#wages=0;
	work_hour=0;
	case $isPresent in
		1)
        	wage=$(($wage_per_hour*$full_day_hour));
        	work_hour=8;
		;;
		2)
		wage=$(($wage_per_hour*$part_time_day_hour));
        	 work_hour=4;
		;;
		*)
		wage=0;
		work_hour=0;
		;;
	esac;
	total_wages=$(($total_wages+$wage));
	total_hour_work=$(($total_hour_work+$work_hour));
done
echo "Total Wages = $total_wages for $total_hour_work Hour Work.";
