# write a program that Reads % Random 2 Digit Values, then find their 
#sum amd the average
sum=0;
for i in {1..5}
do 
rand=$(($RANDOM%100));
echo "Random no $i -> $rand";
sum=$(($sum+$rand));
done
 echo "sum of 5 random no is $sum";
avg=$(($sum/5));
 echo "Average of 5 random no is $avg";
