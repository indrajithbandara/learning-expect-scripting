#!/bin/bash
# ЭТОТ СКРИПТ БУДЕТ ВЫПОЛНЯТЬСЯ НА СЕРВЕРАХ!
# Выводим информацию о процессе app или в тестовом случае nano
ps -aux|grep nano|head -n -1|awk '{print $12}'>./server_tmp.log
# Выводим имя узла в файл с данными
echo $HOSTNAME>./$HOSTNAME.log
# Подсчитываем количество процессов
cat ./server_tmp.log|wc -l|awk '{print $1}'>>./$HOSTNAME.log
rm -r ./server_tmp.log
# Собираем информациюо конфигурационных файлах
ps -aux|grep nano|head -n -1|awk '{print $12}'>>./$HOSTNAME.log
