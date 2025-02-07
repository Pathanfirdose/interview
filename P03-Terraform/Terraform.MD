##########################
### TERRAFORM COMMANDS ###
##########################

terraform init
terraform init -reconfigure
terraform init -upgrade
terraform taint 
terraform plan
terraform apply
terraform apply -var="instance_type=t2.micro"
terraform apply -auto-approve
terraform apply -target
terraform destroy
terraform destroy -auto-approve

#######################
### VARIABLE TYPES ####
#######################

Default variables

1.command line variable
terraform apply -var="instance_type=t2.micro"

2.terraform.tfvars

3.Environment variables
export TF_VAR_instance_type=t3.large

4.Default variables
5.Prompt

#############################
### TFVARS and WORKSPACES ###
#############################

terraform init -backend-config=dev/backend.tf
terraform plan -var-file=dev/dev.tfvars
terraform apply -var-file="dev/dev.tfvars" -auto-approve

terraform init -reconfigure -backend-config=prod/backend.tf
terraform plan -var-file=prod/prod.tfvars
terraform apply -var-file="prod/prod.tfvars" -auto-approve

terraform workspace
terraform workspace show
terraform workspace delete
terraform workspace list
terraform workspace new dev
terraform workspace new prod
terraform workspace select dev
terraform workspace select prod