output "security_group_ids" {
  description = "The security group IDs for both public and private instances"
  value = {
    for sg in aws_security_group.instance_sgs : sg.name => sg.id
  }
}