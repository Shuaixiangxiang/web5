sleep 1
#启动mysql
find /var/lib/mysql -type f -exec touch {} \; && service mysql start
#设置mysql的root用户密码
mysqladmin -u root password "root"

mysql -uroot -proot -e "CREATE DATABASE IF NOT EXISTS 1ZAYAK1"

#启动apache
/usr/sbin/apache2ctl -D FOREGROUND
# service apache2 start
# /bin/bash
