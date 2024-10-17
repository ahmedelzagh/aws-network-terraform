provider "aws" {
  region = var.region
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "subnet" {
  source             = "./modules/subnet"
  vpc_id             = module.vpc.vpc_id
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zones = var.availability_zones
}

module "internet_gateway" {
  source = "./modules/internet-gateway"
  vpc_id = module.vpc.vpc_id
}

module "nat_gateway" {
  source     = "./modules/nat-gateway"
  subnet_id  = module.subnet.public_subnet_id
}

module "route_table" {
  source     = "./modules/route-table"
  vpc_id     = module.vpc.vpc_id
  gateway_id = module.internet_gateway.igw_id
  subnet_id  = module.subnet.public_subnet_id
}

module "ec2" {
  source                = "./modules/ec2"
  ami                   = var.ami
  instance_type         = var.instance_type
  public_subnet_id      = module.subnet.public_subnet_id
  private_subnet_id     = module.subnet.private_subnet_id
  key_name              = var.key_name
  security_group_ids    = module.security_group.security_group_ids
}

module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
  security_groups = var.security_groups
}