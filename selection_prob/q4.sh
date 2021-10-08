#write a program to simulate a coin flip and print out Heads or Tails 
#accordingly
ht=$(($RANDOM/10000));
if [ $ht -eq 0 ]
then
	echo "Heads";
else
	echo "Tails";
fi
