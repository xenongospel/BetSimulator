output "ngw_id" {
  value       = "${aws_nat_gateway.nat_gateway.id}"
  description = "Outputs the NAT Gateway Instance"
}
