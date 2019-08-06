/*
 XENON #################################################################################################################
       SUBNETS
       PARAMETERS:
        - VPC ID: VPC Identifier that the route table should be associated to.
        - CIDR Block:
        - Availability Zone:
        - Map Public IP On Launch:
        - Assign IPvy Address On Creation:
 XENON #################################################################################################################
*/

/*
 XENON #################################################################################################################
       PUBLIC SUBNET DEFINITIONS
 XENON #################################################################################################################
*/
resource "aws_subnet" "public_subnet_a" {
  vpc_id                          = var.VPC_ID // Assocation of the subnet to the newly created VPC
  cidr_block                      = "${var.CIDR_BLOCK_PREFIX}.0.0/${var.MASK}" // The instantiated subnet's CIDR block based on the VPC ip range (CIDR BLOCK/MASK)
  availability_zone               = "${var.REGION}a" // Availability Zone for which the subnet will be inserted in
  # ipv6_cidr_block = "${var.CIDR_BLOCK_IPV6}" // Enable IPV6 Address Range for the subnet
  map_public_ip_on_launch         = true // Allow resources created within subnet to be associated with a public ip
  assign_ipv6_address_on_creation = true // Allow interfaces created within subnet to be associated with an ipv6 address range

  tags = {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PUBLIC-SUBNET-A"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id                          = var.VPC_ID
  cidr_block                      = "${var.CIDR_BLOCK_PREFIX}.32.0/${var.MASK}"
  availability_zone               = "${var.REGION}b"
  # ipv6_cidr_block = "${var.CIDR_BLOCK_IPV6}"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true

  tags = {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PUBLIC-SUBNET-B"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id                          = var.VPC_ID
  cidr_block                      = "${var.CIDR_BLOCK_PREFIX}.64.0/${var.MASK}"
  availability_zone               = "${var.REGION}c"
  # ipv6_cidr_block = "${var.CIDR_BLOCK_IPV6}"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true

  tags = {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PUBLIC-SUBNET-C"
    Environment = "${var.ENVIRONMENT}"
  }
}

/*
 XENON #################################################################################################################
       PRIVATE SUBNET DEFINITIONS
 XENON #################################################################################################################
*/

resource "aws_subnet" "private_subnet_a" {
  vpc_id                          = var.VPC_ID
  cidr_block                      = "${var.CIDR_BLOCK_PREFIX}.96.0/${var.MASK}"
  availability_zone               = "${var.REGION}a"
  # ipv6_cidr_block = "${var.CIDR_BLOCK_IPV6}"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true

  tags = {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PRIVATE-SUBNET-A"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id                          = var.VPC_ID
  cidr_block                      = "${var.CIDR_BLOCK_PREFIX}.128.0/${var.MASK}"
  availability_zone               = "${var.REGION}b"
  # ipv6_cidr_block = "${var.CIDR_BLOCK_IPV6}"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true

  tags = {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PRIVATE-SUBNET-B"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_subnet" "private_subnet_c" {
  vpc_id                          = var.VPC_ID
  cidr_block                      = "${var.CIDR_BLOCK_PREFIX}.160.0/${var.MASK}"
  availability_zone               = "${var.REGION}c"
  # ipv6_cidr_block = "${var.CIDR_BLOCK_IPV6}"
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true

  tags = {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PRIVATE-SUBNET-C"
    Environment = "${var.ENVIRONMENT}"
  }
}
