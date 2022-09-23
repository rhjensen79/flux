# FluxCD demo repo

Docs : <https://fluxcd.io/flux/get-started/>

## Install CLI

```
brew install fluxcd/tap/flux
```

## Install

```
flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=flux \
  --branch=master \
  --path=./clusters/my-cluster \
  --personal
```
