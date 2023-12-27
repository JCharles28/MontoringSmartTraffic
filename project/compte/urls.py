from django.urls import path
from django.contrib.auth import views as auth_views 

from compte import views

urlpatterns = [
    path('login/', auth_views.LoginView.as_view(template_name='login.html'), name="login"),
    path('register/', auth_views.LoginView.as_view(template_name='register.html'), name='register'),
    path('logout/', views.logout, name='logout'),
    path('connexion', views.connexion, name='connexion'),
]