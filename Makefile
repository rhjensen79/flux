setup:
	direnv allow .

create: setup
	tanzu uc create flux

stop:
	tanzu uc stop flux

start: setup
	tanzu uc start flux

delete: 
	tanzu uc delete flux
