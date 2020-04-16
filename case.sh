#!/bin/sh

foo=1
echo "Is it morning? Please answer yes or no"

read timeofday

case "$timeofday" in
    "yes" | "y" | "Yes" | "YES" ) echo "Good Morning";;
    "no" | "n" ) echo "Good Afternoon";;
    *     ) echo "sorry answer not recognised";;

esac