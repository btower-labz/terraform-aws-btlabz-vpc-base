output "vpc-id" {
  value = "${aws_vpc.main.id}"
}

output "rt-id" {
  value = "${aws_route_table.main.id}"
}

output "igw-id" {
  value = "${aws_internet_gateway.main.id}"
}
