helm upgrade wordpress bitnami/wordpress \
  --namespace wordpress \
  --create-namespace \
  --values wordpress-values.yaml
