#!/bin/bash

select_random() {
    printf "%s\0" "$@" | shuf -z -n1 | tr -d '\0'
}

expressions=("OK" "WARNING" "CRITICAL" )
selectedexpression=$(select_random "${expressions[@]}")
#echo "$selectedexpression"

if [ $selectedexpression == "OK" ]
then
    echo "OK"
    exit 0
elif [ $selectedexpression == "WARNING" ]
then
    echo "WARNING"
    exit 1
elif [ $selectedexpression == "CRITICAL" ]
then
    echo "CRITICAL"
    exit 2
fi
