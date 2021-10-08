#Write a program that takes a command-line argument n and prints a
#table of the powers of 2 that are less than or equal to 2^n till 256 is
#reached..
read -p "Enter number : " n;
powOfTwon=1;
i=1;
while [ $i -le $n ]
do
	powOfTwon=$(($powOfTwon*2));
	i=$(($i+1));
done
powOfTwo=2;
while [ $powOfTwo -le $powOfTwon ]
do
	if [ $powOfTwo -gt 256 ]
	then
		break;
	else
		echo $powOfTwo;
		powOfTwo=$(($powOfTwo*2));
	fi;
done
