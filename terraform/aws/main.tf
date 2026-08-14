provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = var.name
  cidr = var.cidr
  azs  = var.availability_zones

  private_subnets = [
    cidrsubnet(var.cidr, 4, 0),
    cidrsubnet(var.cidr, 4, 1),
  ]
  public_subnets = [
    cidrsubnet(var.cidr, 4, 8),
    cidrsubnet(var.cidr, 4, 9),
  ]

  enable_nat_gateway = false
  tags               = var.common_tags
}
