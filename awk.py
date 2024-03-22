import csv

#Chemin vers le fichier CSV
chemin_fichier = "donnees.csv"

#Données à ajouter dans le fichier CSV 
donnees = [
    ["Jean", "25 ans", "Paris"],
    ["Marie", "30 ans", "Lyon"],
    ["Pierre", "22 ans", "Marseille"],
    ["Sophie", "35 ans", "Toulouse"]
]

#Ecrire les données dans le fichier CSV
with open(chemin_fichier, mode='w', newline='') as fichier_csv:
    writer = csv.writer(fichier_csv)
    writer.writerows(donnees)

print("Fichier CSV crée avec succès!")

