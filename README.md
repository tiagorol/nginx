Instação do Nginx

Exemplo: docker run -d -p 80:80 \
         -e HOST_WP1=192.168.0.14 \
         -e HOST_WP2=192.168.0.14 \
         tiagorol/nginx
