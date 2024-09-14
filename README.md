# My TestCluster

## Build
### Cluster init
```shell=
$ eksctl create cluster -f cluster/cluster.yaml
```

### Controller install
```shell=
$ controller/install-traefik.sh
```

### Create infra resources
```shell=
$ kubectl create -f infra-instance/ingress.yaml
```

### Create app resources
```shell=
$ kubectl create -f app/web.yaml
```

### Create ops resources
```shell=
$ kubectl create -f op-tool/toolbox.yaml
```

## Delete
```shell=
$ kubectl delete -f app/web.yaml
$ kubectl delete -f op-tool/toolbox.yaml
$ kubectl delete -f infra-instance/ingress.yaml
$ controller/uninstall-traefik.sh
$ eksctl delete cluster -f cluster/cluster.yaml
```