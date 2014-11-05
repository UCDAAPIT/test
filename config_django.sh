#!/bin/sh
#script to automate the config of django+gunicorn+nginx
easy_install pip
pip install django gunicorn
echo "This is a test" > /log.txt
cd /usr/share/nginx/www/test
ls >> /log.txt
gunicorn tester.wsgi:application --bind=127.0.0.1:8001 &
netstat -lpn | grep :8001 >> /log.txt
echo "run gunicorn" >> /log.txt
curl -O https://raw.githubusercontent.com/UCDAAPIT/test/master/default > /etc/nginx/sites-enabled/default
echo "download config into nginx" >> /log.txt

