#!/bin/bash

date=$(date "+%F_%H:%M")
raspistill -o /home/pi/pi-timelapse/pictures/$date.jpg -vf $@
