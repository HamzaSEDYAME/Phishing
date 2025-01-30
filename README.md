# Phishing Simulation: Setup and Exploitation Guide

## Ce guide explique comment configurer et utiliser une application de simulation de phishing.
*À utiliser uniquement dans un cadre légal et éthique à des fins éducatives.*

---

## Table des matières
- [Prérequis](#prérequis)
- [Option 1 : Mise en place de l'application à partir de Git](#option-1--mise-en-place-de-lapplication-à-partir-de-git)
- [Option 2 : Mise en place de l'application à partir d'une image Docker](#option-2--mise-en-place-de-lapplication-à-partir-dune-image-docker)
- [Vérification des données collectées](#vérification-des-données-collectées)
- [Utilisation éthique](#utilisation-éthique)
- [Contribuer](#contribuer)
- [Licence](#licence)
- [Auteur](#auteur)

---

## Prérequis
Avant de commencer, assurez-vous d'avoir les outils suivants installés sur votre machine :

### Docker
Docker est nécessaire pour exécuter l'application dans un conteneur.
Vérifiez si Docker est installé avec la commande suivante :
bash
docker --version

Si Docker n'est pas installé, vous pouvez le télécharger depuis le site officiel.

### Git
Git est requis pour cloner le dépôt.
Vérifiez si Git est installé avec la commande suivante :
bash
git --version

Si Git n'est pas installé, vous pouvez le télécharger depuis le site officiel.

---

## Option 1 : Mise en place de l'application à partir de Git

### Étape 1 : Cloner le dépôt
Clonez le dépôt GitHub sur votre machine locale :
bash
git clone https://github.com/hamzasedyame/phishing.git
cd phishing


### Étape 2 : Construire l'image Docker
Utilisez le fichier Dockerfile pour construire une image Docker :
bash
docker build -t phishing .


### Étape 3 : Exécuter le conteneur
Lancez le conteneur Docker en mappant le port 8080 de votre machine :
bash
docker run -d -p 8080:80 phishing


### Étape 4 : Accéder à l'application
Ouvrez votre navigateur et accédez à l'application via l'URL suivante :

http://localhost:8080


### Étape 5 : Entrer les informations
Entrez un email et un mot de passe fictifs, puis cliquez sur *S'authentifier*.

---

## Option 2 : Mise en place de l'application à partir d'une image Docker

### Étape 1 : Télécharger l'image depuis Docker Hub
Téléchargez l'image Docker directement depuis Docker Hub :
bash
docker pull eddycaron/diable:phishing2025


### Étape 2 : Exécuter le conteneur
Lancez le conteneur en mappant le port 8080 :
bash
docker run -d -p 8080:80 eddycaron/diable:phishing2025


### Étape 3 : Accéder à l'application
Ouvrez votre navigateur et accédez à l'application via l'URL suivante :

http://localhost:8080


---

## Vérification des données collectées
Les informations soumises via la page sont enregistrées dans un fichier log.csv.

### Récupérer les données collectées
Obtenez l'identifiant du conteneur actif :
bash
docker ps

Identifiez le conteneur associé à l’image phishing.

Copier ou consulter le fichier log.csv :

Pour copier le fichier sur votre machine locale :
bash
docker cp <container_id>:/var/www/html/log.csv .


Pour consulter directement le fichier dans le conteneur :
bash
docker exec -it <container_id> bash
cat /var/www/html/log.csv


---

## Utilisation éthique
*Ce projet est conçu à des fins éducatives et de formation.*

⚠ *Toute utilisation illégale ou malveillante est strictement interdite et peut entraîner des poursuites judiciaires.*

---

## Contribuer
Vous souhaitez contribuer au projet ? Voici comment procéder :

1. *Forkez le dépôt sur GitHub*.
2. *Créez une branche pour vos modifications* :
    bash
    git checkout -b feature/your-feature-name
    
3. *Apportez vos modifications et effectuez un commit* :
    bash
    git commit -m "Description de votre contribution"
    
4. *Poussez vos modifications vers votre fork* :
    bash
    git push origin feature/your-feature-name
    
5. *Ouvrez une Pull Request sur le dépôt principal*.

---

## Licence
Ce projet est sous licence MIT. Consultez le fichier LICENSE pour plus de détails.

---

## Auteur
*Hamza Sedyame*

GitHub : [hamzasedyame](https://github.com/hamzasedyame)
