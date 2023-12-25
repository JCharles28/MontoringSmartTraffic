
from django.shortcuts import render
from app.models import Detection, Vehicule
import json
# from django.views.generic import TemplateView

# --- Affichage des templates ---

def index(request):
    
    labels = []
    data = []
    
    queryset = Detection.objects.all()
    for detection in queryset:
        print(detection.rue.idRue, detection.vehicule.idVehicule)
        labels.append(detection.rue.idRue)
        data.append(detection.vehicule.idVehicule)
  
    print("Labels:", labels)
    print("Data:", data)
        
    labels_json = json.dumps(labels)
    data_json = json.dumps(data)

    return render(request, 'index.html', {
        'labels_json': labels_json,
        'data_json': data_json,
    })

def carte(request):
    return render(request, 'carte.html')

def test(request):
    test1 = Vehicule.objects.using('default').all()
    test2 = Detection.objects.using('default').all()

    return render(request, 'app/test.html', 
                  {'test1': test1, 'test2': test2})

#  --- Affichage des données ---


# --- Graphiques Charts.js ---

# Graphique n°1 - Nombre de véhicules par rue


# def graph(request):
#     # # Récupération et regroupement des données
#     # detections = Detection.objects.values('rue__nomRue').annotate(nombreVehicules=Count('vehicule')).order_by('rue')

#     # # Création des listes labels et data
#     # labels = [detection['rue__nomRue'] for detection in detections]
#     # data = [detection['nombreVehicules'] for detection in detections]

#     # print("Labels:", labels)
#     # print("Data:", data)
    
#     labels = ['January', 'February', 'March', 'April', 'May', 'June', 'July']
#     data = [10, 9, 8, 7, 6, 4, 7]
    
#     # Passer ces données au template
#     return render(request, 'app/chart.html',
#                   {'labels': labels,'data': data}) 

# class ChartView(TemplateView):
#     template_name = 'app/chart.html'

#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context["qs"] = Detection.objects.all()
#         # context["qs"] = Detection.objects.values('rue__nomRue').annotate(nombreVehicules=Count('vehicule')).order_by('rue')
#         return context

