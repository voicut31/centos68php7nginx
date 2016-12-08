FROM centos:6.8

MAINTAINER Voicu Tibea <voicut31@yahoo.com>

RUN yum install -y wget mc lynx git

RUN yum install -y initscripts

RUN yum install -y epel-release

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

RUN yum install -y nginx

RUN yum install -y php70w php70w-opcache php70w-fpm

RUN rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm

RUN yum install -y mysql-community-server

RUN yum install -y unixODBC unixODBC-devel postgresql-libs mysql-libs

RUN wget "http://sphinxsearch.com/files/sphinx-2.1.5-1.rhel6.x86_64.rpm"

RUN rpm -i sphinx-2.1.5-1.rhel6.x86_64.rpm

RUN yum install -y memcached

RUN yum install -y phpMyAdmin

ADD home/initservices.sh /home/initservices.sh

CMD ["/home/initservices.sh"]

