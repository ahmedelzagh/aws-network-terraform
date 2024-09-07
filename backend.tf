resource "aws_s3_bucket" "statebucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name = "state bucket"
  }
}

resource "aws_s3_bucket_versioning" "terraform_state_bucket" {
  bucket = aws_s3_bucket.statebucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name           = var.dynamodb_table_name
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform State Lock Table"
  }
}

terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = "terraform.tfstate"
    dynamodb_table = var.dynamodb_table_name
    region         = var.region
  }
}
