from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.db.models import Count
from app.models import *
import json

# Create your views here.


def connexion(request): 
    usr = request.POST.get('username')
    pwd = request.POST.get('password')
    user = authenticate(request, username=usr, password=pwd)
    if user is not None:
        # Récupérations des données
        rue = list(Rue.objects.all().values_list('nomRue', flat=True))
        detections = list(Detection.objects.values_list('vehicule_id', flat=True))
        
        rues = Rue.objects.annotate(detection_count=Count('detection__vehicule_id')).values_list('nomRue', 'detection_count')
        rues = list(rues)
        
        # Conversion en JSON
        test_rue_json = json.dumps(rue).replace('"', '\\"')
        detections_json = json.dumps(detections)
        
        rue_json = json.dumps([rue for rue, count in rues]).replace('"', '\\"')
        count_json = json.dumps([count for rue, count in rues])   
        

        return render(request, 'index.html', {
            'test_rue': test_rue_json,
            'test_nb': detections_json,
            'rue': rue_json,
            'count': count_json
        })
    else:
        return render(request, 'login.html')
    
def deconnexion(request):
    logout(request)
    return render(request, 'logout.html')