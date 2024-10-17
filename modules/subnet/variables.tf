variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

variable "availability_zones" {
  description = "List of availability zones to deploy resources"
  type        = list(string)
}