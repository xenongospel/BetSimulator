resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = "${aws_vpc.service_vpc.id}" // Association to the VPC in which Internet Traffic will travel through
  tags {
    Name: "${var.SERVICE}-${var.ENVIRONMENT}-IGW",
    Environment: "${var.ENVIRONMENT}"
  }
}
