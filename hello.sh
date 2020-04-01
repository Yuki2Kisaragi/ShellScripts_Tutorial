#!/bin/sh

# first.sh

echo Here is $HOME
myvar="Hi there"
echo $myvar
echo "$myvar"
echo '$myvar'
echo \$myvar

echo Enter some text
read myvar

echo 'myvar' now equals $myvar

exit 0
