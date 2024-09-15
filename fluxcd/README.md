# Initialization for fluxCD

## Link to github repo
```shell
$ export GITHUB_TOKEN=$(~/.github/self)
$ flux bootstrap github \
  --token-auth \
  --owner=$(git config --global user.name) \
  --repository=$(basename -s .git $(git remote get-url origin)) \
  --branch=master \
  --path=fluxcd/root-resources \
  --personal
```

## Create resources

### GitRepository
**Under Construction**

### Kustomization
**Under Construction**
