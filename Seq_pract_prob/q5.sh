# Unit Conversion
 #a. 1ft =12 in then 42 in = ? ft.
onefeet=12;
givenin=42;
outputinft=$(($givenin/$onefeet));
echo "1st =12 in then 42 in = $outputinft ft";

#b. Rectangular Plot of 60 feet x 40 feet in meters
length=60;
width=40
area=$((60*40));
#Assume 10 sq foot = 1 meter
areainm=$(($area/10)); 
echo "Area of Rectangle = $areainm sq meter.";

#c. Calculate area of 25 such plots in acres(Let 1acer =4046 sq meter)
sucharea=$(($areainm*25));
areainac=$(($sucharea/4046));
echo "area of 25 such plots = $areainac";
