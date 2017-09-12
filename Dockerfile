FROM centos:6.8

MAINTAINER Voicu Tibea <voicut31@yahoo.com>

ADD etc/yum.repos.d/mongodb-org-3.4.repo /etc/yum.repos.d/mongodb-org-3.4.repo

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

RUN rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm

RUN yum -y install epel-release 

RUN yum install -y wget mc lynx git vim initscripts php71w php71w-cli php71w-common php71w-pear php71w-devel php71w-opcache php71w-fpm php71w-pdo php71w-xml php71w-mysql php71w-pecl-apcu php71w-pecl-xdebug mysql-community-server unixODBC unixODBC-devel postgresql-libs mysql-community-libs memcached mongodb-org nginx

#RUN yum install -y phpMyAdmin

#RUN wget "http://sphinxsearch.com/files/sphinx-2.2.11-2.rhel6.x86_64.rpm"

#RUN wget ftp://195.220.108.108/linux/remi/enterprise/6/remi/x86_64/compat-mysql51-5.1.73-1.el6.remi.x86_64.rpm

#RUN rpm compat-mysql51-5.1.73-1.el6.remi.x86_64.rpm

#RUN rpm -i sphinx-2.2.11-2.rhel6.x86_64.rpm

ADD home/initservices.sh /home/initservices.sh

EXPOSE 80 443 9000

#ENTRYPOINT ["/home/initservices.sh"]
