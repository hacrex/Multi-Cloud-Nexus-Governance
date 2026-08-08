module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "nexus-vpc-aws"
  cidr   = "10.1.0.0/16"
  azs    = ["us-east-1a", "us-east-1b"]
}
