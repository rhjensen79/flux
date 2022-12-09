setup:
	direnv allow .

create: setup
	kind create cluster --name flux1

delete: 
	kind delete cluster --name flux1
