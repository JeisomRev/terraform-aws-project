provider "aws" {
  region = var.region
}

module "networking" {
  source      = "../../modules/networking"
  vpc_cidr    = var.vpc_cidr
  environment = var.environment
}

module "eks" {
  source       = "../../modules/eks"
  cluster_name = "${var.environment}-cluster"
  subnet_ids   = module.networking.public_subnet_ids
}