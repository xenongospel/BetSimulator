// GLOBAL VARIABLES
variable SERVICE {}
variable ENVIRONMENT {}

// LOCAL VARIABLES
variable NAT_GATEWAY_EIP_ID {
  type        =  string
  description =  "Identifier for the Elastic IP created for the NAT GATEWAY"
}

variable PUBLIC_SUBNET_A_ID {
  type        =  string
  description = "Indentier for Public Subnet A that will be associated to the NAT GATEWAY"
}
