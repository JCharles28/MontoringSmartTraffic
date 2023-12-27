
from django.shortcuts import render
from app.models import *
import json
from django.db.models import Count
# from django.views.generic import TemplateView

# --- Affichage des templates ---

def index(request):
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
    
    # Affichage (vérification)
    print(" ")
    print("Rues :", rue)
    print("Detections :", detections)
    print(" ")
    print("Ures :", rue_json)
    print("Nombres :", count_json)
    print(" ")
    
    
    return render(request, 'index.html', {
        'test_rue': test_rue_json,
        'test_nb': detections_json,
        'rue': rue_json,
        'count': count_json
    })


   

def carte(request):
    return render(request, 'carte.html')

def test(request):
    test1 = Vehicule.objects.all()
    test2 = Detection.objects.all()

    return render(request, 'app/test.html', 
                  {'test1': test1, 'test2': test2})


