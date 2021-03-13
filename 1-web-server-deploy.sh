#!/bin/bash
#Переходим в каталог
cd /tmp/dz_web_server

#Переключаемся на нашу ветку main
git checkout main

#Скачиваем изменения
git pull origin main && ls -lh

#Создаем папки
mkdir /var/www/8080 /var/www/8081 /var/www/8082

#Разворачиваем бекап
#Ключ -a копировать содежимое с атрибутами
cp -a web.bak/var/www/8080/index.html /var/www/8080
cp -a web.bak/var/www/8081/index.html /var/www/8081
cp -a web.bak/var/www/8082/index.html /var/www/8082

cp -a web.bak/etc/httpd/conf.d/8080.conf /etc/httpd/conf.d/
cp -a web.bak/etc/httpd/conf.d/8081.conf /etc/httpd/conf.d/
cp -a web.bak/etc/httpd/conf.d/8082.conf /etc/httpd/conf.d/
cp -a web.bak/etc/httpd/conf/httpd.* /etc/httpd/conf/

#Перечитать конфигурацию и показать статус
systemctl restart httpd && systemctl status httpd
