#!/usr/bin/bash

path=$PWD
info_path="${path}/info/"
shell_path="${path}/shell/"
text_path="${path}/text/"
doc_path="${path}/text/"
image_path="${path}/image/"
music_path="${path}/music/"
video_path="${path}/video/"

arrange(){

	if [ ! -d "$shell_path" ]
	then
		mkdir shell
	fi
	
	mv *.sh $shell_path

}




echo  "Size     Path"
du -sh $PWD

if [ ! -d "$info_path" ]
then
	mkdir info
fi

arrange

