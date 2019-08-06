export TF_VAR_SERVICE="xenon-betsimulator"
export TF_VAR_ENVIRONMENT="integration"
export TF_VAR_REGION="eu-west-2"

export TF_VAR_CIDR_BLOCK="10.0.0.0"
export TF_VAR_SUBNET_CIDR_BLOCK="10.0"
export TF_VAR_IGW_IP_ADDRESS="0.0.0.0/0"
export TF_VAR_NGW_IP_ADDRESS="0.0.0.0/0"
export TF_VAR_MASK="19"

export TF_LOG=INFO
export TF_LOG_PATH="../Terraform/Logging/terraform-$ENVIRONMENT-logfile.log"
