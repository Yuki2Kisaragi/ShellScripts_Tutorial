#! /bin/bash


TODAY=`date +"%Y%m%d"`
WORK_START_TIME=`date +"%H:%M"`
TASK_LIST=`cat Task.txt`

if [ -e Output/WorkLog_$TODAY.txt ]; then
    echo " 'WorkLog_$TODAY.txt' already exists."
else

    echo "Log Start Time : $WORK_START_TIME" > Output/WorkLog_$TODAY.txt

    echo "Please Tell Me , your scheduled attendance time."
    echo "Enter like HH:MM "
    echo -n 'Start TIME = '
    read START_TIME

    echo -n 'End   TIME = ' 
    read END_TIME

    echo "-------------------------------------"    >> Output/WorkLog_$TODAY.txt
    echo "Start TIME : $START_TIME"                 >> Output/WorkLog_$TODAY.txt
    echo "End   TIME : $END_TIME"                   >> Output/WorkLog_$TODAY.txt
    echo "-------------------------------------"    >> Output/WorkLog_$TODAY.txt

    echo "Please your Task!"
    echo "-------------------------------------"    >> Output/WorkLog_$TODAY.txt
    
    cnt=0
    while read line
    do
    cnt=$(($cnt +1))
    echo "TASK $cnt : $line"
    echo "TASK $cnt : $line" >> Output/WorkLog_$TODAY.txt
    done <<END
    $TASK_LIST
END

    echo "-------------------------------------"    >> Output/WorkLog_$TODAY.txt

    `chmod 444 Output/WorkLog_$TODAY.txt `
fi