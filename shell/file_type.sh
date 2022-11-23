#!/bin/bash

echo "Enter File Name:"
read FILE

if [ -e  "${FILE}" ]
 then
 	echo "File exist"
fi

if [ -d  "${FILE}" ] 
  then 
  	echo "It is directory"
  else
  	ch=`ls -l $FILE | cut -c 1` 
  	if [ $ch == '-' ] 
  	then
  		echo "it is regular file"
  	elif [ $ch == 'b' ]
  	then	
  		echo "It is block device file"
  	elif [ $ch == 'c' ]	
  	then
  		echo "It is character device file"	
  	elif [ $ch == 'l' ]
  	then
  		echo "It is link file"	
  	fi		
fi  		

if [ -r $FILE ]
then
	echo "Read Permission"
else
	echo "No Read permission"
fi

if [ -w $FILE ]
then
	echo "Write Permission"
else
	echo "No Write permission"
fi

if [ -x $FILE ]
then
	echo "Execute Permission"
else
	echo "No Execute permission"
fi
