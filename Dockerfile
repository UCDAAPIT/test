FROM ubuntu
MAINTAINER Andrew Smiley
# Update packages
RUN apt-get update -y

# Install Python Setuptools
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential
RUN apt-get install -y python python-dev python-distribute python-pip


# Install pip
RUN easy_install pip
ADD . /src
# Add and install Python modules
ADD requirements.txt /src/requirements.txt
RUN pip install virtualenv
RUN mkdir /virtualenvs
RUN cd /virtualenvs && virtualenv django-env
RUN source /virtualenvs/djang-env/bin/activate && pip install -r /src/requirements.txt

# Expose
EXPOSE  8002
WORKDIR /src
CMD supervisord 
