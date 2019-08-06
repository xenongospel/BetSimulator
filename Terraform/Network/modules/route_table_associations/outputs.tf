output "rt_association_public_a_id" {
  value       = "${aws_route_table_association.rt_association_public_a.id}"
  description = "Indentifier for route table aassociation id"
}

output "rt_association_public_b_id" {
  value       = "${aws_route_table_association.rt_association_public_b.id}"
}

output "rt_association_public_c_id" {
  value       = "${aws_route_table_association.rt_association_public_c.id}"
}

output "rt_association_private_a_id" {
  value       = "${aws_route_table_association.rt_association_private_a.id}"
}

output "rt_association_private_b_id" {
  value       = "${aws_route_table_association.rt_association_private_b.id}"
}

output "rt_association_private_c_id" {
  value       = "${aws_route_table_association.rt_association_private_c.id}"
}


