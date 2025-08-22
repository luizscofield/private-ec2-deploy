module "vpc" {
  source = "./modules/vpc"

  vpc_name                  = "private-ec2-vpc"
  vpc_cidr_block            = "10.0.0.0/24"
  private_subnet_cidr_block = "10.0.0.0/25"
  public_subnet_cidr_block  = "10.0.0.128/25"
}

module "ec2" {
  source = "./modules/ec2"

  ec2_name              = "private-ec2-instance"
  instance_type         = "t2.micro"
  vpc_id                = module.vpc.vpc_id
  subnet_id             = module.vpc.private_subnet_id
  docker_compose_bucket = module.s3.s3_bucket_name
}

module "s3" {
  source = "./modules/s3"

  s3_bucket_name        = "sample-python-app-compose"
  ec2_instance_role_arn = module.ec2.ec2_instance_role_arn
}