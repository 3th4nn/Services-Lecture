#!/bin/bash

while true
do
    $num=(ps -aux | grep -c Sheldon.py)
    if [$num -lt 2]
        cd /var/lib/
        python3 SheldonAgent.py
    fi

    sleep 60
done

