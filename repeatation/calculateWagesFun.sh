#

function getWorkingHr() {
        case $1 in
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

        echo $empHrs;
}
isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;
totalWorkingHr=0;
day=1;
while [[ $day -lt $numWorkingDays && $totalWorkingHr -lt 40 ]]
do
	isPresent=$((RANDOM%3));
	hr=$(( getWorkingHr $isPresent ));
	totalWorkingHr= $(( $totalWorkingHr + $hr ));
	if [ $totalWorkingHr -gt 40 ]
	then
		totalWorkingHr=$(( $totalWorkingHr - $hr ));
		break;
	fi
	salary=$(( $hr * $empRatePerHr ));
	totalSalary=$(( $totalSalary + $salary ));
done
echo "Total working Hour = $totalWorkingHr and totalSalary = $totalSalary";
