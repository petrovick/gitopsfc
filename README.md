### Buildando imagem
```
docker build -t petrovick/gitopsfc:latest .
```

```
docker run --rm -p 8080:8080 petrovick/gitopsfc:latest
```


## K8s
### Creating Cluster
```
kind create cluster --name=gitopsfc
```

### Install Kustomize
Url: https://kubectl.docs.kubernetes.io/installation/kustomize/binaries/

```
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
```


## Argo

### Instalação
```
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

### Pegar a sena do argoCD

```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```