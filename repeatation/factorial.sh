#Write a program that computes a factorial of a number taken as input.
#5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

read -p "Enter number to find Factorial : " num;
factorial=1;
for (( i=2; i<=$num; i++ ))
do
	factorial=$(($factorial * $i));
done
echo "Factorial of$num is $factorial";
