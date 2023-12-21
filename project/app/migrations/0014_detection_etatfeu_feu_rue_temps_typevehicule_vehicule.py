# Generated by Django 3.2.23 on 2023-12-16 20:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('app', '0013_auto_20231216_2152'),
    ]

    operations = [
        migrations.CreateModel(
            name='Feu',
            fields=[
                ('idFeu', models.AutoField(primary_key=True, serialize=False, verbose_name='id du feu')),
                ('nomFeu', models.CharField(max_length=50, verbose_name='nom du feu')),
            ],
        ),
        migrations.CreateModel(
            name='Temps',
            fields=[
                ('idTemps', models.AutoField(primary_key=True, serialize=False, verbose_name='id du temps')),
                ('dateHeure', models.DateTimeField(verbose_name='date de la détection')),
                ('semaine', models.IntegerField(verbose_name='semaine de la détection')),
                ('jourSemaine', models.CharField(max_length=50, verbose_name='jour de la détection')),
                ('isWeekEnd', models.BooleanField(verbose_name='indicateur de week-end')),
            ],
        ),
        migrations.CreateModel(
            name='Vehicule',
            fields=[
                ('idVehicule', models.AutoField(primary_key=True, serialize=False, verbose_name='id du véhicule')),
                ('nomVehicule', models.CharField(max_length=50, verbose_name='nom de véhicule')),
            ],
        ),
        migrations.CreateModel(
            name='TypeVehicule',
            fields=[
                ('idTypeVehicule', models.AutoField(primary_key=True, serialize=False, verbose_name='id du type de véhicule')),
                ('nomTypeVehicule', models.CharField(max_length=50, verbose_name='nom du type de véhicule')),
                ('vehicule', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.vehicule')),
            ],
        ),
        migrations.CreateModel(
            name='Rue',
            fields=[
                ('idRue', models.AutoField(primary_key=True, serialize=False, verbose_name='id de la rue')),
                ('nomRue', models.CharField(max_length=50, verbose_name='nom de la rue')),
                ('feu', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.feu')),
            ],
        ),
        migrations.CreateModel(
            name='etatFeu',
            fields=[
                ('idEtatFeu', models.AutoField(primary_key=True, serialize=False, verbose_name="id de l'état du feu")),
                ('nomEtatFeu', models.CharField(max_length=50, verbose_name='état du feu')),
                ('feu', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.feu')),
            ],
        ),
        migrations.CreateModel(
            name='Detection',
            fields=[
                ('idDetection', models.AutoField(primary_key=True, serialize=False, verbose_name='id de la détection')),
                ('feu', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.feu')),
                ('rue', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.rue')),
                ('temps', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.temps')),
                ('vehicule', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.vehicule')),
            ],
        ),
    ]