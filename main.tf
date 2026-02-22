terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "atlantis-test-mersch23-12345"

  tags = {
    Name        = "Atlantis Test"
    Environment = "dev"
    ManagedBy   = "atlantis"
  }
}
