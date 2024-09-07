output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

output "public_instance_public_ip" {
  description = "The public IP of the public instance"
  value       = aws_instance.public_instance.public_ip
}

output "private_instance_id" {
  description = "The instance ID of the private instance"
  value       = aws_instance.private_instance.id
}
