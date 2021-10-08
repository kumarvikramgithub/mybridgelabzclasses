fruits=("Banana"  "Orange" "Apple");
echo "${fruits[@]}";
read -p "Enter Number to generate table : " a;
for ((i=0;i<10;i++))
do

	num[$i]=$((($i+1)*$a));
	echo "$a x $(($i+1)) = ${num[i]}";

done
con=1;
for  table in ${num[@]}
do
	echo "$a x $con++ = $table";
done
