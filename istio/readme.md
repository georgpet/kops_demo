# Install istio

```shell script
istioctl manifest apply -f spot/istio-operator.yaml
```

Setup istio sidecard with every pod in default namespace
```shell script
kubectl label namespace default istio-injection=enabled

```

Kiali login credentials
https://stackoverflow.com/questions/61107694/changing-secrets-of-kiali-in-istio-is-not-working
```shell script
KIALI_USERNAME=$(read -p 'Kiali Username: ' uval && echo -n $uval | base64)

KIALI_PASSPHRASE=$(read -sp 'Kiali Passphrase: ' pval && echo -n $pval | base64)


cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: kiali
  namespace: istio-system
  labels:
    app: kiali
type: Opaque
data:
  username: $KIALI_USERNAME
  passphrase: $KIALI_PASSPHRASE
EOF

kubectl delete pod <name_of_the_kiali_pod> -n istio-system

```

Open Kial dashboar
```
istioctl dashboard kiali
```

### Delete istion
```
kubectl delete namespace istio-system
```