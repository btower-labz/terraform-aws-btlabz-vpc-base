module "vpc" {
  source = "../../"
  tags = {
    Name = "${var.name_prefix}-vpc"
  }
}
