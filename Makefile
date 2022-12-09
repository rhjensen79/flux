setup:
	direnv allow .

create: setup
	kind create cluster --name flux 

delete: 
	kind delete cluster --name flux
