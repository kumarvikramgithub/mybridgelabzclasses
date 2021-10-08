#1.
declare -a arr;
for (( i=0;i<10;i++ ))
do
	arr[$i]=$((RANDOM%1000));
done
echo ${arr[@]};
smin=$((RANDOM%10000));
smax=$((RANDOM%100));
min=$smin;
echo "smin=$smin";
echo "smin=$smax";
max=$smax;
for (( i=1;i<${#arr[@]};i++ ))
do
	if [ ${arr[i]} -lt $min ]
	then
		smin=$min;
		min=${arr[i]};
	fi
	 if [ ${arr[i]} -gt $max ]
        then
                smax=$max;
                max=${arr[i]};
        fi
done
echo "Second Smallest Number = $smin";
echo "Second Largest Number = $smax";

