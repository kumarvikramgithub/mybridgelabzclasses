#
isPresent=$((RANDOM%2));
if [ $isPresent -eq 1 ]
then
	echo "Employee is present";
else
	echo "Employee is Absent";
fi;
