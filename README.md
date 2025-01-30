# Phishing Simulation: Setup and Exploitation Guide

Ce guide explique comment configurer et utiliser l'application de simulation de phishing. *À utiliser uniquement dans un cadre légal et éthique à des fins éducatives.*

## Prérequis

### Docker installé
Assurez-vous que Docker est installé sur votre machine. Vérifiez avec :

bash
docker --version


[Téléchargez Docker](https://www.docker.com/) si nécessaire.

### Git installé
Assurez-vous que Git est installé pour cloner le dépôt. Vérifiez avec :

bash
git --version


## Mise en Place de l'Application

### Étape 1 : Cloner le Dépôt

Clonez le dépôt GitHub sur votre machine locale :

bash
git clone https://github.com/hamzasedyame/phishing-simulation.git
cd phishing-simulation


### Étape 2 : Construire l'Image Docker

Utilisez le fichier Dockerfile pour construire une image Docker :

bash
docker build -t phishing-simulation .


### Étape 3 : Exécuter le Conteneur

Lancez le conteneur Docker et mappez le port 8080 de votre machine :

bash
docker run -d -p 8080:80 phishing-simulation


### Étape 4 : Accéder à l'Application

Ouvrez votre navigateur et accédez à :


http://localhost:8080


## Vérification des Données Collectées

Les informations soumises via la page sont enregistrées dans un fichier log.csv. Pour y accéder :

1. Obtenez l'identifiant du conteneur actif :

    bash
    docker ps
    

    Identifiez le conteneur associé à l’image phishing-simulation.

2. Copier ou consulterle fichier log.csv sur votre machine locale :

   Copie :
    bash
    docker cp <container_id>:/var/www/html/log.csv .
   ou bien consulter : 
    docker exec -it <container_id> bash 
    ls 
    cat log.csv

    

## Utilisation Éthique

Ce projet doit être utilisé *uniquement à des fins éducatives ou de formation* dans un cadre légal et contrôlé. 

> *Attention :* Toute utilisation illégale ou malveillante est strictement interdite et peut entraîner des poursuites judiciaires.

## Contribuer

Vous pouvez contribuer au projet en suivant ces étapes :

1. Forkez le dépôt.
2. Créez une branche pour vos modifications :

    bash
    git checkout -b feature/your-feature-name
    

3. Apportez vos modifications et effectuez un commit :

    bash
    git commit -m "Description de votre contribution"
    

4. Poussez vos modifications vers votre fork :

    bash
    git push origin feature/your-feature-name
    

5. Ouvrez une Pull Request sur le dépôt principal.

## Licence

Ce projet est sous licence MIT. Consultez le fichier LICENSE pour plus de détails.

## Auteur

[Hamza Sedyame](https://github.com/hamzasedyame)
