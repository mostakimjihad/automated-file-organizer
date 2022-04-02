#!/usr/bin/bash
path=$PWD
info_path="${path}/info/"
shell_path="${path}/shell/"
text_path="${path}/text/"



echo  "Size     Path"
du -sh $PWD

if [ ! -d "$info_path" ]
then
	mkdir info
fi


