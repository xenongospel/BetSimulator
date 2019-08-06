output "vpc_id" {
  value       = "${aws_vpc.service_vpc.id}"
  description = "The vpc id associated to the instantiated vpc."
}
