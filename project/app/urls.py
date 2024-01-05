
from django.urls import path
from app import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('', views.info),
    path('home/', views.index),
    path('carte/', views.carte),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)