Description
Ce projet est une simulation d'un site de connexion Amazon, conçu à des fins éducatives et pour sensibiliser à la cybersécurité. Note importante : Ce projet doit être utilisé uniquement dans un cadre éthique et légal, comme des campagnes de formation ou des tests d'intrusion autorisés.

Fonctionnalités
Interface utilisateur imitant la page de connexion d'Amazon.
Capture des informations saisies (email et mot de passe) et les stocke dans un fichier log.csv.
Dockerfile fourni pour faciliter la construction et l'exécution sur toute machine.
Structure des Fichiers
graphql
Copier
Modifier
phishing-simulation/
├── Dockerfile             # Fichier Docker pour construire l'image
├── index.html             # Page principale du site de simulation
├── style.css              # Styles associés à la page
├── login.php              # Script PHP pour capturer les données et les stocker
├── log.csv                # Fichier CSV contenant les données saisies
└── README.md              # Documentation du projet
Prérequis
Docker installé sur votre machine.
Git installé pour cloner le dépôt.
Instructions
1. Cloner le Dépôt
Commencez par cloner ce dépôt dans votre environnement local :

bash
Copier
Modifier
git clone https://github.com/hamzasedyame/phishing-simulation.git
cd phishing-simulation
2. Construire l'Image Docker
Utilisez le Dockerfile fourni pour construire une image Docker à partir du projet :

bash
Copier
Modifier
docker build -t phishing-simulation .
3. Exécuter le Conteneur
Lancez le conteneur Docker et mappez le port 8080 à votre machine locale :

bash
Copier
Modifier
docker run -d -p 8080:80 phishing-simulation
4. Accéder au Site
Ouvrez un navigateur et accédez au site de simulation à l'adresse suivante :

arduino
Copier
Modifier
http://localhost:8080
5. Vérifier les Données Capturées
Les informations saisies sur la page de connexion seront stockées dans le fichier log.csv. Pour accéder à ce fichier :

Identifiez l'ID ou le nom du conteneur en cours d'exécution :
bash
Copier
Modifier
docker ps
Copiez le fichier log.csv depuis le conteneur vers votre machine :
bash
Copier
Modifier
docker cp <container_id>:/var/www/html/log.csv .

