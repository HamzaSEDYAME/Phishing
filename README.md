Phishing Simulation: Setup and Exploitation Guide
Ce guide explique comment configurer et utiliser l'application de simulation de phishing. À utiliser uniquement dans un cadre légal et éthique à des fins éducatives.

Prérequis
Docker installé
Assurez-vous que Docker est installé sur votre machine. Vérifiez avec :

bash docker --version

Téléchargez Docker si nécessaire.

Git installé
Assurez-vous que Git est installé pour cloner le dépôt. Vérifiez avec :

bash git --version

OPTION 1 : Mise en Place de l'Application a partir de git
Étape 1 : Cloner le Dépôt
Clonez le dépôt GitHub sur votre machine locale :

bash git clone https://github.com/hamzasedyame/phishing.git cd phishing

Étape 2 : Construire l'Image Docker
Utilisez le fichier Dockerfile pour construire une image Docker :

bash docker build -t phishing .

Étape 3 : Exécuter le Conteneur
Lancez le conteneur Docker et mappez le port 8080 de votre machine :

bash docker run -d -p 8080:80 phishing

Étape 4 : Accéder à l'Application
Ouvrez votre navigateur et accédez à :

http://localhost:8080

Étape 5 : Entrer le mail et le mot de passe
Entrer vos données et cliquer sur s'authentifier

Vérification des Données Collectées
Les informations soumises via la page sont enregistrées dans un fichier log.csv. Pour y accéder :

Obtenez l'identifiant du conteneur actif :

bash docker ps

Identifiez le conteneur associé à l’image phishing-simulation.

Copiez le fichier log.csv sur votre machine locale :

bash docker cp <container_id>:/var/www/html/log.csv .

OPTION 2 : Mise en Place de l'Application a partir d'une image docker
Étape 1 : Télécharger l'image a partir de dockerHUB
 docker pull eddycaron/diable:phishing2025
Étape 2 : Exécuter le Conteneur
docker run -d -p 8080:80 eddycaron/diable:phishing2025
Étape 3 : Accéder à l'Application
Ouvrez votre navigateur et accédez à :

http://localhost:8080

Utilisation Éthique
Ce projet doit être utilisé uniquement à des fins éducatives ou de formation dans un cadre légal et contrôlé.

Attention : Toute utilisation illégale ou malveillante est strictement interdite et peut entraîner des poursuites judiciaires.

Contribuer
Vous pouvez contribuer au projet en suivant ces étapes :

Forkez le dépôt.

Créez une branche pour vos modifications :

bash git checkout -b feature/your-feature-name

Apportez vos modifications et effectuez un commit :

bash git commit -m "Description de votre contribution"

Poussez vos modifications vers votre fork :

bash git push origin feature/your-feature-name

Ouvrez une Pull Request sur le dépôt principal.

Licence
Ce projet est sous licence MIT. Consultez le fichier LICENSE pour plus de détails.

Auteur
Hamza Sedyame
