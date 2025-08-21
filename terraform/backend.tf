terraform {
  backend "s3" {
    bucket       = "luizscofield-tfstate"
    key          = "private-ec2-deploy/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
    profile      = "personal"
  }
}