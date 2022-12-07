#!/usr/bin/env bash

usage() {
    echo "Usage: ${0##/*} [number] [operator | --ope | -o] [number]"
    exit 1
}

add() {
    RESULT=$(($1 + $2))
    echo $RESULT
}

sub() {
    RESULT=$(($1 - $2))
    echo $RESULT
}

mul() {
    RESULT=$(($1 * $2))
    echo $RESULT
}

div() {
    [ "$2" -eq 0 ] && echo "Infinity" && exit 1  # When the denominator equal 0, return Infinity and exit.
    RESULT=$(($1 / $2))
    echo $RESULT
}

main() {
    if [ $# -eq 3 ]; then
        case $2 in
            -a|--add|+)
                RESULT=$(add "$1" "$3");;
            -s|--sub|-)
                RESULT=$(sub "$1" "$3");;
            -m|--mul|x)
                RESULT=$(mul "$1" "$3");;
            -d|--div|/)
                RESULT=$(div "$1" "$3");;
        esac
        echo "$* = $RESULT"
    else
        usage
    fi
}

main "$@"
