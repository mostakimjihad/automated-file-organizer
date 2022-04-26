#!/usr/bin/bash


login(){

	figlet "kamoyi" -c | lolcat

	read -p "Enter username : " username
	echo -n "Enter password : "
	read -s password

	if [[ "$username" != "kirito" ]]
	then
	    echo 
	    echo "XXX Wrong username XXX"
		exit 1
	fi

	if [[ "$password" !=  "rodshi" ]]
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
others_path="${path}/others/"
others="${path}/*"



#inside pdf

assignment_path="${pdf_path}/course_assignment/"
book_path="${pdf_path}/dep_book/"
labreport_path="${pdf_path}/lab_report/"



count_sh=`ls -1 *.sh 2>/dev/null | wc -l`
count_txt=`ls -1 *.txt 2>/dev/null | wc -l`
count_doc=`ls -1 *.doc 2>/dev/null | wc -l`
count_docx=`ls -1 *.docx 2>/dev/null | wc -l`
count_jpg=`ls -1 *.jpg 2>/dev/null | wc -l`
count_png=`ls -1 *.png 2>/dev/null | wc -l`
count_mp3=`ls -1 *.mp3 2>/dev/null | wc -l`
count_mp4=`ls -1 *.mp4 2>/dev/null | wc -l`
count_pdf=`ls -1 *.pdf 2>/dev/null | wc -l`
count_ppt=`ls -1 *.ppt 2>/dev/null | wc -l`
count_others=`ls -1 2>/dev/null | wc -l`



# count for  pdf and doc

count_labreport=`ls | grep "labreport" | wc -l`
count_assignment=`ls | grep "assignment" | wc -l`
count_book=`ls | grep "book" | wc -l`

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

		cd $pdf_path

		if [ $count_assignment != 0 ]
		then
			if [ ! -d "$assignment_path" ]
			then

				mkdir course_assignment

				ls | grep "assignment" > data.txt

				for (( i=1; i<=count_assignment; i++ ))
				do
					tem="${i}p"
					temp=$(cat data.txt | sed -n $tem)
	
					mv $temp $assignment_path 
				done

				rm data.txt
				
			fi
		fi

		if [ $count_labreport != 0 ]
		then
			if [ ! -d "$labreport_path" ]
			then

				mkdir lab_report

				ls | grep "labreport" > data.txt

				for (( i=1; i<=count_labreport; i++ ))
				do
					tem="${i}p"
					temp=$(cat data.txt | sed -n $tem)
	
					mv $temp $labreport_path 
				done

				rm data.txt
				
			fi
		fi

		if [ $count_book != 0 ]
		then
			if [ ! -d "$book_path" ]
			then

				mkdir dep_book

				ls | grep "book" > data.txt

				for (( i=1; i<=count_book; i++ ))
				do
					tem="${i}p"
					temp=$(cat data.txt | sed -n $tem)
	
					mv $temp $book_path 
				done

				rm data.txt
				
			fi
		fi


		cd ..

	else
	    mv *.pdf $pdf_path

		cd $pdf_path

		if [ $count_assignment != 0 ]
		then
			if [ ! -d "$assignment_path" ]
			then

				mkdir course_assignment

				ls | grep "assignment" > data.txt

				for (( i=1; i<=count_assignment; i++ ))
				do
					tem="${i}p"
					temp=$(cat data.txt | sed -n $tem)
	
					mv $temp $assignment_path 
				done

				rm data.txt
				
			fi
		fi


		if [ $count_labreport != 0 ]
		then
			if [ ! -d "$labreport_path" ]
			then

				mkdir labreport

				ls | grep "lab report" > data.txt

				for (( i=1; i<=count_labreport; i++ ))
				do
					tem="${i}p"
					temp=$(cat data.txt | sed -n $tem)
	
					mv $temp $labreport_path 
				done

				rm data.txt
				
			fi
		fi

		if [ $count_book != 0 ]
		then
			if [ ! -d "$book_path" ]
			then

				mkdir dep_book

				ls | grep "book" > data.txt

				for (( i=1; i<=count_book; i++ ))
				do
					tem="${i}p"
					temp=$(cat data.txt | sed -n $tem)
	
					mv $temp $book_path 
				done

				rm data.txt
				
			fi
		fi

		cd ..

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




