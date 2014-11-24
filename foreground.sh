#####################################################################################
# This script is so we can start shibboleth without supervisord since the two don't #
# play nicely together apparently..                                                 #
#####################################################################################
#ok, first start shibboleth
service shibd start

#now start supervisord which in turn starts gunicorn + apache
cd /src/ && supervisord -c supervisord.conf &

##ever seen PeeWee's Big Adventure? How he makes breakfast? It's kinda like that... 
