function isPrime () {
	num=$(($1));
	for (( i=2; $i*$i<=$num; i++ ))
	do
		status=1;
		if [ $(($num%$i)) -eq 0 ]
		then
			status=0;
			break;
		fi
	done
	if [ $status -eq 1 ]
	then
		echo 1;
	else
		echo 0;
	fi
}
function isPalindrome () {
	num=$(($1));
	num2=$num;
	temp=0;
	while [ $num -gt 0 ]
	do
		rem=$(($num%10));
		num=$(($num/10));
		temp=$(( $temp*10+$rem));
	done
	echo $temp;

}
read -p "Enter a Number " n;
checkPrime=$( isPrime $n );
if [ $checkPrime -eq 1 ]
then
	checkPalindrome=$( isPalindrome $n );
	check=$( isPrime $checkPalindrome );
	if [ $check -eq 1 ]
	then
        	echo "Number $n is prime and Palindrome $checkPalindrome is also Prime";
	else
		echo "Number $n is Prime but Palindrome $checkPalindrome is not a Prime";
	fi
else
echo "Number $n is not Prime";
fi
