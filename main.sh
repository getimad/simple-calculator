#!/usr/bin/env bash

if [ $# -eq 3 ]; then
    case $2 in
        -a|--add|+)
            RESULT=$(($1 + $3));;
        -s|--sub|-)
            RESULT=$(($1 - $3));;
        -m|--mul|x)
            RESULT=$(($1 * $3));;
        -d|--div|/)
            RESULT=$(($1 / $3));;
    esac
    echo $* = $RESULT
else
    echo "ERROR: The script expect only 3 arguments."
fi
