#!/bin/bash 
echo "enter number"
read num;
cou=0;
for((i=2;$i<$num;i++))
do
#  echo "num is $num i is $i"
  prime=0;
  for((j=2;$j<$i;j++))
  do
    if(($i%j==0))
    then
        prime=1;    
    fi
  done
  if(($prime==0))
  then
    while(($num%$i==0))
    do
        arr[$cou]=$i;
        num=$(($num/$i));
        ((cou++))
    done
  fi
done
echo "array is" ${arr[@]}