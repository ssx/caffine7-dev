# caffine7-dev
A PHP7 based docker container for local development.

Includes PHP7, php-fpm, nginx and mysql.

### Volumes
Add a volume at `/usr/share/nginx/www` with a directory of `public` to serve for your web app.

A MySQL volume can be added at `/var/lib/mysql`.


### Passwords
SSH is running in the container along with MySQL. All usernames and passwords are `vagrant`.


### Permissions
Due to a bug/issue known if AUFS, if you want php-fpm to write to files in the container, you'll need to chmod them in your files out. For example, the `storage` directory in Laravel needs write for PHP-FPM, so set it to 700 on your host machine and it'll work fine.