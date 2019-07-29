/*
 XENON #################################################################################################################
       ROUTE TABLE
       PARAMETERS:
        - VPC ID: VPC Identifier that the route table should be associated to.
        - Route Object: An object that defines a new route for which traffic should be handled against
          - CIDR Block: The range of addresses that will be affected by the routing policy
          - Gateway ID:
 XENON #################################################################################################################
*/

/*
 XENON #################################################################################################################
       PUBLIC ROUTE TABLE DEFINITIONS
 XENON #################################################################################################################
*/
resource "aws_route_table" "route_table_public_subnet_a" {
  vpc_id = "{aws_vpc.service_vpc.id}" // VPC association

  route { // Routing Object for Internet Gateway association
    cidr_block = "${var.INTERNET_GATEWAY_ROUTE_IP_ADDRESS}"
    gateway_id = "${aws_internet_gateway.internet_gateway.id}"
  }

  tags {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PUBLIC-ROUTE-TABLE-A"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_route_table" "route_table_public_subnet_b" {
  vpc_id = "{aws_vpc.service_vpc.id}"

  route {
    cidr_block = "${var.INTERNET_GATEWAY_ROUTE_IP_ADDRESS}"
    gateway_id = "${aws_internet_gateway.internet_gateway.id}"
  }

  tags {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PUBLIC-ROUTE-TABLE-B"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_route_table" "route_table_public_subnet_c" {
  vpc_id = "{aws_vpc.service_vpc.id}"

  route {
    cidr_block = "${var.INTERNET_GATEWAY_ROUTE_IP_ADDRESS}"
    gateway_id = "${aws_internet_gateway.internet_gateway.id}"
  }

  tags {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PUBLIC-ROUTE-TABLE-C"
    Environment = "${var.ENVIRONMENT}"
  }
}

/*
 XENON #################################################################################################################
       PRIVATE ROUTE TABLE DEFINITIONS
 XENON #################################################################################################################
*/

resource "aws_route_table" "route_table_private_subnet_a" {
  vpc_id = "{aws_vpc.service_vpc.id}"

  route {
    cidr_block = "${var.NAT_GATEWAY_ROUTE_IP_ADDRESS}"
    nat_gateway_id = "${aws_nat_gateway.nat_gateway.id}"
  }

  tags {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PRIVATE-ROUTE-TABLE-A"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_route_table" "route_table_private_subnet_b" {
  vpc_id = "{aws_vpc.service_vpc.id}"

  route {
    cidr_block = "${var.NAT_GATEWAY_ROUTE_IP_ADDRESS}"
    nat_gateway_id = "${aws_nat_gateway.nat_gateway.id}"
  }

  tags {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PRIVATE-ROUTE-TABLE-B"
    Environment = "${var.ENVIRONMENT}"
  }
}

resource "aws_route_table" "route_table_private_subnet_c" {
  vpc_id = "{aws_vpc.service_vpc.id}"

  route {
    cidr_block = "${var.NAT_GATEWAY_ROUTE_IP_ADDRESS}"
    nat_gateway_id = "${aws_nat_gateway.nat_gateway.id}"
  }

  tags {
    Name = "${var.SERVICE}-${var.ENVIRONMENT}-PRIVATE-ROUTE-TABLE-C"
    Environment = "${var.ENVIRONMENT}"
  }
}
