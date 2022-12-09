setup:
	direnv allow .

create: setup
	kind create cluster --name flux1

delete: 
	kind delete cluster --name flux1

multi: setup
	kind create cluster --name flux1
	kind create cluster --name flux2
	kubectx kind-flux1
	flux bootstrap github \
	--owner=$GITHUB_USER \
	--repository=flux \
	--branch=master \
	--path=./clusters/flux1 \
	--personal

	kubectx kind-flux2
	flux bootstrap github \
	--owner=$GITHUB_USER \
	--repository=flux \
	--branch=master \
	--path=./clusters/flux2 \
	--personal

make delete_all:
	kind delete cluster --name flux1
	kind delete cluster --name flux2