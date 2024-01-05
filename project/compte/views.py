from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.db.models import Count
from app.models import *

# Create your views here.


def connexion(request): 
    usr = request.POST.get('username')
    pwd = request.POST.get('password')
    user = authenticate(request, username=usr, password=pwd)
    if user is not None:
        login(request, user)
        return redirect('/home/')
    else:
        return render(request, 'login.html')
    

def deconnexion(request):
    logout(request)
    return render(request, 'logout.html')