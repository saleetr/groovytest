FROM centos:latest
MAINTAINER saleetrana@gmail.com
RUN yum install -y httpd zip unzip vim
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/canvas.zip /var/www/html
WORKDIR /var/www/html
RUN unzip canvas.zip
RUN cp -rvf canvas/*. /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
