#!/bin/bash

date=$(date "+%F_%H:%M")
out_filename="$date-timelapse.mp4"
out_full_path="/home/pi/pi-timelapse/$out_filename"

rm /tmp/*.jpg

cd /home/pi/pi-timelapse/pictures

pwd

# Link all images in numeric order for ffmpeg
x=1 
for i in $(ls -r -t *.jpg); 
do 
	source_path=$(realpath $i)
	counter=$(printf %03d $x)
	ln -s "$source_path" /tmp/img"$counter".jpg
	x=$(($x+1))
done

ffmpeg -r 10 -i /tmp/img%03d.jpg -r 10 -s 1280x720 $out_full_path

mpack -s "Timelapse Results" $out_full_path nathanemyers@gmail.com
