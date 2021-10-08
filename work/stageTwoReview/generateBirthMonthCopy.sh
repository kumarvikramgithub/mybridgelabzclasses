
declare -a birthday;
declare -a years;
for (( i=0; i<50; i++ ))
do
	year=$((RANDOM%2));
	month=$((RANDOM%12));
	birthday[$i]=$month;
	if [ $year -eq 1 ]
	then
		years[$i]=92;
	else
		years[$i]=93;
	fi
done
echo "output";
count=0;
for (( i=0;i<12;i++ ))
do
	a=0;
	b=0;
	for (( k=0;k<50;k++ ))
	do
		if [ $((${birthday[k]})) -eq $i ]
		then
			yr=$((${years[k]}));
			if [ $yr -eq 92 ]
			then
				a=$((a+1));
			else
                                b=$((b+1));
			fi
		fi;
	done
	if [ $i -eq 0 ]
	then
		if [ $a -gt 0 ]
		then
			echo "birthday[Jan92] = $a";
		fi
		if [ $b -gt 0 ]
		then
                        echo "birthday[Jan93] = $b";
		fi
 	elif [ $i -eq 1 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Feb92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Feb93] = $b";
                fi
 	elif [ $i -eq 2 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Mar92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Mar93] = $b";
                fi
 	elif [ $i -eq 3 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Apr92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Apr93] = $b";
                fi
        elif [ $i -eq 4 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[May92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[May93] = $b";
                fi
        elif [ $i -eq 5 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Jun92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Jun93] = $b";
                fi
        elif [ $i -eq 6 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Jul92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Jul93] = $b";
                fi
 	elif [ $i -eq 7 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Aug92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Aug93] = $b";
                fi
	elif [ $i -eq 8 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Sep92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Sep93] = $b";
                fi
	elif [ $i -eq 9 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Oct92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Oct93] = $b";
                fi
	elif [ $i -eq 10 ]
        then
                if [ $a -gt 0 ]
                then
                        echo "birthday[Nov92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Nov93] = $b";
                fi
 	else
                if [ $a -gt 0 ]
                then
                        echo "birthday[Dec92] = $a";
                fi
                if [ $b -gt 0 ]
                then
                        echo "birthday[Dec93] = $b";
                fi

	fi
	count=$(($count+$a+$b));
done
 echo "Total People = $count";
