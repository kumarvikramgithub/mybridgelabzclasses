#
function getMonth () {
	year=0;
	 if [ $2 -eq 1 ]
        then
                year=92;
        else
                year=93;
        fi

        case $1 in
                0)
                        echo "Jan$year";
                        ;;
                1)
                        echo "Feb$year";
                        ;;
                2)
                        echo "Mar$year";
                        ;;
                3)
                        echo "Apr$year";
                        ;;
                4)
                        echo "May$year";
                        ;;
                5)
                        echo "Jun$year";
                        ;;
                6)
                        echo "Jul$year";
                        ;;
                7)
                        echo "Aug$year";
                        ;;
                8)
                        echo "Sep$year";
                        ;;
                9)
                        echo "Oct$year";
                        ;;
                10)
                        echo "Nov$year";
                        ;;
                11)
                        echo "Dec$year";
                        ;;
        esac
}
declare -A birthDay;


#Making all posible dateofbirth month as key in Dictionary

for (( i=0;i<12;i++ ))
do
	year=1;
	month=$( getMonth $i $year );
	birthDay[$month]=0;
	year=0;
 	month=$( getMonth $i $year );
	birthDay[$month]=0;
done

# store all fifty birthday  

for (( i=0; i<50; i++ ))
do
        year=$((RANDOM%2));
        month=$((RANDOM%12));
        #echo -n $month" ";
        month=$( getMonth $month $year );
  	birthDay[$month]=$((${birthDay[$month]}+1));
done


#display all birthday;
for key in ${!birthDay[@]}
do
	echo "birthday[$key] = ${birthDay[$key]}";
done
