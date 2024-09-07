# Region and Availability Zones
variable "region" {
  description = "AWS region where the resources will be deployed"
}

variable "availability_zones" {
  description = "List of availability zones to deploy resources"
  type        = list(string)
}

# VPC and Subnets
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

# EC2 Settings
variable "key_name" {
  description = "Key pair for EC2 instances"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "ami" {
  description = "AMI ID for EC2 instances"
}

# Security Groups
variable "security_groups" {
  description = "Map of security groups with ingress rules"
  type        = map(object({
    description   = string
    ingress_ports = list(number)
  }))
}
