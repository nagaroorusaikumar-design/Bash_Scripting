#!/bin/bash

read -p "Enter Number : " num

echo

if [ $num -gt 100 ]
then
        echo "You need not to change the diet."
        sleep 3
        echo "Your Number is greater than 100"
        echo
        date
else
        echo "You have to change the diet."
        sleep 3
        echo "Your Number is less than 100"
fi

echo "Execution completed Successfully."
