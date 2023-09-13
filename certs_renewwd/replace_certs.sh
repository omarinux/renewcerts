#!/bin/sh
cp -rp ../certs/web2.cipensoio.com.pem ../certs/web2.cipensoio.com.crt
cp -rp ../certs/web2.cipensoio.com.crt_new .
mv web2.cipensoio.com.crt_new web2.cipensoio.com.crt
cp -rp ../certs/web2.cipensoio.com.crt /etc/ssl/certs/

cp -rp ../certs/web4.cipensoio.com.pem ../certs/web4.cipensoio.com.crt
mv web4.cipensoio.com.crt_done web4.cipensoio.com.crt
cp -rp ../certs/web4.cipensoio.com.crt /etc/ssl/certs_nginx/

cp -rp ../certs/web5.cipensoio.com.pem ../certs/web5.cipensoio.com.crt
mv web5.cipensoio.com.crt_done web5.cipensoio.com.crt
cp -rp ../certs/web5.cipensoio.com.crt /etc/ssl/certs_nginx/


systemctl reload apache2

systemctl restart nginx
