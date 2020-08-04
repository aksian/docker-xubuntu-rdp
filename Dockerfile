FROM danielguerra/ubuntu-xrdp:18.04
MAINTAINER Andrei Terentiev <andrei@terentiev.org>

WORKDIR /home/ubuntu

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yy apt-utils aptitude
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -yy

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yy mc openjdk-11-jdk maven xfce4-whiskermenu-plugin poppler-utils

RUN wget https://mirrors.dotsrc.org/eclipse//technology/epp/downloads/release/2020-06/R/eclipse-jee-2020-06-R-linux-gtk-x86_64.tar.gz
