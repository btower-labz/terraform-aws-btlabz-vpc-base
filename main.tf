resource "aws_vpc" "main" {
  cidr_block           = "${var.cidr}"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = "${merge(
    var.tags,
    map(
      "Name", "${var.vpc-name}"
    )
  )}"
}

resource "aws_internet_gateway" "main" {
  vpc_id = "${aws_vpc.main.id}"
  tags = "${merge(
    var.tags,
    map(
      "Name", "${var.igw-name}"
    )
  )}"
}

# TODO: Use default route table
resource "aws_route_table" "main" {
  vpc_id = "${aws_vpc.main.id}"
  tags = "${merge(
    var.tags,
    map(
      "Name", "${var.rt-name}"
    )
  )}"
}

resource "aws_route" "main" {
  route_table_id         = "${aws_route_table.main.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.main.id}"
}

resource "aws_main_route_table_association" "main" {
  vpc_id         = "${aws_vpc.main.id}"
  route_table_id = "${aws_route_table.main.id}"
}

