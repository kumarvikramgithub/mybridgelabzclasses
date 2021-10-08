#Write a program that takes a input and determines if the number is a prime.
read -p "Enter a number to check num is prime or not : " n;
status=1;
for (( i=2; $i*$i<=$n; i++ ))
do
	if [ $(($n%$i)) -eq 0 ]
	then
		status=0;
		break;
	fi
done
if [ $status -eq 1 ]
then
       echo "$n is Prime";
else
	echo "$n is not Prime";
fi
