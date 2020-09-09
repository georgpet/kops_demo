# local access to the dashboard

k8s proxy
```shell script
kubectl proxy
```

Dashboard access token
```shell script
kubectl get secrets
kubectl describe secret dashboard-admin-sa-token-xxxx
```
Copy the token and use it to authenicate in URL:
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

# Enable Kubernetes third party JWT authentication

* https://github.com/kubernetes/dashboard
* https://www.replex.io/blog/how-to-install-access-and-add-heapster-metrics-to-the-kubernetes-dashboard