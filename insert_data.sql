-- Inserting into TypeVehicule 
INSERT INTO app_typevehicule (nomTypeVehicule) VALUES ('Voiture');
INSERT INTO app_typevehicule (nomTypeVehicule) VALUES ('Camion');
INSERT INTO app_typevehicule (nomTypeVehicule) VALUES ('Bus');
INSERT INTO app_typevehicule (nomTypeVehicule) VALUES ('Moto');

-- Inserting into Vehicule
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule1', 1);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule2', 2);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule3', 3);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule4', 4);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule5', 1);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule6', 2);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule7', 3);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule8', 4);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule9', 1);
INSERT INTO app_vehicule (nomVehicule, typevehicule_id) VALUES ('Vehicule10', 2);

-- Inserting into Rue
INSERT INTO app_rue (nomRue) VALUES ("Route d'Orléans");
INSERT INTO app_rue (nomRue) VALUES ("Route de Massy");


-- Inserting into etatFeu 
INSERT INTO app_etatfeu (nomEtatFeu) VALUES ('Vert');
INSERT INTO app_etatfeu (nomEtatFeu) VALUES ('Rouge');
INSERT INTO app_etatfeu (nomEtatFeu) VALUES ('Orange');
INSERT INTO app_etatfeu (nomEtatFeu) VALUES ('Eteint');


-- Inserting into Feu
INSERT INTO app_feu (nomFeu, rue_id, etatFeu_id) VALUES ('Feu1', 1, 1);
INSERT INTO app_feu (nomFeu, rue_id, etatFeu_id) VALUES ('Feu2', 1, 1);
INSERT INTO app_feu (nomFeu, rue_id, etatFeu_id) VALUES ('Feu3', 2, 2);
INSERT INTO app_feu (nomFeu, rue_id, etatFeu_id) VALUES ('Feu4', 2, 2);


-- Inserting into Temps

INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 00:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 01:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 02:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 03:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 04:00:00', 49, 'Dimanche', TRUE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 05:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 06:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 07:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 08:00:00', 50, 'Lundi', FALSE);
INSERT INTO app_temps (dateHeure, semaine, jourSemaine, isWeekEnd) VALUES ('2023-12-10 09:00:00', 50, 'Lundi', FALSE);


-- Inserting into Detection

INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (1, 1, 1, 1);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (2, 1, 1, 2);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (3, 2, 2, 3);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (4, 2, 2, 4);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (5, 1, 1, 5);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (6, 1, 1, 6);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (7, 2, 2, 7);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (8, 2, 2, 8);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (9, 1, 1, 9);
INSERT INTO app_detection (temps_id, feu_id, rue_id, vehicule_id) VALUES (10, 1, 1, 10);


query = 'SELECT "app_typevehicule"."nomTypeVehicule", COUNT("app_detectionvehicule"."detection_id") AS "nbDetection"
         FROM "app_detectionvehicule"
         INNER JOIN "app_vehicule"
         ON "app_detectionvehicule"."vehicule_id" = "app_vehicule"."idVehicule"
         INNER JOIN "app_typevehicule"
         ON "app_typevehicule"."idTypeVehicule" = "app_vehicule"."typevehicule_id"
         GROUP BY "app_typevehicule"."nomTypeVehicule"'