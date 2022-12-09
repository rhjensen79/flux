# FluxCD demo repo

Docs : [https://fluxcd.io/flux/get-started](https://fluxcd.io/flux/get-started)

## Initial config of env

## Install CLI

```
brew install fluxcd/tap/flux
```

## Install Flux

```
flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=flux \
  --branch=master \
  --path=./clusters/my-cluster2 \
  --personal
```
