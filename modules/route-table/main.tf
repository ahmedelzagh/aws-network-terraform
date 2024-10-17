resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }
}

resource "aws_route_table_association" "public_rt_association" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public_rt.id
}