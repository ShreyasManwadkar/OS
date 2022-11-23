echo "Enter Number"
read n
for((i=2;i<=n/2;i++))
do
    ans=` expr $n % $i `
    if [ $ans -eq 0 ];
    then 
        echo "Not Prime"
        read x
        exit 0
    fi
done
echo "Prime"
read x