resource "aws_instance" "public_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.security_group_ids.public_sg]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "Public EC2 Instance"
  }
}

resource "aws_instance" "private_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.security_group_ids.private_sg]
  key_name               = var.key_name

  tags = {
    Name = "Private EC2 Instance"
  }
}