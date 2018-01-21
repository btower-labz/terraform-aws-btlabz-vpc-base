variable "vpc-name" {
  type = "string"
  default = "main-vpc"
}

variable "cidr" {
  type = "string"
}

variable "rt-name" {
  type = "string"
  default = "public-rt"
}

variable "tags" {
  type    = "map"
  default = {}
}

variable "igw-name" {
  type    = "string"
  default = "main-igw"
}
