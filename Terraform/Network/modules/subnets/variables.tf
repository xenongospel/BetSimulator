// GLOBAL VARIABLES
variable SERVICE {}
variable ENVIRONMENT {}
variable REGION {
  type = string
  description = "Geographical location for which the infrastructure will be stored in."
}

// LOCAL VARIABLES
variable VPC_ID {}
variable CIDR_BLOCK_PREFIX {
  type        = string
  description = "Prefix of range of addresses that will be used to define CIDR Blocks for subnets"
}
variable MASK {
  type = string
  description = "Mask used to determine number of hosts (octets) subnet will be divided into"
}
