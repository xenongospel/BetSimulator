resource "aws_vpc" "service_vpc" {
  cidr_block = "${var.CIDR_BLOCK}" // IPv4 based assigned address
  instance_tenancy = "default" // Shared or Dedicated Infrastructure
  enable_dns_support = true // Resolves instances with DNS resolver
  enable_dns_hostnames = true // Enables use of hostnames when publically available
  assign_generated_ipv6_cidr_block = true // Generates IPv6 Address
  tags {
    "Name" = "${var.SERVICE}-${var.ENVIRONMENT}-VPC"
    "Environment" = "${var.VPC_ENVIRONMENT}"
  }
}
