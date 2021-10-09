#
read -p "Enetr value for a: " a;
read -p "Enetr value for b: " b;
read -p "Enter Value for c: " c;
declare -A expResult;
expResult[exp1]=$(( $a + $b * $c ));
expResult[exp2]=$(( $a * $b + $c ));
expResult[exp3]=$(( $a + $b / $c ));
expResult[exp4]=$(( $a % $b + $c ));
echo "---Dictionary element---";
echo ${expResult[@]};
declare -a expResultArr;
for (( i=0;i<${#expResult[@]};i++ ))
do
	 expResultArr[$i]=${expResult[exp$(($i+1))]};
done
echo "---Array Element---";
echo ${expResultArr[@]};
for (( i=0;i<${#expResultArr[@]}; i++ ))
do
	for (( j=i+1;j<${#expResultArr[@]}; j++ ))
	do
		if [ ${expResultArr[$i]} -lt ${expResultArr[$j]} ]
		then
			temp=${expResultArr[$i]};
			expResultArr[$i]=${expResultArr[$j]};
			expResultArr[$j]=$temp;

		fi
	done

done
echo "--- sorting array in Descending order---";
echo ${expResultArr[@]};
for (( i=0;i<${#expResultArr[@]}; i++ ))
do
        for (( j=i+1;j<${#expResultArr[@]}; j++ ))
        do
                if [ ${expResultArr[$i]} -gt ${expResultArr[$j]} ]
                then
                        temp=${expResultArr[$i]};
                        expResultArr[$i]=${expResultArr[$j]};
                        expResultArr[$j]=$temp;

                fi
        done

done
echo "--- sorting array in Ascending order---";
echo ${expResultArr[@]};

