output "public-subnet-a-id" {
  value = "${aws_subnet.public_subnet_a.id}"
  description = "Subnet ID for Public Subnet A"
}

output "public-subnet-b-id" {
  value = "${aws_subnet.public_subnet_b.id}"
  description = "Subnet ID for Public Subnet B"
}

output "public-subnet-c-id" {
  value = "${aws_subnet.public_subnet_c.id}"
  description = "Subnet ID for Public Subnet C"
}

output "private-subnet-a-id" {
  value = "${aws_subnet.private_subnet_a.id}"
  description = "Subnet ID for Private Subnet A"
}

output "private-subnet-b-id" {
  value = "${aws_subnet.private_subnet_b.id}"
  description = "Subnet ID for Private Subnet B"
}

output "private-subnet-c-id" {
  value = "${aws_subnet.private_subnet_c.id}"
  description = "Subnet ID for Private Subnet C"
}
