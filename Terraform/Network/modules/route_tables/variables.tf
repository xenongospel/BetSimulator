// GLOBAL VARIABLES
variable "SERVICE" {}
variable "ENVIRONMENT" {}

// LOCAL VARIABLES
variable VPC_ID {
  type        = string
  description = "Identifier for the associated VPC"
}

variable INTERNET_GATEWAY_ROUTE_IP_ADDRESS {
  type        = string
  description = "Range of address that Internet Gateway route should target"
}

variable NAT_GATEWAY_ROUTE_IP_ADDRESS {
  type        = string
  description = "Range of address that Nat Gateway route should target"
}

variable INTERNET_GATEWAY_ID {
  type = string
  description = "Identifier for Internet Gateway"
}

variable NAT_GATEWAY_ID {
  type = string
  description = "Identifier for Nat Gateway"
}

