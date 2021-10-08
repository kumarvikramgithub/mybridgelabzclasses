#Write a program that takes a command-line argument n and prints a table of 
#the powers of 2 that are less than or equal to 2^n.
read -p "Enter number : " n;
powOfTwon=1;
for (( i=1; i<=$n; i++ ))
do
	powOfTwon=$(($powOfTwon*2));
done
powOfTwo=2;
while [ $powOfTwo -le $powOfTwon ]
do
	echo $powOfTwo;
	powOfTwo=$(($powOfTwo*2));
done
