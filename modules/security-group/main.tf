resource "aws_security_group" "instance_sgs" {
  for_each = var.security_groups

  name        = each.key
  description = each.value.description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = each.value.ingress_ports[0]
    to_port     = each.value.ingress_ports[0]
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = each.key
  }
}