#

read -p "Enter Value of a:-> " a;
read -p "Enter Value of b:-> " b;
read -p "Enter Value of c:-> " c;

if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo "a = $a is Maximum";
	else
		echo "c = $c is Maximum";
	fi
	if [ $b -gt $c ]
	then
		echo "c = $c is Minimum";
	else
		echo "b = $b is minimum";
	fi
else
	if [ $b -gt $c ]
	then
		echo "b = $b is Maximum";
	else
		echo "c = $c is Maximum";
	fi
	if [ $a -gt $c ]
	then
		echo "c = $c is Minimum";
	else
		echo "a = $a is Minimum";
	fi
fi
exp1=$(($a+$b*$c));
exp2=$(($a%$b+$c));
exp3=$(($a+$b/$c));
exp4=$(($a*$b+$c));

echo "Exp1 of $a + $b * $c = $exp1";
echo "Exp2 of $a % $b + $c = $exp2";
echo "Exp3 of $a + $b / $c = $exp3";
echo "Exp4 of $a * $b + $c = $exp4";

