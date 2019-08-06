output "ngw_eip_id" {
  value       = "${aws_eip.nat_gateway_elastic_ip.id}"
  description = "Elastic IP created for association to NAT Gateway"
}
