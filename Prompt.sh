#! /bin/sh

# Error . Need to modify 

echo "Hello $USER!"
count=1
task=""
echo "Please Tell me your Today Tasks!"

until [$count -eq 5]
do
    echo -n "Input your $count tasks: "
    read $task

    $count=`expr $count + 1`

done
echo "Let's do this!!"