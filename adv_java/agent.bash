#!/bin/bash
# ЭТОТ СКРИПТ БУДЕТ ВЫПОЛНЯТЬСЯ НА СЕРВЕРАХ!
echo $HOSTNAME>./$HOSTNAME.log
ps -aux|awk '{print $9 " " $10}'|tail -n +2>>./$HOSTNAME.log
