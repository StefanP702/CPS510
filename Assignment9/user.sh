#!/bin/bash

 echo $'\n\n'
 echo '1: Add'
 echo '2: Delete'
 echo 'q: Quit'

 read input

 while [ "$input" != "q" ] && [ "$input" != "Q" ];
 do
     if [ "$input" = "1" ]; then
         echo 'You have chosen option 1'
         ./add.sh
     elif [ "$input" = "2" ]; then
         echo 'You have chosen option 2'
         ./delete.sh
     else
         echo 'Invalid Input'
     fi

     echo $'\n1: Add'
     echo '2: Delete'
     echo 'q: Quit'

     read input
 done
