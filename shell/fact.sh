#!/bin/bash
factorial()
{
    fact=$1
    if((fact <= 2)); then
        echo $fact
    else
        f=` expr $fact - 1 `
	f=$(factorial $f)
	f=` expr $f \* $fact `
	echo $f
	fi
}

echo "Enter the number:"   
read num

if((num == 0)); then   
echo 1
else
factorial $num
fi
