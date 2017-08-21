FROM centos:6.8

MAINTAINER Voicu Tibea <voicut31@yahoo.com>

RUN yum install -y wget mc lynx git vim initscripts epel-release

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

RUN yum install -y nginx php71w php71w-cli php71w-common php71w-opcache php71w-fpm

RUN rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm

RUN yum install -y mysql-community-server unixODBC unixODBC-devel postgresql-libs mysql-community-libs

RUN yum install -y memcached

#RUN yum install -y phpMyAdmin

RUN wget "http://sphinxsearch.com/files/sphinx-2.2.11-2.rhel6.x86_64.rpm"

RUN rpm -i ftp://195.220.108.108/linux/remi/enterprise/6/remi/x86_64/compat-mysql51-5.1.73-1.el6.remi.x86_64.rpm

RUN rpm -i sphinx-2.2.11-2.rhel6.x86_64.rpm

ADD etc/yum.repos.d/mongodb-org-3.4.repo /etc/yum.repos.d/mongodb-org-3.4.repo

RUN yum install -y mongodb-org

ADD home/initservices.sh /home/initservices.sh

EXPOSE 80 443

CMD ["/home/initservices.sh"]
