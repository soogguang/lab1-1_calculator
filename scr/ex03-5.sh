#!/bin/bash

run_ls(){
 echo "함수 안으로 들어왔음."
 ls "$@"
 return
}

echo "원하는 ls 명령어 :"
read ls_opt

echo "프로그램을 시작합니다."
run_ls $ls_opt
echo "프로그램을 종료합니다."

exit 0
