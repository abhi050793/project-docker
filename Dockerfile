FROM centos:latest
MAINTAINER test@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/dozecafe.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dozecafe.zip
RUN cp -rvf html/* .
RUN rm -rf html dozecafe.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
