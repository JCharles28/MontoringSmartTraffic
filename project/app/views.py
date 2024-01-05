
import datetime
from django.utils import timezone
from django.shortcuts import render
from django.core.serializers import serialize
from app.models import *
import json
from django.db.models import Count

# --- Affichage des templates ---

def index(request):
    # Récupération des données Chart (1)
    nbDetection = list(Detection.objects.values('rue__nomRue').annotate(nbDetection=Count('rue_id')).order_by())
    nomRue = [sublist['rue__nomRue'] for sublist in nbDetection]
    nbDetection = [sublist['nbDetection'] for sublist in nbDetection]

    # Récupération des données Chart (2)
    nbDetection2 = list(
        DetectionVehicule.objects
        .values('vehicule__typeVehicule__nomTypeVehicule')
        .annotate(nbDetection=Count('detection_id'))
        .order_by()
    )

    typeVehicule = [sublist['vehicule__typeVehicule__nomTypeVehicule'] for sublist in nbDetection2]
    nbDetection2 = [sublist['nbDetection'] for sublist in nbDetection2]
    
    # Récupération des données Chart (3)

    current_hour = timezone.now().hour

    nbDetectionJournaliere = Detection.objects.filter(temps__dateHeure__hour=current_hour).count()
    temps = datetime.datetime.now()
    heures = []
    for i in range(24):
        heures.append(temps.replace(hour=i, minute=0, second=0, microsecond=0))

    # Affichage console
    print("--------------------")
    print("Chart 1:")
    print(nomRue)
    print(nbDetection)
    print("--------------------")
    print("Chart 2:")
    print(typeVehicule)
    print(nbDetection2)
    print("--------------------")
    print("Chart 3:")
    print("Nombre de détection : ",nbDetectionJournaliere)

    tabHeures = []
    for i in range(24):
        tabHeures.append(heures[i].hour)
    print("Les heures de la journée : ", tabHeures)
    print("--------------------")

    # JSON
    rues_json = json.dumps(nomRue, ensure_ascii=False)
    nbDetection_json = json.dumps(nbDetection, ensure_ascii=False)
    typeVehicule_json = json.dumps(typeVehicule, ensure_ascii=False)
    nbDetection2_json = json.dumps(nbDetection2, ensure_ascii=False)

 
    return render(
        request, 'index.html',
        {
         'rue': rues_json, 
         'nbDetection': nbDetection_json,
         'typeVehicule': typeVehicule_json, 
         'nbDetection2': nbDetection2_json,
        }
    )

def index_test(request):
    # Récupération des données Chart (1)
    nbDetection = list(Detection.objects.values('rue__nomRue').annotate(nbDetection=Count('rue_id')).order_by())
    nomRue = [sublist['rue__nomRue'] for sublist in nbDetection]
    nbDetection = [sublist['nbDetection'] for sublist in nbDetection]

    # Récupération des données Chart (2)
    nbDetection2 = list(
        DetectionVehicule.objects
        .values('vehicule__typeVehicule__nomTypeVehicule')
        .annotate(nbDetection=Count('detection_id'))
        .order_by()
    )

    typeVehicule = [sublist['vehicule__typeVehicule__nomTypeVehicule'] for sublist in nbDetection2]
    nbDetection2 = [sublist['nbDetection'] for sublist in nbDetection2]
    
    # Récupération des données Chart (3)

    current_hour = timezone.now().hour

    nbDetectionJournaliere = Detection.objects.filter(temps__dateHeure__hour=current_hour).count()
    temps = datetime.datetime.now()
    heures = []
    for i in range(24):
        heures.append(temps.replace(hour=i, minute=0, second=0, microsecond=0))

    # Affichage console
    print("--------------------")
    print("Chart 1:")
    print(nomRue)
    print(nbDetection)
    print("--------------------")
    print("Chart 2:")
    print(typeVehicule)
    print(nbDetection2)
    print("--------------------")
    print("Chart 3:")
    print("Nombre de détection : ",nbDetectionJournaliere)

    tabHeures = []
    for i in range(24):
        tabHeures.append(heures[i].hour)
    print("Les heures de la journée : ", tabHeures)
    print("--------------------")

    # JSON
    rues_json = json.dumps(nomRue, ensure_ascii=False)
    nbDetection_json = json.dumps(nbDetection, ensure_ascii=False)
    typeVehicule_json = json.dumps(typeVehicule, ensure_ascii=False)
    nbDetection2_json = json.dumps(nbDetection2, ensure_ascii=False)

 
    return render(
        request, 'index_test.html',
        {
         'rue': rues_json, 
         'nbDetection': nbDetection_json,
         'typeVehicule': typeVehicule_json, 
         'nbDetection2': nbDetection2_json,
        }
    )

def carte(request):
    return render(request, 'carte.html')

def test(request):
    test1 = Vehicule.objects.all()
    test2 = Detection.objects.all()

    return render(request, 'app/test.html', 
                  {'test1': test1, 'test2': test2})

def info(request):
    return render(request, 'informations.html')
