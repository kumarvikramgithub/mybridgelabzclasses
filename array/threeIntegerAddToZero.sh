#
declare -a arr;
read -p "Enter lenth of array: " l;
for (( i=0;i<$l;i++ ))
do
	read -p "Enter $(($i+1)) of $l :" el;
	arr[$i]=$el;
done
find=0;
for (( i=0;i<$l-2;i++ ))
do
	for (( j=i+1;j<l-1;j++))
	do
		for (( k=j+1;k<l;k++ ))
		do
			 res=$((${arr[i]}+ ${arr[j]}+ ${arr[k]}));
			if [ $res -eq 0 ]
			then
				echo " ${arr[i]} + ${arr[j]} + ${arr[k]} = 0 is triplate";
				find=1;
			fi
		done
	done
done
if [ $find -eq 0 ]
then
	echo "There is no triplate";
fi
