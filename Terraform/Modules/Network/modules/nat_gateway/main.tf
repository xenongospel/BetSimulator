resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = "${aws_eip.nat_gateway_elastic_ip.id}" // Association ID for the Elastic IP used in Internet Connection
  subnet_id = "${aws_subnet.public_subnet_a.id}" // Association ID with the Subnet that Internet Traffic will be targeted through
  tags {
    Name: "${var.SERVICE}-${var.ENVIRONMENT}-NGW",
    Environment: "${var.ENVIRONMENT}"
  }
}
