#!/bin/bash
REALVALUE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=1

if [ "$REALVALUE" -gt "$THRESHOLD" ] ; then
    mail -s 'Disk Space Alert' <Your Email> << EOF
Your disk space used is mentioned in this message. Used: $REALVALUE%
EOF
fi
