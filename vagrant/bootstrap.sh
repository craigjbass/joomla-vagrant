wget http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm ;
rpm -ivh nginx-release-centos-6-0.el6.ngx.noarch.rpm

wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm ;
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm ;
rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm ;

unlink /etc/yum.repos.d/remi.repo
cp /vagrant/vagrant/CentOS6/etc/yum.repos.d/remi.repo /etc/yum.repos.d/remi.repo
cp /vagrant/vagrant/CentOS6/etc/yum.repos.d/MariaDB.repo /etc/yum.repos.d/MariaDB.repo

yum -y update

yum -y install memcached
yum -y install MariaDB-client MariaDB-server MariaDB-devel
yum install -y nginx php php-bcmath php-cli php-fpm php-gd php-imap php-mbstring php-mcrypt php-mysql php-pdo php-pear php-pecl-apc php-pecl-memcache php-pecl-xdebug php-soap php-xml

cp -Rf /vagrant/vagrant/CentOS6/etc/* /etc

mkdir /vagrant/.sessions
mkdir /vagrant/.sessions/.wsdl-cache

chown vagrant:vagrant /vagrant/.sessions
chown vagrant:vagrant /vagrant/.sessions/.wsdl-cache

pear config-set auto_discover 1
pear install pear.phpunit.de/PHPUnit

service nginx start
service php-fpm start
service mysql start

iptables -I INPUT -p tcp --dport 80 -j ACCEPT

/opt/VBoxGuestAdditions-4.1.18/routines.sh

sudo mysqladmin create joomla


