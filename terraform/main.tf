module "vpc" {
  source = "./vpc"

  vpc_name                  = "private-ec2-vpc"
  vpc_cidr_block            = "10.0.0.0/24"
  private_subnet_cidr_block = "10.0.0.0/25"
  public_subnet_cidr_block  = "10.0.0.128/25"
}

module "ec2" {
  source = "./ec2"

  ec2_name      = "private-ec2-instance"
  instance_type = "t2.micro"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.private_subnet_id
}