--- Lister toutes les tables de la base en question

--- SELECT name FROM sqlite_master WHERE type='table';


--- Désactiver temporairement les contraintes des clés étrangères

PRAGMA foreign_keys = OFF;


--- Supprimer toutes les données des tables en question

DELETE FROM app_etatfeu;
DELETE FROM app_rue;
DELETE FROM app_temps;
DELETE FROM app_typevehicule;
DELETE FROM app_vehicule;
DELETE FROM app_feu;
DELETE FROM app_detection;


--- Réactiver les contraintes des clés étrangères

PRAGMA foreign_keys = ON;
