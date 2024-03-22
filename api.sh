  GNU nano 7.2                             api.sh                                      
#!/bin/bash

#Utilisation de l'api Meowfacts"
curl https://meowfacts.herokuapp.com/ "\n"

#Faire plusieurs requête en même temps
curl https://meowfacts.herokuapp.com/?count=5 "\n"

#Faire une requête spécifique par id
curl https://meowfacts.herokuapp.com/?id=5 "\n"

#Faire une requếte avec une réponse dans une autre langue(espagnole)
curl https://meowfacts.herokuapp.com/?lang=esp "\n"

#Maintenant on procéde a la gestion de mauvaise requête 
curl https://meowfacts.herokuapp.com/?lang=FR "\n"
curl https://mewfacts.herokuapp.com/?cokz "\n"
curl https://mewfacts.herokuapp.com/responses "\n"
