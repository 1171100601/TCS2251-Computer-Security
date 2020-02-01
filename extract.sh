#!/bin/bash
field=$(<hackcode.txt)

echo "content in file = $field"
echo "                            "

hash1=$(echo $field | cut -d";" -f1)
echo "first hash = $hash1"
echo "algorithm = "`echo $hash1 | cut -d"$" -f2`
echo "salt = "`echo $hash1 | cut -d"$" -f3`
echo "password = "`echo $hash1 | cut -d"$" -f4`
echo "                       "

hash2=$(echo $field | cut -d";" -f2)
echo "second hash = $hash2"
echo "                       "

hash3=$(echo $field | cut -d";" -f3)
echo "third hash = $hash3"
echo "algorithm = "`echo $hash3 | cut -d"$" -f2`
echo "salt = "`echo $hash3 | cut -d"$" -f3`
echo "password = "`echo $hash3 | cut -d"$" -f4`
echo "                       "

hash4=$(echo $field | cut -d";" -f4)
echo "third hash = $hash4"
