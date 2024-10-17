output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.subnet.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.subnet.private_subnet_id
}

output "public_instance_id" {
  description = "The ID of the public EC2 instance"
  value       = module.ec2.public_instance_id
}

output "public_instance_public_ip" {
  description = "The public IP of the public EC2 instance"
  value       = module.ec2.public_instance_public_ip
}

output "private_instance_id" {
  description = "The ID of the private EC2 instance"
  value       = module.ec2.private_instance_id
}

output "security_group_ids" {
  description = "The security group IDs for both public and private instances"
  value       = module.security_group.security_group_ids
}