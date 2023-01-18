from django.shortcuts import render
from django.http import HttpResponse 

# Path: playground/urls.p
def say_hello(request):
    return HttpResponse('Hello World!')

