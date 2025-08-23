# kubectl create secret tls wordpress-tls \
#   --namespace wordpress \
#   --cert=../certs/landingdev.xyz.b64.pem \
#   --key=../certs/landingdev.xyz.b64.key
# 
# kubectl create secret tls wordpress-tls \
#   --cert=../certs/landingdev.xyz.b64.pem \
#   --key=../certs/landingdev.xyz.b64.key


kubectl create secret tls wordpress-tls \
  --namespace wordpress \
  --cert=../certs/landingdev.xyz.pem \
  --key=../certs/landingdev.xyz.key

kubectl create secret tls wordpress-tls \
  --cert=../certs/landingdev.xyz.pem \
  --key=../certs/landingdev.xyz.key
