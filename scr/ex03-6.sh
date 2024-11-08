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

# 5개의 파일 생성하기
cd "$folder_name"
for i in {0..4}
do
    touch "file$i.txt"
done

# 동일한 이름의 하위 폴더 생성하기 (입력 받은 폴더 이름으로 하위 폴더 생성)
mkdir "$folder_name"_files

# 생성한 파일들을 tar로 압축하기
tar -cvf "$folder_name"_files/"$folder_name"_files.tar file0.txt file1.txt file2.txt file3.txt file4.txt >/dev/null 2>&1

# 압축된 파일을 다시 풀어보기
tar -xvf "$folder_name"_files/"$folder_name"_files.tar -C "$folder_name"_files >/dev/null 2>&1 
