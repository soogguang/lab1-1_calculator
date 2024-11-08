#!/bin/bash

# DB.txt 파일 경로 설정
DB_FILE="DB.txt"

# 파일이 없으면 생성
if [ ! -f "$DB_FILE" ]; then
  touch "$DB_FILE"
fi

# 사용자로부터 팀원 정보 입력 받기
echo "팀원의 이름과 전화번호를 입력하세요:"
read name phone

# 입력된 정보 DB.txt에 추가
echo "$name - $phone" >> "$DB_FILE"
