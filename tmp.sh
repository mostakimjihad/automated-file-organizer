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
echo "Enter Template Name"
echo "----------------------------"
echo
echo -n "[ + ] "
read f_name

cd /home/kirito/Documents/Template/
mkdir "$f_name"

clear
while :
do
	clear
        
	echo "-------------------------------"
	echo "     Create Template"
	echo "-------------------------------"
	echo "1. Make a directory"
	echo "2. Delete directory"
	echo "3. Create file"
	echo "4. Delete file"
    echo "5. Copy a template"
    echo "6';. exit"
        
	read -p "Enter your choice [ 1 - 4 ] " choice2


	case $choice2 in

		1)  
            clear
			echo "Enter Directory Name"
            echo -n "[+] "
            read d_name
            cd /home/kirito/Documents/Template/$f_name
            mkdir $d_name
            
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
		2) 
            clear
			echo "Enter Directory Name"
            echo -n "[+] "
            read d_name_dlt
            cd /home/kirito/Documents/Template/$f_name
            rmdir $d_name_dlt

			read -p "Press [Enter] key to continue..." readEnterKey
			;;
		3)
            clear
			echo "Enter File Name"
            echo -n "[+] "
            read file_name
            cd /home/kirito/Documents/Template/$f_name
            touch $file_name

			read -p "Press [Enter] key to continue..." readEnterKey
			;;
		4)  
            clear
		    echo "Enter File Name"
            echo -n "[+] "
            read file_name_dlt
            cd /home/kirito/Documents/Template/$f_name
            rm $file_name_dlt

			read -p "Press [Enter] key to continue..." readEnterKey
			;;

        5)  
            clear
            echo "B Y E"
            break
            ;;
		*)
			echo "Error: Invalid option..."	
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
	esac		
				
done
;;

2) 
   echo "--------------List of workspaces-----------"

   cd /home/kirito/Documents/Template/
   ls | nl

   echo "Enter your choice --> "
   read nth

   nchoice="${nth}p"

   ls -d */ >  workspace_info.txt

   nchoice=$(cat workspace_info.txt | sed -n $nchoice)

   echo "Enter location of workspace"
   echo -n ">>> "
   read lct 

   cp -R /home/kirito/Documents/Template/$nchoice $lct

 ;;

*)
			echo "Error: Invalid option..."	
			read -p "Press [Enter] key to continue..." readEnterKey
			;;

esac

