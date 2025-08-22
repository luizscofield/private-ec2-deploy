variable "ec2_name" {
  type        = string
  description = "The name of the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to launch"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC to launch the instance in"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to launch the instance in"
}

variable "docker_compose_bucket" {
  type        = string
  description = "The name of the S3 bucket containing the Docker Compose file"
}