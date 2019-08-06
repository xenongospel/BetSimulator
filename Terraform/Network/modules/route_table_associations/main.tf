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

resource "aws_route_table_association" "rt_association_public_a" {
  subnet_id      = var.PUBLIC_SUBNET_A
  route_table_id = var.PUBLIC_ROUTE_TABLE_A
}

resource "aws_route_table_association" "rt_association_public_b" {
  subnet_id      = var.PUBLIC_SUBNET_B
  route_table_id = var.PUBLIC_ROUTE_TABLE_B
}

resource "aws_route_table_association" "rt_association_public_c" {
  subnet_id      = var.PUBLIC_SUBNET_C
  route_table_id = var.PUBLIC_ROUTE_TABLE_C
}

/*
 XENON #################################################################################################################
       PRIVATE ROUTE TABLE ASSOCATION DEFINITIONS
 XENON #################################################################################################################
*/

resource "aws_route_table_association" "rt_association_private_a" {
  subnet_id      = var.PRIVATE_SUBNET_A
  route_table_id = var.PRIVATE_ROUTE_TABLE_A
}

resource "aws_route_table_association" "rt_association_private_b" {
  subnet_id      = var.PRIVATE_SUBNET_B
  route_table_id = var.PRIVATE_ROUTE_TABLE_B
}

resource "aws_route_table_association" "rt_association_private_c" {
  subnet_id      = var.PRIVATE_SUBNET_C
  route_table_id = var.PRIVATE_ROUTE_TABLE_C
}
