#!/bin/bash

# Nom de la base de données
dbname="db.sqlite3"

# Commandes SQL
sql="
INSERT INTO app_vehicule (immatriculation, marque, modele, couleur) VALUES 
('2345 BC 67', 'Renault', 'Clio', 'Rouge'),
('3456 CD 78', 'Citroen', 'C3', 'Vert'),
('4567 DE 89', 'Ford', 'Fiesta', 'Noir'),
('5678 EF 90', 'Peugeot', '208', 'Bleu'),
('6789 FG 01', 'Volkswagen', 'Polo', 'Jaune'),
('7890 GH 12', 'Audi', 'A1', 'Gris'),
('8901 HI 23', 'Mercedes', 'Classe A', 'Marron'),
('9012 IJ 34', 'BMW', 'Serie 1', 'Orange'),
('0123 JK 45', 'Opel', 'Corsa', 'Violet'),
('1234 KL 56', 'Fiat', '500', 'Rose'),
('2345 LM 67', 'Seat', 'Ibiza', 'Beige'),
('3456 MN 78', 'Dacia', 'Sandero', 'Bleu ciel'),
('4567 NO 89', 'Skoda', 'Fabia', 'Bleu marine'),
('5678 OP 90', 'Mini', 'Cooper', 'Bleu turquoise'),
('6789 PQ 01', 'Alfa Romeo', 'Giulietta', 'Bleu foncé'),
('7890 QR 12', 'Nissan', 'Micra', 'Bleu clair'),
('8901 RS 23', 'Kia', 'Rio', 'Bleu pétrole'),
('9012 ST 34', 'Hyundai', 'i20', 'Bleu azur'),
('0123 TU 45', 'Honda', 'Jazz', 'Bleu nuit'),
('1234 UV 56', 'Mazda', '2', 'Bleu roi'),
('2345 VW 67', 'Suzuki', 'Swift', 'Bleu électrique'),
('3456 WX 78', 'Mitsubishi', 'Space Star', 'Bleu pastel'),
('4567 XY 89', 'Lancia', 'Ypsilon', 'Bleu lagon'),
('5678 YZ 90', 'Toyota', 'Aygo', 'Bleu ciel'),
('6789 ZA 01', 'Renault', 'Twingo', 'Bleu marine'),
('7890 AB 12', 'Citroen', 'C1', 'Bleu turquoise'),
('8901 BC 23', 'Ford', 'Ka', 'Bleu),
('XYZ9 XY 12', 'Toyota', 'Yaris', 'Blanc');

INSERT INTO app_rue (nom) VALUES 
('Rue des Fleurs'),
('Avenue de la Liberté'),
('Chemin des Vignes'),
('Rue des Lilas'),
('Rue des Champs'),
('Rue des Moulins'),
('Rue des Prés'),
('Rue des Écoles'),
('Rue des Églantines'),
('Rue des Acacias'),
('Rue des Érables'),
('Rue des Peupliers'),
('Rue des Tilleuls'),
('Rue des Chênes'),
('Rue des Saules'),
('Rue des Pommiers'),
('Rue des Cerisiers'),
('Rue des Roses'),
('Rue des Pêchers'),
('Rue des Myrtilles'),
('Rue des Coquelicots'),
('Rue des Jonquilles'),
('Rue des Tulipes'),
('Rue des Orchidées'),
('Rue des Iris'),
('Rue des Primevères'),
('Rue des Glycines'),
('Rue des Camélias'),
('Rue des Hortensias'),
('Rue des Magnolias'),
('Rue des Pivoines'),
('Rue des Capucines'),
('Rue des Pensées'),
('Rue des Marguerites'),
('Rue des Bleuets'),
('Rue des Mimosas'),
('Rue des Lys'),
('Rue des Dahlias'),
('Rue des Glaïeuls'),
('Rue des Œillets'),
('Rue des Narcisses'),
('Rue des Giroflées'),
('Rue des Renoncules'),
('Rue des Ancolies'),
('Rue des Chardons'),
('Rue des Pâquerettes'),
('Rue des Crocus'),
('Rue des Violettes'),
('Rue des Chrysanthèmes'),
('Rue des Fougères'),
('Rue des Fuschias'),
('Rue des Héliotropes'),
('Rue des Lysianthus'),
('Rue des Mauves'),
('Rue des Mufliers'),
('Rue des Nigelles'),
('Rue des Oeillets de Paris'),
('Rue des Oeillets de Poète'),
('Rue des Oeillets de Chine'),
('Rue des Oeillets de Mer'),
('Rue des Oeillets de Montagne'),
('Rue des Oeillets de Nice'),
('Rue des Oeillets de Poète'),
('Allée des Cygnes');

INSERT INTO app_feu (nom, rue_id) VALUES 
('Feu1', 1),
('Feu2', 2),
('Feu3', 3),
('Feu4', 4);

INSERT INTO app_jour (nom) VALUES 
('Lundi'),
('Mardi'),
('Mercredi'),
('Jeudi'),
('Vendredi'),
('Samedi'),
('Dimanche');

INSERT INTO app_heure (nom) VALUES
('01:00'),
('02:00'),
('03:00'),
('04:00'),
('05:00'),
('06:00'),
('07:00'),
('08:00'),
('09:00'),
('10:00'),
('11:00'),
('12:00'),
('13:00'),
('14:00'),
('15:00'),
('16:00'),
('17:00'),
('18:00'),
('19:00'),
('20:00'),
('21:00'),
('22:00'),
('23:00'),
('00:00');
"

# Exécute les commandes SQL sur la base de données SQLite
if [ -f "$dbname" ]; then
    echo "Database $dbname exists tho."
    echo "Executing the following SQL commands:"
    echo "$sql"
    echo "$sql" | sqlite3 $dbname
else
    echo "Database does not exist unfortunately."
fi