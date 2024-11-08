#!/bin/bash
echo "리눅스가 재미있나요?(yes/no):"
read ans

case $ans in
 yes | Yes | YES | y | Y)
  echo " >> choice : Yes "
  echo " >> result : Linux Master ";;
 [nN]*)
  echo " >> choice : No"
  echo " >> result : Good Luck~ ";;
 *)
  echo " >> yes or no로 입력해주세요.";;
esac

exit 0 
