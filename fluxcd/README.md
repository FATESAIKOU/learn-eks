# FluxCD commands

## Initialization for fluxCD

### Install prerequisite
```shell
$ kubectl apply -k fluxcd-prerequisites
```

### Create github PAT secret
```shell
$ kubectl create secret generic flux-system \
  --namespace=flux-system \
  --from-literal=username=$(git config --global user.name) \
  --from-literal=password=$(~/.github/self)
```

### Create flux infra resources
```shell
$ kubectl apply -k fluxcd-infra-resources
```

### Create kustomization for flux infra resources
```shell
$ kubectl apply -k fluxcd-base-kustomization
```

## Delete fluxCD

```shell
# Remove all finalizer of all kustomization & github repository
$ kubectl delete -k fluxcd-base-kustomization
$ kubectl delete -k fluxcd-infra-resources
$ kubectl delete -k fluxcd-prerequisites
```