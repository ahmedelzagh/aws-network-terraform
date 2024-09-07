# AWS Region and Availability Zone
region = "eu-north-1"
availability_zones = ["eu-north-1a", "eu-north-1b"]

# VPC and Subnets
vpc_cidr = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"

# EC2 Settings
key_name = "main-key-pair"
instance_type = "t3.micro"
ami = "ami-04cdc91e49cb06165"

# Security Groups
security_groups = {
  public_instance_sg = {
    description = "Public instance security group"
    ingress_ports = [22, 80, 443]
  }
  private_instance_sg = {
    description = "Private instance security group"
    ingress_ports = [22]
  }
}

