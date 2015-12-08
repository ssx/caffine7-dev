# caffine7-dev
A PHP7 based docker container for local development.

Includes PHP7, php-fpm, nginx and mysql.

### Volumes
Add a volume at `/usr/share/nginx/www` with a directory of `public` to serve for your web app.

A MySQL volume can be added at `/var/lib/mysql`.


### Passwords
SSH is running in the container along with MySQL. All usernames and passwords are `vagrant`.
