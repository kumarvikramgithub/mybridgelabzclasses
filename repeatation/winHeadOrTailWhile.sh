#
heads=0;
tails=0;
while [ $heads -lt 11 ] && [ $tails -lt 11 ]
do
	isHeadOrTail=$(($RANDOM%2));
	if [ $isHeadOrTail -eq 0 ]
	then
		heads=$(( $heads + 1 ));
	else
		tails=$(( $tails + 1 ));
	fi
done
if [ $heads -eq 11 ]
then
	echo "Heads Win the race.";
else
	echo "Tails Win the race.";
fi
