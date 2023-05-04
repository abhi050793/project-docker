From ubuntu
Run apt update -y ;apt install apache2 systemd firewalld sudo net-tools* zip unzip wget vim -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/gamepad.zip /var/www/html/
RUN unzip gamepad.zip
RUN mv html/* .
RUN rm -rf gamepad.zip html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

