# My TestCluster

## Build
### Cluster init
```shell=
$ eksctl create cluster -f cluster/cluster.yaml
```

### Install FluxCD
- [ref](./fluxcd/README.md)

### Controller install
```shell=
$ controller/install-traefik.sh
$ controller/install-argo-rollout.sh
```

### Create k8s resource
```shell=
$ ... # ingress, app, toolbox(ops)
```

## Delete
```shell=
$ ... # app, ops-tools, ingress, argo-rollout-controller, ingress-controller 
$ kubectl delete daemonset aws-node -n kube-system
$ kubectl delete daemonset kube-proxy -n kube-system
$ kubectl delete deployment coredns -n kube-system
$ eksctl delete cluster -f cluster/cluster.yaml
```

## Delete

```shell=
# Delete all daementset
# Delete all deployment
$ eksctl delete cluster -f cluster/cluster.yaml
```