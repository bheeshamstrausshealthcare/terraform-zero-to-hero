provider "aws" {
    region = "us-east-1"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "bheesham-tf-practice"
}

resource "aws_instance" "test" {
  ami = "var.ami_id"
  instance_type = "var.instance_type"
  subnet_id = "var.subnet_id"
  key_name = "var.key_name"
}