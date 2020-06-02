echo "Welcome to Arithmetic Computation"

read -p "Enter the 1st Number: " a
read -p "Enter the 2nd Number: " b
read -p "Enter the 3rd Number: " c

result1=$(( $a+$b*$c ))
result2=$(( $a*$b+$c ))
result3=`echo $a $b $c | awk '{print $3+($1/$2)}'`
result4=$(( $a%$b+$c ))
