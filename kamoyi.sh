#!/usr/bin/bash


login(){

	read -p "Enter username : " username
	echo -n "Enter password : "
	read -s password

	if [[ "$username" != "kirito" ]]
	then
	    echo 
	    echo "XXX Wrong username XXX"
		exit 1
	fi

	if [[ "$password" !=  "kirito" ]]
	then
	    echo 
	    echo "!!! Wrong password !!!"
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

count_sh=`ls -1 *.sh 2>/dev/null | wc -l`
count_txt=`ls -1 *.txt 2>/dev/null | wc -l`
count_doc=`ls -1 *.doc 2>/dev/null | wc -l`
count_jpg=`ls -1 *.jpg 2>/dev/null | wc -l`
count_png=`ls -1 *.png 2>/dev/null | wc -l`
count_mp3=`ls -1 *.mp3 2>/dev/null | wc -l`
count_mp4=`ls -1 *.mp4 2>/dev/null | wc -l`
count_pdf=`ls -1 *.pdf 2>/dev/null | wc -l`
count_ppt=`ls -1 *.ppt 2>/dev/null | wc -l`

arrange(){

	if [ $count_sh != 0 ]
	then
	echo "shell          $count_sh"

	if [ ! -d "$shell_path" ]
	then
		mkdir shell
		mv *.sh $shell_path
	else
	    mv *.sh $shell_path
	fi

	fi

	if [ $count_txt != 0 ]
	then
	echo "text           $count_txt"

	if [ ! -d "$text_path" ]
	then
		mkdir text
		mv *.txt $text_path
	else
	    mv *.txt $text_path
	fi
	fi

	if [ $count_doc != 0 ]
	then
	echo "doc            $count_doc"

	if [ ! -d "$doc_path" ]
	then
		mkdir doc
		mv *.doc $doc_path
	else
	    mv *.doc $doc_path
	fi

	fi

	if [ $count_jpg != 0 -o $count_png != 0 ]
	then
	echo "image          $(( $count_jpg + $count_png ))"

	if [ ! -d "$image_path" ]
	then
		mkdir image
		mv *.jpg $image_path
		mv *.png $image_path
	else
	    mv *.jpg $image_path
		mv *.png $image_path
	fi
	fi

	if [ $count_mp3 != 0 ]
	then
	echo "music          $count_mp3"

	if [ ! -d "$music_path" ]
	then
		mkdir music
		mv *.mp3 $music_path
	else
	    mv *.mp3 $music_path
	fi

	fi

	if [ $count_mp4 != 0 ]
	then
	echo "video          $count_mp4"

	if [ ! -d "$video_path" ]
	then
		mkdir video
		mv *.mp4 $video_path
	else
	    mv *.mp4 $video_path
	fi
	fi

	if [ $count_pdf != 0 ]
	then
	echo "pdf            $count_pdf"

	if [ ! -d "$pdf_path" ]
	then
		mkdir pdf
		mv *.pdf $pdf_path
	else
	    mv *.pdf $pdf_path
	fi

	fi

	if [ $count_ppt != 0 ]
	then
	echo "ppt            $count_ppt"

	if [ ! -d "$ppt_path" ]
	then
		mkdir ppt
		mv *.ppt $ppt_path
	else
	    mv *.ppt $ppt_path
	fi
	fi

}

login


echo
echo "------------------------------------"
echo "Login Successful"
echo "------------------------------------"
echo  "Size     Path"
echo "------------------------------------"
du -sh $PWD
echo "------------------------------------"
echo "filetype     number"
echo "------------------------------------"

arrange

echo "------------------------------------"
echo "Your file successfully organized"
echo "------------------------------------"




if [ ! -d "$info_path" ]
then
	mkdir info
fi


