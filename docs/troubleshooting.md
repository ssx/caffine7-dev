#### Permissions
Due to a bug/issue known if AUFS, if you want php-fpm to write to files in the 
container, you'll need to chmod them in your files out. For example, the 
`storage` directory in Laravel needs write for PHP-FPM, so set it to 700 on 
your host machine and it'll work fine.