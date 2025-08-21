variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "CIDR block for the private subnet"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "CIDR block for the public subnet"
}