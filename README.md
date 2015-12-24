# caffine7-dev
A PHP7 based docker container for local development which includes PHP7, php-fpm, nginx and mysql.

You can find the latest builds over on [Docker Hub](https://hub.docker.com/r/hellossx/caffine7-dev/) 
and [report any issues](https://github.com/ssx/caffine7-dev/issues) that you may have. If you'd like 
to discuss this project, feel free to [contact me via Twitter](https://twitter.com). The latest 
documentation can always be found at [ssx.github.io/caffine7-dev/](http://ssx.github.io/caffine7-dev/) 
which is updated automatically.

#### Volumes
Add a volume at `/www` with a directory of `public` to serve for your web app.

A MySQL volume can be added at `/var/lib/mysql`.


#### Passwords
MySQL username and passwords are `vagrant`.
