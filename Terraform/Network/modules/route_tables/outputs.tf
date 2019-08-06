output "public_route_table_a_id" {
  value       = "${aws_route_table.route_table_public_subnet_a.id}"
  description = "Identier of Route Table"
}

output "public_route_table_b_id" {
  value       = "${aws_route_table.route_table_public_subnet_b.id}"
}

output "public_route_table_c_id" {
  value       = "${aws_route_table.route_table_public_subnet_c.id}"
}

output "private_route_table_a_id" {
  value       = "${aws_route_table.route_table_private_subnet_a.id}"
}

output "private_route_table_b_id" {
  value       = "${aws_route_table.route_table_private_subnet_b.id}"
}

output "private_route_table_c_id" {
  value       = "${aws_route_table.route_table_private_subnet_c.id}"
}
