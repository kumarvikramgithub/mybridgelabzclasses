#
declare -a arr;
index=0;
for (( i=10;i<100;i++ ))
do
	unit=$(($i%10));
        ten=$(($i/10));
	if [ $unit -eq $ten ]
	then
		arr[$index]=$i;
		index=$(($index+1));
	fi
done
echo ${arr[@]};

