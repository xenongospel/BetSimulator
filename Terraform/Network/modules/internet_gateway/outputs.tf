// No outputs required
output "igw_id" {
  value       = "${aws_internet_gateway.internet_gateway.id}"
  description = "Identifier for the newly created internet gateway"
}
