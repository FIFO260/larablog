# Larablog
Pred spustením si nahrajte databázu larablogg_db.sql

## Inštalácia <br>
```
composer install
cp .env.example .env 
php artisan key:generate
php artisan cache:clear && php artisan config:clear 
php artisan serve 
```