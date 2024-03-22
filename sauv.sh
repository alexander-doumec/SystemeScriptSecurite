#!/bin/bash

#Le dossier à automatiser
source_file="Documents/Plateforme"

#Emplacement de sauvegarde 
destination="Documents/Sauvegarde"

#Nom du fichier archive
jour=$(date +%A)
hote=$(hostname -s)
archive_file="$hote-$jour.tgz"

#Affichage du status 
echo "Sauvegarde de $source_file dans $destination/$archive_file"
date
echo

#Sauvegarde du  fichier en utilisant tar 
tar czf $destination/$archive_file $source_file

#Affichage de la fin du status
echo
echo "Sauvegarde finie"
date

#Liste détaillé des fichiers dans le répertoire de destination 
ls -lh $destination
