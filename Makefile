.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: prod nonprod
LOG=/tmp/terraform-make.log

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[35m%-10s\033[0m %s\n", $$1, $$2}'

prod-apply: ## Apply Module in Prod Environement
	@git pull
	@terraform workspace new prod || terraform workspace select prod
	@terraform init
	@terraform apply -auto-approve -var-file prod.tfvars

nonprod-apply: ## Apply Module in NonProd Environement
	@git pull
	@terraform workspace new nonprod || terraform workspace select nonprod
	@terraform init
	@terraform apply -auto-approve -var-file nonprod.tfvars
prod-destroy: ## Apply Module in Prod Environement
	@git pull
	@terraform workspace new prod || terraform workspace select prod
	@terraform init
	@terraform destroy -auto-approve -var-file prod.tfvars

nonprod-destroy: ## Apply Module in NonProd Environement
	@git pull
	@terraform workspace new nonprod || terraform workspace select nonprod
	@terraform init
	@terraform destroy -auto-approve -var-file nonprod.tfvars

