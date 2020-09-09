# Install istio

```shell script
istioctl manifest apply -f spot/istio-operator.yaml

kubectl label namespace default istio-injection=enabled

```

# Enable Kubernetes third party JWT authentication

* https://kops.sigs.k8s.io/operations/service_account_token_volumes/
* https://istio.io/latest/docs/ops/best-practices/security/#configure-third-party-service-account-tokens
* https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/#service-account-token-volume-projection
* https://jpweber.io/blog/a-look-at-tokenrequest-api/