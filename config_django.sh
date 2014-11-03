#!/bin/sh
#script to automate the config of django+gunicorn+nginx
cd /usr/share/nginx/www/test2
gunicorn tester.wsgi:application --bind=127.0.0.1:8001 &
echo "run gunicorn" >> /log.txt
curl -O https://raw.githubusercontent.com/UCDAAPIT/test/master/default > /etc/nginx/sites-enabled/default
echo "download config into nginx" >> /log.txt
service nginx restart

