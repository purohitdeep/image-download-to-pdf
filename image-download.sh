#!/bin/bash

# download the file from the internet and store the images in a directory.
download_a_file()
{
    hero=$1;
    series_number=$2;
    comics_name=$3;
    total_pages=$4;
    url=$5;
    
    # create directory
    mkdir $hero/$series_number-$comics_name;

    # increase the count of total pages by 1
    total_pages=$(( $total_pages + 1 ));

    # download the file
    echo "Starting file download of '$hero', Comics: '$comics_name', Pages: '$(( $total_pages - 1 ))' "
    for ((i = 1; i < $total_pages; i++)); do
        #echo "$hero/$series_number-$comics_name/$comics_name-$i.jpg" "$url-$i.jpg"
        curl -o "$hero/$series_number-$comics_name/$comics_name-$i.jpg" "$url-$i.jpg"
    done
} 

# Read the parameters from file for the file download
read_parameters_from_file()
{
    input=$1
    while IFS= read -r line
    do
        #echo "$line"
        download_a_file $line
    done < "$input"
}

read_parameters_from_file parameters.txt
