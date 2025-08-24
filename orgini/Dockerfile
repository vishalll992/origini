# Use official PHP image with Apache
FROM php:8.2-apache

# Copy project files to container
COPY . /var/www/html/

# Enable rewrite module (optional, if using .htaccess)
RUN a2enmod rewrite

# Set permissions (optional)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
