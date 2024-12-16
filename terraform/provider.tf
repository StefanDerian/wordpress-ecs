provider "aws" {
    region = var.region
}

terraform {
  backend "s3" {
    bucket         = "stefan-terraform-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
  }
}