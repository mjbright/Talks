#!/bin/bash

# Defaults - Listen on localhost:9000 only:
PORT=9000
BIND="--bind 127.0.0.1"

#python -m SimpleHTTPServer $PORT
#python2 -m SimpleHTTPServer $PORT
#python3 -m SimpleHTTPServer $PORT
#PYTHON=python
PYTHON=python3

while [ ! -z "$1" ]; do
    case $1 in
        [0-9]*.*:[0-9]*)
            echo "ARG ip:port <$1>"
            ARG=$1; PORT=${ARG#*:} BIND=${ARG%:*}
            BIND="--bind $BIND"
            ;;
            #echo TEST-num-col;;
        [0-9]*.*)
            echo "ARG ip <$1>"
            BIND=$1
            BIND="--bind $BIND"
            ;;
        [0-9]*)
            echo "ARG port <$1>"
            ARG=$1; PORT=$1
            ;;
        *) echo "NOMATCH on <$1>";;
    esac
    shift
done

echo BIND=$BIND PORT=$PORT

#$PYTHON --version |& grep -i "python 2\." && {
$PYTHON --version 2>&1 | grep -i "python 2\." && {
    # Python2:
    echo Python2
    python2 -m SimpleHTTPServer $PORT
    exit $?
} || {
    # Python3:
    echo Python3
    PYTHON=python3
    $PYTHON -m http.server $PORT $BIND
    exit $?
}



