#!/usr/bin/bash

figlet "tmp" -c | lolcat
echo "[ 1 ]  Create Template"
echo "[ 2 ]  Make a Workplace"

read -p "choice# " choice

case $choice in

1) 
if [ ! -d "/home/kirito/Documents/Template" ]
then
cd /home/kirito/Documents/
mkdir Template
fi
clear

echo "----------------------------"
echo "Create Template"
echo "----------------------------"
echo "Enter Template Name"
echo "----------------------------"
echo
echo -n "[ + ] "
read f_name

cd /home/kirito/Documents/Template/
mkdir "$f_name"

clear

echo "----------------------------"
echo "Create Template"
echo "----------------------------"
echo "1) make directory"
echo "2) delete directory"
echo "3) create file"
echo "4) delete file"
;;

2) echo "pressed 2" ;;

esac