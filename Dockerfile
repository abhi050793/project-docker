From ubuntu
Run apt update -y ;apt install apache2 systemd firewalld sudo net-tools* zip unzip wget vim -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/xbe.zip /var/www/html
WORKDIR /var/www/html
RUN unzip xbe.zip; mv xbe/* . ; rm -rvf xbe/ xbe.zip
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
