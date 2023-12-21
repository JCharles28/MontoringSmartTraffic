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
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue de la Paix', 0);
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue du Soleil', 1);
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue de l’Étoile', 2);
INSERT INTO app_rue (nomRue, feu_id) VALUES ('Rue de la Lune', 3);

-- Inserting into TypeVehicule 
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Voiture', 0);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Voiture', 1);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Camion', 2);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Bus', 3);
INSERT INTO app_typevehicule (nomTypeVehicule, vehicule_id) VALUES ('Voiture', 4);

-- Inserting into etatFeu 
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Vert', 0);
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Vert', 1);
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Rouge', 2);
INSERT INTO app_etatfeu (nomEtatFeu, feu_id) VALUES ('Orange', 3);

-- Inserting into Temps

INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 00:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 01:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 02:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 03:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 04:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 05:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 06:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 07:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-11 00:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-11 01:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-11 02:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-11 03:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-11 04:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-11 05:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 00:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 01:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 02:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 03:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 04:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 05:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 06:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-12 07:00:00', 50, 'Mardi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-13 00:00:00', 50, 'Mercredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-13 01:00:00', 50, 'Mercredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-13 02:00:00', 50, 'Mercredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-13 03:00:00', 50, 'Mercredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-13 04:00:00', 50, 'Mercredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-13 05:00:00', 50, 'Mercredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 00:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 01:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 02:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 03:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 04:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 05:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 06:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-14 07:00:00', 50, 'Jeudi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-15 00:00:00', 50, 'Vendredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-15 01:00:00', 50, 'Vendredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-15 02:00:00', 50, 'Vendredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-15 03:00:00', 50, 'Vendredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-15 04:00:00', 50, 'Vendredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-15 05:00:00', 50, 'Vendredi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-16 00:00:00', 50, 'Samedi', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-16 01:00:00', 50, 'Samedi', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-16 02:00:00', 50, 'Samedi', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-16 03:00:00', 50, 'Samedi', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-16 04:00:00', 50, 'Samedi', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-16 05:00:00', 50, 'Samedi', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-16 06:00:00', 50, 'Samedi', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 00:00:00', 50, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 01:00:00', 50, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 02:00:00', 50, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 03:00:00', 50, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 04:00:00', 50, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 05:00:00', 50, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 06:00:00', 50, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-17 07:00:00', 50, 'Dimanche', TRUE);


-- Inserting into Detection

INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (1, 0, 0, 2);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (3, 1, 1, 2);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (5, 2, 2, 1);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (7, 3, 3, 2);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (9, 0, 0, 4);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (11, 2, 2, 4);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (13, 1, 1, 2);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (15, 3, 3, 0);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (17, 2, 2, 1);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (19, 0, 0, 3);