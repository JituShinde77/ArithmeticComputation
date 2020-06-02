echo "Welcome to Arithmetic Computation"

declare -A result

#Take Input
read -p "Enter the 1st Number: " a
read -p "Enter the 2nd Number: " b
read -p "Enter the 3rd Number: " c

result["Result1"]=$(( $a+$b*$c ))
result["Result2"]=$(( $a*$b+$c ))
result["Result3"]=`echo $a $b $c | awk '{print $3+($1/$2)}'`
result["Result4"]=$(( $a%$b+$c ))
