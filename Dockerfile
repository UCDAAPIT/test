FROM ubuntu:12.04
MAINTAINER Andrew Smiley
# Update packages
RUN apt-get update -y

# Install Python Setuptools
#RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential
RUN apt-get install -y python python-dev python-distribute python-pip supervisor


# Install pip
RUN easy_install pip
ADD . /src
# Add and install Python modules
ADD requirements.txt /src/requirements.txt
RUN  pip install -r /src/requirements.txt 
WORKDIR /src 
#RUN python manage.py collectstatic --noinput
# Expose
EXPOSE  8002
CMD ["supervisord", "-c", "/src/supervisord.conf"] 
