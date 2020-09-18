# EKS Fargate 

Create cluster
```shell script
eksctl create cluster --name fargate-test --version 1.17 --fargate
```

Setup istion namespace to run in Fargate and istio sidecard with every pod in default namespace
```shell script
eksctl create fargateprofile --cluster fargate-test --name istion_profile --namespace istio-system
kubectl label namespace default istio-injection=enabled

```
