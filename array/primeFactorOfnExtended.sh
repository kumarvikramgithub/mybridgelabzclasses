#Write a program to compute Factors of a number N using prime factorization 
#method. Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
#O/P -> Print the prime factors of number N.
declare -a primefact;
read -p "Enter number n : " n;
con=0;
while [ $(( $n % 2 )) -eq 0 ]
do
	 primefact[$con]=2;
	 n=$(( $n/2 ));
	 con=$(($con+1));
done
for (( i=3; $i*$i<=$n; i=$(($i+2)) ))
do
	while [ $(($n%$i)) -eq 0 ]
	do
        	primefact[$con]=$i;
        	n=$(( $n/$i ));
		con=$(($con+1));
	done

done
if [ $n -gt 2 ]
then
	primefact[$con]=$n;
fi
for (( i=0;i<${#primefact[@]};i++ ))
do
 	echo -n "${primefact[i]} ";
done
