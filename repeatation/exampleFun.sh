function getWorkingHr() {
	empCheck=$((RANDOM%3));
	case $empCheck in
		1)
			empHrs=8;
		;;
		2)
			empHrs=4;
		;;
		*)
			empHrs=0;
		;;
	esac

	echo "Working Hr = $empHrs";
}
result=$( getWorkingHr );
echo $result;
