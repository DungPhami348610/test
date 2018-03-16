FROM ubuntu

MAINTAINER DungXinh

RUN export http_proxy="http://proxy:8080"; export https_proxy="https://proxy:8080"; apt-get -y update ; apt-get -y upgrade ; apt-get -y install apache2



COPY fqdn.conf /etc/apache2/conf-available/fqdn.conf
RUN a2enconf fqdn

EXPOSE 80

