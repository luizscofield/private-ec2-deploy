output "s3_bucket_name" {
  value = aws_s3_bucket.docker_compose_bucket.bucket
}