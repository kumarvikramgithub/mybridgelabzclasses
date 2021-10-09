#
res=$((RANDOM%2));
if [ $res -eq 1 ]
then
	echo "Heads Win";
else
	echo "Tails Win";
fi;
