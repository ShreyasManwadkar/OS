echo "Enter String:"
read str
echo "Enter 1 to reverse $str"
echo "Enter 2 to check wheather $str if palindrome or not:"
echo "Enter your choice:"
read choice
case $choice in
1)
 g=${#str}
 i=$(($g - 1))
 reverse=""
 while [ $i -ge 0 ]
 do
   reverse=$reverse${str:$i:1}
   i=$(($i -1))
 done 
 echo "Reverse of the  $str is :- $reverse" ;;
     
2) 
 g=${#str}
 i=$(($g - 1))
 reverse=""
 while [ $i -ge 0 ]
 do
   reverse=$reverse${str:$i:1}
   i=$(($i -1))
 done 
 echo "Reverse of the  $str is :- $reverse"
 if [ $str == $reverse ]
 then
     echo "$str is Palindrome"
 else
     echo "$str is not a Palindrome"
 fi;;
*)
 echo"Enter valid choice";;  
esac
