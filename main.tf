resource "aws_vpc" "main" {
  cidr_block           = var.cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    var.tags,
    {
      "Name" = var.vpc_name
    },
  )
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.tags,
    {
      "Name" = var.igw_name
    },
  )
}

resource "aws_default_route_table" "main" {
  default_route_table_id = aws_vpc.main.default_route_table_id

  tags = merge(
    var.tags,
    {
      "Name" = var.rt_name
    },
  )
}

resource "aws_route" "main" {
  route_table_id         = aws_default_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}
