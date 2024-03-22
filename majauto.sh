#!/bin/bash

#Début d'une nouvelle session de journalisation séparer par date
echo ">>----------------$(date)-------------<<" >> /var/log/update_upgrade.log

#Début d'une nouvelle session de journalisation des erreurs
echo ">>---------------errors---------------<<" >> /var/log/update_upgrade.err

#Evitez les demandes interactives lors de l execution des commandes
export DEBIAN_FRONTEND=noninteractive

#Mise a jour des paquets du système, renvoie des sortie standard (stdout) et des erreur(stderr)
apt-get update &&
apt-get upgrade -y >> update_upgrade.log 2>> update_upgrade.err


