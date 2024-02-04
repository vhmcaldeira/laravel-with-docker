FROM wyveo/nginx-php-fpm:latest

##copia todos arquivos deste projeto e joga para a pasta de html do nginx
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

RUN ln -s public html
RUN apt update; \
    apt install vim -y

EXPOSE 80


## para buildar a imagem
## docker build -t laravel-docker .

##pra rodar o container
## docker run -d -p 9002:80 laravel-docker

##mata todos containers
##docker stop $(docker ps -a -q)

##para entrar na maquina
##docker exec -it ID_CONTAINER bash

##para testar nginx
##service nginx status
