#!/usr/bin/bash 

figlet "encrypt" -c | lolcat

path=$PWD

echo "choose option"
echo "--------------------"
echo "1) encrypt"
echo "2) decrypt"
echo "3) exit"


read -p "[ + ] " choice


case $choice in 

	1) 
		echo "encrypting file ........"
		
		read -p "Enter the file name : " file_name

		file_path="${path}/$file_name"

		gpg -c $file_path
		rm $file_path

		echo "you are done ... bye "

		;;
		

	2)

		echo "decrypting file ........"
		
		read -p "Enter the file name : " file_name

		file_path="${path}/$file_name"

		gpg -d $file_path

		echo "you are done ... bye "

		;;

	3)
		exit 1

		;;

	*) 
		echo "invalid option... run the script again"

		;;

	esac

	
		

		
		 


