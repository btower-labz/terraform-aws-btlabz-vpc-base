output "vpc_id" {
  description = "VPC identifier."
  value       = "${aws_vpc.main.id}"
}

output "rt_id" {
  description = "Main public RT identifier."
  value       = "${aws_default_route_table.main.id}"
}

output "igw_id" {
  description = "AWS Internet gateway identifier."
  value       = "${aws_internet_gateway.main.id}"
}
