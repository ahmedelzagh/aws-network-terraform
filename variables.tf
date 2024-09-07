variable "region" {
  default = "eu-north-1"
}

variable "availability_zone" {
  description = "The availability zone for subnets"
  default     = "eu-north-1a"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "key_name" {
  description = "Main Key Pair Name"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  description = "AMI ID for EC2 instances"
  default     = "ami-0a0e5d9c7acc336f1"
}

variable "s3_bucket_name" {
  description = "S3 bucket for Terraform state"
  default     = "ahmedelzagh-state-bucket"
}

variable "dynamodb_table_name" {
  description = "DynamoDB table for state locking"
  default     = "terraform-state-locks"
}