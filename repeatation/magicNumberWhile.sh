#
magicNumber=$(($RANDOM%100));
find=0;
while [ $find -eq 0 ]
do
	n=$(($RANDOM%100));
	if [ $n/2 -eq magicNumber ]
	then
		find=1;
	fi
done
