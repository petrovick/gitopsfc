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