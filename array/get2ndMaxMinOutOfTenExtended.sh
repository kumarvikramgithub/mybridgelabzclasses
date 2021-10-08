
#1.
declare -a arr;
for (( i=0;i<10;i++ ))
do
	arr[$i]=$((RANDOM%1000));
done
echo ${arr[@]};
for (( i=0;i<${#arr[@]};i++ ))
do
	for (( j=$(($i+1));j<${#arr[@]};j++ ))
	do
		if [ $((${arr[i]})) -gt $((${arr[j]})) ]
		then
			temp=${arr[i]};
			arr[$i]=${arr[j]};
			arr[$j]=$(($temp));
		fi
	done
done
echo ${arr[@]};

echo "Second Smallest Number = ${arr[1]}";
echo "Second Largest Number = ${arr[${#arr[@]}-2]}";

