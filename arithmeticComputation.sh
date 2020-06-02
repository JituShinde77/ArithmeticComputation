echo "Welcome to Arithmetic Computation"

declare -A result
declare -a resultArray

#Take Input
read -p "Enter the 1st Number: " a
read -p "Enter the 2nd Number: " b
read -p "Enter the 3rd Number: " c

result["Result1"]=$(( $a+$b*$c ))
result["Result2"]=$(( $a*$b+$c ))
result["Result3"]=`echo $a $b $c | awk '{print $3+($1/$2)}'`
result["Result4"]=$(( $a%$b+$c ))

counter=0

# Store result into Array
for i in ${!result[@]}
do
	resultArray[$counter]=${result[$i]}
	(( counter++ ))
done

# Store result in Ascending Order



for (( i=1; i<4; i++ ))
do
	for (( j=0; j<$i; j++ ))
	do

		if [[ `echo ${resultArray[$j]} ${resultArray[$i]} | awk '{ print ($1 < $2) }'` -eq 1 ]]
		then
			echo "ONe"
			temp=${resultArray[$j]}
			resultArray[$j]=${resultArray[$i]}
			resultArray[$i]=$temp
		fi
	done
done

echo ${resultArray[@]}
