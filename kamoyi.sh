#!/usr/bin/bash


login(){

	read -p "Enter username : " username
	echo -n "Enter password : "
	read -s password

	if [ $username -ne "kirito" ]
	then
	    echo "Wrong username"
		exit 1
	fi

	if [ $password -ne  "kirito" ]
	then
	    echo "Wrong password"
		exit 1
    fi

}



path=$PWD
info_path="${path}/info/"
shell_path="${path}/shell/"
text_path="${path}/text/"
doc_path="${path}/doc/"
image_path="${path}/image/"
music_path="${path}/music/"
video_path="${path}/video/"
pdf_path="${path}/pdf/"
ppt_path="${path}/ppt/"

arrange(){

	if [ ! -d "$shell_path" ]
	then
		mkdir shell
		mv *.sh $shell_path
	else
	    mv *.sh $shell_path
	fi

	if [ ! -d "$text_path" ]
	then
		mkdir text
		mv *.text $text_path
	else
	    mv *.text $text_path
	fi

	if [ ! -d "$doc_path" ]
	then
		mkdir doc
		mv *.doc $doc_path
	else
	    mv *.doc $doc_path
	fi

	if [ ! -d "$image_path" ]
	then
		mkdir image
		mv *.jpg $image_path
		mv *.png $image_path
	else
	    mv *.jpg $image_path
		mv *.png $image_path
	fi

	if [ ! -d "$music_path" ]
	then
		mkdir music
		mv *.mp3 $music_path
	else
	    mv *.mp3 $music_path
	fi

	if [ ! -d "$video_path" ]
	then
		mkdir video
		mv *.mp4 $video_path
	else
	    mv *.mp4 $video_path
	fi

	if [ ! -d "$pdf_path" ]
	then
		mkdir pdf
		mv *.pdf $pdf_path
	else
	    mv *.pdf $pdf_path
	fi

	if [ ! -d "$ppt_path" ]
	then
		mkdir ppt
		mv *.ppt $ppt_path
	else
	    mv *.ppt $ppt_path
	fi

}

login

echo "------------------------------------"
echo "Login Successful"
echo "------------------------------------"
echo  "Size     Path"
echo "------------------------------------"
du -sh $PWD
echo "------------------------------------"

arrange


if [ ! -d "$info_path" ]
then
	mkdir info
fi


