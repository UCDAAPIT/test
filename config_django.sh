#!/bin/sh
#script to automate the config of django+gunicorn+nginx
easy_install pip
pip install django gunicorn
echo "This is a test" > /log.txt
cd /usr/share/nginx/www/test
#cp index.html  /usr/share/nginx/www/index.html
ls >> /log.txt
gunicorn tester.wsgi:application --bind=0.0.0.0:80 
echo "run gunicorn" >> /log.txt
echo "download config into nginx" >> /log.txt

