#
echo "Enter Number:";
read d;
div=$((d%7));

	if [ $div -eq 0 ]
	then
		echo "Sunday";
	elif [ $div -eq 1 ]
	then
		echo "Monday";
	elif [ $div -eq 2 ]
	then
		echo "Tuesday";
	elif [ $div -eq 3 ]
	then
		echo "Wensday";
	elif [ $div -eq 4 ]
	then
		echo "Thursday";
	elif [ $div -eq 5 ]
	then
		echo "Friday";
	else
		echo "Saturday";
	fi
