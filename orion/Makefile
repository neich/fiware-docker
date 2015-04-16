
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



orion-image: check-version
	sed -r -e "s/GIT_URL/$(shell echo $(GIT_URL) | sed -e 's/[]\/$*.^|[]/\\&/g')/g" -e "s/GIT_BRANCH/$(shell echo $(GIT_BRANCH) | sed -e 's/[]\/$*.^|[]/\\&/g')/g" orion/bin/install-orion.sh.template > orion/bin/install-orion.sh
	docker build -t ubikwa:orion orion/
	
base_centos63-image:  
	docker build -t ubikwa:base_centos63 base_centos63/
	
