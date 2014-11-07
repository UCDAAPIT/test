#!/bin/sh
#script to automate the config of django+gunicorn+nginx
easy_install pip
pip install django gunicorn uwsgi
echo "This is a test" > /log.txt
cd /usr/share/nginx/www/test/tester
ls >> /log.txt
uwsgi --http :8000 --wsgi-file wsgi.py
echo "run gunicorn" >> /log.txt
#curl -0 https://raw.githubusercontent.com/UCDAAPIT/test/master/default > /etc/nginx/sites-enabled/default
echo "download config into nginx" >> /log.txt


