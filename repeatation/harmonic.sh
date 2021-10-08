#Write a program that takes a command-line argument n and prints the nth 
#harmonic number. Harmonic Number is of the form
read -p "Enter number : " n;
nthHarmonic=1;
for (( i=2; i<=$n; i++ ))
do
	nthHarmonic=$(($nthHarmonic+$((1/$i))));
done
echo $nthHarmonic;
