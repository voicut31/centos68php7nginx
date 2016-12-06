FROM centos:6.8

MAINTAINER Voicu Tibea <voicut31@yahoo.com>

RUN yum install -y wget mc lynx git

RUN yum install -y initscripts

#RUN yum install -y epel-release

#RUN yum install -y nginx

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

RUN yum install -y nginx

RUN yum install -y php70w php70w-opcache php70w-fpm

RUN rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm

RUN yum install -y mysql-community-server

ADD initservices.sh /home/initservices.sh

CMD ["/home/initscripts.sh"]

