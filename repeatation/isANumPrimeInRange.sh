#Extend the program to take a range of number as input and output the Prime
#Numbers in that range.

read -p "Enter How much number in range: " n;
for (( m=1; m<=$n; m++ ))
do
	read -p "$m of $n number : " num;
	status=1;
	for (( i=2; $i*$i<=$num; i++ ))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			status=0;
			break;
		fi
	done
	if [ $status -eq 1 ]
	then
       		echo "$num is Prime";
	else
		echo "$num is not Prime";
	fi
done;
