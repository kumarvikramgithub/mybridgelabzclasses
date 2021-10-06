for file in `ls *.txt` 
do 
 	newfile=`echo $file | awk -F. '{print $1}'`;
	cp -p $file $newfile.log;
done
