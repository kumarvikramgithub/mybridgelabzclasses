#
echo "Enter single Digit Number:";
read d;
div=$((d/10));
if [ $div -eq 0 ]
then
	case $d in 
	0)
		echo "Zero";

	;;
	1)
		echo "One";
	;;
	2)
		echo "Two";
	;;
	3)
		echo "Three";
	;;
	4)
		echo "Four";
	;;
	5)
		echo "Five";
	;;
	6)
		echo "Six";
	;;
	7)
		echo "Seven";
	;;
	8)
		echo "Eight";
	;;
	*)
		echo "Nine";
	;;
	esac

else
	echo "$d is Not single digit:";
fi
