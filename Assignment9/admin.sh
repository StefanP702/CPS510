#!/bin/bash

echo $'\n'
echo '1: Create Tables'
echo '2: Populate Tables'
echo '3: Drop Tables'
echo '4: Special Queries'
echo '5: Join Tables'
echo 'q: Quit'

read input

while [ "$input" != "q" ] && [ "$input" != "Q" ];
do
    if [ "$input" = "1" ]; then
        echo 'You have chosen option 1'
        ./createTables.sh
    elif [ "$input" = "2" ]; then
        echo 'You have chosen option 2'
        ./populateTables.sh
    elif [ "$input" = "3" ]; then
        echo 'You have chosen option 3'
        ./dropTables.sh
    elif [ "$input" = "4" ]; then
        echo 'You have chosen option 4'
        ./specialQueries.sh
    elif [ "$input" = "5" ]; then
        echo 'You have chosen option 5'
        ./joinTables.sh
    else
        echo 'Invalid Input'
    fi

    echo $'\n'
    echo '1: Create Tables'
    echo '2: Populate Tables'
    echo '3: Drop Tables'
    echo '4: Special Queries'
    echo '5: Join Tables'
    echo 'q: Quit'

    read input
done
