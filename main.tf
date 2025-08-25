terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "exampl1e" {
  bucket = "${var.bucket_name}"
  tags = {
    Name        = "atlantis-test-b11ucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "examplwwwe" {
  bucket = "varasdksaldsaldmldbucket_name"
  tags = {
    Name        = "atlantis-test-b11uwwwwwcket"
    Environment = "Dev"
  }
}
