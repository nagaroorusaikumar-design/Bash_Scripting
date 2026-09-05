#!/bin/bash

value=$(ip addr show | grep -v LOOKBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
        echo "1 Active Interface found."
elif [ $value -gt 1 ]
then
        echo "Multiple active interfaces are found."
else
        echo "No Active Interfaces found"
fi
