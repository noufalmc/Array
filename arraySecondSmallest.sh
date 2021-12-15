#!/bin/bash 
 
for((i=0;$i<10;i++))
do
   arr[$i]=$((RANDOM%999))
done
echo "Array is "${arr[@]}
fs=${arr[0]};ss=${arr[1]};fb=${arr[0]};sb=${arr[1]};
for((i=1;$i<10;i++))
do
  if(($fs>arr[$i]))
  then
     ss=$(($fs));
     fs=$((arr[$i]));
  elif(($ss>arr[$i]))
  then
      ss=$((arr[$i]))
   fi      
  if(($fb<arr[$i]))
  then
     sb=$(($fb));
     fb=$((arr[$i]))
   elif(($sb<arr[$i]))
   then
     sb=$((arr[$i]))
  fi
done
echo "second small is $ss"
echo "secon biggest is $sb" 

