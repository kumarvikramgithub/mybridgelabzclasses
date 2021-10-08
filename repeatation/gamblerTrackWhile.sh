#Write a Program where a gambler starts with Rs 100 and places Re 1 bet
#until he/she goes broke i.e. no more money to gamble or reaches the
#goal of Rs 200. Keeps track of number of times won and number of bets made.
haveMoney=100;
Have_Goal=200;
won=0;
bets=0;
while [ $haveMoney -ne 0 ] && [ $haveMoney -ne 200 ]
do
	gameStatus=$(($RANDOM%2));
	if [ $gameStatus -eq 1 ]
	then
		won=$(($won+1));
		haveMoney=$(($haveMoney+1));
	else
		bets=$(($bets+1));
                haveMoney=$(($haveMoney-1));
	fi
done
if [ $haveMoney -eq 200 ]
then
	echo "Gambler Finaly win the Game";
else
	echo "Gambler Finaly Bets the Game";
fi
echo "Total Game Win is $won";
echo "Total Game Bets is $bets";

