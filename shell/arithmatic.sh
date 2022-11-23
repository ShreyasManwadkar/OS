 echo "Enter Two Numbers"
read a b
echo "What do you want to do? (1 to 4)"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
echo "Enter your Choice"
read n
case "$n" in
1) echo "Addition of $a and $b is `expr $a + $b`";;
2) echo "Subtraction of $a and $b is `expr $a - $b`";;
3) echo "Multiplication of $a and $b is `expr $a \* $b`";;
4) echo "Division $a by $b is `expr $a / $b`";;
*) echo "Invalid Input";;
esac
