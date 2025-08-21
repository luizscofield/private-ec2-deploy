provider "aws" {
  region  = "us-east-1"
  profile = "personal"
  default_tags {
    tags = {
      Project   = "private-ec2-deploy"
      Owner     = "luizscofield"
      ManagedBy = "terraform"
    }
  }
}