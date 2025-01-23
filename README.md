# Phishing
# **Phishing Simulation**

## **Description**
Ce projet est une simulation d'un site de connexion Amazon, conçu à des fins éducatives pour sensibiliser aux risques liés au phishing.  
**Important :** Ce projet est exclusivement destiné à des usages légaux et éthiques, comme la formation ou des tests autorisés en cybersécurité. L’utilisation malveillante de ce projet est strictement interdite.

---

## **Fonctionnalités**
- Simulation d'une page de connexion Amazon.
- Collecte des informations saisies (email et mot de passe) dans un fichier `log.csv`.
- Construction et exécution facile grâce à un fichier Docker.

---

## **Structure des Fichiers**
```plaintext
phishing-simulation/
├── Dockerfile             # Fichier pour construire l'image Docker
├── index.html             # Page HTML principale de la simulation
├── style.css              # Feuille de style associée à la page
├── login.php              # Script PHP pour traiter et stocker les données
├── log.csv                # Fichier CSV où les données sont enregistrées
└── README.md              # Documentation du projet
# **Phishing Simulation**

## **Prérequis**
- Docker installé sur votre machine.
- Git installé pour cloner le dépôt.

---

## **Instructions**

### **1. Cloner le Dépôt**
Cloner ce dépôt sur votre machine locale :
```bash
git clone https://github.com/hamzasedyame/phishing-simulation.git
cd phishing-simulation

