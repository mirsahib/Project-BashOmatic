#! /bin/bash

function organize(){
    rename 's/ /_/g' *
    for file in "$PWD"/*;
    do 
        if [[ -d "$file" ]];then
            echo "$file is directory"
        else
            if [ "${file##*.}" = "pdf" ] || [ "${file##*.}" = "doc" ] || [ "${file##*.}" = "docx" ];then 
                if [[ -d "$PWD"/Documents ]];then 
                    mv $file "$PWD"/Documents 
                    echo "$file moved"
                else
                    mkdir "$PWD"/Documents
                    mv $file "$PWD"/Documents
                    echo "folder created and $file moved"
                fi
            elif [ "${file##*.}" = "jpg" ] || [ "${file##*.}" = "png" ] || [ "${file##*.}" = "gif" ] || [ "${file##*.}" = "jpeg" ];then
                if [[ -d "$PWD"/Pictures ]];then 
                    mv $file "$PWD"/Pictures 
                    echo "$file moved"
                else
                    mkdir "$PWD"/Pictures
                    mv $file "$PWD"/Pictures
                    echo "folder created and $file moved"
                fi
            elif [ "${file##*.}" = "zip" ] || [ "${file##*.}" = "bzip" ] || [ "${file##*.}" = "gz" ];then
                if [[ -d "$PWD"/Compressed ]];then 
                    mv $file "$PWD"/Compressed 
                    echo "$file moved"
                else
                    mkdir "$PWD"/Compressed
                    mv $file "$PWD"/Compressed
                    echo "folder created and $file moved"
                fi
            elif [ "${file##*.}" = "exe" ] || [ "${file##*.}" = "sh" ] || [ "${file##*.}" = "deb" ];then
                if [[ -d "$PWD"/Programs ]];then 
                    mv $file "$PWD"/Programs 
                    echo "$file moved"
                else
                    mkdir "$PWD"/Programs
                    mv $file "$PWD"/Programs
                    echo "folder created and $file moved"
                fi
            else
                if [[ -d "$PWD"/Miscellaneous ]];then 
                    mv $file "$PWD"/Miscellaneous
                    echo "$file moved"
                else
                    mkdir "$PWD"/Miscellaneous
                    mv $file "$PWD"/Miscellaneous
                    echo "folder created and $file moved"
                fi
            fi
        fi
    done
    echo "BashOmatic run successfully"
    #move the icon.ico file to desired location and edit the file path below
    #notify-send 'Folder Organized' 'Downloads folder is now organized'
}

if [ "$PWD" = "/home/mirsahib/Downloads"  ];
then 
    echo "BashOmatic is in the directory"
    organize
else
    echo "BashOmatic is not in directory"
    cd "/home/mirsahib/Downloads"
    organize
fi