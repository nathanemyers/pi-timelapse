#!/bin/bash

date=$(date "+%F")
raspistill -o $date.jpg -vf
