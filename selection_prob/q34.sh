#
read -p "User Input(Number) : " n;
echo "Operation Number";
echo "Feet to Inch -> 1 :";
echo "Feet to Meter -> 2 :";
echo "Inch to Feet -> 3 :";
echo "Meter to Feet -> 4 :";
read -p "Enter operation Number : " op;
echo "In This Unit Conversion We Assume 1Meter = 3Feet";
case $op in
	1)
		a=$(($n*12));
		echo "$n Feet = $a Inchs";
	;;
        2)
                ans=$(($n / 3));
                echo "$n Feet = $ans Meter";
        ;;
        3)
                ans=$(($n / 12));
                echo "$n Inch = $ans Feet";
        ;;
	4)
		ans=$(($n*3));
                echo "$n Meter = $ans Feet";
        ;;
	*)
		echo "Invalid Operation Number";
	;;
esac
