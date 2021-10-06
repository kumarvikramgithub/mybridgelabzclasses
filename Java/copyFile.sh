for file in *.txt
do
	echo $file;
	cp -r $file textCopy/$file;
done
