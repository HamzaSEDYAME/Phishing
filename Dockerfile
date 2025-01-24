FROM php:8.1-apache

# Installer les dépendances
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install pdo_mysql zip

# Activer mod_rewrite pour Apache
RUN a2enmod rewrite

# Créer le fichier log.csv dans /var/log/ et définir les permissions
RUN touch /var/log/log.csv && \
    chown www-data:www-data /var/log/log.csv && \
    chmod 666 /var/log/log.csv

# Copier les fichiers de l'application dans /var/www/html/
COPY . /var/www/html/

# Configurer les permissions pour /var/www/html/
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 775 /var/www/html

# Exposer le port 80
EXPOSE 80

# Lancer Apache au démarrage
CMD ["apache2-foreground"]
