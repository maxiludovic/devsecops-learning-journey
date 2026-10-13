#!/bin/bash

nom="Ludovic"
age=5
ville="Duisburg"

echo "Bonjour, je m'appelle $nom"
echo "j'ai $age ans"
echo "j' habite a $ville"

date_actuelle=$(date)
echo "nous sommes le : $date_actuelle"

echo "premier argument : $1"
echo "nombre d'arguments : $#"
