dev:
    rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
	terraform plan -var-file=env-dev/main.tfvars
	sleep 3
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod:
    rm -rf .terraform
	terraform init -backend-config=env-prod/state.tfvars
	terraform plan -var-file=env-prod/main.tfvars
	sleep 3
	terraform apply -auto-approve -var-file=env-prod/main.tfvars