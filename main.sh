#!/usr/bin/env bash

usage() {
    echo "Usage: ${0##/*} [number] [operator | --ope | -o] [number]"
    exit 1
}

main() {
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
        usage
    fi
}

main "$@"
