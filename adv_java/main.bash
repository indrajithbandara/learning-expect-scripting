#!/bin/bash
# ЭТОТ СКРИПТ БУДЕТ ВЫПОЛНЯТЬСЯ НА СТАНЦИИ МОНИТОРИНГА!
echo "Warrning!!!  Erasing all *.log files in current directory!"
read -n 1 -p "Running monitoring script? (y/[a]): " TEST
[ "$TEST" = "y" ] || exit
rm -f ./*.log
./main.expect
