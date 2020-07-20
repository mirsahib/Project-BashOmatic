#! /bin/bash

for file in ~/Downloads/*;
do
    filename=$(basename -- "$file")
    #extension="${filename##*.}"
    filename="${filename%.*}"
    if [ "${file##*.}" = "pdf" ]; 
    then
       echo "$filename is a pdf"
    elif [ "${file##*.}" = "png" ] || [ "${file##*.}" = "jpg" ];
    then 
        echo "$filename is a img"
    elif [ "${file##*.}" = "zip" ] || [ "${file##*.}" = "bzip" ] || [ "${file##*.}" = "gz" ];
    then
        echo "$filename is compress"
    elif [[ -d "$file" ]];
    then
        echo "directory"
    else
        echo "$filename is other"
    fi 


done
