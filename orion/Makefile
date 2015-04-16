
all: help

help:
	@echo 'To build a Orion Docker image, run "make GIT_URL=... GIT_BRANCH=... orion"'

check-version:
ifndef GIT_URL
	@echo "Error: GIT_URL is undefined."
	@make --no-print-directory help
	@exit 1
endif
ifndef GIT_BRANCH
	@echo "Error: GIT_BRANCH is undefined."
	@make --no-print-directory help
	@exit 1
endif



orion_centos63-image: check-version
	sed -r -e "s/GIT_URL/$(shell echo $(GIT_URL) | sed -e 's/[]\/$*.^|[]/\\&/g')/g" -e "s/GIT_BRANCH/$(shell echo $(GIT_BRANCH) | sed -e 's/[]\/$*.^|[]/\\&/g')/g" bin/install-orion.sh.template > bin/install-orion.sh
	sed -r -e "s/ubikwa:BASE_IMAGE/ubikwa:base_centos63/g" Dockerfile.template > Dockerfile
	docker build -t ubikwa:orion_centos63 ./

orion_alpine31-image: check-version
	sed -r -e "s/GIT_URL/$(shell echo $(GIT_URL) | sed -e 's/[]\/$*.^|[]/\\&/g')/g" -e "s/GIT_BRANCH/$(shell echo $(GIT_BRANCH) | sed -e 's/[]\/$*.^|[]/\\&/g')/g" bin/install-orion.sh.template > bin/install-orion.sh
	sed -r -e "s/ubikwa:BASE_IMAGE/ubikwa:base_alpine31/g" Dockerfile.template > Dockerfile
	docker build -t ubikwa:orion_alpine31 ./


base_centos63-image:  
	docker build -t ubikwa:base_centos63 base_centos63/

base_alpine31-image:
	docker build -t ubikwa:base_alpine31 base_alpine31/
	
