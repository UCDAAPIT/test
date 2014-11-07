#!/bin/sh
#script to automate the config of django+gunicorn+nginx
easy_install pip
pip install django gunicorn
echo "This is a test" > /log.txt
cd /usr/share/nginx/www/test
#cp index.html  /usr/share/nginx/www/index.html
ls >> /log.txt
#gunicorn tester.wsgi:application --bind=127.0.0.1:8001 & 
echo "run gunicorn" >> /log.txt
curl -0 https://raw.githubusercontent.com/UCDAAPIT/test/master/default > /etc/nginx/sites-enabled/default
echo "download config into nginx" >> /log.txt


