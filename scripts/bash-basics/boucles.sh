#!/bin/bash

#boucle for simple
echo "====Boucle for ==="
for i in 1 2 3 4 5; do
	echo "Numero $i"
done

#boucle for avec range
echo "=== Range ==="
for i in {1..5}; do
	echo "Ligne $i"
done

#Boucle While
echo "=== While ==="
compteur=0
while [ $compteur -lt 3 ]; do
	echo "Compteur : $compteur"
	compteur=$((compteur + 1))
done

#Boucle sur les fichiers
for fichier in ~/scripts/*.sh; do
	echo "Script trouve : $fichier"
done

