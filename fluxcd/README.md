# Initialization for fluxCD

## Install prerequisite
```shell
$ kubectl apply -k fluxcd-prerequisites
```

## Create github PAT secret
```shell
$ kubectl create secret generic flux-system \
  --namespace=flux-system \
  --from-literal=username=$(git config --global user.name) \
  --from-literal=password=$(~/.github/self)
```

## Create flux infra resources
```shell
$ kubectl apply -k fluxcd-infra-resources
```