# Generated by Django 3.2.23 on 2023-12-17 00:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0014_detection_etatfeu_feu_rue_temps_typevehicule_vehicule'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='etatfeu',
            name='feu',
        ),
        migrations.RemoveField(
            model_name='rue',
            name='feu',
        ),
        migrations.RemoveField(
            model_name='typevehicule',
            name='vehicule',
        ),
        migrations.DeleteModel(
            name='Detection',
        ),
        migrations.DeleteModel(
            name='etatFeu',
        ),
        migrations.DeleteModel(
            name='Feu',
        ),
        migrations.DeleteModel(
            name='Rue',
        ),
        migrations.DeleteModel(
            name='Temps',
        ),
        migrations.DeleteModel(
            name='TypeVehicule',
        ),
        migrations.DeleteModel(
            name='Vehicule',
        ),
    ]
