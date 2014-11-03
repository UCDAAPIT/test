#!/bin/sh
#script to automate the config of django+gunicorn+nginx
cd /usr/share/nginx/www/
git clone https://github.com/UCDAAPIT/test.git 
cd test
gunicorn tester.wsgi:application --bind=127.0.0.1:8001 &
curl -O https://raw.githubusercontent.com/UCDAAPIT/test/master/default > /etc/nginx/sites-enabled/default
service nginx restart

