#!/bin/bash
echo "num1 (+ or -) num2 :"
read num1 opr num2

case $opr in
  +)
    echo $((num1 + num2))
    ;;
  -)
    echo $((num1 - num2))
    ;;
  *)
    echo "옳지 않은 연산자입니다."
    ;;
esac

exit 0

