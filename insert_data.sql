-- Inserting into Vehicule
INSERT INTO app_vehicule (nomVehicule) VALUES ('Vehicule1');
INSERT INTO app_vehicule (nomVehicule) VALUES ('Vehicule2');
INSERT INTO app_vehicule (nomVehicule) VALUES ('Vehicule3');
INSERT INTO app_vehicule (nomVehicule) VALUES ('Vehicule4');
INSERT INTO app_vehicule (nomVehicule) VALUES ('Vehicule5');

-- Inserting into Feu
INSERT INTO app_feu (nomFeu) VALUES ('Feu1');
INSERT INTO app_feu (nomFeu) VALUES ('Feu2');
INSERT INTO app_feu (nomFeu) VALUES ('Feu3');
INSERT INTO app_feu (nomFeu) VALUES ('Feu4');

-- Inserting into Rue
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue de la Paix', 1);
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue du Soleil', 2);
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue de l’Étoile', 3);
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue de la Lune', 4);

-- Inserting into TypeVehicule 
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Voiture', 1);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Voiture', 2);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Camion', 3);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Bus', 4);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Voiture', 5);

-- Inserting into etatFeu 
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Vert', 1);
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Vert', 2);
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Rouge', 3);
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Orange', 4);

-- Inserting into Temps

INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 00:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 01:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 02:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 03:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 04:00:00', 49, 'Dimanche', TRUE);


-- Inserting into Detection

INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (1, 1, 1, 1);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (2, 1, 1, 2);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (3, 2, 2, 3);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (4, 3, 3, 4);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (5, 1, 1, 5);
