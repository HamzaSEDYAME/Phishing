FROM php:8.1-apache

# Installer les dépendances
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install pdo_mysql zip

# Activer mod_rewrite
RUN a2enmod rewrite

# Créer le fichier log.csv et définir les permissions
RUN touch /var/www/html/log.csv && \
    chown www-data:www-data /var/www/html/log.csv && \
    chmod 666 /var/www/html/log.csv

# Copier les fichiers de l'application
COPY . /var/www/html/

# Configurer les permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 775 /var/www/html

# Exposer le port 80
EXPOSE 80

# Lancer Apache
CMD ["apache2-foreground"]
