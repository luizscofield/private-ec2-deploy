variable "s3_bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "ec2_instance_role_arn" {
  type        = string
  description = "The ARN of the EC2 instance role"
}