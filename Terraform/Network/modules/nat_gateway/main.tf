/*
 XENON #################################################################################################################
       NAT GATEWAY
       PARAMETERS:
        - Allocation ID: Elastic IP that provides NAT gateway with reachability to the Internet.
        - Subnet ID: Subnet that will be associated to the NAT Gateway. Commonly found in a public subnet.
 XENON #################################################################################################################
*/

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id   = var.NAT_GATEWAY_EIP_ID // Association ID for the Elastic IP used in Internet Connection
  subnet_id       = var.PUBLIC_SUBNET_A_ID // Association ID with the Subnet that Internet Traffic will be targeted through

  tags = {
    Name        = "${var.SERVICE}-${var.ENVIRONMENT}-NGW"
    Environment = "${var.ENVIRONMENT}"
  }
}
