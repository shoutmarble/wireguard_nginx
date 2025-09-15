
lego.v4/lego \
  --server=https://acme-staging-v02.api.letsencrypt.org/directory \
  --email "terry.walsworth@outlook.com" \
  --accept-tos \
  --pem \
  --http \
  --domains 185.28.22.166 \
  --disable-cn \
  run --profile shortlived   

# lego.v4/lego \
#   --email "terry.walsworth@outlook.com" \
#   --accept-tos \
#   --pem \
#   --http \
#   --domains 185.28.22.166 \
#   --disable-cn \
#   run --profile shortlived   
# 
