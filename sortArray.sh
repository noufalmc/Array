#!/bin/bash
echo "Enter Length"
read n;
for((i=0;$i<n;i++))
do
   read a[$i];
done
for((i=0;$i<n;i++))
do
  for((j=$i+1;$j<n;j++))
  do
     if((${a[$i]}>${a[$j]}))
     then
         temp=${a[$i]};
         a[$i]=${a[$j]}
         a[$j]=$((temp))
    fi     
  done
done
echo "n is $n"
echo "sorted array is"${a[@]}
echo "Second Largest is"${a[(($n-2))]}
echo "Second Small is"${a[1]}

