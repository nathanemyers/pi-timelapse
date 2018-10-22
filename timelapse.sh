#!/bin/bash

date=$(date "+%F_%H:%M")

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

ffmpeg -i /tmp/img%03d.jpg -r 10 -s 1280x720 -vcodec libx264 /home/pi/$date-timelapse.mp4

#mkdir /home/pi/pi-timelapse/archive/$date
#mv /home/pi/pi-timelapse/pictures/* /home/pi/pi-timelapse/archive/$date

