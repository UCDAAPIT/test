#!/bin/sh
#script to automate the config of django+gunicorn+nginx
easy_install pip
pip install django gunicorn
echo "This is a test" > /log.txt
cd /usr/share/nginx/www/test
ls >> /log.txt
gunicorn tester.wsgi:application --bind=0.0.0.0:12761 
echo "run gunicorn" >> /log.txt
echo "download config into nginx" >> /log.txt

