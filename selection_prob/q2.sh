#Write a program that takes day and month from the command line and prints 
#true if day of month is between March 20 and June 20, false otherwise.
echo "Enter month: ";
read month;
echo "Enter day of Month: ";
read day;
if [ $day -gt 31 ] || [ $day -lt 1 ] 
then
	echo "false";
else
	if [ 3 -le $month ] && [ 6 -ge $month ]
	then
   		if [ $month -eq 3 ] && [ $day -lt 19 ]
   		then
 			echo "false";
   		elif [ $month -eq 6 ] && [ $day -gt 21 ]
   		then
			echo "false";
   		else
			echo "true";
   		fi
	else 
		echo "false";
	fi;
fi;
