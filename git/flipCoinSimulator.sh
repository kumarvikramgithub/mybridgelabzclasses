hwin=0;
twin=0;
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
function getResult () {
	 res=$((RANDOM%2));
        if [ $res -eq 1 ]
        then
                #hwin=$(($hwin+1));
                echo 1;
        else
                #twin=$(($twin+1));
                echo 0;
        fi;

}

while [ $hwin -ne 21 ] && [ $twin -ne 21 ]
do
       res=$( getResult );
      	if [ $res -eq 1 ]
	then
		hwin=$(($hwin+1));
	else
		twin=$(($twin+1));
	fi
done;

if [ $hwin -eq $twin ]
then
        echo "Match got Tie";
	tie=0;
	while [ $tie -eq 0 ]
	do
		res=$( getResult );
        	if [ $res -eq 1 ]
        	then
                	hwin=$(($hwin+1));
        	else
                	twin=$(($twin+1));
        	fi

		if [ $(($hwin-$twin)) -eq 2 ]
		then
			echo "Heads win Now By 2";
                        tie=1;
		elif [ $(($twin-$hwin)) -eq 2 ]
		then
			echo "Tails win Now By 2";
			tie=1;
		fi;
	done
elif [ $hwin -gt $twin ]
then
        winby=$(($hwin-$twin));
        echo "Heads Win by $winby";

else
	winby=$(($twin-$hwin));
	echo "Tails Win by $winby";
fi
