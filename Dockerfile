# Utiliser l'image PHP avec Apache
FROM php:8.1-apache

# Copier tous les fichiers du projet dans le répertoire racine du serveur Apache
COPY ./ /var/www/html/

# Donner les droits appropriés au dossier
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Exposer le port 80 pour accéder au serveur
EXPOSE 80

# Lancer Apache en tant que service principal
CMD ["apache2-foreground"]
 
