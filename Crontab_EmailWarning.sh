#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
#Threshold is used to generate total usage of cpu storage
THRESHOLD=1
if [ "$CURRENT" -gt "$THRESHOLD" ] ;
then
   mail -s 'Disk Space Alert' aitha.vinay1@gmail.com << EOF
Your root partition Used: $CURRENT%
EOF
fi
