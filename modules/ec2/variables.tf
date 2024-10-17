variable "ami" {
  description = "AMI ID for EC2 instances"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
}

variable "private_subnet_id" {
  description = "The ID of the private subnet"
}

variable "key_name" {
  description = "Key pair for EC2 instances"
}

variable "security_group_ids" {
  description = "The security group IDs for both public and private instances"
  type        = map(string)
}