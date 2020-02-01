#!/bin/bash

list1="A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"

list2=(0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z "," "." "/" "!" "&" "~" "@" "#" "$" "%" "^" "*" "_" "+" "-" "=" "{" "}" "[" "]" "?" ";" ":")

list3=("," "." "/" "!" "&" "~" "@" "#" "$" "%" "^" "*" "_" "+" "-" "=" "{" "}" "[" "]" "?" ";" ":")

#read file
field=$(<hackcode.txt)
hash2=$(echo $field | cut -d";" -f2)
salt=$(echo $hash2 | cut -c1-2)

for i in $list1
  do
    for j in "${list2[@]}"
      do
	for k in "${list2[@]}"
	  do
      	    for l in "${list2[@]}"
	      do
		for m in "${list3[@]}"
		  do 
		  echo -n "$i$j$k$l$m "
test=`mkpasswd -m DES $i$j$k$l$m -s $salt`

if [ $test == $hash2 ] ;
  then
    echo "                                   "                                   
    echo "Extracted salt value is: $salt"
    echo "Password is: $i$j$k$l$m"
    exit
fi
done
done
done 
done
done
