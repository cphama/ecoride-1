@echo off
echo Initialisation du projet EcoRide1...

rem Création des dossiers principaux
mkdir backend frontend database
mkdir backend\controllers backend\models backend\routes
mkdir frontend\css frontend\js frontend\pages

rem Création des fichiers Backend
echo. > backend\config.php
echo. > backend\index.php
echo. > backend\controllers\auth.php
echo. > backend\controllers\users.php
echo. > backend\controllers\covoiturages.php
echo. > backend\controllers\reservations.php
echo. > backend\models\User.php
echo. > backend\models\Covoiturage.php
echo. > backend\models\Reservation.php

rem Création des fichiers Frontend
echo. > frontend\index.html
echo. > frontend\css\styles.css
echo. > frontend\js\script.js
echo. > frontend\pages\covoiturages.html
echo. > frontend\pages\reservation.html
echo. > frontend\pages\historique.html
echo. > frontend\pages\avis.html
echo. > frontend\pages\login.html
echo. > frontend\pages\contact.html

rem Création du fichier SQL
echo. > database\database.sql

rem Initialisation de Git
git init
echo node_modules/ > .gitignore
echo vendor/ >> .gitignore
echo .env >> .gitignore

rem Ajout des fichiers et premier commit
git add .
git commit -m "Initialisation du projet EcoRide1"

rem Lier le dépôt GitHub (remplace TON-USERNAME par ton pseudo GitHub)
git remote add origin https://github.com/cphama/ecoride1.git
git push -u origin main

echo Projet EcoRide1 initialisé avec succès !
pause
