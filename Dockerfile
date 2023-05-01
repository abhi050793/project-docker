From ubuntu
Run apt update -y ;apt install apache2 systemd firewalld sudo net-tools* zip unzip wget vim -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/elearning.zip /var/www/html/
unzip elearning.zip
cp -rvf elearning-html-template/* .
rm -rvf elearning-html-template/ elearning.zip
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

