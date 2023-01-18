from django.shortcuts import render
from django.http import HttpResponse 

# Path: playground/urls.py
def say_hello(request):
    return HttpResponse('Hello World!')

