#
wage_per_hour=20;
full_day_hour=8;
isPresent=$((RANDOM%2));
if [ $isPresent -eq 1 ]
then
	wages=$(($wage_per_hour*$full_day_hour));
	echo "Wage = $wages Re. ";
else
	echo "Wage = 0 Re. ";
fi
