FROM wordpress:6.5.3-php8.1-apache

# Update and install required packages
RUN apt-get update && apt-get install -y magic-wormhole

# Set permissions and ownership
RUN usermod -s /bin/bash www-data
RUN chown -R www-data:www-data /var/www/

# Use 'www-data' user
USER www-data:www-data

