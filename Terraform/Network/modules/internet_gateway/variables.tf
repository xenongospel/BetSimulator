variable SERVICE {
  type        = string
  description = "Service name referencing project"
}

variable ENVIRONMENT {
  type        = string
  description = "Environment of deployed architecture (Integration, Live)"
}

variable VPC_ID {
  type = string
  description = "Identifier for VPC that the internet gateway will be associated to"
}
