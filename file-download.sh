#!/bin/bash

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
    $total_pages = $total_pages + 1;
    # download the file
    for ((i = 1; i < $total_pages; i++)); do
        echo "$i"
        curl -o "$hero/$series_number-$comics_name/$comics_name-$i.jpg" "$url-$i.jpg"
    done

}


for ((i = 1; i < 33; i++)); do
    echo "$i"
    curl -o "dhruv/26 Video-Villain/Video-Villain-$i.jpg" "https://i0.wp.com/www.sjcomics.com/wp-content/uploads/2019/05/VIDEOVILLAIN-$i.jpg"
done

mkdir dhruv/'07 Barf-ki-chita'
for ((i = 1; i < 33; i++)); do
    echo "$i"
    curl -o "dhruv/07 Barf-ki-chita/Barf-ki-chita-$i.jpg" "https://i0.wp.com/www.sjcomics.com/wp-content/uploads/2018/09/BARF-KI-CHITA-$i.jpg"
done

mkdir dhruv/'89 Dracula-4-Kolahal'
for ((i = 1; i < 124; i++)); do
    echo "$i"
    curl -o "dhruv/89 Dracula-4-Kolahal/Dracula-4-Kolahal-$i.jpg" "https://i0.wp.com/www.sjcomics.com/wp-content/uploads/2018/03/KOLAHAL-$i.jpg"
done


for ((i = 1; i < 123; i++)); do
    echo "$i"
    curl -o "dhruv/88 Dracula-3-Dracula-ka-ant/Dracula-3-Dracula-ka-ant-$i.jpg" "https://i0.wp.com/www.sjcomics.com/wp-content/uploads/2018/03/DRACULA-KA-ANT-$i.jpg"
done

for ((i = 1; i < 74; i++)); do
    echo "$i"
    curl -o "dhruv/86 Dracula-3-Dracula-ka-hamla/Dracula-3-Dracula-ka-hamla-$i.jpg" "https://i1.wp.com/www.sjcomics.com/wp-content/uploads/2018/03/DRACUL-KA-HAMALA-$i.jpg"
done
