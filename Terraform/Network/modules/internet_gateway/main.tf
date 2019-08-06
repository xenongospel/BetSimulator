/*
 XENON #################################################################################################################
       INTERNET GATEWAY
       PARAMETERS:
        - VPC ID: The VPC identifier for which the Internet Gateway will sit on the perimeter of.
 XENON #################################################################################################################
*/

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id          = var.VPC_ID // Association to the VPC in which Internet Traffic will travel through

  tags = {
    Name        = "${var.SERVICE}-${var.ENVIRONMENT}-IGW"
    Environment = "${var.ENVIRONMENT}"
  }
}
