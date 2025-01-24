# # Utiliser l'image PHP avec Apache
# FROM php:8.1-apache

# # Copier tous les fichiers du projet dans le répertoire racine du serveur Apache
# COPY ./ /var/www/html/

# # Donner les droits appropriés au dossier
# RUN chown -R www-data:www-data /var/www/html && \
#     chmod -R 755 /var/www/html

# # Exposer le port 80 pour accéder au serveur
# EXPOSE 80

# # Lancer Apache en tant que service principal
# CMD ["apache2-foreground"]
 
# Utiliser l'image officielle de PHP avec Apache
FROM php:8.1-apache

# Installer les dépendances système et les extensions PHP nécessaires
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install pdo_mysql zip

# Activer le module Apache mod_rewrite pour les URL rewriting
RUN a2enmod rewrite

# Copier tous les fichiers du projet dans le répertoire racine du serveur Apache
COPY ./ /var/www/html/

# Ajouter la directive ServerName pour éviter l'avertissement
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Donner les droits appropriés au dossier
RUN touch /var/www/html/log.csv && \
    chown www-data:www-data /var/www/html/log.csv && \
    chmod 666 /var/www/html/log.csv

# Exposer le port 80 pour accéder au serveur
EXPOSE 80

# Lancer Apache en tant que service principal
CMD ["apache2-foreground"]
