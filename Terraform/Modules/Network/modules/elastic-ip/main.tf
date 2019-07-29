resource "aws_eip" "nat_gateway_elastic_ip" {
  vpc = true
}
