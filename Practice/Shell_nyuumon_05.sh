#! /bin/sh
# 途中
read SEARCH_PATH

cd $SEARCH_PATH

if [ $1 -ne 1 ]; then
    echo "引数なし"
else
    echo "引数あり"
fi
