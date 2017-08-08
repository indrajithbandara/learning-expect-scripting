#!/bin/bash
# ЭТОТ СКРИПТ БУДЕТ ВЫПОЛНЯТЬСЯ НА СТАНЦИИ МОНИТОРИНГА!
# Выводим информацию о процессе app или в тестовом случае atom
echo "Данный скрипт собирает сведения о процессе nano запущенном на серверах"
echo "Данные сохраняются в файле result.txt"
echo "Будут удалены все файлы с расширением log в текущем каталоге"
read -n 1 -p "Ты уверен, что хочешь запустить это (y/[a]): " TEST
[ "$TEST" = "y" ] || exit
rm -f ./*.log
./adv_ls.expect
for i in $( ls *log );
do
  TEMP1=$(head -n -2 $i) 
  TEMP2=$(head -n 2 $i | tail -n 1) 
  TEMP3=$(tail -n 1 $i) 
  echo "$TEMP1" "$TEMP2" "$TEMP3" >>./system.dat;
done
sort -k 2 ./system.dat>./result.txt
rm -f ./system.dat
rm -f ./*.log
