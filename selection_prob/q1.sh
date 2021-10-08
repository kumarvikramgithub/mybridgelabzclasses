#1. Write a program that reads 5 Random 3 Digit values and then outputs the
# minimum and the maximumv alue

rand=$((RANDOM));
min=$(($rand));
max=$(($rand));
echo "1 -> $rand";
for value in {2..5}
do
rand=$(($RANDOM%1000));
echo "$value -> $rand";
if [ $rand -gt $max ]
then 
 max=$rand;
fi
if [ $rand -lt $min ]
then
min=$rand;
fi
done
echo "Minimum value is $min";
echo "Maximum value is $max";
