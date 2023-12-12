dev:
	terraform init -backend-config=env-dev/state.tfvars
	terraform plan -var-file=env-dev/main.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod:
	terraform init -backend-config=env-prod/state.tfvars
	terraform plan -var-file=env-prod/main.tfvars
	terraform apply -auto-approve -var-file=env-prod/main.tfvars