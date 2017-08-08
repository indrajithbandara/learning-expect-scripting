#!/bin/bash

#let a=$1
#let b=$2
#if (("$a" < "$b"))
#then
#  let a=$a+1
#else
#  echo "Hello"
#fi
#echo $a

#echo "А сейчас немного побаяню!"
#echo "1:  Послать на хуй?"
#echo "2:  Ёба:-)"
#echo "3:  Продинамить стрелку?"
#echo
#read menu
#case $menu in
#  1)
#  echo "Пошёл на хуй!"
#  ;;
#  2)
#  echo "Тупой уёбок!"
#  ;;
#  3)
#  echo "Уебу!!!"
#  ;;
#  *)
#  echo "Что за хуйня мля?"
#esac
#if  [[ -z "$1" ]]
#then
#  echo "Нет аргументов!"
#else
#  let "c=$1<<5"
#  echo $c
#fi
list=`ls \/home -Al|awk '{print $9}'`
echo $list
for a in $list
do
  cd /home/$a
  'pwd'
  cd ..
done
