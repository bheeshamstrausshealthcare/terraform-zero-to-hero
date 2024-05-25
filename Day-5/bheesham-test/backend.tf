terraform {
  backend "s3" {
    bucket = "bheesham-tf-practice2"
    region = "us-east-1"
    key = "terraform/terraform.tfstate"
    dynamodb_table = "terraform-lock-1"
  }
}