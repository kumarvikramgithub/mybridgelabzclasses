#
read -p "Enter Number like 1,10,100,1000 etc. : " n;

if [ $n -eq 1 ]
then
	echo "$n is Unit.";
elif [ $n -eq 10 ]
then
	echo "$n is Ten";
elif [ $n -eq 100 ]
then
	echo "$n is Hundred";
elif [ $n -eq 1000 ]
then
	echo "$n is Thousand";
elif [ $n -eq 10000 ]
then
	echo "$n is Ten Thousand";
elif [ $n -eq 100000 ]
then
	echo "$n is One Lakh";
else
	echo "Out of Rannge";
fi
