output "vpc-id" {
  description = "VPC identifier."
  value       = "${aws_vpc.main.id}"
}

output "rt-id" {
  description = "Main public RT identifier."
  value       = "${aws_route_table.main.id}"
}

output "igw-id" {
  description = "AWS Internet gateway identifier."
  value       = "${aws_internet_gateway.main.id}"
}
