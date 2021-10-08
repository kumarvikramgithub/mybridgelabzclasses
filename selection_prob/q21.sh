#
echo "Enter single Digit Number:";
read d;
div=$((d/10));
if [ $div -eq 0 ]
then
	if [ $d -eq 0 ]
	then
		echo "Zero";
	elif [ $d -eq 1 ]
	then
		echo "One";
	elif [ $d -eq 2 ]
	then
		echo "Two";
	elif [ $d -eq 3 ]
	then
		echo "Three";
	elif [ $d -eq 4 ]
	then
		echo "Four";
	elif [ $d -eq 5 ]
	then
		echo "Five";
	elif [ $d -eq 6 ]
	then
		echo "Six";
	elif [ $d -eq 7 ]
	then
		echo "Seven";
	elif [ $d -eq 8 ]
	then
		echo "Eight";
	else
		echo "Nine";
	fi
else
	echo "$d is Not single digit:";
fi
