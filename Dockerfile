FROM php:8.2-apache

# Copy project files (adjust 'public/' if needed)
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Enable Apache rewrite
RUN a2enmod rewrite

# Optional: force index.php as default
RUN echo "DirectoryIndex index.php" > /var/www/html/.htaccess

# Expose port
EXPOSE 80

CMD ["apache2-foreground"]
