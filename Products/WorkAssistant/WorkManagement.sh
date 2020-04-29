#! /bin/sh


TODAY=`date +"%Y%m%d"`

WORK_START_TIME=`date +"%H:%M"`


echo "Log Start Time : $WORK_START_TIME" > WorkLog_$TODAY.txt

echo "Please Tell Me , your scheduled attendance time."
echo "Enter like HH:MM "
echo -n Start:
read START_TIME

echo -n End:
read END_TIME

echo "-------------------------------------"    >> WorkLog_$TODAY.txt
echo "Start TIME : $START_TIME"                 >> WorkLog_$TODAY.txt
echo "End   TIME : $END_TIME"                   >> WorkLog_$TODAY.txt
echo "-------------------------------------"    >> WorkLog_$TODAY.txt

echo "Please your Task!"
echo "-------------------------------------"    >> WorkLog_$TODAY.txt
