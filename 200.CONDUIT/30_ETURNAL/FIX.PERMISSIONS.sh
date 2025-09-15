

chown 9000:9000 eturnal.env
chown 9000:9000 eturnal.yml

chown 9000:9000 ZEROSSL.185.28.22.166
chown 9000:9000 ZEROSSL.CERTIFICATES

chmod 600 ./ZEROSSL.CERTIFICATES/landingdev.xyz.key
chmod 640 ./ZEROSSL.CERTIFICATES/landingdev.xyz.pem

mkdir logs
chown 9000:9000 ./logs
chmod 744 ./logs
