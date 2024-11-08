#!/bin/bash

# DB.txt 파일 경로 설정
DB_FILE="DB.txt"

# 사용자로부터 검색할 이름 입력 받기
echo "검색할 팀원의 이름을 입력하세요:"
read search_name

# DB.txt에서 이름을 검색하고 결과 출력
result=$(grep -i "$search_name" "$DB_FILE")

# 결과가 존재하는지 확인
if [ -n "$result" ]; then
  echo "검색된 팀원 정보:"
  echo "$result"
else
  echo "해당 이름의 팀원이 없습니다."
fi
