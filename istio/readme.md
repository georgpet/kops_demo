# Install istio

```shell script
istioctl manifest apply -f spot/istio-operator.yaml

kubectl label namespace default istio-injection=enabled

```
## Kiali login fix
https://stackoverflow.com/questions/61107694/changing-secrets-of-kiali-in-istio-is-not-working
```shell script
KIALI_USERNAME=$(read -p 'Kiali Username: ' uval && echo -n $uval | base64)
KIALI_PASSPHRASE=$(read -sp 'Kiali Passphrase: ' pval && echo -n $pval | base64)
NAMESPACE=istio-system

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: kiali
  namespace: $NAMESPACE
  labels:
    app: kiali
type: Opaque
data:
  username: $KIALI_USERNAME
  passphrase: $KIALI_PASSPHRASE
EOF

kubectl delete pod <name_of_the_kiali_pod> -n istio-system

```

## Enable Kubernetes third party JWT authentication

* https://kops.sigs.k8s.io/operations/service_account_token_volumes/
* https://istio.io/latest/docs/ops/best-practices/security/#configure-third-party-service-account-tokens
* https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/#service-account-token-volume-projection
* https://jpweber.io/blog/a-look-at-tokenrequest-api/