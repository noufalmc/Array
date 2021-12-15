#!/bin/bash

echo "Enetr array length"
read n;
for((i=0; $i<n;i++))
do
   read a[$i]
done
for((i=0; $i<${#a[@]};i++))
do
  for ((j=$i+1; $j<${#a[@]};j++))
  do
    for (( k=$j+1; $k<${#a[@]}; k++ ))
    do
    sum=$((${a[$i]}+${a[$j]}+${a[$k]}))
    if(($sum==0))
    then
        echo "Combination of"${a[$i]}+${a[$j]}+${a[$k]}"=" $sum
    fi
done
done 
done
