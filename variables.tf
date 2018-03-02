variable "vpc_name" {
  description = "VPC name. This will be uses as the 'Name' tag value."
  type        = "string"
  default     = "main-vpc"
}

variable "cidr" {
  description = "VPC's CIDR range."
  type        = "string"
}

variable "rt_name" {
  description = "VPC's main public route table name."
  type        = "string"
  default     = "public-rt"
}

variable "tags" {
  description = "Additional tags."
  type        = "map"
  default     = {}
}

variable "igw_name" {
  description = "Internet gateway name. This will be uses as the 'Name' tag value."
  type        = "string"
  default     = "main-igw"
}
