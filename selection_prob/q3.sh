#write a program that takes a year as input and outputs the Year is a Leap Year
#or not a leap year. A leap year checks for 4 Digit Number, Divisible by 4 
#and not 100 unless divisible by 400.
echo "Enter Year";
read year;
fp=$(($year/1000));
if [ $fp -ge 1 ] && [ $fp -le 9 ]
then
	yeardf=$(($year%4));
	yeardfh=$(($year%400));
	yeardh=$(($year%100));

	if [ $yeardf -eq 0 ]
	then
		if [ $yeardfh -eq 0 ]
		then
			echo "$year is a Leap Year.";
		elif [ $yeardh -eq 0 ]
		then
		 	echo "$year is Not a Leap Year.";
		else
			echo "$year is a Leap Year.";
		fi
	else
		echo "$year is Not a Leap Year.";
	fi
else
	echo "Given Year is not 4 digit";
fi

