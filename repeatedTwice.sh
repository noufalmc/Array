#!/bin/bash
for((i=0;$i<100;i++))
do
   num=$((RANDOM%100))
   temp=$(($num))
   rev=0;
   counter=0;
      rem=$(($temp%10))
      rev=$(($rev*10+$rem))
      temp=$(($temp/10))
   if(($rem==$temp))
   then
   arr[$counter]=$num;
   ((counter++))
   fi
done
echo "Array is "${arr[@]}