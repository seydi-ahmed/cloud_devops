#!/bin/bash

echo "...BUILD"
sleep 1
./test.sh
if [ $? -eq 0 ]; then
    echo "TEST OK"
    echo "DEPLOIEMENT..."
else
    echo "ECHEC"
fi
