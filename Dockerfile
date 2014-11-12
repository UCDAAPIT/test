FROM ubuntu
MAINTAINER Andrew Smiley
# Update packages
RUN apt-get update -y

# Install Python Setuptools
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential
RUN apt-get install -y python python-dev python-distribute python-pip supervisor


# Install pip
RUN easy_install pip
ADD . /src
# Add and install Python modules
ADD requirements.txt /src/requirements.txt
RUN pip install virtualenv
RUN mkdir -p /virtualenvs/django-env/bin
RUN cd /src && pip install -r /src/requirements.txt 

##RUN /bin/bash -c source /virtualenvs/django-env/bin/activate && pip install -r /src/requirements.txt
#RUN /src/mysh.sh
# Expose
EXPOSE  8002
WORKDIR /src
CMD supervisord -c /src/supervisord.conf 
#CMD /bin/bash
