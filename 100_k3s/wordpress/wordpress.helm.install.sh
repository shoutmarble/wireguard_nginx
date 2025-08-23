helm install wordpress bitnami/wordpress \
  --namespace wordpress \
  --create-namespace \
  --values values-wordpress.yaml
