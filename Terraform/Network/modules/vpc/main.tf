/*
 XENON #################################################################################################################
       VPC
       PARAMETERS:
        - CIDR Block: Range of addresses that the VPC will occupy within Amazon's Private Cloud.
        - Instance Tenancy: Determines whether the VPC will reside in a dedicated sector of the Cloud or whether it will share tenancy with other VPCs.
        - Enable DNS Support: Determines whether a VPC will provide support for DNS resolutions.
        - Enable DNS Hostnames: Determines whether public IPs assigned to resources in a VPC will have public DNS hostnames.
        - Assign Generated IPv6 CIDR Block: Associates an IPv6 address to the VPC.
 XENON #################################################################################################################
*/

resource "aws_vpc" "service_vpc" {
  cidr_block                        = "${var.CIDR_BLOCK}/${var.MASK}" // IPv4 based assigned address
  instance_tenancy                  = "default" // Shared or Dedicated Infrastructure
  enable_dns_support                = true // Resolves instances with DNS resolver
  enable_dns_hostnames              = true // Enables use of hostnames when publically available
  assign_generated_ipv6_cidr_block  = true // Generates IPv6 Address

  tags = {
    Name                            = "${var.SERVICE}-${var.ENVIRONMENT}-VPC"
    Environment                     = "${var.ENVIRONMENT}"
  }
}
