#!/bin/bash

i=0 
echo `./qshell listbucket jaygoo` | tr " " "\n" | while read line
do
    if(($i>0))
    then
        echo $line
        ./qshell get jaygoo $line 
    fi
    i=$(($i+1))
done
