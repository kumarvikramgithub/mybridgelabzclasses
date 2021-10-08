#
read -p "Enter Number like 1,10,100,1000 etc. : " n;

case $n in
	1)
		echo "$n is Unit.";
	;;
 	10)
                echo "$n is Ten.";
        ;;
 	100)
                echo "$n is Hundred.";
        ;;
 	1000)
                echo "$n is Thousand.";
        ;;
 	10000)
                echo "$n is Ten Thousand.";
        ;;
	 100000)
                echo "$n is One Lakh.";
        ;;
	 *)
                echo "$n is Out of Range.";
        ;;

esac

