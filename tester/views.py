__author__ = 'Andrew Smiley'
from django.shortcuts import render
import traceback
from django.http import HttpResponse

def index(request):
    return render(request, "index.html")
