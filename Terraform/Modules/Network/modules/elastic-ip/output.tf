output "nat_gateway_elastic_ip_variable" {
  value = ${aws_eip.nat_gateway_elastic_ip.id}
  description = "Elastic IP created for association to NAT Gateway"
}
