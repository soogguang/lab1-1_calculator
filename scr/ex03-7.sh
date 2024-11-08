#!/bin/bash

# 사용자로부터 폴더 이름 입력 받기
echo "폴더 이름을 입력하세요:"
read folder_name

# 폴더가 존재하는지 확인하고, 없으면 생성하기
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
else
    echo "$folder_name 폴더는 이미 존재합니다."
fi

# 폴더 안에 5개의 파일 생성하기
cd "$folder_name"
for i in {0..4}
do
    touch "file$i.txt"
    # 각 파일과 같은 이름의 폴더 생성하기
    mkdir "file$i"
    # 해당 폴더 안에 파일에 대한 심볼릭 링크 생성하기
    ln -s "../file$i.txt" "file$i/file$i.txt" >/dev/null 2>&1
done

