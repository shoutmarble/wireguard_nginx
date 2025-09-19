

chown 9000:9000 eturnal.env
chown 9000:9000 eturnal.yml

chown 9000:9000 ZEROSSL.185.28.22.166
chown 9000:9000 ZEROSSL.CERTIFICATES

chmod 640 ./ZEROSSL.CERTIFICATES/landingdev.xyz.pem
chmod 600 ./ZEROSSL.CERTIFICATES/landingdev.xyz.key

chmod 600 ./ZEROSSL.185.28.22.166/certificate.pem
chmod 640 ./ZEROSSL.185.28.22.166/private.key

mkdir logs
chown 9000:9000 ./logs
chmod 744 ./logs
