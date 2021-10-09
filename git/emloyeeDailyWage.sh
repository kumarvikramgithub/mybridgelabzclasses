#
wage_per_hour=20;
full_day_hour=8;
part_time_day_hour=4;
isPresent=$((RANDOM%3));
if [ $isPresent -eq 1 ]
then
	wages=$(($wage_per_hour*$full_day_hour));
	echo "Wage = $wages Re. ";
elif [ $isPresent -eq 2 ]
then
        wages=$(($wage_per_hour*$part_time_day_hour));
        echo "Part Wage = $wages Re. ";
else
	echo "Wage = 0 Re. ";
fi
