dev:
	terraform init -backend-config=env-dev/state.tfvars
	sleep 3
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod:
	terraform init -backend-config=env-prod/state.tfvars
	terraform plan -var-file=env-prod/main.tfvars
	sleep 3
	terraform apply -auto-approve -var-file=env-prod/main.tfvars


dev-destroy:
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars

prod-destroy:
	terraform init -backend-config=env-prod/state.tfvars
	terraform destroy -auto-approve -var-file=env-prod/main.tfvars