terraform {
  required_version = "0.14.4"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.89.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  profile = "georgia"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-05032025"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}