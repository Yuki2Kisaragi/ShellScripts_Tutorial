#!/bin/sh

foo=1
echo "Enter password"

read try_word

while [ "$foo" -le 2 ]; do
    
    if [ "$try_word" = "secret" ]; then
        echo "pass"
        exit 0
    
    else

        echo "try again"
        read try_word
        foo=$(($foo+1))
        
    fi

done

echo "Missed"

exit 0
