#! /bin/sh

echo -n "Is it morning? Please answer yes or no >"
# -nをつけると改行しないで出力する

read timeofday

if [ $timeofday = "yes" ];then
#　[ $timeofday = "yes" ] [ 空白を開けること！ ]
    echo "Good morning"

    echo "exit-status = $?"
    exit 0
    # コマンド成功時は 終了ステータス:0を返す

elif [ $timeofday = "no" ];then
    echo "Good afternoon"

    echo "exit-status = $?"
    exit 0

else 
    echo "$timeofday can't recognized."
    
    echo "Select exit-status Enter 1 or 0"

    read ExitMode

    if [ $ExitMode -eq 1 ];then
        echo "exit 1 Selected"
        # コマンド失敗時は 終了ステータス:1を返す

    elif [ $ExitMode -eq 0 ];then
        echo "exit 0 Selected"
        exit 0

    else
        exit 1
    fi

fi



# 終了ステータスを利用することで希望通りの結果かどうか確認できる
# 
