#
read -p "How many times You want to flip a coin: " n;
for (( i=1;i<=$n;i++ ))
do
	res=$((RANDOM%2));
	if [ $res -eq 1 ]
	then
		echo "Heads Win";
	else
		echo "Tails Win";
	fi;
done;
