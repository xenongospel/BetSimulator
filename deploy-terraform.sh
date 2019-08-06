#!/bin/bash

# Printing Variables
tfenv=$1
divider=$(printf "%`tput cols`s"|tr ' ' '#')

# Iniitiate Printing Statements - Output environment being deployed
printf -v pEnv "Deploying Environment: %s" $tfenv
echo ${divider// /#}
echo $pEnv
echo ${divider// /#}

# Determine the environment being deployed from the inputted argument
case ${tfenv} in
  integration)
    echo "Deploying Integration"
    source ./Deployment/variables-integration.sh
    ;;
  live)
    echo "Deploying Live"
    source ./Deployment/variables-live.sh
    ;;
  *)
    echo "Could not determine a proper environment from inputted arguments."
    echo "Try again using either integration or live as an argument."
    exit
  ;;
esac

cd Terraform
terraform init
terraform plan
