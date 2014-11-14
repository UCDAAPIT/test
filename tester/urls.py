from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'tester.views.index', name='home'),
    # url(r'^blog/', include('blog.urls')),

   url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),

)

urlpatterns += patterns('',
        (r'^media/(?P<path>.*)$', 'django.views.static.serve',))
