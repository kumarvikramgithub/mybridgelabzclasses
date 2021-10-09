#
#read -p How many times You want to flip a coin: " n;
#for (( i=1;i<=$n;i++ ))
#do
#	res=$((RANDOM%2));
#	if [ $res -eq 1 ]
#	then
#		echo Heads Win";
#	else
#		echo Tails Win";
#	fi;
#done;
hwin=0;
twin=0;
while [ $hwin -ne 21 ] && [ $twin -ne 21 ]
do
        res=$((RANDOM%2));
        if [ $res -eq 1 ]
        then
		hwin=$(($hwin+1));
                echo "Heads Win -> $hwin";
        else
 		twin=$(($twin+1));
                echo "Tails Win -> $twin";
        fi;
done;

if [ $hwin -eq $twin ]
then
        echo "Match got Tie";
elif [ $hwin -gt $twin ]
then
        winby=$(($hwin-$twin));
        echo "Heads Win by $winby";

else
	winby=$(($twin-$hwin));
	echo "Tails Win by $winby";
fi
