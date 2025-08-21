provider "aws" {
  region  = "us-east-1"
  default_tags {
    tags = {
      Project   = "private-ec2-deploy"
      Owner     = "luizscofield"
      ManagedBy = "terraform"
    }
  }
}