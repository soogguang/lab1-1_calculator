#!/bin/bash
echo "체중을 입력해주세요.(kg):"
read kg
echo "키를 입력해주세요.(cm):"
read cm
BMI=$(echo "scale=2; $kg / (($cm/100)*($cm/100))" | bc)
if (( $(echo "$BMI < 18.5" | bc -l) )); then
 echo "저체중 입니다."
elif (( $(echo "$BMI < 23" | bc -l) )); then
 echo "정상체중입니다."
else
 echo "과체중입니다"
fi
exit 0
