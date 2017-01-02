FROM centos:6.8

MAINTAINER Voicu Tibea <voicut31@yahoo.com>

RUN yum install -y wget mc lynx git vim gcc

RUN yum install -y initscripts

RUN yum install -y openssl-devel

RUN yum install -y epel-release

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

RUN yum install -y nginx

RUN yum install -y php56w php56w-opcache php56w-fpm php56w-pear php56w-devel

RUN rpm -Uvh http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm

RUN yum install -y mysql-community-server

RUN yum install -y phpMyAdmin

ADD etc/yum.repos.d/mongodb-org-3.4.repo /etc/yum.repos.d/mongodb-org-3.4.repo

RUN yum install -y mongodb-org

RUN pecl install mongo

RUN pecl install mongodb

ADD php.d/mongo.ini /etc/php.d/mongo.ini

ADD composer/composer.phar /usr/local/bin/composer

RUN chmod +x /usr/local/bin/composer

ADD home/initservices.sh /home/initservices.sh

EXPOSE 80 443

CMD ["/home/initservices.sh"]

