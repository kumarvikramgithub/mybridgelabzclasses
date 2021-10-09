#
declare -A winFace;
for (( i=1;i<=6;i++ ))
do
	winFace[$i]=0;
done
function checkWin () {
	res=0;
	for key in ${!winFace[@]}
	do
		val=${winFace[$key]};
		if [ $val -eq 10 ]
		then
			res=$key;
			break;
		fi
	done
	echo $res;
}
status=1;
while [ $status -ne 0 ]
do
	face=$(( $RANDOM%6 + 1));
	#echo "Face $face";
	winFace[$face]=$(( ${winFace[$face]} + 1 ));
	check=$( checkWin );
	#echo "check = $check";
	if [ $check -ne 0 ]
	then
		echo "Face Come Maximum Times : $check";
		status=0;
	fi
done
min=11;
minkey=0;
for (( i=1;i<= ${#winFace[@]};i++ ))
do
        val=${winFace[$i]};
	if [ $val -lt $min ]
	then
		minkey=$i;
		min=$val;
	fi
	echo "Face $i comes = $val Times";
done
echo "Face Come Minimum Times : $minkey";
