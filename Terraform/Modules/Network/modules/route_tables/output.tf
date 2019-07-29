output "public_route_table_a_variable" {
  value = "${aws_route_table.route_table_public_subnet_a.id}"
  description = "Routing Table for Public Subnet in AZ a"
}

output "public_route_table_b_variable" {
  value = "${aws_route_table.route_table_public_subnet_b.id}"
  description = "Routing Table for Public Subnet in AZ b"
}

output "public_route_table_c_variable" {
  value = "${aws_route_table.route_table_public_subnet_c.id}"
  description = "Routing Table for Public Subnet in AZ c"
}

output "private_route_table_a_variable" {
  value = "${aws_route_table.route_table_private_subnet_a.id}"
  description = "Routing Table for Private Subnet in AZ a"
}

output "private_route_table_b_variable" {
  value = "${aws_route_table.route_table_private_subnet_b.id}"
  description = "Routing Table for Private Subnet in AZ b"
}

output "private_route_table_c_variable" {
  value = "${aws_route_table.route_table_private_subnet_c.id}"
  description = "Routing Table for Private Subnet in AZ c"
}
