  GNU nano 7.2                         dependance.sh                                   
#!/bin/bash

#Installation de Apache
echo "Installation de apache"
sudo apt-get install -y apache2

#Installation de phpmyAdmin 
echo "Installation de phpMyAdmin"
sudo apt-get install -y apache2

#Installation du système de gestion de BDD
echo "installation de MariaDB"
sudo apt-install -y mariadb-server-10.3 

#Installation environnement Node.js avec npm 
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash-
sudo apt-get install -y nodejs

#Installation de git 
echo "Installation de Git"
sudo apt-get install -y git 

#Config de git
echo "Configuration de Git.."
read -p "Veuillez saisir votre nom d'utilisateur Git: " git_username
read -p " Veuillez saisir votre adresse mail: " git_email

git config --global user.name "$git_username"
git config --global user.email "$git_email"

echo "Connexion a Git..."
git_account_url="https://github.com"
read -p "Veuillez saisir votre nom d'utilisateur" git_username
read -s -p "Veuillez saisir votre mot de passe Git:" git_password
echo

git config --global credential.helper store
echo -e "https://$git_username:$git_password@$git_account_url\n" >> ~/.git-credentials

echo "Authentification réussie!"

echo "Installation terminée"

