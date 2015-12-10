#### Installation
Run `docker pull hellossx/caffine7-dev` then either run manually or use a `docker-compose.yml` 
file similar to this:

    vagrant:
        restart: always
        image: hellossx/caffine7-dev
        ports:
         - "80:80"
         - "2222:22"
         - "3306:3306"
        volumes:
         - "./:/usr/share/nginx/www"
    
Then run `docker-compose up` and you'll be able to use the box.    