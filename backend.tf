# resource "aws_s3_bucket" "statebucket" {
#   bucket = "ahmedelzagh-state-bucket"

#   tags = {
#     Name = "state bucket"
#   }
# }

# resource "aws_s3_bucket_versioning" "terraform_state_bucket" {
#   bucket = aws_s3_bucket.statebucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_dynamodb_table" "terraform_locks" {
#   name           = "terraform-state-locks"
#   billing_mode   = "PROVISIONED"
#   read_capacity  = 1
#   write_capacity = 1
#   hash_key       = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = {
#     Name = "Terraform State Lock Table"
#   }
# }

terraform {
  backend "s3" {
    bucket         = "ahmedelzagh-state-bucket"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-state-locks"
    region         = "eu-north-1"
  }
}
