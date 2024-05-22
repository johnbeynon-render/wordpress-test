FROM wordpress:php7.4-apache

# Update and install required packages
RUN apt-get update && apt-get install -y magic-wormhole

# Set permissions and ownership
RUN usermod -s /bin/bash www-data
RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/

# Use 'www-data' user
USER www-data:www-data

