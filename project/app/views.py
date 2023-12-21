
from django.shortcuts import render
from django import forms
from django.http import HttpResponse

def index(request):
    return render(request, 'index.html')

def carte(request):
    return render(request, 'carte.html')