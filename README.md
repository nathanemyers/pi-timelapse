# pi-timelapse
Raspberry Pi Timelapse

## Configuration
To set up what time you want to take pictures, register your script in crontab.
See [here](http://www.adminschoice.com/crontab-quick-reference) for more information.
```
contab -e
```

Your cron entry should look something like this:
```
0 8 * * * /etc/cron.daily/capture.sh
```
This takes a photo every day at 8:00 AM

*note*: Be sure to copy your capture script into `/etc/cron.daily/` so that cron can find it.

## Running a local webserver
If you want to connect to your raspberry pi remotely so you don't need to haul out keyboards, mice, and a monitor, you can fire up a small webserver with
```
./brick.rb
```
