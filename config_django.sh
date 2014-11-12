#!/bin/sh
#script to automate the config of django+gunicorn+nginx
easy_install pip
#pip install django gunicorn uwsgi
pip install django 
echo "This is a test" > /log.txt
cd /usr/share/nginx/www/test2/tester
ls >> /log.txt
gunicorn wsgi:application --bind=0.0.0.0:80
ps -A >> /log.txt
echo "run gunicorn" >> /log.txt
#curl -0 https://raw.githubusercontent.com/UCDAAPIT/test/master/default > /etc/nginx/sites-enabled/default
echo "download config into nginx" >> /log.txt


