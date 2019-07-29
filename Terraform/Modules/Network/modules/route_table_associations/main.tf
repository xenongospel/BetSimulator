/*
 XENON #################################################################################################################
       ROUTE TABLE ASSOCIATIONS
       PARAMETERS:
        - Subnet ID: Subnet Identifier for the Route Table to be associatied to.
        - Route Table ID: Route Table Identifier for the Subnet to be associated to.
 XENON #################################################################################################################
*/

/*
 XENON #################################################################################################################
       PUBLIC ROUTE TABLE ASSOCATION DEFINITIONS
 XENON #################################################################################################################
*/

resource "aws_route_table_associations" "rt_association_public_a" {
  subnet_id = "${aws_subnet.public_subnet_a.id}"
  route_table_id = "${aws_route_table.route_table_public_subnet_a.id}"
}

resource "aws_route_table_associations" "rt_association_public_b" {
  subnet_id = "${aws_subnet.public_subnet_b.id}"
  route_table_id = "${aws_route_table.route_table_public_subnet_b.id}"
}

resource "aws_route_table_associations" "rt_association_public_c" {
  subnet_id = "${aws_subnet.public_subnet_c.id}"
  route_table_id = "${aws_route_table.route_table_public_subnet_c.id}"
}

/*
 XENON #################################################################################################################
       PRIVATE ROUTE TABLE ASSOCATION DEFINITIONS
 XENON #################################################################################################################
*/

resource "aws_route_table_associations" "rt_association_private_a" {
  subnet_id = "${aws_subnet.private_subnet_a.id}"
  route_table_id = "${aws_route_table.route_table_private_subnet_a.id}"
}

resource "aws_route_table_associations" "rt_association_private_b" {
  subnet_id = "${aws_subnet.private_subnet_b.id}"
  route_table_id = "${aws_route_table.route_table_private_subnet_b.id}"
}

resource "aws_route_table_associations" "rt_association_private_c" {
  subnet_id = "${aws_subnet.private_subnet_c.id}"
  route_table_id = "${aws_route_table.route_table_private_subnet_c.id}"
}
