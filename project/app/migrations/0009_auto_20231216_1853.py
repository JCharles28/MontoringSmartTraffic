# Generated by Django 3.2.23 on 2023-12-16 17:53

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0008_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='rue',
            name='feu',
        ),
        migrations.RemoveField(
            model_name='rue',
            name='vehicule',
        ),
        migrations.RemoveField(
            model_name='temps',
            name='feu',
        ),
        migrations.RemoveField(
            model_name='temps',
            name='rue',
        ),
        migrations.RemoveField(
            model_name='temps',
            name='vehicule',
        ),
        migrations.RemoveField(
            model_name='typevehicule',
            name='vehicule',
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
